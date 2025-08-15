#ifndef FI_RUNTIME_H
#define FI_RUNTIME_H

#include <stdlib.h>

#include "devices/memory.h"
#include "devices/pc_monitor.h"
#include "devices/clk_gate.h"
#include "devices/scan_chain.h"
#include "devices/reset_device.h"

typedef struct {
    uint32_t* program;
    uint32_t program_size;

    uint32_t pc_reference;
    uint32_t* dmem_reference;

    uint32_t result_addr;
    uint32_t result_length;

    memory_t imem;
    memory_t dmem;

    clk_gate_phys_t* main_clk_gate;

    scan_chain_t scan_chain;

    pc_monitor_phys_t* pc_monitor;

    reset_phys_t* reset;

    uint32_t total_cycles;
} fi_runtime_t;

typedef struct {
    int control_flow_violation;
    int data_flow_violation;
    int wrong_result;
} fault_run_result_t;

static inline void fi_runtime_new(fi_runtime_t* fi_runtime, memory_t imem, memory_t dmem, clk_gate_phys_t* main_clk_gate, scan_chain_t scan_chain, pc_monitor_phys_t* pc_monitor, reset_phys_t* reset) {
    fi_runtime->program = NULL;
    fi_runtime->program_size = 0;

    fi_runtime->imem = imem;
    fi_runtime->dmem = dmem;

    fi_runtime->pc_reference = 0;
    fi_runtime->dmem_reference = malloc(fi_runtime->dmem.size);

    fi_runtime->result_addr = 0;
    fi_runtime->result_length = 1;

    fi_runtime->main_clk_gate = main_clk_gate;

    fi_runtime->scan_chain = scan_chain;

    fi_runtime->pc_monitor = pc_monitor;

    fi_runtime->reset = reset;

    fi_runtime->total_cycles = 0;
}

static inline void fi_runtime_set_program(fi_runtime_t* fi_runtime, uint32_t* program, uint32_t size) {
    fi_runtime->program = program;
    fi_runtime->program_size = size;

    memory_fill(&fi_runtime->imem, 0, 0, fi_runtime->imem.size / 4);
    memory_copy_from(&fi_runtime->imem, fi_runtime->program, 0, fi_runtime->program_size);
}

static inline void fi_runtime_set_total_cycles(fi_runtime_t* fi_runtime, uint32_t total_cycles) {
    fi_runtime->total_cycles = total_cycles;
}

static inline void fi_runtime_set_result_addr_length(fi_runtime_t* fi_runtime, uint32_t result_addr, uint32_t result_length) {
    fi_runtime->result_addr = result_addr;
    fi_runtime->result_length = result_length;
}

static inline void fi_runtime_reset(fi_runtime_t* fi_runtime) {
    reset_write(fi_runtime->reset, RESET_ACTIVE);
    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, 3); // For some reason we need three cycles here?
    reset_write(fi_runtime->reset, RESET_ACTIVE);
    memory_fill(&fi_runtime->dmem, 0, 0, fi_runtime->dmem.size / 4);

    // TODO: The core cannot write here, this is only needed when doing imem bit flips
    // memory_fill(&fi_runtime->imem, 0, 0, RAM_SIZE / 4);
    // memory_copy_from(&fi_runtime->imem, fi_runtime->program, 0, fi_runtime->program_size);

    // *((uint32_t volatile*)RAM_ADDR) = FIB_INPUT;
    clk_gate_run_for_n_cycles(fi_runtime->scan_chain.clk_gate_phys, 1);
}

static inline void fi_runtime_reference_run(fi_runtime_t* fi_runtime) {
    fi_runtime_reset(fi_runtime);
    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, fi_runtime->total_cycles);

    memory_copy_to(&fi_runtime->dmem, fi_runtime->dmem_reference, 0, fi_runtime->dmem.size / 4);
    fi_runtime->pc_reference = pc_monitor_read_pc(fi_runtime->pc_monitor);
}

static inline fault_run_result_t fi_runtime_check_result(fi_runtime_t* fi_runtime) {
    fault_run_result_t rv;
    rv.control_flow_violation = (fi_runtime->pc_reference != pc_monitor_read_pc(fi_runtime->pc_monitor));
    rv.data_flow_violation = 0; // !memory_compare(&fi_runtime->dmem, fi_runtime->dmem_reference, 0, RAM_SIZE / 4);

    bool correct_result = true;
    for (uint32_t offset = 0; offset < fi_runtime->result_length; offset++) {
        uint32_t addr = fi_runtime->result_addr + offset;
        if (memory_read(&fi_runtime->dmem, addr) != fi_runtime->dmem_reference[addr]) {
            correct_result = false;
            break;
        }
    }
    rv.wrong_result = !correct_result;
    return rv;
}

static inline fault_run_result_t fi_runtime_ff_fi_run(fi_runtime_t* fi_runtime, uint32_t fault_ff, uint32_t fault_cycle) {
    fi_runtime_reset(fi_runtime);
    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, fault_cycle+1);

    scan_chain_flip_bit(&fi_runtime->scan_chain, fault_ff, 0);

    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, fi_runtime->total_cycles - fault_cycle-1);

    return fi_runtime_check_result(fi_runtime);
}

static inline fault_run_result_t fi_runtime_mem_fi_run(fi_runtime_t* fi_runtime, memory_t* mem, uint64_t bit, uint32_t fault_cycle) {
    fi_runtime_reset(fi_runtime);
    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, fault_cycle+1);

    memory_flip_bit(mem, bit);

    clk_gate_run_for_n_cycles(fi_runtime->main_clk_gate, fi_runtime->total_cycles - fault_cycle);

    return fi_runtime_check_result(fi_runtime);
}

static inline fault_run_result_t fi_runtime_imem_fi_run(fi_runtime_t* fi_runtime, uint64_t bit, uint32_t fault_cycle) {
    return fi_runtime_mem_fi_run(fi_runtime, &fi_runtime->imem, bit, fault_cycle);
}

static inline fault_run_result_t fi_runtime_dmem_fi_run(fi_runtime_t* fi_runtime, uint64_t bit, uint32_t fault_cycle) {
    return fi_runtime_mem_fi_run(fi_runtime, &fi_runtime->dmem, bit, fault_cycle);
}

#endif
