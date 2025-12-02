/**
 * Bubble Sort Implementation taken from fail/src/core/util/llvmdisassembler/testing/bubble.cc
 *
 * In the SailFail paper, a bubblesort variant is used to sort 10 register-sized integers (32 or 64
 * bits).
 *
 * One of the test cases presented is this one, where the integers are stored in a staticly sized
 * array. The other test cases use a single linked and a doubly linked list, of which the source
 * code seems to not be included in the distribution.
 *
 * For the fault injection, the SailFail paper claims that the full fault space for memory and
 * register faults has been anal ysed. In that case study, an overall amount of around 220000
 * SDC-type faults have been found.
 */

#define ARR_SIZE 10

#include <stdint.h>

// extern uint8_t _sstack[];
// extern uint8_t _estack[];

// extern uint8_t _sdata_ram[];
// extern uint8_t _edata_ram[];

// extern uint8_t _sdata_rom[];

// extern uint8_t _sbss[];
// extern uint8_t _ebss[];

void init(void);
int _main(void);

__attribute__((naked, section(".text.start"))) void _start(void) {
    asm volatile("\tla sp, _estack\n\tcall _main\nhalt:\n\tj halt");
}

// void init(void) {
//     // Init .data
//     uint8_t* data_rom = _sdata_rom;
//     uint8_t* data_ram = _sdata_ram;
//     while (data_ram != _edata_ram) {
//         *data_ram = *data_rom;
//         data_ram++;
//         data_rom++;
//     }

//     // Init .bss
//     for (uint8_t* bss_ram = _sbss; bss_ram != _ebss; bss_ram++) {
//         *bss_ram = 0;
//     }

//     int result = main();

//     *((int volatile*)0x80000000) = result;

//     return;
// }

/**
 * The original C++ implementation used this RNG. The
 */
// class random_generator_t
// {
// private:
//   unsigned int a;               // (sqrt(5)-1)/2 = 0.61803398875
//   unsigned int b;
//   unsigned int last_val;
//   unsigned int sd;
// public:
//   void forth() {
//     last_val = a*last_val + b;
//   }

//   random_generator_t(unsigned int seed = 1)
//     : a(2654435769), b(seed), last_val(1), sd(seed){
//     forth();
//   }

//   unsigned int item() const {
//     return last_val;
//   }

//   void reset() {
//     last_val = 1;
//     b        = sd;
//     forth();
//   }
// };

void sort(int len, int arr[]) {
    int tmp;
    int again;
    int i;

    for (again = 1; again;)
        for (again = 0, i = 0; i < (len - 1); ++i) {
            // assert(0<=i && i+1 <len);
            if (arr[i] > arr[i + 1]) {
                tmp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = tmp;
                again = 1;
            }
        }
}

__attribute__((used))
int _main() {
    // The initialization uses the same values as the original C++ implementation RNG output.
    int volatile arr_init[ARR_SIZE];

    arr_init[0] = 0x9E3779BA; // -1640531526;
    arr_init[1] = 0x8195E16B; // -2120883861;
    arr_init[2] = 0xF4D87954; // -187139756 ;
    arr_init[3] = 0x2AD461B5; //  718561717 ;
    arr_init[4] = 0x098C28CE; //  160180430 ;
    arr_init[5] = 0x0DD4DADF; //  232053471 ;
    arr_init[6] = 0x422E9228; //  1110348328;
    arr_init[7] = 0xED5486E9; // -313227543 ;
    arr_init[8] = 0x3FE89F62; //  1072209762;
    arr_init[9] = 0xDC7E7FD3; // -595689517 ;

    int arr[ARR_SIZE];
    for (int i = 0; i < ARR_SIZE; i++) {
        arr[i] = arr_init[i];
    }

    // random_generator_t rand;
    // for(i=0; i!=arr_size; ++i){
    //   arr[i] = rand.item();
    //   rand.forth();
    // }

    sort(ARR_SIZE, arr);

    int volatile * arr_out = (int volatile *)0x00000700;
    for (int i = 0; i < ARR_SIZE; i++) {
        arr_out[i] = arr[i];
    }
    return 0;
}
