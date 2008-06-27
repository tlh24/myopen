#include <cdefBF537.h>
#include "memory.h"
#include "lcd.h"
// lcd_cs = portf 4 ; set low when writing 9 bits. 
// lcd_clk = portg 5; data is clocked in on the rising edge.
// lcd_data = portg 4 ; data is msb first. 
#define LCD_CS  0x10 //should be 0x10
#define LCD_CLK  0x20 
#define LCD_DATA 0x10
#define LCD_RESET 0x08
#define LCD_DELAY 1
#define SSYNC asm volatile ("ssync")
extern void delay(int); 
#define uchar unsigned char
/*
#include "font/fontstruct.h"
#include "font/6x12.c"
int LCD_draw_char(uchar ch, uchar xi, uchar yi); 
*/

void LCD_send(char data, unsigned char word){
	unsigned short r = (unsigned short) word; 
	if(data) r |= 0x100; 
	*pPORTFIO_CLEAR = LCD_CS ;
	int i; 
	for(i=0; i<9 ; i++){
		*pPORTGIO_CLEAR = LCD_CLK; 
		if (r & 0x100) *pPORTGIO_SET = LCD_DATA; 
		else *pPORTGIO_CLEAR = LCD_DATA; 
		SSYNC ; 
		r = r << 1; 
		//delay(LCD_DELAY); 
		*pPORTGIO_SET = LCD_CLK; 
		SSYNC ; 
		//delay(LCD_DELAY); 
	}
	*pPORTFIO_SET = LCD_CS ;
	SSYNC ; 
	//delay(LCD_DELAY); 
}
void LCD_command(unsigned char word){
	LCD_send(0,word); 
}
void LCD_data(unsigned char word){
	LCD_send(1,word); 
}
//  sets the starting page(row) and column (x & y) coordinates in ram,
// with the given stop columns.
void LCD_pset( uchar x, uchar y, uchar ex, uchar ey)
{
	LCD_command(PASET);   // page start/end ram
	LCD_data(x);
	LCD_data(ex);

	LCD_command(CASET);   // column start/end ram
	LCD_data(y);
	LCD_data(ey);

	LCD_command(RAMWR);    // write
}

void LCD_init() {
	//while(1){
	*pPORTGIO_CLEAR = LCD_RESET; 
	delay(500); 
	*pPORTGIO_SET = LCD_RESET; 
	delay(500); 
	LCD_command(DISCTL);  	// display control(EPSON)
	LCD_data(0x0C);   	// 12 = 1100 - CL dividing ratio [don't divide] switching period 8H (default)
	LCD_data(0x20);
	LCD_data(0x02);
	
	LCD_command(COMSCN);  	// common scanning direction(EPSON)
	LCD_data(0x01);
	
	LCD_command(OSCON);  	// internal oscillator ON(EPSON)
	
	LCD_command(SLPOUT);  	// sleep out(EPSON)
	LCD_command(SLEEPOUT);	//sleep out(PHILLIPS)
	
	LCD_command(VOLCTR);  	// electronic volume, this is the contrast/brightness(EPSON)
	LCD_data(0x18);   	// volume (contrast) setting - fine tuning, original
	LCD_data(0x03);   	// internal resistor ratio - coarse adjustment
	LCD_command(SETCON);	//Set Contrast(PHILLIPS)
	LCD_data(0x30);	
	
	
	LCD_command(PWRCTR); 	// power ctrl(EPSON)
	LCD_data(0x0F);    //everything on, no external reference resistors
	LCD_command(BSTRON);	//Booset On(PHILLIPS)
	
	LCD_command(DISINV);  	// invert display mode(EPSON)
	LCD_command(INVON);	// invert display mode(PHILLIPS)
	
	LCD_command(DATCTL);  	// data control(EPSON)
	LCD_data(0x03);	//correct for normal sin7
	LCD_data(0x00);   	// normal RGB arrangement
	LCD_data(0x01);   	// 8-bit grayscale
	LCD_command(MADCTL);	//Memory Access Control(PHILLIPS)
	LCD_data(0xC8);
	
	LCD_command(COLMOD);	//Set Color Mode(PHILLIPS)
	LCD_data(0x02);	
	
	
	LCD_command(RGBSET8);   // setup 8-bit color lookup table  [RRRGGGBB](EPSON)
	//RED
	LCD_data(0);
	LCD_data(2);
	LCD_data(4);
	LCD_data(6);
	LCD_data(8);
	LCD_data(10);
	LCD_data(12);
	LCD_data(15);
	// GREEN
	LCD_data(0);
	LCD_data(2);
	LCD_data(4);
	LCD_data(6);
	LCD_data(8);
	LCD_data(10);
	LCD_data(12);
	LCD_data(15);
	//BLUE
	LCD_data(5);
	LCD_data(13);
	LCD_data(14);
	LCD_data(15);
	
	LCD_command(NOP);  	// nop(EPSON)
	LCD_command(NOPP);		// nop(PHILLIPS)

	LCD_command(DISON);   	// display on(EPSON)
	LCD_command(DISPON);	// display on(PHILLIPS)

	unsigned char c = 0; 
	unsigned char x = 0; 
	unsigned char y = 0; 
	while(1) {
		 //colorful drawing demo 
		LCD_pset(x, y, x+11, y+11);
		int i; 
		for (i=0; i< 11*11; i++){
			LCD_data(c); 
		}
		c++; 
		c &= 0x0f; 
		x++; 
		if (x & 0x2) y++; 
		if( x > 117) x = 0; 
		if(y > 112) y = 0; 
		LCD_command(0); 
		
		/*
		LCD_draw_char(c, x, y); 
		c++; 
		c &= 0xff; 
		x++; 
		if (x & 0x1) y++; 
		if( x > 115) x = 0; 
		if(y > 112) y = 0; 
		*/
	}
}
/*
int LCD_draw_char(uchar ch, uchar xi, uchar yi)
{
	picoFont* font = (picoFont*)font_6x12; 
	int offset = ((int)(font->per_char[ch].offset_msb) << 8) + 
				(int)(font->per_char[ch].offset_lsb) ;
	uchar w = font->per_char[ch].width ;  
	uchar h = font->height; 
	LCD_pset(xi, yi, xi+w, yi+h); 
	int y, xx; 
	for(y=0; y<h; y++){
		int wincr =  (w+7)/8; 
		for(xx=0; xx < wincr; xx++){
			uchar c = font->data[offset + xx + y*wincr]; 
			int b; 
			for(b=0; b<8 && b+xx*8 < w; b++){
				if( c & (0x80 >> b) )
					LCD_data(0); 
				else
					LCD_data(0xff);
		
			}
		}
	}
	LCD_command(0x00); //nop
	return (int)w; 
}
*/