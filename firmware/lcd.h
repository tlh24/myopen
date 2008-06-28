#ifndef __LCD_H__
#define __LCD_H__
//LCD command memnonics --
// from the spark fun website. 
void LCD_init() ; 
void LCD_send(char data, unsigned char word); 
//exported symbols.. 
int printf_str(char* str); 
int printf_int(char* str, int d);
int printf_hex(char* str, int d);

#define ENDPAGE     132
#define ENDCOL      132
//******************************************************
//
//			EPSON Controller Definitions
//
//******************************************************
#define DISON       0xAF
#define DISOFF      0xAE
#define DISNOR      0xA6
#define DISINV      0xA7
#define SLPIN       0x95
#define SLPOUT      0x94
#define COMSCN      0xBB
#define DISCTL      0xCA
#define PASET       0x75
#define CASET       0x15
#define DATCTL      0xBC
#define RGBSET8     0xCE
#define RAMWR       0x5C
#define RAMRD       0x5D
#define PTLIN       0xA8
#define PTLOUT      0xA9
#define RMWIN       0xE0
#define RMWOUT      0xEE
#define ASCSET      0xAA
#define SCSTART     0xAB
#define OSCON       0xD1
#define OSCOFF      0xD2
#define PWRCTR      0x20
#define VOLCTR      0x81
#define VOLUP       0xD6
#define VOLDOWN     0xD7
#define TMPGRD      0x82
#define EPCTIN      0xCD
#define EPCOUT      0xCC
#define EPMWR       0xFC
#define EPMRD       0xFD
#define EPSRRD1     0x7C
#define EPSRRD2     0x7D
#define NOP         0x25

//******************************************************
//
//			PHILLIPS Controller Definitions
//
//******************************************************
//LCD Commands
#define	NOPP		0x00
#define	BSTRON		0x03
#define SLEEPIN     0x10
#define	SLEEPOUT	0x11
#define	NORON		0x13
#define	INVOFF		0x20
#define INVON      	0x21
#define	SETCON		0x25
#define DISPOFF     0x28
#define DISPON      0x29
#define CASETP      0x2A
#define PASETP      0x2B
#define RAMWRP      0x2C
#define RGBSET	    0x2D
#define	MADCTL		0x36
#define	COLMOD		0x3A
#define DISCTR      0xB9
#define	EC			0xC0

#endif
