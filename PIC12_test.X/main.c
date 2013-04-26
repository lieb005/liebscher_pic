/* 
 * File:   main.c
 * Author: mark
 *
 * Created on July 28, 2012, 6:31 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <htc.h>

#define SPIOUT GPIO4
#define SPICLK GPIO3
#define SPICS  GPIO2
#define BTNFN (!GPIO1 && !GPIO0)
#define BTNUP (!GPIO0 && GPIO1)
#define BTNDOWN (!GPIO1 && GPIO0)

unsigned char num = 0;

void init();
void write_spi(unsigned char len, unsigned long data);
void write_spi_address(unsigned char len, unsigned char addr, unsigned int data);
void update_display();
void wait(unsigned char c);
void set_brightness(unsigned char bri);

/*
 * 
 */
int main(int argc, char** argv)
{
    __CONFIG(FOSC_INTRCCLK & WDTE_ON & PWRTE_ON & MCLRE_ON & BOREN_ON & CP_OFF & CPD_OFF);

    TRISIO = 0;
    GIE = 0;

    while (1)
    {
        wait(255);
        update_display();
    }
    return (EXIT_SUCCESS);
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

void write_spi(unsigned char len, unsigned long data)
{
    SPICS = 0;
    for (unsigned char i = 0; i < len; i++)
    {
        SPICLK = 0;
        SPIOUT = (data >> i) & 0x1;
        SPICLK = 1;
        // Hacked up way to pause
        wait(20);
    }
    SPICS = 1;
    wait(20);
    SPICS = 0;
}

void write_spi_address(unsigned char len, unsigned char addr, unsigned int data)
{
    write_spi(len, (addr << 8 | data));
}

void update_display()
{
    // hours
    write_spi_address(16, 1, (num = (num + 1) % 10));
    write_spi_address(16, 2, (num = (num + 1) % 10));

    //minutes
    write_spi_address(16, 3, (num = (num + 1) % 10));
    write_spi_address(16, 4, (num = (num + 1) % 10));

    //seconds
    write_spi_address(16, 5, (num = (num + 1) % 10));
    write_spi_address(16, 6, (num = (num + 1) % 10));
    //seconds
    write_spi_address(16, 7, (num = (num + 1) % 10));
    write_spi_address(16, 8, (num = (num + 1) % 10));
}

void set_brightness(unsigned char bri)
{
    write_spi_address(16, 0b1010, bri);
}
void wait(unsigned char c)
{
    for (unsigned char tmp = 0; tmp <= c; tmp++);
}

