#ifndef RESET_DEVICE_H
#define RESET_DEVICE_H

#define RESET_ACTIVE 0
#define RESET_INACTIVE 1

typedef struct {
    uint32_t volatile reset;
} reset_phys_t;

static inline void reset_write(reset_phys_t* reset, uint32_t value) {
    reset->reset = value;
}

#endif
