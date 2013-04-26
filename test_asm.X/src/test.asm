.title " Sample dsPIC Assembler Source Code"
 .sbttl " LED Toggle"

 .include "p24HJ128GP502.inc"
 .text
 .global __reset
 __reset:
 mov #0x0a00,W8
 mov W8,SPLIM
 mov #0x0980,W15
 mov #0xfc,W4
 mov W4,TRISB

 mloop: mov #0x02,W5
 mov W5,PORTB
 call delay

 mov #0x01,W5
 mov W5,PORTB
 call delay

 bra mloop

 delay: mov #0x7fff,W6
 dloop: dec W6,W6
 cp0 W6
 bra NZ,dloop
 return
 .end


