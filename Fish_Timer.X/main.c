/* 
 * File:   main.c
 * Author: mark
 *
 * Created on 10. November 2012, 15:44
 */

#include <stdio.h>
#include <stdlib.h>
//#include <pic12f675.h>
#include <xc.h>

#if 0
#pragma config CONFIG1L = 0b11111100
#pragma config CONFIG1H = 0b000001
#else
#pragma config BOREN = OFF
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config CPD = OFF
#pragma config CP = OFF
#pragma config MCLRE = OFF
// use the 16MHz crystal
#pragma config FOSC = INTRCIO
#endif

#define ON  1
#define OFF 0

void config();
void blink();
void idle_loop();
void start();
void stop();
void reset();

// inverted because of weak pullup
#define BUTTON	~GPIO2
#define LED	GPIO1

#define MAX_COUNT	0x1//0x141DD7
#define EXTRA_COUNT	0x6000

//DEBUG =
//0 = none
//1 = change LED on button
//2 = pause during config
//3 = just light LED
#define DEBUG 1

// This is going to be 32 bits
unsigned long count = 0;

// This is where we will store the count every hour or so
#define EESTARTADDR	0x00
#define EELASTADDR	0x02


/*
 * 
 */
int main(int argc, char** argv)
{
#if DEBUG == 4
	TRISIO2 = 1;
	TRISIO1 = 0;
	nGPPU = 0;
	LED = 1;
	while (1)
	{
	}
#elif DEBUG == 0
	//asm("nop");
	//while(1);
	config();
	start();
	// keeps the program going
	idle_loop();
#endif
	return (EXIT_SUCCESS);
}

void config()
{
	// disable POR and BOR flags (inverted)
	nPOR = 1;
	nBOR = 1;
	nBOD = 1;
	// disable analog ins
	ANSEL = 0;

	// assign prescaler to WDT (instead of timer0)
	PSA = 1;
	// turn off gate enable
	TMR1GE = OFF;

	// //enable Synchronous mode
	//T1SYNC = 1;

	// prescale clock by 8
	T1CKPS1 = 1;
	T1CKPS0 = 1;
	// use internal clock/4 for incrementing
	TMR1CS = 0;
	// clear timer 1
	TMR1 = 0;

	// set 2 to input and 1 to out
	TRISIO2 = 1;
	TRISIO1 = 0;

#if DEBUG == 3
	LED = 1;
	idle_loop();
#endif

	// enable weak pullups
	nGPPU = ~ON;
	WPU = ~0x8;
	// enable interrupts
	//global
	GIE = ON;
	// peripheral
	PEIE = ON;
	// Timer 1 clear
	TMR1IF = OFF;
	// timer1 enable
	TMR1IE = ON;
	// clear interrupt before enabling
	INTF = OFF;
	// enable interrupt on change for INT2
	INTE = ON;
	// set to falling edge of interrupt
	INTEDG = 0;

	return;
}

void blink()
{
	INTE = ON;
	int tmp = 0;
	while (1)
	{
		while (++tmp < 20);
		LED = ~LED;
		tmp = 0;
	}
}

void start()
{
	stop();
	reset();
	// start Timer
	TMR1ON = ON;
}

void stop()
{
	TMR1ON = OFF;
}

void reset()
{
	INTE = OFF;
	TMR1ON = OFF;
	TMR1 = 0;
	count = 0;
}

void idle_loop()
{
	while (1);
}

interrupt void ISR()
{
	if (TMR1IE && TMR1IF)
	{
		TMR1IF = OFF;
		TMR1ON = OFF;
		if (++count == MAX_COUNT)
		{
			TMR1 = 0xFFFF - EXTRA_COUNT;
			TMR1ON = ON;
			idle_loop();
		}
		else if (++count > MAX_COUNT)
		{
			stop();
			reset();
			blink();
		}
		else if (++count < MAX_COUNT)
		{
			TMR1 = 0;
			TMR1ON = ON;
			idle_loop();

		}
	}
	if (INTF && INTE)
	{
		INTF = 0;
		// if timer is running, we are not blinking
		if (TMR1ON)
		{
#if DEBUG == 1
			LED = ~LED;
#endif
			idle_loop();
		}
		else
		{
			// reset timer and start it because it was blinking
			start();
#if DEBUG == 1
			LED = 1;
			int tmp = 0;
			while (++tmp < 500);
#endif
			idle_loop();
		}
	}
}
