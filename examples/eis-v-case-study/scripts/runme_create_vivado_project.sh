#! /bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$EISV_CONFIG" ]; then
    echo -e "\e[0;31mERROR\e[0m: EISV_CONFIG is not set, please set it to a valid EIS-V configuration"
    exit 1
fi

EISV_FLT_NETLIST_REL="$SCRIPT_DIR/../netlists/$EISV_CONFIG/eisv_core_wrapper_normalized_flt.v"
if [ ! -f $EISV_FLT_NETLIST_REL ]; then
    echo -e "\e[0;31mERROR\e[0m: Missing netlist file at $EISV_FLT_NETLIST_REL"
    exit 1
fi
export EISV_FLT_NETLIST=$(realpath $EISV_FLT_NETLIST_REL)

EISV_INFO_FILE_REL="$SCRIPT_DIR/../netlists/$EISV_CONFIG/eisv_info"
if [ ! -f $EISV_INFO_FILE_REL ]; then
    echo -e "\e[0;31mERROR\e[0m: Missing eisv_info file at $EISV_INFO_FILE_REL"
    exit 1
fi
export EISV_INFO_FILE=$(realpath $EISV_INFO_FILE_REL)

if [ -z "$NANGATE_PATH" ]; then
    echo -e "\e[0;31mERROR\e[0m: Missing env var NANGATE_PATH please point it to a NanGate installation"
    exit 1
fi

if [ ! -d "$NANGATE_PATH" ]; then
  echo -e "\e[0;31mERROR\e[0m: $NANGATE_PATH does exist."
  exit 1
fi


cd $SCRIPT_DIR/../../../runtime

# Always rebuild projects from scratch to reduce risk of invalid state from vivado
rm -rf vivado/OpenFI4ASICSystem_$EISV_CONFIG
vivado -mode batch -source $SCRIPT_DIR/create_vivado_project.tcl