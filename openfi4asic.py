# Driver for netlist modification using OpenFI4ASIC

import argparse
from pathlib import Path
from dataclasses import dataclass
from typing import *
import json

from openfi4asic.netlist_modification import FaultNetlistModifier, ScanChainArchitect, ScanChainWirer


def main() -> None:
    options = OpenFI4ASICOptions.from_argparse_namespace(get_arguments())

    output_file_name = f"{options.input_file.stem}{options.file_suffix}{''.join(options.input_file.suffixes)}"

    netlist_modifier = FaultNetlistModifier(
        module_name_extension=options.instance_suffix,
        fault_netlist_original=options.input_file,
        fault_netlist_modified=options.output_dir.joinpath(output_file_name),
        excluded_modules_file=options.excluded_modules_file,
        selected_modules_file=options.selected_modules_file,
        top_module=options.top_module,
        cells_to_instrument=options.cells_to_instrument,
    )

    netlist_modifier.run()

    with open(options.library_information, "r") as f:
        library_information = json.loads(f.read())

    scan_chain_architect = ScanChainArchitect(
        top_module=options.top_module,
        name_extension=options.instance_suffix,
        module_information=library_information,
        scan_chain_information=netlist_modifier.netlist_informations,
        scan_chain_architecture_file=options.output_dir.joinpath("scan_chain_architecture.json"),
        scan_chain_bitwidth=options.scan_chain_bitwidth,
        num_scan_chains=options.num_scan_chains,
    )

    scan_chain_architect.run()

    scan_chain_wirer = ScanChainWirer(
        netlist_modified=options.output_dir.joinpath(output_file_name),
        scan_chain_architecture=scan_chain_architect.scan_chain_architecture,
    )

    scan_chain_wirer.run()


@dataclass
class OpenFI4ASICOptions:
    input_file: Path
    output_dir: Path
    instance_suffix: str
    file_suffix: str
    top_module: str
    selected_modules_file: Path
    excluded_modules_file: Path
    scan_chain_bitwidth: int
    num_scan_chains: int
    library_information: Path
    cells_to_instrument: List[str]

    @classmethod
    def from_argparse_namespace(cls, namespace: argparse.Namespace) -> Self:
        args = namespace.__dict__
        return cls(
            input_file=Path(args["input"]),
            output_dir=Path(args["out_dir"]),
            instance_suffix=args["instance_suffix"],
            file_suffix=args["file_suffix"],
            top_module=args["top"],
            selected_modules_file=args["selected"],
            excluded_modules_file=args["excluded"],
            scan_chain_bitwidth=args["scan_chain_width"],
            num_scan_chains=args["num_scan_chains"],
            library_information=args["library_information"],
            cells_to_instrument=args["cells_to_instrument"].split(","),
        )


def get_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        prog="OpenFI4ASIC Netlist Modification Tool",
        description="Performs netlist modification and scan chain insertion for post-synthesis verilog netlists.",
    )

    parser.add_argument("-i", "--input", help="Input netlist", required=True)
    parser.add_argument("-o", "--out-dir", help="Output directory for generated files", required=True)
    parser.add_argument("--top", help="Top level module of the design", required=True)
    parser.add_argument("--selected", help="csv file with modules to be included", required=True)
    parser.add_argument("--excluded", help="csv file with modules to be excluded", required=True)

    parser.add_argument("--instance-suffix", help="Suffix for module names", default="_flt")
    parser.add_argument("--file-suffix", help="Suffix for the modified netlist file stems", default="_flt")
    parser.add_argument(
        "-c", "--cells-to-instrument", help="Comma separated list of standard cells to instrument", required=True
    )

    parser.add_argument(
        "-w",
        "--scan-chain-width",
        help="Bitwidth of scan chain (number of bits stored in each instrumented cell)",
        default=1,
    )
    parser.add_argument("-n", "--num-scan-chains", help="Number of parallel scan chains to use", default=1)
    parser.add_argument("-l", "--library-information", help="Path to library information file", required=True)

    return parser.parse_args()


if __name__ == "__main__":
    main()
