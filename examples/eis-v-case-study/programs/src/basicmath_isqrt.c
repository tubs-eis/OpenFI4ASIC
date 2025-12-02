/* Based on MiBench basicmath benchmark */

#define BITSPERLONG 32

#define TOP2BITS(x) ((x & (3L << (BITSPERLONG - 2))) >> (BITSPERLONG - 2))

int _main(void);

__attribute__((section(".text.start"), naked)) void _start()
{
    asm volatile("la sp, _estack; call _main; call _halt");
}

typedef struct
{
    unsigned sqrt, frac;
} int_sqrt;

void usqrt(unsigned long x, int_sqrt *q)
{
    unsigned long a = 0L; /* accumulator      */
    unsigned long r = 0L; /* remainder        */
    unsigned long e = 0L; /* trial product    */

    int i;

    for (i = 0; i < BITSPERLONG; i++) /* NOTE 1 */
    {
        r = (r << 2) + TOP2BITS(x);
        x <<= 2; /* NOTE 2 */
        a <<= 1;
        e = (a << 1) + 1;
        if (r >= e)
        {
            r -= e;
            a++;
        }
    }
    ((unsigned *)q)[0] = ((unsigned *)&a)[0];
    ((unsigned *)q)[1] = ((unsigned *)&a)[1];
    // memcpy(q, &a, sizeof(long));
}

__attribute__((used)) int _main(void)
{
    unsigned long volatile l = 0x3fed0169L;

    int_sqrt q;

    usqrt(l, &q);

    int_sqrt volatile *result = (int_sqrt volatile *)0x00000700;
    *result = q;

    int volatile *done = (int volatile *)0x00;
    *done = 1;

    return 0;
}

__attribute__((naked, used)) void _halt()
{
    asm volatile("halt:\n\t j halt");
}
