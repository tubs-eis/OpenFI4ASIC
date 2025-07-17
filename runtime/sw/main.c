#include <stdint.h>
#include <string.h>
#ifdef MULTIBOOT
#include "xdevcfg.h"
#endif

#include <stdio.h>
#include "program.h"


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

uint32_t DMEM_REFERENCE[RAM_SIZE/4];
uint32_t PC_REFERENCE;


struct Clk {
    uint32_t volatile en;
    uint32_t volatile mode;
    uint64_t volatile count;
    uint32_t volatile callback;
};

typedef struct {
	int control_flow_violation;
	int data_flow_violation;
	int wrong_result;
} fault_run_result;

struct Clk* scanChainClock = (struct Clk*) SC_CLK_ADDR;
struct Clk* mainClk = (struct Clk*) MAIN_CLK_ADDR;

void copy_program_to_imem(uint32_t const * program, uint32_t volatile* imem, int num_words) {
    for (int i = 0; i < num_words; i++) {
        imem[i] = program[i];
    }
}


void zero_dmem(uint32_t volatile* dmem, int num_words) {
    for (int i = 0; i < num_words; i++) {
        dmem[i] = 0;
    }
}

void cpy_dmem(uint32_t volatile* dmem, uint32_t* copy, int num_words) {
    for (int i = 0; i < num_words; i++) {
        copy[i] = dmem[i];
    }
}

void print_dmem(uint32_t volatile* dmem, int num_words) {
    for (int i = 0; i < num_words; i++) {
        printf("%d: %08lx\n", i, dmem[i]);
    }
}

uint32_t read_pc(void) {
	return *((uint32_t volatile*) PC_MONITOR);
}

void print_pc() {
	uint32_t test = read_pc();
	printf("PC: %08lx\n", test);
}


//clk-functions:

int start(uint32_t volatile* clk) {
    *clk = 1;
    return 0;
}

int stop(uint32_t volatile* clk) {
    *clk = 0;
    return 0;
}

int runForN(uint32_t volatile* clk, uint64_t n) {
    if (n == 0) return 1;
    *(clk+1) = 1;
    *((uint64_t*)(clk+2)) = n;
    *clk = 1;
    while(*(clk+4) == 0);
    *clk = 0;
    return 0;
}

int step(uint32_t volatile* clk) {
    runForN(clk, 1);
    return 0;
}


//scan chain

int bitErrorN(uint32_t n, uint32_t k) {
    *((uint32_t*)(SC_IN)) = 1<<k;
    runForN((uint32_t volatile*) SC_CLK_ADDR, n+1);
    return 0;
}

void reset() {
	*((uint32_t volatile*) RESET_ADDR) = 0;
    runForN((uint32_t volatile*) MAIN_CLK_ADDR, 3); // For some reason we need three cycles here?
    *((uint32_t volatile*) RESET_ADDR) = 0;
    zero_dmem((uint32_t volatile*)RAM_ADDR, RAM_SIZE/4);
    *((uint32_t volatile*)RAM_ADDR) = FIB_INPUT;
    runForN((uint32_t volatile*) SC_CLK_ADDR, 1);
    return;
}

void fault_run(int ff, int target_cycle, int fault) {
	reset();
	runForN((uint32_t volatile*) MAIN_CLK_ADDR, target_cycle+1);
	if (fault) {
		bitErrorN(ff, 0);
	}
	runForN((uint32_t volatile*) MAIN_CLK_ADDR, TOTAL_CYCLES - target_cycle);
}

fault_run_result check_result(void) {
	fault_run_result rv;
	rv.control_flow_violation = (PC_REFERENCE != read_pc());
	rv.data_flow_violation = ((memcmp((const void*) RAM_ADDR, DMEM_REFERENCE, RAM_SIZE)) != 0);
	rv.wrong_result = (((uint32_t volatile*)RAM_ADDR)[RESULT_ADDR] != DMEM_REFERENCE[RESULT_ADDR]);
	return rv;
}

void print_diff(void) {
    printf("DIFF REFERENCE (LEFT) <-> FAULT RUN (RIGHT):\n");
    if (PC_REFERENCE != read_pc()) {
        printf("%8s: %08x <-> %08x\n", "PC", PC_REFERENCE, read_pc());
    } else {
        printf("%8s: MATCH\n", "PC");
    }
    for (int word = 0; word < RAM_SIZE / 4; word++) {
        uint32_t ref = DMEM_REFERENCE[word];
        uint32_t run = ((const uint32_t volatile*) RAM_ADDR)[word];
        if (ref != run) {
            printf("%08x: %08x <-> %08x\n", word * 4, ref, run);
        }
    }
}

int main() {
	printf("-------------\n\n\n\n");

    copy_program_to_imem(PROGRAM, (uint32_t volatile *) ROM_ADDR, PROGRAM_LENGTH / 4);
    // print_dmem((uint32_t volatile *) ROM_ADDR, PROGRAM_LENGTH / 4);

	reset();
    runForN((uint32_t volatile*) MAIN_CLK_ADDR, TOTAL_CYCLES);
    //runForN((uint32_t volatile*) MAIN_CLK_ADDR, 10);

	print_dmem((uint32_t volatile*)RAM_ADDR, 16);
	print_pc();

	cpy_dmem((uint32_t volatile*)RAM_ADDR, DMEM_REFERENCE, RAM_SIZE / 4);
    PC_REFERENCE = read_pc();



	// for (int ff = 1; ff < 2; ff++) {
	// 	for (int cycle = 24; cycle < 26; cycle++) {
	// 		for (int i = 0; i < 10; i++) {
	// 			printf("----------------\nFF: %d Cycle: %d\n", ff, cycle);
	// 			fault_run(ff, cycle, 1);
	// 			print_dmem((uint32_t volatile*)RAM_ADDR, 16);
	// 			print_pc();
	// 		}
	// 	}
	// }

	// int ff = 1;
	// int err_cycle = 24;

	// printf("----------------\nFF: %d Cycle: %d\n", ff, err_cycle);

	// reset();
	// for (int i = 0; i < err_cycle+1; i++) {
	// 	step((uint32_t volatile*) MAIN_CLK_ADDR);
	// 	print_pc();
	// 	print_dmem((uint32_t volatile*)RAM_ADDR, 8);
	// }

	// printf("Injecting fault!\n");
	// bitErrorN(ff, 0);
	// for (int i = 0; i < TOTAL_CYCLES - err_cycle; i++) {
	// 	step((uint32_t volatile*) MAIN_CLK_ADDR);
	// 	print_pc();
	// 	print_dmem((uint32_t volatile*)RAM_ADDR, 8);
	// }

	// print_dmem((uint32_t volatile*)RAM_ADDR, 16);
	// print_pc();


//	int ff = 0;
//	int err_cycle = 8;
//
//	fault_run(ff, err_cycle, 1);
//	fault_run_result result = check_result();
//	putchar('0' + ((result.control_flow_violation << 0) | (result.data_flow_violation << 1) | (result.wrong_result << 2)));

    for (int ff = 0; ff < SC_DEPTH; ff++) {
        for (int err_cycl = 0; err_cycl < TOTAL_CYCLES; err_cycl++) {
        	fault_run(ff, err_cycl, 1);

            // print_dmem((uint32_t volatile*)RAM_ADDR, 1024/4);
	        // print_pc();
            // print_diff();

        	fault_run_result result = check_result();
        	putc('0' + ((result.control_flow_violation << 0) | (result.data_flow_violation << 1) | (result.wrong_result << 2)), stdout);
        }
        putc('\n', stdout);
    }
    

    // fault_run(5, 25, 1);
    // print_dmem((uint32_t volatile*)RAM_ADDR, 16);
	// print_pc();

    // fault_run_result result = check_result();
    // putchar('0' + ((result.control_flow_violation << 0) | (result.data_flow_violation << 1) | (result.wrong_result << 2)));

    return 0;
}