#include <cdefBF537.h>
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "usb.h"

#define USB_SS 0x4000 //on port F

u8 wreg(u8 reg, u8 val){
	//write a register on the usb controller (MAX3421)
	reg = reg | 0x2; //set the 'write' bit.
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	//note: read the shadow buffer so that we don't trigger another SPI transaction.
	reg = *pSPI_SHADOW; //read the status 
	*pSPI_TDBR = (u16)val; 
	spi_delay();
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
	return reg; 
}
u8 wregAS(u8 reg, u8 val){
	reg |= 1 ; //ACKSTAT = 1; 
	return wreg(reg, val); 
}
void writebytes(u8 reg, u8 n, u8* p){
	reg = reg | 0x2; //set the 'write' bit.
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	while(n>0){
		*pSPI_TDBR = (u16)(*p);
		spi_delay(); 
		p++; 
		n--; 
	}
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
}
u8 rreg(u8 reg){
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status.
	*pSPI_TDBR = 0; 
	spi_delay();
	reg = *pSPI_SHADOW; //read it in - the contents of the register.
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
	return reg; 
}
u8 rregAS(u8 reg){
	reg |= 1 ; //ACKSTAT = 1; 
	return rreg(reg); 
}
void readbytes(u8 reg, u8 n, u8* p){
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	while(n>0){
		*pSPI_TDBR = 0;
		spi_delay(); 
		*p = (u8)(*pSPI_SHADOW); 
		p++; 
		n--; 
	}
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
}
void usb_test() {
	//let's just see if we can talk to the USB controller (for now). 
	//have to set it up in full-duplex mode. 
	wreg(rPINCTL,bmFDUPSPI | bmPOSINT);    // MAX3420: SPI=full-duplex
	wreg(rPINCTL, 0x17);  //yea, what?? 
	wreg(rUSBCTL,bmCHIPRES);    // reset the MAX3420E
	udelay(20); 
	wreg(rUSBCTL,0);            // remove the reset
	udelay(20); 
	u8 rd, wr = 1; 
	int i; 
	for(i=0; i<3; i++){
		wreg(rPINCTL, 0x17);  //yea, what?? 
	}
	for(i=0; i<800;i++){
		wreg(rUSBIEN, wr); 
		rd = rreg(rUSBIEN); 
		if(rd != wr){
			printf_int("usb: wrote ", wr); 
			printf_int(" got:", rd); 
			printf_str("\n"); 
		}
		wr++; 
		if( wr == 255) wr = 0; 
	}
	printf_str("usb test done"); 
	while(1){
		wreg(rUSBIEN, wr); 
		rd = rreg(rUSBIEN); 
		wr <<= 1; 
		if( wr == 0) wr = 1; 
	}
}
