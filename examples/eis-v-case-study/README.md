# EIS-V Case Study

This example illustrates how one can use OpenFI4ASIC to evaluate the fault tolerance of a processor by emulating it on a Xilinx FPGA.

The following software versions were used to test the files in this directory:

- Ubuntu 24.04.3 LTS
- Python 3.12.3
- Vivado/Vitis 2024.2
- Clang 20.0

Additionally a modified version of the NanGate 45 nm Open Cell Library is required to synthesize the FPGA bitstreams (see ../../Readme.md for instructions of howto obtain this).

All snippets and examples assume that the current working directory is `examples/eis-v-case-study` (where this file located).

## Quick-Start using Pregenerated Bitstreams

Ready to use Bitstreams for the Digilent ZedBoard (tested on Rev. D) are provided in `bitstreams`.

And follow the Vitis project setup instructions in `Readme.md`.
After **both** the PROG and UART ports to your PC you can use Vitis to program the FPGA and compile and launch the OpenFI4ASIC ARM software.
Connecting a terminal to the UART should show the following message:
```
Welcome to the OpenFI4ASIC FI shell
Type 'help' for a list of commands
>
```

There is two ways of interacting with the OpenFI4ASIC FI Shell:
1. Manually enter commands to do basic tests and debug programs
2. Using the Host PC driver software to perform automated FI Campaigns

### Compiling the FI Benchmark Programs

To compile the benchmarks execute:
`./scripts/runme_compile <program>`
Where `<program>` is the stem of a `.c` file in `./programs`.
This will produce a flat RV32I binary at `./programs/bin/<program>.bin`, which can be uploaded to the OpenFI4ASIC runtime using the `upload_program` command.

Precompiled binaries for three example programs (ISQRT, BUBBLESORT and CRC32) are provided as part of this repository.

### Using the Host PC FI Campaign Automation

Running an FI Campaign requires:
- Compiled program binaries
- A configuration file describing the benchmarks and their expected output

Below is a commented version of the CRC32 benchmark description used in the case study.
```toml
[tests.crc_32]
binary = "programs/bin/crc_32.bin" # Path to the binary to upload
copy_dmem = true # Whether to initialize the data memory
total_cycles = 1200 # Estimate of the benchmark's cycle count
result_start = 896 # Result start address in 4-byte words
result_length = 1 # Result length in 4-byte words
pc_reference = 0x10 # PC reference
reference = [0x421ea109] # Reference data
```

To run an FI Campaign on some program execute:
```bash
python3 scripts/runme_fi_run.py \
    --tests tests.toml \ # Test definition file
    --test crc_32 \ # Test entry to use
    --device /dev/ttyACM0 \ # UART device file
    --baud 115200 \ # Baud Rate (115200 for the provided bitstreams)
    --config single_cycle_rv32i # Name of the configuration (used to find the metadata to know the amount of flip-flops)
```

The script will first do a binary search to find the actual cycle count of program execution on the design.
It will then use the OpenFI4ASIC driver to run a complete FI Campaign on the design FFs.
The resulting log files are placed in `examples/eis-v-case-study/evaluation/data`.

Sample results, obtained by running FI campaigns with the provided software and bitstreams are provided as part of this repository.

### Evaluating the FI Logs

In `evaluation/fi_eval` sample evaluation code analyzing the error rate for diferent FF categories is provided.
To evaluate the results run:
```bash
python3 -m evaluation.fi_eval.main \
    --output netlists/ \ # Netlist directory to get design and instrumentation metadata
    --data evaluation/data/` # FI log file directory
```

Running this should print a formatted markdown table showing the error rates in certain parts of microarchitecture (RF, Pipeline, Whole Design) for the different programs.

## Running Netlist Instrumentation and FPGA Implementation Yourself

This section is intended for those, who want to build their own OpenFI4ASIC platform and use it as a starting point to evaluate their own ASIC design. See the previous section on how to use the provided bitstreams to evaluate software running on the different processor architectures.

### Netlist Instrumentation

The unmodified EIS-V netlists for five different configurations synthesized by CADENCE GENUS 244 are provided in `netlists/<EISV_CONFIG>/eisv_core_wrapper.v`.
To perform netlist instrumentation execute the following:
```bash
export EISV_CONFIG=<EISV_CONFIG> # Set the EISV_CONFIG so the script knows where to place input and output files
./scripts/runme_openfi4asic.sh # Run netlist instrumentation
```

`./scripts/runme_openfi4asic.sh` internally calls the OpenFI4ASIC netlist instrumentation tool to replace the FF instances in the targeted modules with their instrumented variants.
Running the tool produces two files:
1. The instrumented netlist `netlists/<EISV_CONFIG>/eisv_core_wrapper_normalized_flt.v`
2. A JSON file describing where on the scan chain each instrumented FF was places `netlists/<EISV_CONFIG>/scan_chain_architecture.json`

### FPGA Implementation

The FPGA bitstream is created in two steps:
1. Creation of a Vivado project, including a block design connecting the instrumented design, the AXI peripherals and the ARM Core
2. Running synthesis and implementation to produce a bitstream

The project can be created by executig:
```bash
export EISV_CONFIG=<EISV_CONFIG> # Set the EIS-V config to select the netlist to include in the design
./scripts/runme_create_vivado_project.sh # Create the Vivado project
```

This will create a Vivado project at `../../runtime/vivado/OpenFI4ASICSystem_<EISV_CONFIG>` and execute the TCL script at `./scripts/create_vivado_project.tcl` importing the relevant files and creating the block design.

To obtain a bitstream run:
```bash
./scripts/runme_implementation.sh
```

This will execute the TCL script at `./scripts/generate_bitstream.tcl` to run FPGA synthesis and implementation using Vivado. The resulting bitstream will be written to `./bitstreams/<EISV_CONFIG>.bit`.
This bistreams can be used as described in the previous section to run fault emulation campaigns on the design.
