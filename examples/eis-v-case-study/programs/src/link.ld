MEMORY
{
    ROM (rx) : ORIGIN = 0x00000000, LENGTH = 2K
}

STACK_SIZE = 0x40;

SECTIONS
{
    .text :
    {
        *(.text.start);
        *(.text);
        *(.text.*);
    } > ROM

    .rodata :
    {
        *(.rodata);
        *(.rodata.*);
    } > ROM

    .stack (NOLOAD) :
    {
        . = ALIGN(4);
        _sstack = .;
        . = . + STACK_SIZE;
        . = ALIGN(4);
        _estack = .;
    } > ROM
}

ENTRY(_start)