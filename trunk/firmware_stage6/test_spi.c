// file to test spi functions. 
#include <cdefBF527.h>
#include "util.h"

void spi_delay(){
	//wait until the spi transation is done. 
	u16 status = 8;
	//the SPI port has a transmit fifo, but as we are using software to drive the pins, 
	// only continue when this buffer is empty ( = has been transferred to the shift reg). 
	//without this, the SPI behavior is pipelined and rather confusing! 
	while( (status & 0x8) ){ //examine the TXS bit (buffer full)
		status = *pSPI_STAT; 
	}
	while( (status & 0x1) == 0 ){ //examine the SPIF (transfer finished) bit. 
		status = *pSPI_STAT; 
	}
}

int main(void){
	//the nordic chip has a SPI port rated up to 10Mhz.
	// system clock is 125Mhz, so divide by 12. (10.41MHz)
	u32 c = 0; 
	*pPORTG_FER = 0x001c; 
	*pPORTGIO_DIR = 0x3; 
	*pSPI_BAUD = 6; 
	*pSPI_STAT = 0x56; //clear any errors.
	*pSPI_CTL = TDBR_CORE | SZ | EMISO | GM | MSTR | SPE; //0b 0101 0100 0011 0001
	*pSPI_FLG = 0; 
	//write out words.. 
	while(1){
		*pPORTGIO_CLEAR = 0x2; 
		asm volatile("ssync"); 
		*pSPI_TDBR = (u16)(c>>16); 
		c++; 
		spi_delay(); 
		*pPORTGIO_SET = 0x2; 
		asm volatile("ssync"); 
	}
	return 0;
}
