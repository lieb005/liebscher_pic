// here are the MAX7221 routines:

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xc.h>
#include <stdbool.h>
#include <math.h>

#include "LED_disp.h"

// from the perspective of the host (the PIC)
#define SPI_TX		LA0
#define SPI_RX		LA1
#define SPI_CLK		LA2
#define SPI_CE		LA3


char d;

void pause()
{
	unsigned int i = PAUSE_TIME;
	while (i--);

}

void init_disp(short digits)
{
	d = digits;

	// set up as outputs
	TRISA0 = output;
	TRISA1 = input;
	TRISA2 = output;
	TRISA3 = output;

	SPI_TX = off;
	SPI_CLK = off;
	SPI_CE = off;


	// scan 'digits'
	write(0b1011, digits - 1);

	// turn decode off
	write(0b1001, off);

	// set brightness to ~75%
	//set_brightness(0xB);

	// make sure we aren't testing
	test_display(false);

	// turn off shutdown (inverted)
	write(0b1100, ~off);
}

void test_display(bool test)
{
	write(0b1111, test);
}

void set_brightness(char bright)
{
	write(0b1010, bright);
}

void write_disp_long(long num)
{
	// we need 8 digits, a decimal and a null termination
#define BUFFER_SIZE 10
	char buffer[BUFFER_SIZE];
/*
	if (abs(num) != num)
	{
		buffer[0] = '-';
	}
	num = abs(num);
	signed char index = 0;
	/*for (index = 0; index < (8 - sig); index++)
	{
		char tmp = (((unsigned long) (num) / (unsigned long) pow(10.0, ((8 - sig) - index))) % 10);
		buffer[index + sig] = num_to_char[tmp];
	}*/
	ltoa(buffer, num, 10);
	//buffer[BUFFER_SIZE - 1] = '\0';
	write_disp(buffer);
}

void write_disp_double(double num)
{
#define BUFFER_SIZE 10
	char buffer[BUFFER_SIZE];
	char sig = 0;

	if (fabs(num) != num)
	{
		buffer[0] = '-';
		sig = 1;
	}

	num = fabs(num);
	char whole_size = (char) (log10(num)) + 1;
	signed char mantissa_size = BUFFER_SIZE - (whole_size + sig);

	unsigned int whole = 0;
	signed char index = 0;
	// parse the whole number prefix
	for (index = whole_size - 1; index >= 0; index--)
	{
		buffer[index + sig] = num_to_char[(unsigned int) (num / pow(10, index))];
	}
	if ((int) num - num != 0)
	{
		// add decimal
		buffer[whole_size] = '.';
	}
	// don't try to count down from negative number
	if (mantissa_size < 0)
		return;
	// parse mantissa
	num = num - (int) num;
	for (index = 0; index < mantissa_size; index++)
	{
		buffer[whole_size + 1 + index] = num_to_char[(unsigned int) (num * pow(10, index))];
	}
	buffer[BUFFER_SIZE - 1] = '\0';
	write_disp(buffer);
}


// writes a string to the display

void write_disp(char* chars)
{
	// it is only this size
	unsigned char buf[8] = {
		0, 0, 0, 0, 0, 0, 0, 0
	};
	signed char i;

	// shouldn't go negative, but it is here just in case
	signed char offset = 0;
	for (i = 0; ((i < (d + offset)) && (chars[i] != '\0')) || chars[i] == '.'; i++)
	{
		switch (chars[i])
		{
		case ' ':
			buf[i - offset] &= SEG_DP;
			break;
		case '.':
			offset++;
			buf[i - offset] |= SEG_DP;
			break;
		case '-':
			buf[i - offset] = SEG_G | (buf[i - offset] & SEG_DP);
			break;
		case 'a' ... 'z':
			buf[i - offset] |= lcd_font[chars[i] - 'a' + ('A' - '0')];
			break;
		case '0' ... 'Z':
			buf[i - offset] |= lcd_font[chars[i] - '0'];
			break;
		}
	}
	// this is here to rearrange the numbers to fit the inverted layout
	signed char j = 0;
	//segs
	for (j = 0; j < 8; j++)
	{
		unsigned int seg = 0;
		i = 0;
		//digits
		for (i = 0; i < d; i++)
		{
			// this loops through and masks out only the segment we want
			// it then masks it into the seg variable
			seg |= (DIG_MASK(i)) & ((buf[d - i - 1] >> (j)) << i);
		}
		write(j + 1, seg);
	}
	offset++;
}

// sets a single bit via spi

void out_bit(bool b)
{
	SPI_CLK = off;
	SPI_TX = off;
	pause();
	SPI_TX = b;
	pause();
	SPI_CLK = on;
	pause();
	SPI_CLK = off;
	pause();
	SPI_TX = off;
}

// basic SPI routines

void write(unsigned char address, unsigned char data)
{
	SPI_CE = off;
	pause();
	signed char i = 0;
	unsigned int out = (address << 8) | data;
	for (i = 15; i >= 0; i--)
	{
		out_bit(1 & (out >> i));
	}
	SPI_CE = on;
	pause();
	SPI_CE = off;
}

