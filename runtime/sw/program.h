#ifndef PROGRAM_H
#define PROGRAM_H

#include <stdint.h>

#define PROGRAM_START 0x00000000
#define PROGRAM_LENGTH 148

static uint32_t const PROGRAM[] = {
        0x00000117,
        0x0d410113,
        0x008000ef,
        0x084000ef,
        0xff010113,
        0x00112623,
        0x00002503,
        0x014000ef,
        0x00a02223,
        0x00c12083,
        0x01010113,
        0x00008067,
        0xff010113,
        0x00012623,
        0x00100593,
        0x00b12423,
        0x00012223,
        0x00012023,
        0x00012583,
        0x02a5dc63,
        0x00c12583,
        0x00812603,
        0x00b605b3,
        0x00b12223,
        0x00812583,
        0x00b12623,
        0x00412583,
        0x00b12423,
        0x00012583,
        0x00158593,
        0x00b12023,
        0x00012583,
        0xfca5c8e3,
        0x00412503,
        0x01010113,
        0x00008067,
        0x0000006f
};

#endif