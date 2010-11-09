// file to test spi functions. 
#include <cdefBF527.h>
#include "memory.h"
#include "util.h"
#include "print.h"
#include "../../neurorecord/spi.h"
#include "ethernet.h"

u8 g_streamEnabled; 

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
	u32 c = 0; 
	*pPORTG_FER = 0xc19c; //UART, SPI, MDC
	*pPORTGIO_DIR = 0x3; 
	*pPORTG_MUX = 0x0020; 
	*pSPI_BAUD = 6; 
	*pSPI_STAT = 0x56; //clear any errors.
	*pSPI_CTL = TDBR_CORE | SZ | EMISO | GM | MSTR | SPE; //0b 0101 0100 0011 0001
	*pSPI_FLG = 0; 
	//init UART0. 
	*pUART0_IER = 0; //turn off interrupts, turn them on later.
	*pUART0_MCR = 0; 
	*pUART0_LCR =  0x0080; //enable access to divisor latch. 
	*pUART0_DLL = 136; 
		//bit rate = SCLK / 16*divisor. 
		//this is the lower byte of the divisor.
		// 136 -> 57600 w/ system clock of 125MHz
	*pUART0_DLH = 0; 
	*pUART0_LCR = 0x0003; //parity disabled, 1 stop bit, 8 bit word. 
	*pUART0_GCTL = 0x0001; //enable the clock.
	printf_temp = (char*)PRINTF_TEMP; //init the pointers. 
	printf_out = (char*)PRINTF_OUT; 
	printf_int("Myopen svn v.", /*SVN_VERSION{*/384/*}*/ ) ; 
	printf_str("\n"); 
	printf_str("checking SDRAM...\n"); 
	//not the most sophisticated test here.. 
	unsigned short* p; 
	p = 0; 
	int i; 
	for(i=0; i<4*1024*1024; i++){ //memory size = 32mbytes.
		(*p++) = 0xDECA; 
		(*p++) = 0xFBAD; 
		(*p++) = 0xC0ED; 
		(*p++) = 0xBABE; 
	}
	p = 0; 
	unsigned short s; 
	for(i=0; i<4*1024*1024; i++){
		s = *p++; 
		if(s!= 0xDECA) {
			printf_hex("mem err @ ",i); 
			printf_hex("\ngot:", s); 
			printf_str("\n"); 
			//delay(400000); 
		}
		s = *p++; 
		if(s!= 0xFBAD) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0xC0ED) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0xBABE) printf_hex("mem err @ ",i); 
	}
	printf_str("memory check done.\n"); 
	//start the milisecond timer. 
	*pTIMER_DISABLE = 0xffff; 
	asm volatile("ssync"); 
	*pGTIME = 0; 
	*pTIMER5_CONFIG = IRQ_ENA | PERIOD_CNT | OUT_DIS | PWM_OUT; 
	*pTIMER5_PERIOD = 125000; 
	*pTIMER5_WIDTH = 62500; 
	*pTIMER_ENABLE |= 0x20; //enable the timer.
	
	//enable the radio.
	radio_init(124); 
	
	//startup the ethernet..
	int etherr = bfin_EMAC_init(); 
	if(!etherr) DHCP_req();  
	
	//write out words.. 
	int prevtime = 0;
	int secs; 
	u32* data;
	while(1){
		if(!etherr) bfin_EMAC_recv( (u8**)(&data) ); 
			//listen for packets? (and respond)
		secs = (*pGTIME)/1000; // 0xff800800
		if(secs != prevtime){
			printf_int("time ", secs); 
			prevtime = secs; 
		}
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
