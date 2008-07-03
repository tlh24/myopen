#include <cdefBF537.h>
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "ethernet.h"

int main() {
	// disable cache. no imem_control on this proc? 
	*pDMEM_CONTROL = 0x00001001; 
	asm volatile("csync"); 
	// disable the serial ports (for now)
	*pSPORT0_TCR1 = 0; 
	*pSPORT0_TCR2 = 0; 
	*pSPORT0_RCR1 = 0; 
	*pSPORT0_RCR2 = 0; 
	*pSPORT0_TCLKDIV = 0; 
	*pSPORT0_RCLKDIV = 0; 
	*pSPORT0_TFSDIV = 0; 
	*pSPORT0_RFSDIV = 0; 
	
	*pSPORT1_TCR1 = 0; 
	*pSPORT1_TCR2 = 0; 
	*pSPORT1_RCR1 = 0; 
	*pSPORT1_RCR2 = 0; 
	*pSPORT1_TCLKDIV = 0; 
	*pSPORT1_RCLKDIV = 0; 
	*pSPORT1_TFSDIV = 0; 
	*pSPORT1_RFSDIV = 0; 
	
	/* port mux: (page 862)
	0000 - default
	1110 - tsclk1,tfs1,dt1pri ; rsclk1,rfs1,dr1pri; dr1sec, dt1sec
	0000 - uart 1 tx/rx (but we don't actually use it)
	0000 - uart0 tx/rx ; dr0sec, dt0sec ; tfs0, dt0pri
	*/
	*pPORT_MUX = 0x0e00 ; 
	/* port f: 
	0	uart0 tx 		(peripheral enabled)
	1	uart0 rx 		(peripheral enabled)
	2	uart1 tx 		(gpio, input)
	3	uart1 rx 		(gpio, input)					0x3 0b0011 ; 0x0 0b0000 ; 0x0 0b0000
	4	lcd_cs			(gpio, output)
	5	nordic IRQ 	(gpio, input)
	6	nordic CSN	(gpio output)
	7	usb_gpx		(gpio input, usb output) 	0x0 0b0000 ; 0x5 0b0101 ; 0xa 0b1010
	8	usb_int			(gpio input, usb output)
	9	nordic CE		(gpio output)
	10 flash _cs		(peripheral spi output) (gpio output in bootloader?)
	11 mosi			(peripheral spi output)	0xc 0b1100 ; 0x2 0b0010 ; 0x1 0b0001
	12 miso			(peripheral spi input)
	13 sclk				(peripheral spi output)
	14 usb_ss			(gpio output, usb input)
	15 sr_load		(gpio output)					0x3 0b0011 ; 0xc 0b1100 ; 0x0 0b0000
	*/
	*pPORTF_FER = 0x3803 ;
	*pPORTFIO_DIR = 0xc650 ; 
	*pPORTFIO_INEN = 0x01a0 ; 
	/* port g:
	0-7	header		(gpio output)					0x00 ; 0xff ; 0x00
	8	dr1sec			(peripheral input)
	9	dt1sec			(gpio output)
	10 rsclk1			(peripheral input, slave)
	11 rfs1				(peripheral input, slave)	0xd 0b1101 ; 0x2 0b0010 ; 0x0
	12 dr1pri			(peripheral input)
	13 tsclk1			(peripheral output, master)
	14 tfs1				(peripheral output, master)
	15 dt1pri			(peripheral ,to ADCs)		0xf 0b1111 ; 0x0 ; 0x0
	*/
	*pPORTG_FER = 0xfd00 ; 
	*pPORTGIO_DIR = 0x02ff ; 
	*pPORTGIO_INEN = 0x0000 ; 
	/* port h:  all are hooked to the ethernet PHY */
	*pPORTH_FER = 0xffff ; 
	*pPORTHIO_DIR = 0 ; 
	*pPORTHIO_INEN = 0 ; 
	/* port j:  (controlled by PORT_MUX register, no gpio)
	0	mdc				(peripheral ethernet)
	1	mdio			(peripheral ethernet)
	2	twi sclk		(peripheral o.c.)
	3	twi sda			(peripheral o.c.)				
	4	dr0sec			(peripheral input)
	5	nc				()
	6	rsclk0			(peripheral input, slave)
	7	rfs0				(peripheral input, slave)
	8	dr0pri			(peripheral input)
	9	tsclk0 			lcd_clk, peripheral output, master
	10 nc				()
	11 dt0pri			lcd_data, peripheral	
	*/
	LCD_init() ; 
	printf_int("Myopen svn v.", /*SVN_VERSION{*/60/*}*/ ) ; 
	printf_str("\n"); 
	printf_str("checking SDRAM...\n"); 
	unsigned short* p; 
	p = 0; 
	int i; 
	for(i=0; i<4*1024*1024; i++){ //memory size = 32mbytes.
		(*p++) = 0x5555; 
		(*p++) = 0xAAAA; 
		(*p++) = 0x3333; 
		(*p++) = 0xCCCC; 
	}
	p = 0; 
	unsigned short s; 
	for(i=0; i<4*1024*1024; i++){
		s = *p++; 
		if(s!= 0x5555) {
			printf_hex("mem err @ ",i); 
			printf_hex("\ngot:", s); 
			printf_str("\n"); 
			delay(400000); 
		}
		s = *p++; 
		if(s!= 0xAAAA) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0x3333) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0xCCCC) printf_hex("mem err @ ",i); 
	}
	printf_str("memory check done.\n"); 
	//let's test the UART here. 
	//fix up the UART.  it will be useful for debugging. 
	printf_str("turning on UART\n"); 
	*pUART0_IER = 0; //turn off interrupts, turn them on later.
	*pUART0_MCR = 0; 
	*pUART0_LCR =  0x0080; //enable access to divisor latch. 
	*pUART0_DLL = 65; //see page 810 of the BF537 hardware ref. this is the lower byte of the divisor.
	*pUART0_DLH = 0;  //the system clock is 120Mhz. baud rate is 115200. 
	*pUART0_LCR = 0x0003; //parity disabled, 1 stop bit, 8 bit word. 
	*pUART0_GCTL = 0x0001; //enable the clock.
	printf_str("turning on USB\n"); //this should be echoed on the serial port now
	//first have to set the SPI port up properly. 
	*pSPI_CTL = 0; //disable while configuring. 
	*pSPI_BAUD = 4 ; //baud rate = SCLK / (2*SPI_BAUD) = 12Mhz. 
	*pSPI_FLG = 0; //don't use flags.
	*pSPI_STAT = 0x56 ; //clear the flags.
	*pSPI_CTL = TDBR_CORE | SZ | EMISO| GM | MSTR | SPE ; 
	usb_test(); 
	bfin_EMAC_init(); 
	DHCP_req	(); 
	u8* data; 
	while(1) {
		bfin_EMAC_recv( &data ); //listen for packets? 
		*pPORTFIO_TOGGLE = 0x40 ; //toggle the nordic CSN pin.
	}
	return 0; 
}
