/*
 * Project: PIC16_Bike_Light
 * File:   main.c
 * Author: mark
 *
 * Created on July 18, 2012, 4:32 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <htc.h>

// Global Variables

enum STATES
{
    OFF = 0, LOW_SLD, HIGH_SLD, LOW_BLK, HIGH_BLK, SET, BLINK = 1, SOLID = 2
};
unsigned char front_state = OFF;
unsigned char rear_state = OFF;
bit blink_state = 0;
bit blink_R = 0;
bit blink_L = 0;
unsigned long blinks_l = 0;
unsigned long blinks_h = 0;


// Prototypes
void setup();
void update_lights();
void set_PWM_Duty(unsigned char duty);
unsigned int get_PWM_Duty();

// defines to make stuff easier to do and read
//outs
#define HEAD_OUT RC5
#define RIGHT_OUT RC0
#define LEFT_OUT RC1
#define TAIL_OUT RC2
//ins
#define HEAD_IN RA2
#define RIGHT_IN RA0
#define LEFT_IN RA1
#define TAIL_IN RA4

// config register for PWM
#define PWM_CONFIG 0b00111100
// fudged numbers as placeholders
#define PWM_LOW_DUTY 0b0001111111
#define PWM_HIGH_DUTY 0b1111111111
// on 0% of the time
#define PWM_OFF_DUTY 0b0000000000
// to get full resolution
#define PWM_PERIOD 0xFF;

#define TMR0INIT 0xF

/*
 * Main entry point of program
 */
int main(int argc, char** argv)
{
    setup();
    // just here to keep proccessor alive
    while (1);
    return (EXIT_SUCCESS);
}

void setup()
{
    __CONFIG(FOSC_INTOSC & FCMEN_ON & WDTE_NSLEEP & PWRTE_ON & MCLRE_ON & CP_OFF
             & CPD_OFF & BOREN_NSLEEP & CLKOUTEN_OFF & FCMEN_OFF & WRT_ALL
             & PLLEN_ON & STVREN_OFF & LVP_OFF);
    TMR2 = 0;
    // enable interrupts
    GIE = 1;
    PEIE = 1;
    // Enable Mid-freq clock
    SCS0 = 1;
    SCS1 = 1;
    // 500kHz
    IRCF0 = 0;
    IRCF1 = 1;
    IRCF2 = 1;
    IRCF3 = 1;
    OPTION_REG = 0b11000111;
    //enable pullups
    nWPUEN = 0;
    WPUA = 0xFF;
    WPUC = 0x00;
    // set pins to ins/outs
    TRISA = 0xFF;
    TRISC = 0x00;
    // enable input pin interrupts
    IOCIE = 1;
    IOCAP = 0xFF;
    IOCAN = 0x00;

    // config PWM
    PR2 = PWM_PERIOD;
    CCP1CON = PWM_CONFIG;
    set_PWM_Duty(PWM_LOW_DUTY);
}

void update_lights()
{
    // put it to sleep when it isn't doing anything
    if (!(front_state || rear_state || blink_L || blink_R) || (blinks_h == -1))
    {
        blinks_h = 0;
        blinks_l = 0;
        SLEEP();
    }
    else
    {
        switch (front_state)
        {
        case LOW_SLD:
            if (get_PWM_Duty() == PWM_LOW_DUTY)
                break;
            set_PWM_Duty(PWM_LOW_DUTY);
            break;
        case LOW_BLK:
            if (blink_state)
            {
                if (get_PWM_Duty() == PWM_LOW_DUTY)
                    break;
                set_PWM_Duty(PWM_HIGH_DUTY);
            }
            else
            {
                if (get_PWM_Duty() == PWM_OFF_DUTY)
                    break;
                set_PWM_Duty(PWM_OFF_DUTY);
            }
            break;
        case HIGH_SLD:
            if (get_PWM_Duty() == PWM_HIGH_DUTY)
                break;
            set_PWM_Duty(PWM_HIGH_DUTY);
            break;
        case HIGH_BLK:
            if (blink_state)
            {
                if (get_PWM_Duty() == PWM_HIGH_DUTY)
                    break;
                set_PWM_Duty(PWM_HIGH_DUTY);
            }
            else
            {
                if (get_PWM_Duty() == PWM_OFF_DUTY)
                    break;
                set_PWM_Duty(PWM_OFF_DUTY);
            }
            break;
        }
        switch (rear_state)
        {
        case BLINK:
            if (blink_state)
                TAIL_OUT = 1;
            else
                TAIL_OUT = 0;
            break;
        case SOLID:
            TAIL_OUT = 1;
            break;
        }
    }
}

void set_PWM_Duty(unsigned char duty)
{
    CCPR1L = duty >> 2;
    DC1B0 = duty & 0b1;
    DC1B1 = (duty & 0b10) >> 1;

}

unsigned int get_PWM_Duty()
{
    return CCPR1L << 2 | DC1B1 << 1 | DC1B0;
}

void interrupt ISR()
{
    if (TMR0IE && TMR0IF)
    {
        // timer overflow means we need to blink
        TMR0IF = 0;
        TMR0 = TMR0INIT;
        blink_state = ~blink_state;
        if (blink_state)
        {
            if (blinks_l++ == -1)
                if (blinks_h++ == -1)
                {
                    blinks_l = 0;
                    blinks_h = 0;
                    SLEEP();
                }
        }
    }
    else if (IOCIE && IOCAF)
    {
        // check to see which flag is tripped
        // all if's on purpose to check for multiple flags

        // Right Blinker
        if (IOCAF & 0b1)
        {
            IOCAF0 = 0;
            blink_R = ~blink_R;
        }
        // Left Blinker
        if (IOCAF & 0b10)
        {
            IOCAF1 = 0;
            blink_L = ~blink_L;
        }
        // Headlight
        if (IOCAF & 0b100)
        {
            IOCAF2 = 0;
            front_state = (front_state + 1) % 5;
        }
        // unused
        if (IOCAF & 0b1000)
        {
            IOCAF3 = 0;
        }
        // Tail Light
        if (IOCAF & 0b10000)
        {
            IOCAF4 = 0;
            rear_state = (rear_state + 1) % 3;
        }
        // unused
        if (IOCAF & 0b100000)
        {
            IOCAF5 = 0;

        }
    }
    update_lights();
}