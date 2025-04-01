from pathlib import Path
import re
from dataclasses import dataclass
from typing import *
import json


# POD Classes for keeping data
@dataclass
class ModuleInformation:
    contains_instances_to_modify: bool = False
    corresponding_module: str | None = None
    write_enabled: bool = False


class NetlistInformation:
    module_instances: Dict[int, Dict[str, ModuleInformation]] = {}

    def deepcopy(self) -> "NetlistInformation":
        module_instances_copy: Dict[int, Dict[str, ModuleInformation]] = {}
        for instance_number, instance_dict in self.module_instances.items():
            module_instances_copy[instance_number] = {}
            for instance_name, information in instance_dict.items():
                module_instances_copy[instance_number][instance_name] = information

        rv = NetlistInformation()
        rv.module_instances = module_instances_copy
        return rv


class FaultNetlistModifier:

    def __init__(
        self,
        top_module: str,
        module_name_extension: str,
        fault_netlist_original: Path,
        fault_netlist_modified: Path,
        excluded_modules_file: Path,
        selected_modules_file: Path,
        cells_to_instrument: List[str],
    ) -> None:
        self.top_module = top_module
        self.module_name_extension = module_name_extension
        self.netlist = fault_netlist_original
        self.netlist_modified = fault_netlist_modified

        self.selected_modules_file = selected_modules_file
        self.excluded_modules_file = excluded_modules_file

        self.cells_to_instrument = cells_to_instrument

        self.port_extension_clocked_module = ", clk_scan, scan_in, scan_out"
        self.input_extension_clocked_module = "  input clk_scan;\n input [X:0] scan_in;\n"
        self.output_extension_clocked_module = "  output [X:0] scan_out;\n"
        self.port_extension_clocked_instance = ", .clk_scan (clk_scan) , .scan_in(scan_X), .scan_out(scan_X)"
        self.port_extension_clocked_instance_suppress_write = (
            ", .clk_scan (clk_scan), .scan_in(scan_X), .scan_out(scan_X)"
        )
        self.wire_placeholder_extension_clocked_module = "  wire [X:0] scan_X;\n"

        self.modified_modules: List[str] = []
        self.netlist_informations: Dict[str, NetlistInformation] = {}

    def copy_netlist_modules(self, netlist_original: Path, netlist_to_modify: Path, modules_exclude: List[str]):
        """Copies the modules of the original netlist to the netlist to modify. Excludes given modules from copy."""

        with open(netlist_original, "r") as f:
            netlist_original_lines: List[str] = f.readlines()

        modules_to_copy: List[str] = []

        exclude_module = False

        for line in netlist_original_lines:

            if exclude_module:

                if re.search(r"endmodule", line):
                    exclude_module = False

                else:
                    continue

            elif re.search(r"module", line):

                for module in modules_exclude:

                    if re.search(module, line):
                        exclude_module = True
                        break

                if exclude_module:
                    continue

                else:
                    modules_to_copy.append(line)

            else:
                modules_to_copy.append(line)

        with open(netlist_to_modify, "w") as f:
            f.write("".join(modules_to_copy))

    def is_module_to_modify(self, module_name: str, instance: str) -> bool:
        """Returns if a module shall be modified (for top-down propagation in select instances mode)."""

        with open(self.selected_modules_file, "r") as f:
            module_lines: List[str] = f.readlines()

        for line in module_lines:

            line_words = re.split(r",", line)
            module_to_modify = re.sub(r"\s+", "", line_words[0])
            try:
                instance_in_module = re.sub(r"\s+", "", line_words[1])
                if instance_in_module.startswith("\\"):
                    instance_in_module = instance_in_module.replace("\\", "", 1)
            except IndexError:
                instance_in_module = ""

            if module_name == module_to_modify:
                if re.search(r"%s" % instance_in_module, instance):
                    return True

        return False

    def is_module_to_exclude(self, module_name: str, instance: str) -> bool:
        """Returns if the instance shall be excluded from modifing (in exclude instances mode)."""

        with open(self.excluded_modules_file, "r") as f:
            module_lines: List[str] = f.readlines()

        for line in module_lines:

            line_words = re.split(r",", line)
            module_to_exclude = re.sub(r"\s+", "", line_words[0])
            try:
                instance_in_module = re.sub(r"\s+", "", line_words[1])
                instance_in_module = instance_in_module.replace("\\", "")
            except IndexError:
                continue

            if module_name == module_to_exclude:
                if re.search(r"%s" % instance_in_module, instance):
                    return True

        return False

    def suppress_write(self, module_name: str, instance: str, select_module_list: bool) -> bool:
        """Returns if the write signal of the clocked instance shall be suppressed.
        This allows to observe the internal states of the module without modifing it."""

        select_module_list_file = self.selected_modules_file if select_module_list else self.excluded_modules_file
        with open(select_module_list_file, "r") as f:
            module_lines: List[str] = f.readlines()

        for line in module_lines:
            line_words = re.split(r",", line)
            module = re.sub(r"\s+", "", line_words[0])
            try:
                instance_in_module = re.sub(r"\s+", "", line_words[1])
                instance_in_module = instance_in_module.replace("\\", "")
            except IndexError:
                continue
            if module_name == module:
                if re.search(r"%s" % instance_in_module, instance):
                    try:
                        suppress_write = re.sub(r"\s+", "", line_words[2])
                    except IndexError:
                        return False

                    if suppress_write.lower() == "true":
                        return True
                    else:
                        return False

        return False

    def collect_netlist_information(self, module_name: str, module_to_modify: bool) -> None | ModuleInformation:
        """Collects the instances to modify and collects modification informations for the module modification."""

        # Parser State
        module_entry_found = False
        module_found = False
        instance_found = False
        instance_saved = False
        instance_type_detected = False
        modify_full_module = False

        current_instance = ""
        corresponding_module = ""

        # Information for current module=
        module_information = ModuleInformation()
        instance_information: ModuleInformation | None = ModuleInformation()

        module_instances: Dict[str, ModuleInformation] = {}

        with open(self.netlist, "r") as f:
            netlist_lines = f.readlines()

        for line in netlist_lines:

            if module_found:

                if re.search(r"\(\s*\.", line):
                    instance_found = True
                    instance_saved = False
                    instance_type_detected = False

                if re.search(r"\s*endmodule", line):
                    self.modified_modules.append(module_name)

                    # Only keep instances of selected cells
                    module_instances = {
                        k: v for k, v in module_instances.items() if v.corresponding_module in self.cells_to_instrument
                    }

                    if bool(module_instances):

                        module_information.contains_instances_to_modify = True

                        self.netlist_informations[module_name] = NetlistInformation()

                        for index, instance in enumerate(module_instances):
                            self.netlist_informations[module_name].module_instances[index] = {
                                instance: module_instances[instance]
                            }

                        return module_information

                    else:
                        module_information.contains_instances_to_modify = False
                        return module_information

                elif instance_found:

                    if not instance_saved:
                        line_words = re.split(r"\s+", line)
                        line_words = [x for x in line_words if x != ""]
                        corresponding_module = line_words[0].split("(", 1)[0]
                        current_instance = line_words[1].split("(", 1)[0]
                        current_instance = current_instance.replace("\\", "")
                        module_instances[current_instance] = ModuleInformation()
                        module_instances[current_instance].corresponding_module = corresponding_module
                        instance_saved = True

                    if self.is_module_to_modify(module_name, current_instance) or modify_full_module:
                        self.collect_netlist_information(corresponding_module, True)
                    else:
                        instance_information = self.collect_netlist_information(corresponding_module, False)

                        if (instance_information is None) or (not instance_information.contains_instances_to_modify):
                            module_instances.pop(current_instance)

                        instance_type_detected = True

                    if instance_type_detected:
                        instance_found = False
                        instance_type_detected = False

            if re.search(r"\s*module\s+%s\s*\(" % module_name, line):
                module_entry_found = True

            if module_entry_found:
                if not module_name in self.modified_modules:
                    if self.is_module_to_modify(module_name, "") or module_to_modify:
                        modify_full_module = True

                    module_found = True
                    module_entry_found = False

        return None

    def is_modified(self, module: str) -> bool:
        """Returns, if module is already modified, so no modification of portlist is needed."""

        if module in self.modified_modules:
            return True

        else:
            return False

    def modify_netlist(self, netlist_informations: Dict[str, NetlistInformation]) -> None:
        """Extends the netlist with a modified module determined by module name."""

        with open(self.netlist, "r") as f:
            netlist_lines: List[str] = f.readlines()

        netlist_informations_copy = {k: v.deepcopy() for k, v in netlist_informations.items()}

        modules_to_modify: List[str] = []
        module_instances: Dict[int, Dict[str, ModuleInformation]] = {}

        modified_netlist: str = ""
        module_name = ""
        module_entry_found = False
        module_name_found = False
        module_found = False
        input_found = False
        output_found = False
        wire_found = False
        instance_found = False
        enable_write = True
        current_instance = ""
        current_instance_number: int = 0

        corresponding_module = ""

        for line in netlist_lines:

            if re.search(r"\s*module\s+", line):
                module_entry_found = True

            if module_found:

                if re.search(r"\(\s*\.", line):

                    line_words = re.split(r"\s+", line)
                    line_words = [x for x in line_words if x != ""]
                    corresponding_module = line_words[0].split("(", 1)[0]
                    current_instance = line_words[1].split("(", 1)[0]
                    current_instance = current_instance.replace("\\", "")

                    for instance_number in module_instances:
                        for instance in module_instances[instance_number]:
                            if current_instance == instance:
                                current_instance_number = instance_number

                                try:
                                    enable_write = module_instances[instance_number][current_instance].write_enabled
                                except KeyError:
                                    enable_write = True

                                instance_found = True
                                break

                        if instance_found:
                            break

                if re.search(r"\s*endmodule", line):
                    module_found = False
                    input_found = False
                    output_found = False
                    wire_found = False
                    instance_found = False
                    netlist_informations_copy.pop(module_name)
                    modified_netlist += line
                    modified_netlist += "\n"

                elif instance_found:

                    modified_line = re.sub(
                        r"%s\s+" % corresponding_module,
                        corresponding_module + self.module_name_extension + " ",
                        line,
                    )

                    if re.search(r"\);", modified_line):

                        modified_line = re.sub(r"\);\s*\n", "", modified_line)

                        if enable_write:
                            modified_line += self.port_extension_clocked_instance
                        else:
                            modified_line += self.port_extension_clocked_instance_suppress_write

                        modified_line += ");\n"

                        netlist_informations_copy[module_name].module_instances.pop(current_instance_number)
                        instance_found = False

                    modified_netlist += modified_line

                elif re.search(r"\s*input\s+", line) and not input_found:
                    input_found = True

                    modified_netlist += self.input_extension_clocked_module

                    modified_netlist += line

                elif re.search(r"\s*output\s+", line) and not output_found:
                    output_found = True

                    modified_netlist += self.output_extension_clocked_module

                    modified_netlist += line

                elif re.search(r"\s*wire\s+", line) and not wire_found:
                    wire_found = True

                    modified_netlist += self.wire_placeholder_extension_clocked_module

                    modified_netlist += line

                else:
                    modified_netlist += line

            elif module_entry_found:

                if not module_name_found:
                    module_name_match = re.search(r"module(.*?)\(", line)
                    if module_name_match is not None:
                        module_name = module_name_match.group(1).replace(" ", "")
                    else:
                        module_name = ""

                    modules_to_modify = list(netlist_informations_copy.keys())
                    if module_name in modules_to_modify:
                        module_instances = netlist_informations_copy[module_name].module_instances
                        module_name_found = True

                if module_name_found:

                    modified_line = re.sub(
                        r"%s\s*\(" % module_name,
                        r"%s(" % (module_name + self.module_name_extension),
                        line,
                    )

                    if re.search(r"\);", modified_line):

                        modified_line = re.sub(r"\);\s*\n", "", modified_line)

                        modified_line += self.port_extension_clocked_module

                        modified_line += ");\n"

                        module_found = True
                        module_name_found = False
                        module_entry_found = False

                    modified_netlist += modified_line
                    continue

                else:
                    modified_netlist += line

            else:
                modified_netlist += line

        with open(self.netlist_modified, "w") as f:
            f.write(modified_netlist)

    def run(self):

        print("Starting fault netlist modification...\n")

        print("Collecting netlist informations for injecting standard cells..")
        self.collect_netlist_information(self.top_module, False)
        print("Netlist informations for standard cells collected.")

        print("Modifing the netlist..")
        self.modify_netlist(self.netlist_informations)
        print("Netlist modified.")

        print("Fault netlist modification finished.\n")


class ScanChain:
    chain_instances: Dict[int, Any] = {}


class ScanChainArchitectureOutput:
    scan_chains: Dict[int, ScanChain] = {}


class ModuleScanChainArchitectureScanChain:
    chain_instances: Dict[Any, Any] = {}
    scan_chain_bitwidth: int


class ModuleScanChainArchitecture:
    scan_chains: Dict[int, ModuleScanChainArchitectureScanChain] = {}
    scan_port_bitwidth: int


class ScanChainArchitecture:
    instances: Dict[str, ModuleScanChainArchitecture] = {}


class ScanChainArchitect:

    def __init__(
        self,
        top_module: str,
        name_extension: str,
        module_information: Any,
        scan_chain_information: Dict[str, NetlistInformation],
        scan_chain_architecture_file: Path,
        scan_chain_bitwidth: int,
        num_scan_chains: int,
    ):
        self.top_module = top_module
        self.name_extension = name_extension
        self.scan_chain_information = scan_chain_information
        self.module_information = module_information

        self.scan_chain_architecture_file = scan_chain_architecture_file

        self.num_parallel_scan_chains = int(num_scan_chains)

        self.scan_chain_architecture_output = ScanChainArchitectureOutput()
        for i in range(0, self.num_parallel_scan_chains):
            self.scan_chain_architecture_output.scan_chains[i] = ScanChain()

        self.instance_position_in_scan_chain: Dict[int, int] = {}
        for i in range(0, self.num_parallel_scan_chains):
            self.instance_position_in_scan_chain[i] = 0

        self.current_scan_chain = 0
        self.scan_chain_architecture = ScanChainArchitecture()
        self.scan_chain_bitwidth = scan_chain_bitwidth

    @staticmethod
    def create_architecture_file(scan_chain_architecture: ScanChainArchitectureOutput, scan_architecture_file: Path):
        """Creates a JSON file to work with the created architecture determined by instances,
        their position in the corresponding scan chain, the inputs and outputs and if it's an clocked instance.

        'scan_chains':  scan_chain_number: position_of_instance_in_scan_chain: instance:    'data_inputs'
                                                                                            'data_outputs'
                                                                                            'module_is_clocked'"""

        scan_chain_architecture_json: Dict[Any, Any] = {"scan_chains": {}}

        for scan_chain in scan_chain_architecture.scan_chains.keys():
            scan_chain_architecture_json["scan_chains"][scan_chain] = {}

            instance_positions = list(scan_chain_architecture.scan_chains[scan_chain].chain_instances.keys())

            max_num_instances_per_scan_chain = max(instance_positions)
            max_string_length_instance_position = len(str(max_num_instances_per_scan_chain))

            for instance_position in scan_chain_architecture.scan_chains[scan_chain].chain_instances.keys():
                scan_chain_architecture_json["scan_chains"][scan_chain][
                    str(instance_position).zfill(max_string_length_instance_position)
                ] = scan_chain_architecture.scan_chains[scan_chain].chain_instances[instance_position]

        with open(scan_architecture_file, "w") as f:
            json.dump(scan_chain_architecture_json, f)

    def create_architecture(self, module_name: str) -> bool:
        """Creates the architecture for the scan chain of the given module determined by cell instances to connect inside the module."""

        if module_name not in self.scan_chain_information.keys():
            return False

        modified_module_name = module_name + self.name_extension

        self.scan_chain_architecture.instances[modified_module_name] = ModuleScanChainArchitecture()

        for scan_chain in range(0, self.num_parallel_scan_chains):
            self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                scan_chain
            ] = ModuleScanChainArchitectureScanChain()
            self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                scan_chain
            ].scan_chain_bitwidth = self.scan_chain_bitwidth

        current_instance = ""
        instance_number_in_module: Dict[int, int] = dict()

        for i in range(0, self.num_parallel_scan_chains):
            instance_number_in_module[i] = 0

        for instance_number in self.scan_chain_information[module_name].module_instances:
            instance_entry = self.scan_chain_information[module_name].module_instances[instance_number]

            for instance in instance_entry:
                current_instance = instance
                corresponding_module = instance_entry[instance].corresponding_module
                assert corresponding_module is not None
                is_instance = not self.create_architecture(corresponding_module)

                if is_instance:
                    current_scan_chain = self.scan_chain_architecture_output.scan_chains[self.current_scan_chain]
                    instance_position = self.instance_position_in_scan_chain[self.current_scan_chain]
                    if instance_position not in current_scan_chain.chain_instances:
                        current_scan_chain.chain_instances[instance_position] = {}
                        current_scan_chain.chain_instances[instance_position][current_instance] = {}
                        current_scan_chain.chain_instances[instance_position][current_instance] = (
                            self.module_information[corresponding_module]
                        )
                        self.instance_position_in_scan_chain[self.current_scan_chain] += 1

                    self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                        self.current_scan_chain
                    ].chain_instances[instance_number_in_module[self.current_scan_chain]] = dict()
                    self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                        self.current_scan_chain
                    ].chain_instances[instance_number_in_module[self.current_scan_chain]]["instance_type"] = "instance"
                    self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                        self.current_scan_chain
                    ].chain_instances[instance_number_in_module[self.current_scan_chain]][
                        "instance_name"
                    ] = current_instance

                    instance_number_in_module[self.current_scan_chain] += 1

                    self.current_scan_chain = (self.current_scan_chain + 1) % self.num_parallel_scan_chains

                else:
                    for scan_chain in range(0, self.num_parallel_scan_chains):
                        self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                            scan_chain
                        ].chain_instances[instance_number_in_module[scan_chain]] = dict()
                        self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                            scan_chain
                        ].chain_instances[instance_number_in_module[scan_chain]]["instance_type"] = "submodule"
                        self.scan_chain_architecture.instances[modified_module_name].scan_chains[
                            scan_chain
                        ].chain_instances[instance_number_in_module[scan_chain]]["instance_name"] = current_instance
                        instance_number_in_module[scan_chain] = instance_number_in_module[scan_chain] + 1

            module_scan_chains = self.scan_chain_architecture.instances[modified_module_name].scan_chains
            module_port_bitwidth = 0
            for (
                scan_chain
            ) in (
                module_scan_chains
            ):  # in this case: self.num_parallel_scan_chains * self.scan_chain_bitwidth, but keep this for other scan-chain architectures
                module_port_bitwidth += int(module_scan_chains[scan_chain].scan_chain_bitwidth)
            self.scan_chain_architecture.instances[modified_module_name].scan_port_bitwidth = module_port_bitwidth

        return True

    def run(self):

        print(
            "Starting creation of scan-chain architecture with", self.num_parallel_scan_chains, "scan-chain(s) ... \n"
        )

        self.create_architecture(self.top_module)

        self.create_architecture_file(self.scan_chain_architecture_output, self.scan_chain_architecture_file)

        print("Creation of scan-chain architecture finished. \n")


class ScanChainWirer:

    def __init__(self, netlist_modified: Path, scan_chain_architecture: ScanChainArchitecture) -> None:
        self.netlist_modified = netlist_modified
        self.scan_chain_architecture = scan_chain_architecture

    def wire_scan_chain(self) -> None:
        """Wires the scan chain in die given netlist determined by the scan chain architecture."""

        module_found = False
        instance_found = False
        is_flint_module = False
        is_flint_instance = False
        current_instance = ""
        scan_port_bitwidth = 0
        scan_port_bitwidth_ram = 0
        scan_chains: Dict[int, ModuleScanChainArchitectureScanChain] = {}
        scan_chains_bit_positions: Dict[int, Dict[str, int]] = {}
        current_scan_chain = 0
        modified_netlist = ""
        instance_type = ""
        instance_position = 0
        submodule_wire_pattern: Dict[int, Dict[str, str]] = {}

        with open(self.netlist_modified, "r") as f:
            modified_netlist_lines = f.readlines()

        for line in modified_netlist_lines:

            if module_found:

                if re.search(r"\(\s*\.", line) and not instance_found:

                    line_words = re.split(r"\s+", line)
                    line_words = [x for x in line_words if x != ""]

                    current_instance = line_words[1].split("(", 1)[0]
                    current_instance = current_instance.replace("\\", "")

                    if is_flint_module:

                        for scan_chain in sorted(scan_chains.keys()):
                            for instance_num in sorted(scan_chains[scan_chain].chain_instances.keys()):
                                if (
                                    scan_chains[scan_chain].chain_instances[instance_num]["instance_name"]
                                    == current_instance
                                ):
                                    current_scan_chain = scan_chain
                                    instance_position = int(instance_num)
                                    instance_type = scan_chains[scan_chain].chain_instances[instance_num][
                                        "instance_type"
                                    ]
                                    is_flint_instance = True
                                    instance_found = True

                if instance_found:

                    if (re.search(r".scan_in\s*\(scan_X\), .scan_out\s*\(scan_X\)", line)) or (
                        re.search(r".scan_in_ram\s*\(scan_ram_X\)", line)
                    ):

                        if is_flint_instance:

                            if instance_type == "instance":
                                if instance_position == 0:
                                    line = re.sub(
                                        r"scan_in\s*\(scan_X\)",
                                        r"scan_in(scan_in[%s:%s])"
                                        % (
                                            (scan_chains_bit_positions[current_scan_chain]["upper_bit"]),
                                            (scan_chains_bit_positions[current_scan_chain]["lower_bit"]),
                                        ),
                                        line,
                                    )
                                else:
                                    line = re.sub(
                                        r"scan_in\s*\(scan_X\)",
                                        r"scan_in(scan_%s_%s)" % (current_scan_chain, instance_position - 1),
                                        line,
                                    )

                                if instance_position == (len(scan_chains[current_scan_chain].chain_instances) - 1):
                                    line = re.sub(
                                        r"scan_out\s*\(scan_X\)",
                                        r"scan_out(scan_out[%s:%s])"
                                        % (
                                            (scan_chains_bit_positions[current_scan_chain]["upper_bit"]),
                                            (scan_chains_bit_positions[current_scan_chain]["lower_bit"]),
                                        ),
                                        line,
                                    )
                                else:
                                    line = re.sub(
                                        r"scan_out\s*\(scan_X\)",
                                        r"scan_out(scan_%s_%s)" % (current_scan_chain, instance_position),
                                        line,
                                    )

                            elif instance_type == "submodule":

                                submodule_wire_pattern.clear()

                                for scan_chain in sorted(scan_chains.keys()):
                                    for instance_num in scan_chains[scan_chain].chain_instances:
                                        if (
                                            scan_chains[scan_chain].chain_instances[instance_num]["instance_name"]
                                            == current_instance
                                        ):

                                            submodule_wire_pattern[scan_chain] = dict()

                                            if int(instance_num) == 0:
                                                submodule_wire_pattern[scan_chain]["scan_in"] = "scan_in[%s:%s]" % (
                                                    (scan_chains_bit_positions[scan_chain]["upper_bit"]),
                                                    (scan_chains_bit_positions[scan_chain]["lower_bit"]),
                                                )
                                            else:
                                                submodule_wire_pattern[scan_chain]["scan_in"] = "scan_%s_%s" % (
                                                    scan_chain,
                                                    int(instance_num) - 1,
                                                )

                                            if int(instance_num) == (
                                                len(scan_chains[current_scan_chain].chain_instances) - 1
                                            ):
                                                submodule_wire_pattern[scan_chain]["scan_out"] = "scan_out[%s:%s]" % (
                                                    (scan_chains_bit_positions[scan_chain]["upper_bit"]),
                                                    (scan_chains_bit_positions[scan_chain]["lower_bit"]),
                                                )
                                            else:
                                                submodule_wire_pattern[scan_chain]["scan_out"] = "scan_%s_%s" % (
                                                    scan_chain,
                                                    int(instance_num),
                                                )

                                            break

                                scan_in_pattern = "{"
                                scan_out_pattern = "{"

                                for scan_chain in reversed(sorted(scan_chains.keys())):
                                    scan_in_pattern += submodule_wire_pattern[scan_chain]["scan_in"] + ","
                                    scan_out_pattern += submodule_wire_pattern[scan_chain]["scan_out"] + ","

                                scan_in_replace = scan_in_pattern.rfind(",")
                                scan_out_replace = scan_out_pattern.rfind(",")
                                scan_in_pattern = scan_in_pattern[:scan_in_replace] + "}"
                                scan_out_pattern = scan_out_pattern[:scan_out_replace] + "}"

                                line = re.sub(r"scan_in\s*\(scan_X\)", r"scan_in(%s)" % (scan_in_pattern), line)
                                line = re.sub(r"scan_out\s*\(scan_X\)", r"scan_out(%s)" % (scan_out_pattern), line)

                            is_flint_instance = False

                        instance_found = False

                    else:
                        modified_netlist += line
                        continue

                if re.search(r"\s*wire\s*\[X:0\]\s*scan_X;", line):

                    if is_flint_module:
                        for scan_chain in sorted(scan_chains.keys()):

                            if len(scan_chains[scan_chain].chain_instances.keys()) > 1:
                                modified_netlist += "\twire [%s:0]" % (
                                    int(scan_chains[scan_chain].scan_chain_bitwidth) - 1
                                )

                                for instance_num in range(1, len(scan_chains[scan_chain].chain_instances.keys()) - 1):

                                    if instance_num % 20 == 0:
                                        modified_netlist += "\n\t"

                                    modified_netlist += " scan_%s_%s," % (scan_chain, instance_num)

                                modified_netlist += " scan_%s_0;" % (scan_chain)

                                modified_netlist += "\n"

                        continue

                if re.search(r"\s*input\s*\[X:0\]\s*scan_in;", line) or re.search(
                    r"\s*output\s*\[X:0\]\s*scan_out;", line
                ):
                    line = re.sub(r"X", r"%s" % (scan_port_bitwidth - 1), line)
                    modified_netlist += line

                    continue

                if re.search(r"\s*input\s*\[X:0\]\s*scan_in_ram;", line) or re.search(
                    r"\s*output\s*\[X:0\]\s*scan_out_ram;", line
                ):
                    line = re.sub(r"X", r"%s" % (scan_port_bitwidth_ram - 1), line)
                    modified_netlist += line

                    continue

                if re.search(r"\s*endmodule", line):
                    module_found = False

            if re.search(r"\s*module", line):
                modified_netlist += line
                module_name_match = re.search(r"module(.*?)\(", line)
                if module_name_match is not None:
                    module_name = module_name_match.group(1).replace(" ", "")
                else:
                    module_name = ""

                if module_name in self.scan_chain_architecture.instances:
                    is_flint_module = True
                    module_found = True

                    scan_port_bitwidth = self.scan_chain_architecture.instances[module_name].scan_port_bitwidth
                    scan_chains = self.scan_chain_architecture.instances[module_name].scan_chains
                    scan_chains_bit_positions.clear()

                    lower_bit_current_scan_chain = 0

                    for scan_chain in sorted(scan_chains.keys()):
                        scan_chains_bit_positions[scan_chain] = dict()
                        scan_chains_bit_positions[scan_chain]["lower_bit"] = lower_bit_current_scan_chain
                        scan_chains_bit_positions[scan_chain]["upper_bit"] = (
                            lower_bit_current_scan_chain + int(scan_chains[scan_chain].scan_chain_bitwidth) - 1
                        )

                        lower_bit_current_scan_chain = int(scan_chains_bit_positions[scan_chain]["upper_bit"]) + 1

            else:
                modified_netlist += line

        with open(self.netlist_modified, "w") as f:
            f.write(modified_netlist)

    def run(self):

        print("Starting wireing of the scan-chain architecture...\n")
        self.wire_scan_chain()
        print("Wireing of the scan-chain architecture finished. \n")
