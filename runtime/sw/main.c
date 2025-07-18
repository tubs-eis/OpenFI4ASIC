#include <stdint.h>
#include <string.h>
#ifdef MULTIBOOT
#include "xdevcfg.h"
#endif

#include <stdio.h>
#include <stdbool.h>
#include "program.h"

#include "devices/clk_gate.h"
#include "devices/scan_chain.h"
#include "devices/pc_monitor.h"
#include "devices/memory.h"
#include "devices/reset_device.h"

#define MAIN_CLK_ADDR 0x40000000
#define SC_CLK_ADDR 0x40001000
#define SC_IN 0x40002000
#define RESET_ADDR 0x40003000
#define PC_MONITOR 0x40004000

#define ROM_ADDR 0x42000000
#define RAM_ADDR 0x44000000

#define SC_DEPTH 1706

#define RAM_SIZE 4096
#define RESULT_ADDR 1
#define TOTAL_CYCLES 130
#define FIB_INPUT 0x05

#include "fi_runtime.h"

clk_gate_phys_t* main_clk_gate = (clk_gate_phys_t*) MAIN_CLK_ADDR;
clk_gate_phys_t* scan_clk_gate = (clk_gate_phys_t*) SC_CLK_ADDR;

scan_chain_phys_t* scan_chain_phys = (scan_chain_phys_t*) SC_IN;

scan_chain_t scan_chain;

pc_monitor_phys_t* pc_monitor = (pc_monitor_phys_t*) PC_MONITOR;

reset_phys_t* reset_device = (reset_phys_t*) RESET_ADDR;

memory_t imem = {
    .base_addr = (uint32_t volatile*) ROM_ADDR,
    .size = RAM_SIZE / 4
};

memory_t dmem = {
    .base_addr = (uint32_t volatile*) RAM_ADDR,
    .size = RAM_SIZE / 4
};

struct Clk* scanChainClock = (struct Clk*) SC_CLK_ADDR;
struct Clk* mainClk = (struct Clk*) MAIN_CLK_ADDR;

void print_dmem(uint32_t volatile* dmem, int num_words) {
    for (int i = 0; i < num_words; i++) {
        printf("%d: %08lx\n", i, dmem[i]);
    }
}

void print_pc() {
	uint32_t test = pc_monitor_read_pc(pc_monitor);
	printf("PC: %08lx\n", test);
}

int main() {
    // Initialisation
    scan_chain = (scan_chain_t){
        .scan_chain_phys = scan_chain_phys,
        .clk_gate_phys = scan_clk_gate
    };

	printf("-------------\n\n\n\n");

    fi_runtime_t fi_runtime;

    fi_runtime_new(&fi_runtime, imem, dmem, main_clk_gate, scan_chain, pc_monitor, reset_device);

    fi_runtime_set_program(&fi_runtime, PROGRAM, PROGRAM_LENGTH / 4);

    fi_runtime_reference_run(&fi_runtime, TOTAL_CYCLES);

    printf("FF fault injection results:\n");

    for (int ff = 0; ff < SC_DEPTH; ff++) {
        for (int err_cycl = 0; err_cycl < TOTAL_CYCLES; err_cycl++) {
            fault_run_result_t result = fi_runtime_ff_fi_run(&fi_runtime, ff, err_cycl, TOTAL_CYCLES);

        	putc('0' + ((result.control_flow_violation << 0) | (result.data_flow_violation << 1) | (result.wrong_result << 2)), stdout);
        }
        putc('\n', stdout);
    }

    return 0;
}
