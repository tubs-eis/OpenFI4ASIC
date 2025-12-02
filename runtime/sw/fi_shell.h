#ifndef FI_SHELL_H
#define FI_SHELL_H

#include <ctype.h>
#include <stdlib.h>
#include <stdio.h>
#include "fi_runtime.h"

#define FI_SHELL_MAX_LINEWIDTH 1024

typedef struct {
    fi_runtime_t* fi_runtime;
    char* linebuf;
    size_t parse_index;
} fi_shell_t;

typedef struct {
    char const* command_str;
    char const* help_str;
    void (*command_function) (fi_shell_t*);
} fi_shell_command_t;

fi_shell_command_t COMMANDS[];
int COMMAND_COUNT;

void fi_shell_new(fi_shell_t* fi_shell, fi_runtime_t* fi_runtime) {
    // Disable buffering on stdin/stdout
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);

    fi_shell->fi_runtime = fi_runtime;
    fi_shell->linebuf = malloc(FI_SHELL_MAX_LINEWIDTH);
    fi_shell->parse_index = 0;
}

void fi_shell_getline(fi_shell_t* fi_shell) {
    int line_size = 0;
    fi_shell->linebuf[0] = '\0';

    while (1) {
        char c = getchar();
        // Special char handling
        if (c == '\n' || c == '\r') { // Line end
            putchar(c);
            break;
        }

        if (c == '\x7F') { // Backspace
            if (line_size > 0) {
                line_size--;
                fi_shell->linebuf[line_size] = '\0';

                putchar('\b');
                putchar(' ');
                putchar('\b');
            }
            continue;
        }

        // Echo character
        putchar(c);

        fi_shell->linebuf[line_size] = c;
        if (line_size < 1024) {
            line_size++;
        }
        fi_shell->linebuf[line_size] = '\0';
    }

    fi_shell->parse_index = 0;
}

char fi_shell_peek(fi_shell_t* fi_shell) {
    return fi_shell->linebuf[fi_shell->parse_index];
}

char fi_shell_consume(fi_shell_t* fi_shell) {
    char c = fi_shell->linebuf[fi_shell->parse_index];
    fi_shell->parse_index++;
    return c;
}

bool fi_shell_next_arg(fi_shell_t* fi_shell, char** arg) {
    // Skip whitespace
    while (fi_shell_peek(fi_shell) == ' ' || fi_shell_peek(fi_shell) == '\t') {
        fi_shell_consume(fi_shell);
    }

    // Check end of line
    if (fi_shell_peek(fi_shell) == '\0') {
        return false;
    }

    *arg = &fi_shell->linebuf[fi_shell->parse_index];
    // Consume argument
    while (fi_shell_peek(fi_shell) != ' ' && fi_shell_peek(fi_shell) != '\t' && fi_shell_peek(fi_shell) != '\0') {
        fi_shell_consume(fi_shell);
    }

    // Arguments before the last one need null terminators
    if (fi_shell_peek(fi_shell) != '\0') {
        fi_shell->linebuf[fi_shell->parse_index] = '\0';
        fi_shell_consume(fi_shell);
    }

    return true;
}

void fi_shell_help() {

    printf("OpenFI4ASIC Fault Injection Shell\n");
    printf("Command List:\n");
    for (int i = 0; i < COMMAND_COUNT; i++) {
        printf("    %s\n", COMMANDS[i].help_str);
    }
}

void fi_shell_upload_program(fi_shell_t* fi_shell) {
    char* program_size_str;
    if (!fi_shell_next_arg(fi_shell, &program_size_str)) {
        printf("Missing required argument 'program size' for upload_program!\n");
        return;
    }

    int program_size = atoi(program_size_str);
    uint8_t* program = (uint8_t*) malloc(program_size);

    char hex_buf[3];
    hex_buf[2] = '\0';
    int bytes_read = 0;
    int hex_chars_read = 0;
    while (bytes_read < program_size) {
        char c = getchar();
        if (isalnum((int)c)) {
            hex_buf[hex_chars_read] = toupper((int)c);
            hex_chars_read++;
        }

        if (hex_chars_read == 2) {
            uint8_t byte = strtol(hex_buf, NULL, 16);
            program[bytes_read] = byte;
            hex_chars_read = 0;
            bytes_read++;
        }
    }

    fi_runtime_set_program(fi_shell->fi_runtime, (uint32_t*) program, program_size / 4);
}

void fi_shell_upload_dmem(fi_shell_t* fi_shell) {
    char* dmem_size_str;
    if (!fi_shell_next_arg(fi_shell, &dmem_size_str)) {
        printf("Missing required argument 'dmem size' for upload_dmem!\n");
        return;
    }

    int upload_size = atoi(dmem_size_str);
    uint8_t* dmem = (uint8_t*) calloc(fi_shell->fi_runtime->dmem.size, 4);

    char hex_buf[3];
    hex_buf[2] = '\0';
    int bytes_read = 0;
    int hex_chars_read = 0;
    while (bytes_read < upload_size) {
        char c = getchar();
        if (isalnum((int)c)) {
            hex_buf[hex_chars_read] = toupper((int)c);
            hex_chars_read++;
        }

        if (hex_chars_read == 2) {
            uint8_t byte = strtol(hex_buf, NULL, 16);
            dmem[bytes_read] = byte;
            hex_chars_read = 0;
            bytes_read++;
        }
    }

    fi_runtime_set_uploaded_dmem(fi_shell->fi_runtime, (uint32_t*) dmem);
}

void fi_shell_clear_dmem(fi_shell_t* fi_shell) {
    fi_runtime_clear_dmem(fi_shell->fi_runtime);
}

void fi_shell_set_total_cycles(fi_shell_t* fi_shell) {
    char* arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'total_cycles' for set_total_cycles!\n");
    }
    int total_cycles = atoi(arg_str);

    fi_runtime_set_total_cycles(fi_shell->fi_runtime, total_cycles);
}

void fi_shell_set_timeout_cycles(fi_shell_t* fi_shell) {
    char* arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'timeout_cycles' for set_timeout_cycles!\n");
    }
    int timeout_cycles = atoi(arg_str);

    fi_runtime_set_timeout_cycles(fi_shell->fi_runtime, timeout_cycles);
}

void fi_shell_set_result(fi_shell_t* fi_shell) {
    char* arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'result_addr' for set_result!\n");
    }
    int result_addr = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'result_length' for set_result!\n");
    }
    int result_length = atoi(arg_str);

    fi_runtime_set_result_addr_length(fi_shell->fi_runtime, result_addr, result_length);
}

void fi_shell_set_done_addr(fi_shell_t* fi_shell) {
    char* arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'done_addr' for set)\n");
    }
    int done_addr = atoi(arg_str);

    fi_runtime_set_done_addr(fi_shell->fi_runtime, done_addr);
}

void fi_shell_dump_memory(fi_shell_t* fi_shell, memory_t* memory) {
    char* arg_str;
    int start_addr = 0;
    if (fi_shell_next_arg(fi_shell, &arg_str)) {
        start_addr = atoi(arg_str);
    }

    int size = memory->size - start_addr;
    if (fi_shell_next_arg(fi_shell, &arg_str)) {
        size = atoi(arg_str);
    }

    memory_print(memory, start_addr, size);
}

void fi_shell_dump_dmem(fi_shell_t* fi_shell) {
    fi_shell_dump_memory(fi_shell, &fi_shell->fi_runtime->dmem);
}

void fi_shell_dump_imem(fi_shell_t* fi_shell) {
    fi_shell_dump_memory(fi_shell, &fi_shell->fi_runtime->imem);
}

void fi_shell_print_pc(fi_shell_t* fi_shell) {
    printf("PC: %08x\n", pc_monitor_read_pc(fi_shell->fi_runtime->pc_monitor));
}

void fi_shell_reference_run(fi_shell_t* fi_shell) {
    fi_runtime_reference_run(fi_shell->fi_runtime);
}

void fi_shell_ff_fi_run(fi_shell_t* fi_shell) {
    char *arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'start_ff' for ff_fi_run!\n");
    }
    int start_ff = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'end_ff' for ff_fi_run!\n");
    }
    int end_ff = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'start_cycle' for ff_fi_run!\n");
    }
    int start_cycle = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'end_cycle' for ff_fi_run!\n");
    }
    int end_cycle = atoi(arg_str);

    for (int ff = start_ff; ff < end_ff; ff++) {
        for (int err_cycl = start_cycle; err_cycl < end_cycle; err_cycl++) {
            fault_run_result_t result = fi_runtime_ff_fi_run(fi_shell->fi_runtime, ff, err_cycl);

               putc(encode_result(&result), stdout);
        }
        putc('\n', stdout);
    }
}

void fi_shell_mem_fi_run(fi_shell_t* fi_shell, memory_t* mem) {
    char *arg_str;

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'start_bit' for ff_fi_run!\n");
    }
    int start_bit = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'end_bit' for ff_fi_run!\n");
    }
    int end_bit = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'start_cycle' for ff_fi_run!\n");
    }
    int start_cycle = atoi(arg_str);

    if (!fi_shell_next_arg(fi_shell, &arg_str)) {
        printf("Missing required argument 'end_cycle' for ff_fi_run!\n");
    }
    int end_cycle = atoi(arg_str);

    for (int bit = start_bit; bit < end_bit; bit++) {
        for (int err_cycl = start_cycle; err_cycl < end_cycle; err_cycl++) {
            fault_run_result_t result = fi_runtime_mem_fi_run(fi_shell->fi_runtime, mem, bit, err_cycl);

            putc(encode_result(&result), stdout);
        }
        putc('\n', stdout);
    }
}

void fi_shell_imem_fi_run(fi_shell_t* fi_shell) {
    fi_shell_mem_fi_run(fi_shell, &fi_shell->fi_runtime->imem);
}

void fi_shell_dmem_fi_run(fi_shell_t* fi_shell) {
    fi_shell_mem_fi_run(fi_shell, &fi_shell->fi_runtime->dmem);
}

fi_shell_command_t COMMANDS[] = {
    { .command_str = "help", .help_str = "help | Print this help message", .command_function = &fi_shell_help },
    { .command_str = "upload_program", .help_str = "upload_program <size>\\n<PROGRAM_HEX> | Upload <size> bytes of program data for imem initialization", .command_function = &fi_shell_upload_program },
    { .command_str = "upload_dmem", .help_str = "upload_dmem <size>\\n<DMEM_HEX> | Upload <size> bytes of dmem initialization data", .command_function = &fi_shell_upload_dmem },
    { .command_str = "clear_dmem", .help_str = "clear_dmem | Reset dmem to zeros or previously uploaded dmem init data", .command_function = &fi_shell_clear_dmem },
    { .command_str = "dump_dmem", .help_str = "dump_dmem [start_addr] [bytes] | Dump [bytes] of dmem data to stdout starting at [start_addr]", .command_function = &fi_shell_dump_dmem },
    { .command_str = "dump_imem", .help_str = "dump_imem [start_addr] [bytes] | Dump [bytes] of imem data to stdout starting at [start_addr]", .command_function = &fi_shell_dump_imem },
    { .command_str = "print_pc", .help_str = "print_pc | Print the current PC to stdout", .command_function = &fi_shell_print_pc },
    { .command_str = "set_total_cycles", .help_str = "set_total_cycles | Set cycle count for program execution", .command_function = &fi_shell_set_total_cycles },
    { .command_str = "set_timeout_cycles", .help_str = "set_timeout_cycles | Set maximum amount of cycles for FI run execution", .command_function = &fi_shell_set_timeout_cycles },
    { .command_str = "set_result", .help_str = "set_result <start_addr> <size> | Set the <start_addr> and <size> of the programs result in dmem", .command_function = &fi_shell_set_result },
    { .command_str = "set_done_addr", .help_str = "set_done_addr <addr> | Set <addr>ess where program writes a non-zero value to indicate termination", .command_function = &fi_shell_set_done_addr },
    { .command_str = "reference_run", .help_str = "reference_run | Perform a reference run without FI capture the reference result", .command_function = &fi_shell_reference_run },
    { .command_str = "ff_fi_run", .help_str = "ff_fi_run <start_ff> <end_ff> <start_cycle> <end_cycle> | Perform an FI Campaign on FFs systematically injecting faults from <start_ff> to <end_ff> and <start_cycle> to <end_cycle>", .command_function = &fi_shell_ff_fi_run },
    { .command_str = "imem_fi_run", .help_str = "imem_fi_run <start_bit> <end_bit> <start_cycle> <end_cycle> | Perform an FI Campaign on imem bits systematically injecting faults from <start_bit> to <end_bit> and <start_cycle> to <end_cycle>", .command_function = &fi_shell_imem_fi_run },
    { .command_str = "dmem_fi_run", .help_str = "dmem_fi_run <start_bit> <end_bit> <start_cycle> <end_cycle> | Perform an FI Campaign on dmem bits systematically injecting faults from <start_bit> to <end_bit> and <start_cycle> to <end_cycle>", .command_function = &fi_shell_dmem_fi_run }
};

int COMMAND_COUNT = sizeof(COMMANDS) / sizeof(fi_shell_command_t);

void fi_shell_run(fi_shell_t* fi_shell) {
    printf("Welcome to the OpenFI4ASIC FI shell\n");
    printf("Type 'help' for a list of commands\n");

    while (true) {
        putchar('>');
        fi_shell_getline(fi_shell);

        char* command;
        if (!fi_shell_next_arg(fi_shell, &command)) {
            continue;
        }

        bool found = false;
        for (int i = 0; i < COMMAND_COUNT; i++) {
            if (strcmp(command, COMMANDS[i].command_str) == 0) {
                COMMANDS[i].command_function(fi_shell);
                found = true;
                break;
            }
        }

        if (!found) {
            printf("Unknown command '%s' type 'help' for a list of commands!\n", command);
        }
    }
}

#endif
