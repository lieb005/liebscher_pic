/* 
 * File:   LED_disp.h
 * Author: mark
 *
 * Created on 21. April 2013, 23:16
 */

#include <stdbool.h>

#ifndef LED_DISP_H
#    define	LED_DISP_H

#    ifdef	__cplusplus
extern "C"
{
#    endif
	
#define true		1
#define false		0
#define on			1
#define off			0
#define rising		1
#define falling		0
#define input		1
#define output		0

#define PAUSE_TIME	5

// Itnitializes the display to recieve data
extern void init_disp(short digits);
//puts the display into test mode if argument is not 0
extern void test_display(bool test);
// write a decimal number to the screen.  If an int, strip the decimal
extern void write_disp_double(double num);
// display a long
extern void write_disp_long(long num);
// write the string to the string to the screen
extern void write_disp(char* digits);
// write spi data directly
void write(unsigned char address, unsigned char data);
//set the brightness on a scale of 0-15
extern void set_brightness(char bright);
// writes a single SPI bit
void out_bit(bool b);

/*
#define SEG_DP	0b10000000
#define SEG_A	0b01000000
#define SEG_B	0b00100000
#define SEG_C	0b00010000
#define SEG_D	0b00001000
#define SEG_E	0b00000100
#define SEG_F	0b00000010
#define SEG_G	0b00000001
 */

#define SEG_DP	0b10000000
#define SEG_A	0b00000001
#define SEG_B	0b00000010
#define SEG_C	0b00000100
#define SEG_D	0b00001000
#define SEG_E	0b00010000
#define SEG_F	0b00100000
#define SEG_G	0b01000000

#define DIG_1 0x1
#define DIG_2 0x2
#define DIG_3 0x3
#define DIG_4 0x4
#define DIG_5 0x5
#define DIG_6 0x6
#define DIG_7 0x7
#define DIG_8 0x8

#define DIG_MASK(a) (1 << (a))

#define NEW_CHAR
#define OLD_SCH

const char num_to_char[] = {
	'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
};



const char lcd_font[] = {
	SEG_A + SEG_B + SEG_C + SEG_D + SEG_E + SEG_F        , // Displays "0"
	SEG_B +         SEG_C                                , // Displays "1"
	SEG_A + SEG_B +         SEG_D + SEG_E +         SEG_G, // Displays "2"
	SEG_A + SEG_B + SEG_C + SEG_D +                 SEG_G, // Displays "3"
	        SEG_B + SEG_C +                 SEG_F + SEG_G, // Displays "4"
	SEG_A +         SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "5"
#ifndef OLD_SCH
	SEG_A +         SEG_C + SEG_D + SEG_E + SEG_F + SEG_G, // Displays "6"
#else
	                SEG_C + SEG_D + SEG_E + SEG_F + SEG_G, // Displays "6" without seg. A
#endif
#ifndef NEW_CHAR
	SEG_A + SEG_B + SEG_C                                , // Displays "7"
#else
	SEG_A + SEG_B + SEG_C +                 SEG_F        , // Displays "7" like casio
#endif
	SEG_A + SEG_B + SEG_C + SEG_D + SEG_E + SEG_F + SEG_G, // Displays "8"
#ifndef OLD_SCH
	SEG_A + SEG_B + SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "9"
#else
	SEG_A + SEG_B + SEG_C +                 SEG_F + SEG_G, // Displays "9" without seg. D
#endif
	0                                                    , // Displays " " (:)
	0                                                    , // Displays " " (;)
	SEG_A +                                 SEG_F + SEG_G, // Displays "<" as high c
	                        SEG_D +                 SEG_G, // Displays "="
	0                                                    , // Displays " " (>)
	SEG_A + SEG_B +                 SEG_E +         SEG_G, // Displays "?"
	0                                                    , // Displays " " (@)
	SEG_A + SEG_B + SEG_C +         SEG_E + SEG_F + SEG_G, // Displays "A"
	                SEG_C + SEG_D + SEG_E + SEG_F + SEG_G, // Displays "b"
	                        SEG_D + SEG_E +         SEG_G, // Displays "c"
	        SEG_B + SEG_C + SEG_D + SEG_E +         SEG_G, // Displays "d"
	SEG_A +                 SEG_D + SEG_E + SEG_F + SEG_G, // Displays "E"
	SEG_A +                         SEG_E + SEG_F + SEG_G, // Displays "f"
#ifndef NEW_CHAR
	SEG_A + SEG_B + SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "g" same as 9
#else
	SEG_A +         SEG_C + SEG_D + SEG_E + SEG_F        , // Displays "G"
#endif
	        SEG_B + SEG_C +         SEG_E + SEG_F + SEG_G, // Displays "h"
	                        SEG_E                        , // Displays "i"
#ifndef NEW_CHAR
	SEG_A + SEG_B + SEG_C + SEG_D                        , // Displays "J"
#else
	        SEG_B + SEG_C + SEG_D + SEG_E                , // Displays "J"
#endif
	                        SEG_D +         SEG_F + SEG_G, // Displays "k"
	                        SEG_D + SEG_E + SEG_F        , // Displays "L"
	SEG_A + SEG_B + SEG_C +         SEG_E + SEG_F        , // Displays "M"
	                SEG_C +         SEG_E +         SEG_G, // Displays "n"
	                SEG_C + SEG_D + SEG_E +         SEG_G, // Displays "o"
	SEG_A + SEG_B +                 SEG_E + SEG_F + SEG_G, // Displays "P"
	SEG_A + SEG_B + SEG_C +                 SEG_F + SEG_G, // Displays "q"
	                                SEG_E +         SEG_G, // Displays "r"
#ifndef NEW_CHAR
	SEG_A +         SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "S" same as 5
#else
	SEG_A +         SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "S" same as 5
#endif
	                        SEG_D + SEG_E + SEG_F + SEG_G, // Displays "t"
	                SEG_C + SEG_D + SEG_E                , // Displays "u"
#ifndef NEW_CHAR
	                SEG_C + SEG_D + SEG_E                , // Displays "v" same as u
#else
	        SEG_B + SEG_C + SEG_D + SEG_E + SEG_F        , // Displays "V"
#endif
	        SEG_B + SEG_C + SEG_D + SEG_E + SEG_F + SEG_G, // Displays "W"
	        SEG_B + SEG_C +         SEG_E + SEG_F + SEG_G, // Displays "X" as H
	        SEG_B + SEG_C + SEG_D +         SEG_F + SEG_G, // Displays "Y"
#ifndef NEW_CHAR
	SEG_A + SEG_B +         SEG_D + SEG_E +         SEG_G, // Displays "Z" same as 2
#else
	SEG_A + SEG_B +         SEG_D + SEG_E                , // Displays "Z"
#endif
};

#    ifdef	__cplusplus
}
#    endif

#endif	/* LED_DISP_H */

