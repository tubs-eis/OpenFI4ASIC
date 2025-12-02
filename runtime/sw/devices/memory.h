#ifndef MEMORY_H
#define MEMORY_H

#include <stdbool.h>
#include <stdint.h>
#include <string.h>

typedef struct {
    uint32_t volatile* base_addr;
    uint32_t size;
} memory_t;

static inline void memory_write(memory_t* memory, uint32_t addr, uint32_t value) {
    memory->base_addr[addr] = value;
}

static inline uint32_t memory_read(memory_t* memory, uint32_t addr) {
    return memory->base_addr[addr];
}

static inline void memory_copy_to(memory_t* memory, uint32_t* destination, uint32_t start_addr, uint32_t size) {
    for (uint32_t offset = 0; offset < size; offset++) {
        destination[offset] = memory_read(memory, start_addr + offset);
    }
}

static inline void memory_copy_from(memory_t* memory, uint32_t* source, uint32_t start_addr, uint32_t size) {
    for (uint32_t offset = 0; offset < size; offset++) {
        memory_write(memory, start_addr + offset, source[offset]);
    }
}

static inline void memory_fill(memory_t* memory, uint32_t value, uint32_t start_addr, uint32_t size) {
    for (uint32_t addr = start_addr; addr < start_addr + size; addr++) {
        memory_write(memory, addr, value);
    }
}

static inline bool memory_compare(memory_t* memory, uint32_t* reference, uint32_t start_addr, uint32_t size) {
    return memcmp((const void*) memory->base_addr, reference, size * 4) == 0;
}

static inline void memory_flip_bit(memory_t* memory, uint64_t bit) {
    uint32_t word = bit / 32;
    uint32_t bit_in_word = bit % 32;

    uint32_t mask = 1 << bit_in_word;

    uint32_t contents = memory_read(memory, word);
    memory_write(memory, word, contents ^ mask);
}

void memory_print(memory_t* memory, uint32_t start_addr, uint32_t num_words) {
    for (int i = start_addr; i < start_addr + num_words; i++) {
        printf("%08x: %08lx\n", i*4, memory_read(memory, i));
    }
}

#endif
