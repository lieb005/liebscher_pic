/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

/* Device header file */
#if defined(__PIC24E__)
	#include <p24Exxxx.h>
#elif defined(__PIC24F__)
	#include <p24Fxxxx.h>
#elif defined(__PIC24H__)
	#include <p24Hxxxx.h>
#endif

#include <stdint.h>        /* Includes uint16_t definition                    */
#include <stdbool.h>       /* Includes true/false definition                  */

#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp              */

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
//#define FCY 16000000LL              // Define clock speed (16MIPS, LL = 64 bit long)
#include <libpic30.h>               // Used for __delay_ms

#define LED LATBbits.LATB6          // Alias LED for LATB0.6
#define LEDtris TRISBbits.TRISB6    // Alias LED for TRISB.6

_CONFIG2(FNOSC_FRCPLL);              // Config set for: Fast RC oscillator w/ divide and PLL


/* i.e. uint16_t <variable_name>; */

/******************************************************************************/
/* Function Declaration                                                       */
/******************************************************************************/


void initialise() {                 // Configures the PIC
    OSCCONbits.NOSC = 0b111;        // Fast RC Oscillator with Postscaler and PLL module
    //CLKDIVbits.RCDIV = 0b000;       // Set clock div 1:1
    LEDtris = 0;                    // Make LED an output
    LED = 0;                        // Set LED low
}

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

int16_t main(void)
{

    /* Configure the oscillator for the device */
    ConfigureOscillator();

    /* Initialize IO ports and peripherals */
    InitApp();

    /* TODO <INSERT USER APPLICATION CODE HERE> */

    initialise();                   // Intialise PIC
    while(1)
    {
        LED = 1;                        // Set LED high
        __delay_ms(500);                // Delay 500mS
        LED = 0;                        // Set LED low
        __delay_ms(500);                // Delay 500mS
    }
}
