/*
 * Project: PIC16_PWM_CALIB
 * File:   main.c
 * Author: mark
 *
 * Created on July 18, 2012, 7:44 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <htc.h>

#define ADRES_RIGHT_L ((ADRESL >> 6)&((ADRESH & 0b00111111) << 2))
#define ADRES_RIGHT_H (ADRESH >> 6)
bit ADin = 0;
// Prototypes
void setup();

/*
 * 
 */
int main(int argc, char** argv)
{
    setup();
    while (1)
    {
        if (!WR)
        {
            EEDATL = ADRES_RIGHT_L;
            EEDATH = ADRES_RIGHT_H;
            EEADRL = ADin;
            EEADRH = 0;
            EECON2 = 0x55;
            EECON2 = 0xAA;
            WR = 1;
        }
        if (!GO)
        {
            if (ADin)
            {
                CCPR1L = ADRESH;
                DC1B1 = ADRESL >> 7;
                DC1B0 = (ADRESL & 0b01000000) >> 6;
            }
            else
            {
                PR2 = ADRESH;
            }
            ANSA0 = ADin;
            ADin = ~ADin;
            ANSA1 = ADin;
            GO = 1;
        }
    }
    return (EXIT_SUCCESS);
}

void setup()
{
    __CONFIG(FOSC_INTOSC & FCMEN_ON & WDTE_NSLEEP & PWRTE_ON & MCLRE_ON & CP_OFF
             & CPD_OFF & BOREN_NSLEEP & CLKOUTEN_OFF & FCMEN_OFF & WRT_ALL
             & PLLEN_ON & STVREN_OFF & LVP_OFF);
    // config IO
    TRISA = 0xFF;
    TRISC = 0x00;
    // config ADC
    ADNREF = 0;
    ADPREF0 = ADPREF1 = 0b0;
    ANSELA = 0b11;
    ADFM = 0;
    ADON = 1;
    // config PWM
    CCP1CON = 0b00111100;
    // make duty cycle half
    CCPR1L = 0x011111111;
    // set period to full
    PR2 = 0xFF;
    // set clock source to Timer2
    C1TSEL0 = 0;
    C1TSEL1 = 0;
    // disable shutdown
    CCP1AS = 0;
    TMR2IF = 0;
    T2CKPS0 = 0;
    T2CKPS1 = 0;
    TMR2ON = 1;
    // enable EEPROM Writes
    EECON1 = 0b10;
}