#! /bin/bash

# Script to automate generating a bitstream capable of running the OpenFI4ASIC runtime

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$EISV_CONFIG" ]; then
    echo -e "\e[0;31mERROR\e[0m: EISV_CONFIG is not set, please set it to a valid EIS-V configuration"
    exit 1
fi

VIVADO_PROJECT_NAME="OpenFI4ASICSystem"
VIVADO_PROJECT_DIR="$(realpath $SCRIPT_DIR/../../../runtime/vivado/$VIVADO_PROJECT_NAME\_$EISV_CONFIG)"
export VIVADO_PROJECT_FILE="$VIVADO_PROJECT_DIR/$VIVADO_PROJECT_NAME.xpr"

if ! [ -d "$VIVADO_PROJECT_DIR" ]; then
    echo -e "\e[0;31mERROR\e[0m: Vivado project directory does not exist. Run runme_create_vivado_project.sh first."
    exit 1
fi

BITSTREAM_DEST_DIR="$SCRIPT_DIR/../bitstreams"
REPORT_DIR="$SCRIPT_DIR/../reports/$EISV_CONFIG/"
mkdir -p $REPORT_DIR
mkdir -p $BITSTREAM_DEST_DIR
export BITSTREAM_DEST=$(realpath $BITSTREAM_DEST_DIR)/$EISV_CONFIG.bit
export REPORT_DIR=$(realpath $REPORT_DIR)

vivado -mode batch -source $SCRIPT_DIR/generate_bitstream.tcl

