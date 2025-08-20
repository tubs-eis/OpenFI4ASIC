#ifndef SCAN_CHAIN_H
#define SCAN_CHAIN_H

#include "clk_gate.h"

typedef struct {
    uint32_t volatile scan_in;
} scan_chain_phys_t;

static inline void scan_chain_set_input(scan_chain_phys_t* scan_chain, uint32_t input) {
    scan_chain->scan_in = input;
}

typedef struct {
    scan_chain_phys_t* scan_chain_phys;
    clk_gate_phys_t* clk_gate_phys;
} scan_chain_t;

static inline void scan_chain_flip_bit(scan_chain_t* scan_chain, uint32_t depth, uint32_t bit) {
    scan_chain_set_input(scan_chain->scan_chain_phys, 1 << bit);
    clk_gate_run_for_n_cycles_blocking(scan_chain->clk_gate_phys, depth+1);
}

#endif
