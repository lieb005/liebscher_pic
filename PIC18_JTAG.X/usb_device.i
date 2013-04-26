#line 1 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 82 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

 
#line 1 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 45 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
 


#line 49 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
#line 52 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 54 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 55 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 56 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 58 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 59 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 60 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
#line 1 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 

#line 4 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
#line 36 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"


#line 41 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
#line 43 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"

#line 45 "/opt/microchip/mplabc18/v3.40/bin/../h/stddef.h"
#line 62 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
 

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;     
typedef enum _BIT { CLEAR = 0, SET } BIT;

#line 68 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 69 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 70 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
typedef signed int          INT;
typedef signed char         INT8;
typedef signed short int    INT16;
typedef signed long int     INT32;

 
#line 79 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 81 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
typedef unsigned int        UINT;
typedef unsigned char       UINT8;
typedef unsigned short int  UINT16;
 
#line 88 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef unsigned short long UINT24;
#line 90 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef unsigned long int   UINT32;      
 
#line 93 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 95 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

typedef union
{
    UINT8 Val;
    struct
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union 
{
    UINT16 Val;
    UINT8 v[2] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;

 
#line 144 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef union
{
    UINT24 Val;
    UINT8 v[3] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
    } bits;
} UINT24_VAL, UINT24_BITS;
#line 183 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

typedef union
{
    UINT32 Val;
    UINT16 w[2] ;
    UINT8  v[4] ;
    struct 
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct 
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
         UINT8 b24:1;
         UINT8 b25:1;
         UINT8 b26:1;
         UINT8 b27:1;
         UINT8 b28:1;
         UINT8 b29:1;
         UINT8 b30:1;
         UINT8 b31:1;
    } bits;
} UINT32_VAL;

 
#line 245 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 332 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 

 
typedef void                    VOID;

typedef char                    CHAR8;
typedef unsigned char           UCHAR8;

typedef unsigned char           BYTE;                            
typedef unsigned short int      WORD;                            
typedef unsigned long           DWORD;                           
 

typedef unsigned long long      QWORD;                           
typedef signed char             CHAR;                            
typedef signed short int        SHORT;                           
typedef signed long             LONG;                            
 

typedef signed long long        LONGLONG;                        
typedef union
{
    BYTE Val;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2] ;
    struct 
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2] ;
    BYTE v[4] ;
    struct 
    {
        WORD LW;
        WORD HW;
    } word;
    struct 
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct 
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
    } bits;
} DWORD_VAL;

 
typedef union
{
    QWORD Val;
    DWORD d[2] ;
    WORD w[4] ;
    BYTE v[8] ;
    struct 
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct 
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
         BYTE b32:1;
         BYTE b33:1;
         BYTE b34:1;
         BYTE b35:1;
         BYTE b36:1;
         BYTE b37:1;
         BYTE b38:1;
         BYTE b39:1;
         BYTE b40:1;
         BYTE b41:1;
         BYTE b42:1;
         BYTE b43:1;
         BYTE b44:1;
         BYTE b45:1;
         BYTE b46:1;
         BYTE b47:1;
         BYTE b48:1;
         BYTE b49:1;
         BYTE b50:1;
         BYTE b51:1;
         BYTE b52:1;
         BYTE b53:1;
         BYTE b54:1;
         BYTE b55:1;
         BYTE b56:1;
         BYTE b57:1;
         BYTE b58:1;
         BYTE b59:1;
         BYTE b60:1;
         BYTE b61:1;
         BYTE b62:1;
         BYTE b63:1;
    } bits;
} QWORD_VAL;

#line 547 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 549 "/opt/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 85 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"






#line 92 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 94 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 96 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 97 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 99 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 100 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"



#line 106 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

 
 
#line 110 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 111 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 112 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

 
#line 115 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 116 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 117 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 119 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 120 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 121 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 122 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 123 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 124 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 125 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 126 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 127 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 128 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 129 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 130 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 131 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 132 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 133 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 134 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 135 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 136 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 137 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 138 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 139 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 140 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 141 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 142 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 143 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 144 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 145 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 146 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 147 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 148 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 149 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 150 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 151 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 152 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 153 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 154 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 155 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 156 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 157 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 158 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 159 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 160 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 161 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 162 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 163 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 164 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 165 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 166 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 167 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 168 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 169 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 170 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 171 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 172 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 173 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 174 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 175 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 176 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 177 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 178 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 179 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 180 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 181 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 182 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 183 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 184 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 185 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 186 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 188 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 190 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 192 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 264 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 265 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 269 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 273 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 275 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 343 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 345 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 347 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 349 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 351 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 423 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 425 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

 
#pragma udata

USB_VOLATILE USB_DEVICE_STATE USBDeviceState;
USB_VOLATILE BYTE USBActiveConfiguration;
USB_VOLATILE BYTE USBAlternateInterface[USB_MAX_NUM_INT];
volatile BDT_ENTRY *pBDTEntryEP0OutCurrent;
volatile BDT_ENTRY *pBDTEntryEP0OutNext;
volatile BDT_ENTRY *pBDTEntryOut[USB_MAX_EP_NUMBER+1];
volatile BDT_ENTRY *pBDTEntryIn[USB_MAX_EP_NUMBER+1];
USB_VOLATILE BYTE shortPacketStatus;
USB_VOLATILE BYTE controlTransferState;
USB_VOLATILE IN_PIPE inPipes[1];
USB_VOLATILE OUT_PIPE outPipes[1];
USB_VOLATILE BYTE *pDst;
USB_VOLATILE BOOL RemoteWakeup;
USB_VOLATILE BYTE USTATcopy;
USB_VOLATILE BOOL BothEP0OutUOWNsSet;
USB_VOLATILE WORD USBInMaxPacketSize[USB_MAX_EP_NUMBER]; 
USB_VOLATILE BYTE *USBInData[USB_MAX_EP_NUMBER];

 
#line 449 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 450 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 452 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        #pragma udata USB_BDT=0x400     
#line 454 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 455 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"


#line 460 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
#line 462 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    volatile BDT_ENTRY BDT[(USB_MAX_EP_NUMBER + 1) * 2] __attribute__ ((aligned (512)));
#line 464 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 466 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 468 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 470 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 472 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"






#line 479 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
volatile CTRL_TRF_SETUP SetupPkt;           
volatile BYTE CtrlTrfData[USB_EP0_BUFF_SIZE];


#line 485 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

#line 488 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 491 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 493 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 499 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 501 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 503 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 505 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#pragma udata
#line 507 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"


#line 510 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    
    extern ROM USB_DEVICE_DESCRIPTOR device_dsc;
#line 513 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 515 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 517 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    
    extern ROM BYTE *ROM USB_CD_Ptr[];
#line 520 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 522 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

extern ROM BYTE *ROM USB_SD_Ptr[];

 
#pragma code

 


#line 534 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
#line 536 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 540 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 541 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 542 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 544 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 548 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 549 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 550 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 552 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 554 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 555 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 556 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 558 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 560 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 561 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 562 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 564 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 566 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 567 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 568 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 570 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 572 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 573 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 574 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 576 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 578 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 579 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 580 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 582 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 584 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 585 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 586 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

 


BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size);


void USBCtrlEPService(void);
void USBCtrlTrfSetupHandler(void);
void USBCtrlTrfInHandler(void);
void USBCheckStdRequest(void);
void USBStdGetDscHandler(void);
void USBCtrlEPServiceComplete(void);
void USBCtrlTrfTxService(void);
void USBPrepareForNextSetupTrf(void);
void USBCtrlTrfRxService(void);
void USBStdSetCfgHandler(void);
void USBStdGetStatusHandler(void);
void USBStdFeatureReqHandler(void);
void USBCtrlTrfOutHandler(void);
BOOL USBIsTxBusy(BYTE EPNumber);
void USBPut(BYTE EPNum, BYTE Data);
void USBEPService(void);
void USBConfigureEndpoint(BYTE EPNum, BYTE direction);

void USBProtocolResetHandler(void);
void USBWakeFromSuspend(void);
void USBSuspend(void);
void USBStallHandler(void);
USB_HANDLE USBTransferOnePacket(BYTE ep, BYTE dir, BYTE* data, BYTE len);
void USBEnableEndpoint(BYTE ep,BYTE options);



#line 640 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

void USBDeviceInit(void)
{
    BYTE i;

    
    USBClearInterruptRegister(U1EIR);  
       
    
    USBClearInterruptRegister(U1IR); 

    SetConfigurationOptions();

    
    USBPowerModule();

    
    USBSetBDTAddress(BDT);

    
    USBPingPongBufferReset = 1;                    

    
    U1ADDR = 0x00;                   

    
    memset((void*)&U1EP1,0x00,(USB_MAX_EP_NUMBER-1));

    
    USBPingPongBufferReset = 0;

    
    for(i=0;i<(sizeof(BDT)/sizeof(BDT_ENTRY));i++)
    {
        BDT[i].Val = 0x00;
    }

    
    U1EP0 = EP_CTRL|USB_HANDSHAKE_ENABLED;        

    
    while(USBTransactionCompleteIF == 1)      
    {
        USBClearInterruptFlag(USBTransactionCompleteIFReg,USBTransactionCompleteIFBitNum);
    }

    
    inPipes[0].info.Val = 0;
    outPipes[0].info.Val = 0;
    outPipes[0].wCount.Val = 0;

    
    USBPacketDisable = 0;           

    
    pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[1 ];

    
    USBActiveConfiguration = 0;     

    
    USBDeviceState = DETACHED_STATE;
}



#line 735 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

#line 738 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 739 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 741 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 744 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 747 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 748 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
void USBDeviceTasks(void)
#line 750 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
{
    BYTE i;

#line 772 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 774 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 808 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 812 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 836 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 859 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 861 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

    if(USBDeviceState == ATTACHED_STATE)
    {
        
#line 871 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

        if(!USBSE0Event)
        {
            USBClearInterruptRegister(U1IR);
#line 877 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 879 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            USBResetIE = 1;             
            USBIdleIE = 1;             
            USBDeviceState = POWERED_STATE;
        }
    }

#line 895 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

    
#line 898 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBActivityIF && USBActivityIE)
    {
        USBClearInterruptFlag(USBActivityIFReg,USBActivityIFBitNum);
#line 903 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 905 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            USBWakeFromSuspend();
#line 907 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    }

    
#line 911 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBSuspendControl==1)
    {
        USBClearUSBInterrupt();
        return;
    }

    
#line 927 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBResetIF && USBResetIE)
    {
        USBDeviceInit();
        USBDeviceState = DEFAULT_STATE;

        
#line 942 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
        BDT[0 ].ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
        BDT[0 ].CNT = USB_EP0_BUFF_SIZE;
        BDT[0 ].STAT.Val &= ~_STAT_MASK;
        BDT[0 ].STAT.Val |= _USIE|_DAT0|_DTSEN|_BSTALL;

#line 955 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

        USBClearInterruptFlag(USBResetIFReg,USBResetIFBitNum);
    }

    
#line 961 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBIdleIF && USBIdleIE)
    { 
#line 968 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            USBSuspend();
#line 970 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        
        USBClearInterruptFlag(USBIdleIFReg,USBIdleIFBitNum);
    }

    if(USBSOFIF && USBSOFIE)
    {
        USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SOF,0,1) ;
        USBClearInterruptFlag(USBSOFIFReg,USBSOFIFBitNum);
    }

    if(USBStallIF && USBStallIE)
    {
        USBStallHandler();
    }

    if(USBErrorIF && USBErrorIE)
    {
        USER_USB_CALLBACK_EVENT_HANDLER(EVENT_BUS_ERROR,0,1) ;
        USBClearInterruptRegister(U1EIR);               
    }

    
#line 995 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBDeviceState < DEFAULT_STATE)
    {
	    USBClearUSBInterrupt();
	    return; 
	}  

    
#line 1004 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(USBTransactionCompleteIE)
    {
	    for(i = 0; i < 4; i++)	
		{						
		    if(USBTransactionCompleteIF)
		    {
		        USTATcopy = U1STAT;

		        USBClearInterruptFlag(USBTransactionCompleteIFReg,USBTransactionCompleteIFBitNum);
		
		        
#line 1018 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

                if((USTATcopy & ENDPOINT_MASK) == 0)
                {
		            USBCtrlEPService();
                }
                else
                {
                    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER,(BYTE*)&USTATcopy,0) ;
                }
		    }
		    else
		    	break;	
		}
	}

    USBClearUSBInterrupt();
}


#line 1055 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStallHandler(void)
{
    
#line 1066 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

     
    if(U1EP0bits.EPSTALL == 1)
    {
        
        if((pBDTEntryEP0OutCurrent->STAT.Val == _USIE) && (pBDTEntryIn[0]->STAT.Val == (_USIE|_BSTALL)))
        {
            
            pBDTEntryEP0OutCurrent->STAT.Val = _USIE|_DAT0|_DTSEN|_BSTALL;
        }
        U1EP0bits.EPSTALL = 0;               
    }

    USBClearInterruptFlag(USBStallIFReg,USBStallIFBitNum);
}


#line 1098 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBSuspend(void)
{
    
#line 1123 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    USBActivityIE = 1;                     
    USBClearInterruptFlag(USBIdleIFReg,USBIdleIFBitNum);

#line 1128 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    U1CONbits.SUSPND = 1;                   
                                            
#line 1131 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
 
    
#line 1137 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SUSPEND,0,0) ;
}


#line 1155 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBWakeFromSuspend(void)
{
    
#line 1161 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_RESUME,0,0) ;

#line 1165 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    
    
    
    
    U1CONbits.SUSPND = 0;   
                            
#line 1172 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"


    USBActivityIE = 0;

    
#line 1188 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 

    
#line 1192 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    while(USBActivityIF)
#line 1194 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    {
        USBClearInterruptFlag(USBActivityIFReg,USBActivityIFBitNum);
    }  

}


#line 1220 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlEPService(void)
{
	
    if((USTATcopy & USTAT_EP0_PP_MASK) == USTAT_EP0_OUT_EVEN)
    {
		
#line 1228 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[(USTATcopy & USTAT_EP_MASK)>>1];
#line 1230 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1232 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1234 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

		
        pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
		
        ((BYTE_VAL*)&pBDTEntryEP0OutNext)->Val ^= 0x0000 ;

		
        if(pBDTEntryEP0OutCurrent->STAT.PID == PID_SETUP)
        {
	        
	        
	        
	        if(pBDTEntryEP0OutCurrent->ADR == (BYTE*)ConvertToPhysicalAddress(&CtrlTrfData))	
	        {
		        unsigned char setup_cnt;
		
		        pBDTEntryEP0OutCurrent->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
		        for(setup_cnt = 0; setup_cnt < sizeof(CTRL_TRF_SETUP); setup_cnt++)
		        {
		            *(((BYTE*)&SetupPkt)+setup_cnt) = *(((BYTE*)&CtrlTrfData)+setup_cnt);
		        }
		    } 
	        
			
            USBCtrlTrfSetupHandler();
        }
        else
        {
			
            USBCtrlTrfOutHandler();
        }
    }
    else if((USTATcopy & USTAT_EP0_PP_MASK) == USTAT_EP0_IN)
    {
		
		
        USBCtrlTrfInHandler();
    }

}


#line 1314 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlTrfSetupHandler(void)
{
	
    if(pBDTEntryIn[0]->STAT.UOWN != 0)
    {
		
		
        pBDTEntryIn[0]->STAT.Val = _UCPU;           
    }

	
    shortPacketStatus = 0 ;

     
    controlTransferState = 0 ;

    inPipes[0].wCount.Val = 0;
    inPipes[0].info.Val = 0;

     
    USBCheckStdRequest();
    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_EP0_REQUEST,0,0) ;

     
    USBCtrlEPServiceComplete();

}

#line 1361 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlTrfOutHandler(void)
{
    if(controlTransferState == 2 )
    {
        USBCtrlTrfRxService();	
    }
    else 
    {
	    
	    
	    
	    
	    
		USBPrepareForNextSetupTrf();
		if(BothEP0OutUOWNsSet == FALSE)
		{
	        pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
	        pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
	        pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT0|_DTSEN|_BSTALL;			
		}
		else
		{
			BothEP0OutUOWNsSet = FALSE;
		}
    }
}


#line 1411 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlTrfInHandler(void)
{
    BYTE lastDTS;

    lastDTS = pBDTEntryIn[0]->STAT.DTS;

    
    ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0000 ;

    
    if(USBDeviceState == ADR_PENDING_STATE)
    {
        U1ADDR = SetupPkt.bDevADR.Val;
        if(U1ADDR > 0)
        {
            USBDeviceState=ADDRESS_STATE;
        }
        else
        {
            USBDeviceState=DEFAULT_STATE;
        }
    }


    if(controlTransferState == 1 )
    {
        pBDTEntryIn[0]->ADR = (BYTE *)ConvertToPhysicalAddress(CtrlTrfData);
        USBCtrlTrfTxService();

         
        if(shortPacketStatus == 2 )
        {
            
            
            pBDTEntryIn[0]->STAT.Val = _USIE|_BSTALL;
        }
        else
        {
            if(lastDTS == 0)
            {
                pBDTEntryIn[0]->STAT.Val = _USIE|_DAT1|_DTSEN;
            }
            else
            {
                pBDTEntryIn[0]->STAT.Val = _USIE|_DAT0|_DTSEN;
            }
        }
    }
	else 
	{
		USBPrepareForNextSetupTrf();
	}	

}


#line 1483 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBPrepareForNextSetupTrf(void)
{
    controlTransferState = 0 ;
	
	
	
	
	

    pBDTEntryIn[0]->STAT.Val = _UCPU;    
    {
        BDT_ENTRY* p;

        p = (BDT_ENTRY*)(((unsigned int)pBDTEntryIn[0])^0x0000 );
        p->STAT.Val = _UCPU;
    }

    
    
    
    if(outPipes[0].info.bits.busy == 1)
    {
        if(outPipes[0].pFunc != 0 )
        {
            outPipes[0].pFunc();
        }
        outPipes[0].info.bits.busy = 0;
    }
}


#line 1529 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCheckStdRequest(void)
{
    if(SetupPkt.RequestType != USB_SETUP_TYPE_STANDARD_BITFIELD) return;

    switch(SetupPkt.bRequest)
    {
        case USB_REQUEST_SET_ADDRESS:
            inPipes[0].info.bits.busy = 1;            
            USBDeviceState = ADR_PENDING_STATE;       
             
            break;
        case USB_REQUEST_GET_DESCRIPTOR:
            USBStdGetDscHandler();
            break;
        case USB_REQUEST_SET_CONFIGURATION:
            USBStdSetCfgHandler();
            break;
        case USB_REQUEST_GET_CONFIGURATION:
            inPipes[0].pSrc.bRam = (BYTE*)&USBActiveConfiguration;         
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;               
            inPipes[0].wCount.v[0] = 1;                         
            inPipes[0].info.bits.busy = 1;
            break;
        case USB_REQUEST_GET_STATUS:
            USBStdGetStatusHandler();
            break;
        case USB_REQUEST_CLEAR_FEATURE:
        case USB_REQUEST_SET_FEATURE:
            USBStdFeatureReqHandler();
            break;
        case USB_REQUEST_GET_INTERFACE:
            inPipes[0].pSrc.bRam = (BYTE*)&USBAlternateInterface[SetupPkt.bIntfID];  
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;               
            inPipes[0].wCount.v[0] = 1;                         
            inPipes[0].info.bits.busy = 1;
            break;
        case USB_REQUEST_SET_INTERFACE:
            inPipes[0].info.bits.busy = 1;
            USBAlternateInterface[SetupPkt.bIntfID] = SetupPkt.bAltID;
            break;
        case USB_REQUEST_SET_DESCRIPTOR:
            USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SET_DESCRIPTOR,0,0) ;
            break;
        case USB_REQUEST_SYNCH_FRAME:
        default:
            break;
    }
}


#line 1594 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStdFeatureReqHandler(void)
{
    BDT_ENTRY *p;
#line 1599 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1601 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        unsigned int* pUEP;             
#line 1603 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1635 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    if((SetupPkt.bFeature == USB_FEATURE_DEVICE_REMOTE_WAKEUP)&&
       (SetupPkt.Recipient == USB_SETUP_RECIPIENT_DEVICE_BITFIELD))
    {
        inPipes[0].info.bits.busy = 1;
        if(SetupPkt.bRequest == USB_REQUEST_SET_FEATURE)
            RemoteWakeup = TRUE;
        else
            RemoteWakeup = FALSE;
    }

    if((SetupPkt.bFeature == USB_FEATURE_ENDPOINT_HALT)&&
       (SetupPkt.Recipient == USB_SETUP_RECIPIENT_ENDPOINT_BITFIELD)&&
       (SetupPkt.EPNum != 0))
    {
        inPipes[0].info.bits.busy = 1;
         

        if(SetupPkt.EPDir == 0)
        {
            p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
        }
        else
        {
            p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
        }

		
        if(SetupPkt.bRequest == USB_REQUEST_SET_FEATURE)
        {
			
            p->STAT.Val = _USIE|_BSTALL;
        }
        else
        {
			
			
#line 1672 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1675 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                pUEP = (unsigned int*)(&U1EP0+SetupPkt.EPNum);
#line 1677 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

			
            *pUEP &= ~UEP_STALL;

            if(SetupPkt.EPDir == 1) 
            {
				
				
				
#line 1687 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                    p->STAT.Val = _UCPU|_DAT0;
                    
                    ((BYTE_VAL*)&p)->Val ^= 0x0000 ;
                    p->STAT.Val = _UCPU|_DAT1;
#line 1692 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1694 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            }
            else
            {
				
				
				
				
				
				
#line 1704 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                    p->STAT.Val = _USIE|_DAT0|_DTSEN;
                    
                    ((BYTE_VAL*)&p)->Val ^= 0x0000 ;
                    p->STAT.Val = _USIE|_DAT1|_DTSEN;
#line 1709 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1711 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

            }
        }

    }
}


#line 1733 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStdGetDscHandler(void)
{
    if(SetupPkt.bmRequestType == 0x80)
    {
        inPipes[0].info.Val = USB_EP0_ROM | USB_EP0_BUSY | USB_EP0_INCLUDE_ZERO;

        switch(SetupPkt.bDescriptorType)
        {
            case USB_DESCRIPTOR_DEVICE:
#line 1744 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                    inPipes[0].pSrc.bRom = (ROM BYTE*)&device_dsc;
#line 1746 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1748 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                inPipes[0].wCount.Val = sizeof(device_dsc);
                break;
            case USB_DESCRIPTOR_CONFIGURATION:
#line 1752 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                    inPipes[0].pSrc.bRom = *(USB_CD_Ptr+SetupPkt.bDscIndex);
#line 1754 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 1756 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
                inPipes[0].wCount.Val = *(inPipes[0].pSrc.wRom+1);                
                break;
            case USB_DESCRIPTOR_STRING:
                
                
                
                if(SetupPkt.bDscIndex<USB_NUM_STRING_DESCRIPTORS)
                {
                    
                    inPipes[0].pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);
                    
                    inPipes[0].wCount.Val = *inPipes[0].pSrc.bRom;                    
                }
                else
                {
                    inPipes[0].info.Val = 0;
                }
                break;
            default:
                inPipes[0].info.Val = 0;
                break;
        }
    }
}


#line 1795 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStdGetStatusHandler(void)
{
    CtrlTrfData[0] = 0;                 
    CtrlTrfData[1] = 0;

    switch(SetupPkt.Recipient)
    {
        case USB_SETUP_RECIPIENT_DEVICE_BITFIELD:
            inPipes[0].info.bits.busy = 1;
            
#line 1808 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
            if(self_power == 1) 
            {
                CtrlTrfData[0]|=0x01;
            }

            if(RemoteWakeup == TRUE)
            {
                CtrlTrfData[0]|=0x02;
            }
            break;
        case USB_SETUP_RECIPIENT_INTERFACE_BITFIELD:
            inPipes[0].info.bits.busy = 1;     
            break;
        case USB_SETUP_RECIPIENT_ENDPOINT_BITFIELD:
            inPipes[0].info.bits.busy = 1;
            
#line 1826 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
            {
                BDT_ENTRY *p;

                if(SetupPkt.EPDir == 0)
                {
                    p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
                }
                else
                {
                    p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
                }

                if(p->STAT.Val & _BSTALL)    
                    CtrlTrfData[0]=0x01;    
                break;
            }
    }

    if(inPipes[0].info.bits.busy == 1)
    {
        inPipes[0].pSrc.bRam = (BYTE*)&CtrlTrfData;            
        inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;               
        inPipes[0].wCount.v[0] = 2;                         
    }
}


#line 1880 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlEPServiceComplete(void)
{
    
#line 1886 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    USBPacketDisable = 0;

    if(inPipes[0].info.bits.busy == 0)
    {
        if(outPipes[0].info.bits.busy == 1)
        {
            controlTransferState = 2 ;
            
#line 1902 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
            pBDTEntryIn[0]->CNT = 0;
            pBDTEntryIn[0]->STAT.Val = _USIE|_DAT1|_DTSEN;

            
#line 1908 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
            pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
            pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&CtrlTrfData);
            pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT1|_DTSEN;
        }
        else
        {
            
#line 1918 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
            pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
            pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
            pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT0|_DTSEN|_BSTALL;
            pBDTEntryIn[0]->STAT.Val = _USIE|_BSTALL; 
        }
    }
    else    
    {
        if(outPipes[0].info.bits.busy == 0)
        {
			if(SetupPkt.DataDir == USB_SETUP_DEVICE_TO_HOST_BITFIELD)
			{
				if(SetupPkt.wLength < inPipes[0].wCount.Val)
				{
					inPipes[0].wCount.Val = SetupPkt.wLength;
				}
				USBCtrlTrfTxService();
				controlTransferState = 1 ;
				
#line 1957 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
				pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
				pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
				pBDTEntryEP0OutNext->STAT.Val = _USIE;           
				BothEP0OutUOWNsSet = FALSE;	

#line 1964 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
				pBDTEntryEP0OutCurrent->CNT = USB_EP0_BUFF_SIZE;
				pBDTEntryEP0OutCurrent->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
				pBDTEntryEP0OutCurrent->STAT.Val = _USIE|_BSTALL; 
				BothEP0OutUOWNsSet = TRUE;	
#line 1969 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

				
#line 1973 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
				pBDTEntryIn[0]->ADR = (BYTE*)ConvertToPhysicalAddress(&CtrlTrfData);
				pBDTEntryIn[0]->STAT.Val = _USIE|_DAT1|_DTSEN;
			}
			else   
			{
				controlTransferState = 2 ;
				
#line 1988 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
				pBDTEntryIn[0]->CNT = 0;
				pBDTEntryIn[0]->STAT.Val = _USIE|_DAT1|_DTSEN;

				
#line 1994 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
				pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
				pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&CtrlTrfData);
				pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT1|_DTSEN;
			}
        }
    }

}



#line 2027 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlTrfTxService(void)
{
    WORD_VAL byteToSend;

    
#line 2034 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(inPipes[0].wCount.Val < USB_EP0_BUFF_SIZE)
    {
        byteToSend.Val = inPipes[0].wCount.Val;

         
        if(shortPacketStatus == 0 )
        {
            shortPacketStatus = 1 ;
        }
        else if(shortPacketStatus == 1 )
        {
            shortPacketStatus = 2 ;
        }
         
    }
    else
    {
        byteToSend.Val = USB_EP0_BUFF_SIZE;
    }

    
#line 2057 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
#line 2059 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        pBDTEntryIn[0]->STAT.BC9 = 0;
        pBDTEntryIn[0]->STAT.BC8 = 0;
#line 2062 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    
#line 2064 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        pBDTEntryIn[0]->STAT.Val |= byteToSend.byte.HB;
        pBDTEntryIn[0]->CNT = byteToSend.byte.LB;
#line 2067 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2069 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2071 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

    
#line 2074 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    inPipes[0].wCount.Val = inPipes[0].wCount.Val - byteToSend.Val;

    pDst = (USB_VOLATILE BYTE*)CtrlTrfData;        

    if(inPipes[0].info.bits.ctrl_trf_mem == USB_EP0_ROM)       
    {
        while(byteToSend.Val)
        {
            *pDst++ = *inPipes[0].pSrc.bRom++;
            byteToSend.Val--;
        }
    }
    else  
    {
        while(byteToSend.Val)
        {
            *pDst++ = *inPipes[0].pSrc.bRam++;
            byteToSend.Val--;
        }
    }

}


#line 2122 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCtrlTrfRxService(void)
{
    BYTE byteToRead;
    BYTE i;

    byteToRead = pBDTEntryEP0OutCurrent->CNT;

    
#line 2132 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
    if(byteToRead > outPipes[0].wCount.Val)
    {
        byteToRead = outPipes[0].wCount.Val;
    }
    else
    {
        outPipes[0].wCount.Val = outPipes[0].wCount.Val - byteToRead;
    }

    for(i=0;i<byteToRead;i++)
    {
        *outPipes[0].pDst.bRam++ = CtrlTrfData[i];
    }

    
    if(outPipes[0].wCount.Val > 0)
    {
        
#line 2154 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
        pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
        pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&CtrlTrfData);
        if(pBDTEntryEP0OutCurrent->STAT.DTS == 0)
        {
            pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT1|_DTSEN;
        }
        else
        {
            pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT0|_DTSEN;
        }
    }
    else
    {
        pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
        pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);
        
        
        
        pBDTEntryEP0OutNext->STAT.Val = _USIE|_BSTALL;

        if(outPipes[0].pFunc != 0 )
        {
            outPipes[0].pFunc();
        }
        outPipes[0].info.bits.busy = 0;
    }
}


#line 2200 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStdSetCfgHandler(void)
{
    
    inPipes[0].info.bits.busy = 1;            

    
    memset((void*)&U1EP1,0x00,(USB_MAX_EP_NUMBER-1));

    
    memset((void*)&USBAlternateInterface,0x00,USB_MAX_NUM_INT);

    
    USBActiveConfiguration = SetupPkt.bConfigurationValue;

    
    if(USBActiveConfiguration == 0)
    {
        
        USBDeviceState = ADDRESS_STATE;
    }
    else
    {
        
        USBDeviceState = CONFIGURED_STATE;
        
        USER_USB_CALLBACK_EVENT_HANDLER(EVENT_CONFIGURED,(void*)&USBActiveConfiguration,1) ;

    }
}


#line 2247 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBConfigureEndpoint(BYTE EPNum, BYTE direction)
{
    volatile BDT_ENTRY* handle;

    handle = (volatile BDT_ENTRY*)&BDT[0 ];
    handle += ((8 * EPNum) + (4 * direction)) /sizeof(BDT_ENTRY);

    handle->STAT.UOWN = 0;

    if(direction == 0)
    {
        pBDTEntryOut[EPNum] = handle;
    }
    else
    {
        pBDTEntryIn[EPNum] = handle;
    }

#line 2267 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        handle->STAT.DTS = 0;
        (handle+1)->STAT.DTS = 1;
#line 2270 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2274 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2279 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2285 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
}


#line 2335 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBEnableEndpoint(BYTE ep, BYTE options)
{
    
    
    {
        unsigned char* p;

#line 2344 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2346 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
            p = (unsigned char*)(&U1EP0+ep);
#line 2348 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        *p = options;
    }

    if(options & USB_OUT_ENABLED)
    {
        USBConfigureEndpoint(ep,0);
    }
    if(options & USB_IN_ENABLED)
    {
        USBConfigureEndpoint(ep,1);
    }
}


#line 2377 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBStallEndpoint(BYTE ep, BYTE dir)
{
    BDT_ENTRY *p;

    if(ep == 0)
    {
        
#line 2387 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
        pBDTEntryEP0OutNext->CNT = USB_EP0_BUFF_SIZE;
        pBDTEntryEP0OutNext->ADR = (BYTE*)ConvertToPhysicalAddress(&SetupPkt);

         
        pBDTEntryEP0OutNext->STAT.Val = _USIE|_DAT0|_DTSEN|_BSTALL;
        pBDTEntryIn[0]->STAT.Val = _USIE|_BSTALL; 
    }
    else
    {
        p = (BDT_ENTRY*)(&BDT[(2*ep+dir) ]);
        p->STAT.Val |= _BSTALL | _USIE;
    
        
        

#line 2403 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2404 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    
        p = (BDT_ENTRY*)(&BDT[(2*ep+dir) ]);
        p->STAT.Val |= _BSTALL | _USIE;
#line 2408 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    }
}


#line 2435 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
USB_HANDLE USBTransferOnePacket(BYTE ep,BYTE dir,BYTE* data,BYTE len)
{
    volatile BDT_ENTRY* handle;

    
    if(dir != 0)
    {
        
        handle = pBDTEntryIn[ep];
    }
    else
    {
        
        handle = pBDTEntryOut[ep];
    }

    
#line 2454 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        handle->STAT.Val ^= _DTSMASK;
#line 2456 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2461 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

    
    handle->ADR = (BYTE*)ConvertToPhysicalAddress(data);
    handle->CNT = len;
    handle->STAT.Val &= _DTSMASK;
    handle->STAT.Val |= _USIE | _DTSEN;

    
    if(dir != 0)
    {
        
        ((BYTE_VAL*)&pBDTEntryIn[ep])->Val ^= 0x0000 ;
    }
    else
    {
        
        ((BYTE_VAL*)&pBDTEntryOut[ep])->Val ^= 0x0000 ;
    }
    return (USB_HANDLE)handle;
}


#line 2504 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
void USBCancelIO(BYTE endpoint)
{
    if(USBPacketDisable == 1)
    {
    	
    	
    	pBDTEntryIn[endpoint]->Val &= _DTSMASK;	
    	pBDTEntryIn[endpoint]->Val ^= _DTSMASK;	
    	
    	
#line 2516 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
        
        
        
        ((BYTE_VAL*)&pBDTEntryIn[endpoint])->Val ^= 0x0000 ;
    
    	pBDTEntryIn[endpoint]->STAT.Val &= _DTSMASK;
    	pBDTEntryIn[endpoint]->STAT.Val ^= _DTSMASK;
#line 2524 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
    }
}


#line 2544 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
#line 2546 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2582 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2586 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2609 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2611 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"

#line 2635 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
#line 2637 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2663 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
#line 2666 "../../Downloads/PIC/USB-Blaster6/MCHPFSUSB25/USB/usb_device.c"
 
