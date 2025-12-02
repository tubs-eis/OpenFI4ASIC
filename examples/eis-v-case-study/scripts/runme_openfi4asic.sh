#! /bin/bash

# Script to automate the OpenFI4ASIC flow

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Check env vars are set
if [ -z "$EISV_CONFIG" ]; then
    echo -e "\e[0;31mERROR\e[0m: EISV_CONFIG is not set, please set it to a valid EIS-V configuration"
    exit 1
fi

# Artifact paths
NETLISTDIR="$SCRIPT_DIR/../netlists/$EISV_CONFIG/"
EISV_NANGATE_NETLIST="$NETLISTDIR/eisv_core_wrapper.v"
EISV_NANGATE_NETLIST_NORMALIZED="$NETLISTDIR/eisv_core_wrapper_normalized.v"

echo "Removing extra linebreaks from GENUS output"
sed -z 's/\n \{7\}/ /g' $EISV_NANGATE_NETLIST > $EISV_NANGATE_NETLIST_NORMALIZED

echo "Performing Fault Instrumentation using OpenFI4ASIC"
python3 $SCRIPT_DIR/../../../openfi4asic.py \
    -i $EISV_NANGATE_NETLIST_NORMALIZED \
    -o $NETLISTDIR \
    --top eisv_core_wrapper \
    --selected $SCRIPT_DIR/../openfi4asic_files/eis-v_inject_modules.csv \
    --excluded $SCRIPT_DIR/../openfi4asic_files/eis-v_exclude_modules.csv \
    -c DFF_X1,DFF_X2 \
    -l $SCRIPT_DIR/../openfi4asic_files/library_information.json
