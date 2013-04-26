// This example code will toggle an LED on pin RB5 when a
// N/O (normally open) button connected to pin RB3 is pressed

#include <p32xxxx.h>                // include chip specific header file
#include <plib.h>                   // include peripheral library functions

// Configuration Bits
#pragma config FNOSC = FRCPLL       // Internal Fast RC oscillator (8 MHz) w/ PLL
#pragma config FPLLIDIV = DIV_2     // Divide FRC before PLL (now 4 MHz)
#pragma config FPLLMUL = MUL_20     // PLL Multiply (now 80 MHz)
#pragma config FPLLODIV = DIV_2     // Divide After PLL (now 40 MHz)
                                    // see figure 8.1 in datasheet for more info
#pragma config FWDTEN = OFF         // Watchdog Timer Disabled
#pragma config ICESEL = ICS_PGx1    // ICE/ICD Comm Channel Select
#pragma config JTAGEN = OFF         // Disable JTAG
#pragma config FSOSCEN = OFF        // Disable Secondary Oscillator

#define SYSCLK 40000000L

int main( void)
{
    // Configure PIC32 for maximum performance given the system clock frequency
    // : included in plib.h
    SYSTEMConfigPerformance(SYSCLK);

    ANSELB = 0;                     // Set all of PortB as digital
    TRISBbits.TRISB5 = 0;           // RB5 -> Output

    // Loop here while power remains since there isn’t really an
    //   operating system to return to…
    while( 1)
    {
        // Set the LED pin HIGH while the button is pressed
	LATBbits.LATB5 = ~LATBbits.LATB5;
        int i = 1024*1024;
        while(i--);
    }

    // should never get to this line
    return 1;
}