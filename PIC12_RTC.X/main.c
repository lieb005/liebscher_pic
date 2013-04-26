/* 
 * File:   main.c
 * Author: mark
 *
 * Created on July 13, 2012, 5:42 PM
 */

#include <htc.h>
#include "spi.h"

// Global variables
struct disp
{
    unsigned char brightness;
    unsigned char scan;
    unsigned char decode;
} sDisp;
struct time
{
    unsigned char hour;
    unsigned char minute;
    unsigned char second;
    unsigned char day;
    unsigned char month;
    unsigned char year;
} sTime;

//IO defines
#define SPIOUT GPIO2
#define SPIIN GPIO3
#define SPICLK GPIO1
#define SPICS  GPIO0 // low = RTC, high = max7221
#define BTNFN (!GPIO4 && !GPIO5)
#define BTNUP (!GPIO4 && GPIO5)
#define BTNDOWN (!GPIO4 && GPIO5)
// Timer defines
// Config stuff
__CONFIG(MCLRE_OFF & FOSC_INTRCIO & PWRTE_ON & BOREN_ON);

// Prototypes of Functions
void config();
void init();
void update_display();
void set();
void wait(unsigned char c);
void set_brightness(unsigned char bri);

/*
 * Main entry point of program
 */
int main(int argc, char** argv)
{
    // Do preliminary setup
    config();
    // pseudo-timer so that there is time to start up
    for (unsigned char i = 0; i < 20; i++);
    //start timer and initialise display
    init();
    // set the clock before we start running it
    set();
    // count loops so every time it loops we don't do something
    unsigned char loops = 0;
    //main loop
    while (1)
    {
        if (++loops == 0)
        {
            //update display
            update_display();
        }
    }
    return (0);
}

void config()
{
    // Config Timer1
    TMR1GE = 0;
    T1CKPS0 = 0;
    T1CKPS1 = 0;
    T1OSCEN = 1;
    TMR1CS = 1;
    nT1SYNC = 1;

    // Trisio configs
    // SEROUT = out
    TRISIO4 = 0;
    // SERCLK = out
    TRISIO3 = 0;
    // SPICS = out
    TRISIO2 = 0;
    // BTN's = in
    TRISIO0 = 1;
    TRISIO1 = 1;
    //OSC in = in
    TRISIO5 = 1;

    // Pull-up enable
    nGPPU = 1;
    // enable all of the pullups except clock in (GPIO5) and the outputs (GPIO2/3)
    WPU = 0xFF;

    //fix interrupts
    PIR1 = 0;
    GIE = 1;
    PEIE = 1;
    TMR1IE = 1;
    // button Interrupts
    IOC0 = 1;
    IOC1 = 1;
}

void init()
{
    // Init Display
    //turn on
    write_spi_address(16, 0b1100, 1);
    // set brightness to high
    set_brightness(0xFF);
    //scan 8 digits
    write_spi_address(16, 0b1011, 8);
    // decode 8 digits
    write_spi_address(16, 0b1001, 0xFF);
}

// writes SPI data to SPIOUT and SPICLK.  max length 16

void update_display()
{
    // hours
    unsigned char tmp = 0;
    write_spi_address(16, 1, (tmp = sTime.hour / 10));
    write_spi_address(16, 2, sTime.hour - (tmp*10));

    //minutes
    write_spi_address(16, 3, (tmp = time.minute / 10));
    write_spi_address(16, 4, sTime.minute - (tmp*10));

    //seconds
    write_spi_address(16, 5, (tmp = sTime.second / 10));
    write_spi_address(16, 6, sTime.second - (tmp*10));
}

void interrupt ISR()
{
    if (TMR1IE && TMR1IF)
    {
        if (++time.second == 60)
        {
            time.second = 0;
            if ((++time.minute) == 60)
            {
                time.minute = 0;
                if (++time.hour == 24)
                {
                    time.hour = 0;
                }
            }
        }
    }
    if (GPIF)
    {
        if (BTNFN)
        {
            set();
        }
        if (BTNUP)
        {
            sDisp.brightness = (sDisp.brightness + 1) & 0xF;
            //set_brightness(brightness);
            wait(100);
        }
        if (BTNDOWN)
        {
            sDisp.brightness = (sDisp.brightness - 1) & 0xF;
            //set_brightness(brightness);
            wait(100);
        }
     }
    GPIE = 0;
    GPIE = 1;

}

void set()
{
    unsigned char setting = 1; //0;
    while (setting < 3)
    {
        if (BTNUP)
        {
            switch (setting)
            {
            case 0:
                sTime.hour++;
                break;
            case 1:
                sTime.minute++;
                break;
            case 2:
                sTime.second++;
                break;
            }
        }
        else if (BTNDOWN)
        {
            switch (setting)
            {
            case 0:
                sTime.hour--;
                break;
            case 1:
                sTime.minute--;
                break;
            case 2:
                sTime.second--;
                break;
            }
        }
        else if (BTNFN)
        {
            setting++;
        }
    }
    update_display();
    //wait(255);
}

void wait(unsigned int c)
{
    unsigned int num = c;
    while (c--);
}

void set_brightness(unsigned char bri)
{
    write_spi_address(16, 0b1010, bri);
}