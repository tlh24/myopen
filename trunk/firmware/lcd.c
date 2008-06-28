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
#define u8 unsigned char

#include "font/fontstruct.h"
#include "font/6x12.c"
#define PRINTF_BUFFER_SIZE 256
char printf_temp[PRINTF_BUFFER_SIZE];  
char printf_out[PRINTF_BUFFER_SIZE];  
int LCD_draw_char(u8 ch, u8 xi, u8 yi);
int LCD_draw_str(char* str); 
void LCD_scroll(u8 dist); 
//the LCD has 132 lines, our font has a height of 12, so we can fit 11 lines.
u8 g_lcd_y; //what line we are on
u8 g_lcd_x; //hoizontal position. 

int mod(int num, int denom); 

void LCD_send(char data, unsigned char word){
	unsigned short r = (unsigned short) word; 
	if(data) r |= 0x100; 
	*pPORTFIO_CLEAR = LCD_CS ;
	int i; 
	for(i=0; i<9 ; i++){
		*pPORTGIO_CLEAR = LCD_CLK; 
		if (r & 0x100) *pPORTGIO_SET = LCD_DATA; 
		else *pPORTGIO_CLEAR = LCD_DATA; 
		//SSYNC ; 
		r = r << 1; 
		//delay(LCD_DELAY); 
		*pPORTGIO_SET = LCD_CLK; 
		//SSYNC ; 
		//delay(LCD_DELAY); 
	}
	*pPORTFIO_SET = LCD_CS ;
	//SSYNC ; 
	//delay(100); 
}
void LCD_command(unsigned char word){
	LCD_send(0,word); 
}
void LCD_data(unsigned char word){
	LCD_send(1,word); 
}
//  sets the starting page(row) and column (x & y) coordinates in ram,
// with the given stop columns.
void LCD_pset( u8 x, u8 y, u8 ex, u8 ey)
{
	LCD_command(PASET);   // page start/end ram
	LCD_data(y);
	LCD_data(ey);

	LCD_command(CASET);   // column start/end ram
	LCD_data(x);
	LCD_data(ex);

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
	g_lcd_y = 0; 
	g_lcd_x = 0; 
	//need to init the display with white or something. 
	LCD_pset(0, 0, 131, 131); 
	for(y=0; y<132; y++){
		for(x=0; x<132; x++){
			LCD_data(0xff);
		}
	}
	LCD_command(0); 
	x = 0; y = 0; 
	//fill the screen with some stuff.
	for(c=0; c<255; c++){
		x += (u8)(LCD_draw_char(c, x, y)); 
		if(x > 128){
			y += 12; 
			x = 2; 
		}
		if(y > 128) y = 0; 
	}
	y = 0; 
	int i = 0; 
	while(0) {
		 //colorful drawing demo 
		/*
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
		*/
		printf_int("Myopen svn v.", /*SVN_VERSION{*/0/*}*/ ) ; 
		LCD_draw_str("\n"); 
		printf_hex("some hex: ",i+0xf00); 
		LCD_draw_str("\n"); 
		delay(40000); 
		delay(40000); 
		delay(40000); 
		delay(40000); 
		i++; 
		/*
		LCD_draw_char(c, g_lcd_x, g_lcd_y); 
		g_lcd_x += 6; 
		if(g_lcd_x > 128) {
			g_lcd_y += 12; 
			g_lcd_x = 0; 
		}
		if(g_lcd_y > 132) g_lcd_y = 0; 
		c++; 
		y--; 
		if(y > 32) y = 32; 
		*/
	}
}

int LCD_draw_char(u8 ch, u8 xi, u8 yi)
{
	picoFont* font = (picoFont*)font_6x12; 
	int offset = ((int)(font->per_char[ch].offset_msb) << 8) + 
				(int)(font->per_char[ch].offset_lsb) ;
	u8 w = font->per_char[ch].width ;  
	u8 h = font->height; 
	LCD_pset(xi, yi, xi+w-1, yi+h-1); 
	int y, xx; 
	for(y=0; y<h; y++){
		int wincr =  (w+7)/8; 
		for(xx=0; xx < wincr; xx++){
			u8 c = font->data[offset + xx + y*wincr]; 
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
int LCD_draw_str(char* str){
	u8 oldy = g_lcd_y; 
	int i =0; 
	while(*str && i < PRINTF_BUFFER_SIZE){
		u8 c = *str; 
		if(c == '\n'){
			//need to clear the rest of the line in video ram. 
			LCD_pset(g_lcd_x+2, g_lcd_y*12, 132-1,  g_lcd_y*12 + 12-1); 
			int x, y; 
			for(y=0; y<12; y++){
				for(x=g_lcd_x+2; x<132; x++){
					LCD_data(0xff);
				}
			}
			LCD_command(0x00); //nop
			g_lcd_x = 255; 
		}else {
			g_lcd_x += LCD_draw_char(c, g_lcd_x+2, g_lcd_y*12); 
		}
		if(g_lcd_x > 128){
			g_lcd_y += 1; 
			g_lcd_x = 0; 
		}
		if(g_lcd_y > 10){
			g_lcd_y = 0; 
		}
		if(oldy != g_lcd_y){
			u8 scrol = 32 - (g_lcd_y*3) + 2; 
			LCD_scroll(mod(scrol,33)); 
			scrol --; 
			LCD_scroll(mod(scrol,33)); 
			scrol --; 
			LCD_scroll(mod(scrol,33)); 
			/*LCD_scroll( 32 - (g_lcd_y*3)+2); 
			LCD_scroll( 32 - (g_lcd_y*3)+1); 
			LCD_scroll( 32 - (g_lcd_y*3)); */
			oldy = g_lcd_y; 
		}
		str++; 
		i++; 
	}
	return i; 
}
int printf_str(char* str){return LCD_draw_str(str); }
//what we need is a printf() like thing, a terminal like linux, that starts 
// at the bottom and scrolls up for each newline. 
void LCD_scroll(u8 where){
	LCD_command(ASCSET); 
	u8 top, bot; 
	top = 0; 
	bot = 32; 
	LCD_data(top); 
	LCD_data(bot); 
	LCD_data(bot-1); 
	LCD_data(0x3); //whole screen scroll.
	LCD_command(SCSTART); 
	LCD_data(where); 
	LCD_command(0); 
	delay(6000); //this makes it look kinda nice. 
}

int div(int num, int denom){
	//see page 15-23 in the prog. ref. 
	//the assembly this produces is much simpler than the c code :)
	int i; 
	num = num << 1; 
	asm volatile("divs (%0, %1)":"+d"(num),"+d"(denom)); 
	for(i=0; i<15; i++){
		asm volatile("divq (%0, %1)":"+d"(num),"+d"(denom)); 
	}
	asm volatile("%0 = %0.l (x);":"+d"(num));
	return num;
}
int mod(int num, int denom){
	int b; 
	b = div(num, denom); 
	return num - b*denom;
}
void memcpy(u8* src, u8* dest, int len){
	int i; 
	//do it the simple way -- see http://docs.blackfin.uclinux.org/doku.php?id=memcpy
	//the only thing that really beats this is DMA. (provided data cache is enabled). 
	for(i=0; i<len; i++){
		*dest++ = *src++; 
	}
}
int strlen(char* str){
	int i; 
	for(i=0; i<1024; i++){
		if(str[i] == 0)
			return i; 
	}
	return 0; 
}
int printf_int(char* str, int d){
	int len, i, m, j;
	
	//print the integer & figure out how long the string will be. 
	//note: the integer will be printed backwards at first! 
	i = 0; 
	if(d == 0){
		printf_temp[0] = '0'; 
		i = 1; 
	}else if(d > 0){
		i = 0; 
		while(d > 0 && i < 128){
			m = mod(d, 10); 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = div(d, 10);  
		}
	}else if(d < 0){
		//convert to positive.
		d = 0x80000000 - (0x7fffffff & d);
		i = 0; 
		while(d > 0 && i < 128){
			m = mod(d, 10); 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = div(d, 10);  
		}
		printf_temp[i] = '-'; 
		i++; 
	}
	len = strlen(str); 
	if(len + i +1 <= PRINTF_BUFFER_SIZE){
		memcpy((u8*)str, (u8*)printf_out, len); 
		for(j = 0; j < i; j++){
			printf_out[len + j] = printf_temp[i-j-1]; 
		}
		printf_out[len+i] = 0; 
		LCD_draw_str(printf_out); 
		return 0; 
	}
	return -1;
}

int printf_hex(char* str, int d){
	int len, i, j, out; 
	short s;
	//we already know the length of the hex number will be 10 chars.
	len = strlen(str); 
	if(len + 11 <= PRINTF_BUFFER_SIZE){
		memcpy((u8*)str, (u8*)printf_out, len); 
		j = len; 
		printf_out[j] = '0'; j++; 
		printf_out[j] = 'x'; j++; 
		for(i=0; i< 8; i++){
			out = d >> ((7-i)*4); 
			s = out & 0x0f; 
			if(s > 9){
				s += 55; 
			}else{
				s += 48;
			}
			printf_out[j + i] = (char)s;
		}
		j += i; 
		printf_out[j] = 0; 
		LCD_draw_str(printf_out); 
		return 0; 
	}
	return -1;
}

