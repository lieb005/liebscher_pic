/* 
 * File:   lc_meter.c
 * Author: mark
 *
 * Created on 16. April 2013, 23:24
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include "LED_disp.h"

#pragma config FOSC=	HS
#pragma config PWRT=	OFF
#pragma config MCLRE=	ON
#pragma config PBADEN=	OFF
//#pragma config DEBUG=	ON
#pragma config WDT=		ON
//#pragma config LVP=		ON
#pragma config BOR=		ON

#define true		1
#define false		0
#define on			1
#define off			0
#define rising		1
#define falling		0
#define input		1
#define output		0

#define CAL_TIME	(8 * 1024 * 1000)	// 8 ms
#define SAMPLE_TIME	(64 * 1024 * 1000)	// 64 ms
#define IDLE_TIME	(200 * 1024 * 1000)	// 200 ms

#define CAL_RELAY	LA5

#define OSC_IN		LA4

#define CALIBRATE	!LB0
#define BUTTON2		!LB1
#define BUTTON_3	!LB2
/*
 * off = L, on = C
 */
#define L_C_SELECT	LB3

#define C			.000000001000	// 1000pf (has B tolerance)
#define L			.000220			// 220µH
#define Cc			.000000001000	// 1000pF (has B tolerance)

#define PI 3.1415926535897932384626433832795028841971

//use timer0 to time the interval
//a GPIO to count the state changes
//using value, we have freq
//we have external pins for either L or C so we
//don't have to switch manually

//write all results to screen
//f=1/(2*pi*sqrt(L*C))

void config();
double measure(double time);
void calibrate();

bool running = false;
bool sampling = false;

unsigned int idle_overflow = 0;
unsigned int cal_overflow = 0;
unsigned int tick_overflow = 0;

double freq1 = 0.0; //Hz
double freq2 = 0.0; //Hz
double Ccal = 0.0; //F

void config()
{
	// enable interrupt on timer1
	GIE = true;
	PEIE = true;

	// enable button interrupts
	INT0IE = true;
	INT1IE = true;
	INT2IE = true;

	INT0IF = off;
	INT1IF = off;
	INT2IF = off;

	INTEDG0 = falling;
	INTEDG1 = falling;
	INTEDG2 = falling;

	// use internal clock for timer0 for time interval
	T08BIT = false;
	T0CS = false;

	TMR0IE = on;
	TMR0IF = off;

	// use timer3 to count the transitions asynchronously on t3cki
	T3NSYNC = ~off;
	TMR3CS = true;
	T3RD16 = true;
	T3CCP1 = false;
	T3CCP2 = false;

	// we need the interrupt so that we don't overflow
	TMR3IE = on;
	TMR3IF = off;

	// use Timer1 as the idle timer
	T1RD16 = true;
	T1SYNC = true;
	TMR1CS = false;
	T1OSCEN = off;
	T1SYNC = ~on;

	TMR1IE = on;
	TMR1IF = off;

	// set up display stuff
	init_disp(8);

	//turn on pullups for inputs
	nRBPU = ~on;
	TRISB0 = input;
	TRISB1 = input;
	TRISB2 = input;
	TRISB3 = input;

	// make clock input  an input
	TRISA4 = input;

	// make cal_relay an output
	TRISA5 = output;
	CAL_RELAY = off;

}

/*
 * Main entry point of program
 */
int main(int argc, char** argv)
{
	config();
//	calibrate();
	set_brightness(0xF);

	// enable one of these for testing
//	test_display(false);
	write_disp((char*) "          ");
	write_disp_long(12345678);
	write_disp_double(43.7657);

	//idle_overflow = (IDLE_TIME >> 8);
	//TMR1 = 0xFFFF - (int) (IDLE_TIME);
	//TMR1ON = on;
	while (true)
	{
		//check the measuring probe when the button is pressed(?)
		//or every so often using timer 1 as an idle timer
		//calibrate when needed
	}
	return (EXIT_SUCCESS);
}

double measure(double time)
{
	sampling = true;
	// run for "time" (milli)seconds and count pulses
	// using Timer3 async and additional known L or C, return the value
	// of C or L

	// 4.096.000 / 4   = Fosc / 4
	// 1.024.000 ticks = 1s
	// 1.024     ticks = 1ms
	TMR0 = 0xFFFF - (int) (time * 1024);
	TMR0ON = on;

	TMR3ON = on;

	// Cx = C((f1/f2)² - 1)
	// C  = Cx/((f1/f2) - 1)
	// Lx = (1/(C * (2*PI)²))((1/(f2)²) - (1/(f1)²))

	if (L_C_SELECT == off)
	{
		// mode = capacitor
	}
	else
	{
		// mode = inductor
	}

	sampling = false;
	return 0.0;
}

void calibrate()
{
	sampling = true;
	
	// run a test here to get f1
	TMR0 = 0xFFFF - CAL_TIME;
	TMR3 = 0;
	TMR0ON = on;
	TMR3ON = on;
	running = true;
	while (running);
	freq2 = (double) (((unsigned long) tick_overflow << 16) | TMR3) / (double) CAL_TIME;

	// run a test here to get f2
	CAL_RELAY = on;
	TMR0 = 0xFFFF - CAL_TIME;
	TMR3 = 0;
	TMR0ON = on;
	TMR3ON = on;
	running = true;
	while (running);
	freq2 = (double) (((unsigned long) tick_overflow << 16) | TMR3) / (double) CAL_TIME;

	CAL_RELAY = off;
	sampling = false;

}

void interrupt ISR()
{
	// check interrupt on timers and possibly calib

	// Timer0 is done
	if (TMR0IF && TMR0IE)
	{
		TMR0IF = off;
		TMR0ON = off;
		if (--cal_overflow == 0)
		{
			running = false;
			TMR3ON = off;
		}
		else
			TMR0 = 0;
		TMR0ON = on;
	}

	// Timer1 is done
	if (TMR1IF && TMR1IE)
	{
		TMR1ON = off;
		TMR1IF = off;
		if (--idle_overflow == 0)
		{
			if (sampling)
				return;
			else
				calibrate();
		}
		TMR1 = 0;
		TMR1ON = on;
	}

	// Timer1 is done
	if (TMR3IF && TMR3IE)
	{
		TMR3IF = off;
		tick_overflow++;
	}

	// calibrate pushed
	if (INT0IF && INT0IE)
	{
		INT0IF = off;
		calibrate();
	}

	// button 2 pressed
	if (INT1IF && INT1IE)
	{
		INT1IF = off;
	}

	// button 3 pressed
	if (INT2IF && INT2IE)
	{
		INT2IF = off;
	}
}

