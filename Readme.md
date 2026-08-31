# OpenFI4ASIC

This repository contains a fault instrumentation tool and a corresponding FPGA runtime for performing fast fault injection campaigns on post-synthesis netlists, called OpenFI4ASIC[1].

The standard cells implementing flip-flops are transformed and inserted into a scan-chain, which can be used together with a clock-gating mechanism to inject bit-flips into the design.

This work is based on the methodology and code of OpenFlint[2].
The fault instrumentation is simplified to only cover bit-flips in flip-flops, but can easily be extended to also cover e. g. stuck-at faults.

To speed up fault injection campaigns an FPGA based fault-emulation system specifically designed for emulating fault-injection on processor cores is provided.
Using this framework full coverage of the single bit fault space can be obtained.

## Getting Started

This section provides an example of how to perform instrumentation and fault injection on simple design synthesized for the [NangateOpenCellLibrary](https://si2.org/open-cell-and-free-pdk-libraries/).

Three main ingredients are required to perform a fault emulation campaign:
- A post-synthesis netlist
- A model of the cell library for emulating non instrumented cells
- An instrumented model of the cells, which faults are to be injected into, and meta-information describing these to the instrumentation tool.

Instrumented flip flop models for the NangateOpenCellLibrary (`lib/NANGATE/DFF_X1_flt.vhd`) are provided. The next section explains how to obtain an Vivado compatible emulation model.

For an example of how to use OpenFI4ASIC to do a full FI emulation campaign on a processor design see [examples/eis-v-case-study/README.md](examples/eis-v-case-study/README.md). The following section describe the basic usage of the fault instrumentation tool only.

### Obtaining a Vivado Compatible Model of the NangateOpenCellLibrary

The NangateOpenCellLibrary can obtained from [NangateOpenCellLibrary](https://si2.org/open-cell-and-free-pdk-libraries/).
A VHDL model is located at `Front_End/Vital/`.
To remove VITAL contructs incompatible with Vivado from `NangateOpenCellLibrary.vhd` the script located at `scripts/strip_nangate.py` can be used like this:
```bash
python3 scripts/strip_nangate.py -i <Path-to-NangateOpenCellLibrary.vhd> -o <Path-to-Output>
```

### Instrumentation

To instrument a post synthesis netlist run the following:
```bash
mkdir output
python3 openfi4asic.py \
    -i examples/<input_netlist>.v \ # Netlist file to instrument
    -c DFF_X1,DFF_X2 \ # Flip flops to instrument
    --top saa \
    -l <library_information>.json \
    -o output \
    --selected <include_modules>.csv \
    --excluded <exclude_modules>.csv
```

This will generate the two files `output/<input_netlist>_flt.v` containing the modified netlist with instrumented flip-flops connected by a scan-chain and `output/scan_chain_architecture.json` describing where on the scan-chain each instrumented flip-flop is located.

For more details in the `<library_information>.json`, `<include_modules>.csv` and `<exclude_modules>.csv` files the provided example at `examples/eis-v-case-study`. The relevant files are in `examples/eis-v-case-study/openfi4asic_files`.

### Emulation on FPGA

The fault-emulation environment was developed and tested on a Digilent Zedboard, containing a Xilinx Zynq-7000 SoC-FPGA.
Communication, initialization and sequecing are handled by a C program running the on the SoC.

A variety of AXI peripherals were developed to perform the necessary operations like clock-gating and reading or writing from the processor memories.

An example Vivado project implemeting the complete system is provided under `runtime/vivado/OpenFI4ASICSystem`.

An example C program, which injects a fault into each flip-flop of the design in each cycle of program execution is provided under `runtime/sw`.

## Contributors

- Jasper Homann (Technische Universität Braunschweig, [Chair for Chip Design for Embedded Computing](https://www.tu-braunschweig.de/eis))
- Eike Trumann (Technische Universität Braunschweig, [Chair for Chip Design for Embedded Computing](https://www.tu-braunschweig.de/eis))
- Lucian Lohse (Technische Universität Braunschweig, [Chair for Chip Design for Embedded Computing](https://www.tu-braunschweig.de/eis))
- Moritz Weißbrich (Technische Universität Braunschweig, [Chair for Chip Design for Embedded Computing](https://www.tu-braunschweig.de/eis))
- Christian Ewert (During his master thesis at Leibniz Universität Hannover, [Institut für Mikroelektronische Systeme](https://www.ims.uni-hannover.de/de/))
- Guillermo Payá Vayá ((Technische Universität Braunschweig, Head of [Chair for Chip Design for Embedded Computing](https://www.tu-braunschweig.de/eis)))

## License

This open-source project is distributed under the MIT license.

## Citation

The OpenFI4ASIC framework is described in the following paper. If you are using OpenFI4ASIC, please cite as follows:

> [1] Homann, J.; Trumann, E.; Durak, U.; Payá-Vayá, G. OpenFI4ASIC:
> An Open-Source Fault Injection Framework for ASIC Designs via FPGA-Based Rapid Prototyping.
> In Computer Safety, Reliability, and Security: 45th International Conference, SAFECOMP 2026, Valencia, Spain, September 23–25, 2026,
> Proceedings; Springer: Cham, 2026; Vol. 16868, pp 3–17. https://doi.org/10.1007/978-3-032-34867-8_1.

The original HW-FI approach was initially presented in the following paper:

> [2] R. Nowosielski, L. Gerlach, S. Bieband, G. Paya-Vaya, and H. Blume,
> “FLINT: Layout-oriented FPGA-based methodology for fault tolerant ASIC design,”
> Proceedings - Design, Automation and Test in Europe, DATE, vol. 2015-April, pp. 297–300, Apr. 2015, doi: https://doi.org/10.7873/DATE.2015.0278.
