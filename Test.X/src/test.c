/*
 * LED BLINKING Example
 * Author : Bruno Gavand
 * Compiler : mikroC V6.0
 * Date : september, 2006
 * Release : 1.0
 *
 * this program toggles PORTB outputs
 *
 * see more details on http://www.micro-examples.com
 *
 */
#include <p24Hxxxx.h>

//_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // disable JTAG and WDT
//_CONFIG2(POSCMOD_XT & FNOSC_PRIPLL) // configure oscillator

#define DELAY_MILLI_SEC 500         // time to delay between toggles
                                    // valid range 0 to 2097 milli-seconds

#define FOSC 32000000               // oscillator speed (with PLL enabled, 8Mhz x 4 = 32Mhz)
#define TMR1_SCALE 256              // TMR1 prescale setting
#define FOSC_DIV 2                  // TMR1 FOSC division setting
// calculate the number of cycles required for 'DELAY_MILLI_SEC'
#define DELAY_CYCLES (DELAY_MILLI_SEC * ((FOSC / TMR1_SCALE / FOSC_DIV) / 1000.0))
// convert the above result to type 'long' for use in the program
const long delay_cycles = DELAY_CYCLES;

int main(void) {                   // program start
    TRISA = TRISA & 0xFF00;         // configure PORTA<7:0> as outputs
    PORTA = 0xF0;                   // set high nibble of PORTA
    T1CON = 0b1000000000110000;     // TMR1 on, prescaler 1:256 Fosc/2

    while (1) {                     // main program loop
        PORTA = ~PORTA;             // invert PORTA
        TMR1 = 0;                   // reset TMR1
        while (TMR1 < delay_cycles);// delay for defined time
    }
}
