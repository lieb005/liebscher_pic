/* 
 * File:   main.c
 * Author: mark
 *
 * Created on 20. Februar 2013, 09:52
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#pragma config FOSC = INTRCCLK
#pragma config MCLRE = ON

#define FREQ 4000000 //Hz

/*
 * 
 */
int main(int argc, char** argv)
{
	TRISIO2 = 0;
	TRISIO1 = 1;
	GPIO2 = 0;
	nGPPU = 0;
	WPU1 = 1;
	while (1)
	{
		GPIO2 = ~GPIO1;
	}
	GPIO2 = 1;
	return (EXIT_SUCCESS);
}

