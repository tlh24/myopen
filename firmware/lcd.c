#include <cdefBF537.h>
#include "memory.h"
#include "lcd.h"
// lcd_cs = portf 4 ; set low when writing 9 bits. 
// lcd_clk = tsclk0 ; data is clocked in on the rising edge.
// lcd_data = dt0pri ; data is msb first. 
#define LCD_CS  0x40 //should be 0x10

void LCD_send(char data, unsigned char word){
	unsigned short r; 
	*pPORTFIO_CLEAR = LCD_CS ;
	asm volatile ("ssync"); 
	r = (unsigned short) word; 
	if(data) r |= 0x100; 
	r |= 0x8000 ; //flag to indicate the data's presence. 
	volatile unsigned short* p = (volatile unsigned short*)LCD_SERIAL_DATA ; 
	*p = r ; 
	*pSPORT1_TCR1 = 0x4803 ; //enable the serial port. 
	//this will cause an interrupt to be raised, hence filling the tx buffer. 
	//need to wait for it to be transmitted. 
	while( *p & 0x8000) {
		*pPORTFIO_TOGGLE = LCD_CS; 
		r++; 
	}
	*pPORTFIO_SET = LCD_CS; 
	asm volatile ("ssync"); 
}

void LCD_init() {
	// clock divider = 2 * (1 + TCLKDIV)
	*pSPORT1_TCLKDIV = 4 ; //system clock is 100mhz; want 10mhz. 
	// transmit configuration reg 2
	// 0b 0000 0000 0000 1000
	*pSPORT1_TCR2 = 0x0008;  //9-bit word.
	//transmit configuration reg 1 -- do it last, since it enables the serial port. 
	//0b 0100 1000 0000 0011
	//*pSPORT1_TCR1 = 0x4803 ; 
	//setup interupts so we know when the transmit is done. 
	
	while(1) {
		LCD_send(1,DISCTL); 
	}
}