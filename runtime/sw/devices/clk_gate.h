#ifndef CLK_GATE_H
#define CLK_GATE_H

typedef struct {
    uint32_t volatile enable;
    uint32_t volatile mode;
    uint64_t volatile count;
    uint32_t volatile callback;
} clk_gate_phys_t;

static inline int clk_gate_run_for_n_cycles(clk_gate_phys_t* clk_gate, int cycles) {
    if (cycles == 0) return 1;
    clk_gate->mode = 1;
    clk_gate->count = cycles;
    clk_gate->enable = 1;
    while(clk_gate->callback == 0);
    clk_gate->enable = 0;
    return 0;
}

#endif
