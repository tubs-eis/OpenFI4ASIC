#! /bin/bash

# Script to compile an app for the fault OpenFI4ASIC runtime

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

USAGE="runme_compile.sh <app_name>"

# Check arguments
if [ "$#" -ne 1 ]; then
    echo "Missing required argument <app_name>"
    exit 1
fi

APP_NAME=$1

SRC_DIR="$SCRIPT_DIR/../programs/src"
SRC_FILE="$SCRIPT_DIR/../programs/src/$APP_NAME.c"
LINKER_FILE="$SCRIPT_DIR/../programs/src/link.ld"

BUILDDIR="$SCRIPT_DIR/../programs/build"
mkdir -p $BUILDDIR

OBJ_FILE="$BUILDDIR/$APP_NAME.o"
BIN_FILE="$SCRIPT_DIR/../programs/bin/$APP_NAME.bin"

if ! [ -f "$SRC_FILE" ]; then
    echo "Missing source file $SRC_FILE"
    exit 1
fi

# export EISV_CONFIG_DIR=$(realpath eis-v_config)

RISCVCCFLAGS="--target=riscv32-unknown-eabi -march=rv32i -nostdlib -O3 -flto"
clang $RISCVCCFLAGS -T $LINKER_FILE -o $OBJ_FILE $SRC_FILE
llvm-objcopy -O binary $OBJ_FILE $BIN_FILE

# cp "$SRC_FILE" "$EISV_APP_DIR/$APP_NAME.c"
# make -C "CORE_EIS-V_2_0" "$BIN_FILE" RISCV_LINKER_FILE=$(realpath programs/src/link.ld)
# make -C "CORE_EIS-V_2_0" "$BIN_FILE" RISCV_LINKER_FILE=$(realpath programs/src/link_2k.ld) RISCVCCFLAGS="--target=riscv32-none-eabi -march=rv32i -nostdlib -O3 -flto"
# cp "$BIN_FILE" "$BIN_DIR"

