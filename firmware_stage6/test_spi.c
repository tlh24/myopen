// file to test spi functions. 
#include <cdefBF527.h>
#include "memory.h"
#include "util.h"
#include "print.h"
#include "spi.h"
#include "ethernet.h"

u8 g_streamEnabled; 

int main(void){
	//the nordic chip has a SPI port rated up to 10Mhz.
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
	radio_set_rx(); 
	
	//startup the ethernet..
	int etherr = bfin_EMAC_init(); 
	if(!etherr) DHCP_req();  
	
	//setup for heartbeat.
	*pPORTF_FER &= (0xffff ^ 0x8);
	*pPORTFIO_DIR |= 0x8; 
	*pPORTFIO_INEN &= (0xffff ^ 0x8); 
	
	//write out data.
	#define UDP_PACKET_SIZE 256
	int prevtime = 0;
	int secs; 
	u32* data;
	u32  wrptr = 0; //write pointer - actual address - SDRAM!
	u32  trptr = 0;
	char result;
	while(1){
		//listen for packets? (both interfaces, respond on eth)
		if(!etherr) bfin_EMAC_recv( (u8**)(&data) ); 
		if(spi_read_packet((void*)(wrptr & 0xfff))){
			wrptr += 32; 
		}
		if(wrptr < trptr) trptr = 0; 
		if(wrptr - trptr >= UDP_PACKET_SIZE){
			data = (u32*) ( udp_packet_setup(UDP_PACKET_SIZE + 4, &result )); 
			if(result > 0){
				//copy the data from SDRAM.. (starting @ 0x0000 0000, looping 256k bytes)
				//include a copy of the tptr, so that we can (possibly) reorder it. 
				(*data++) = trptr; //this is the +4
				//we don't know if the transmit pointer will be aligned with packet boundaries -- 
				//so do the memcpy manually. 
				//memcpy((u8*)((*tr_ptr) & 0x0003ffff), data, 1024); 
				u32* src = (u32*)trptr; 
				//alignment errors?  need it to be 32-byte aligned. 
				src = (u32*)((u32)src & (~0x1f)) ; 
				for(i=0; i<UDP_PACKET_SIZE/4; i++){
					src = (u32*) ( ((u32)src) & 0xfff ); 
					*data++ = *src++; 
				}
				trptr += UDP_PACKET_SIZE ; 
				bfin_EMAC_send_nocopy(); 
			} else {
				//reset, since we were not able to send anything 
				// (possibly due to ARP). 
				trptr += UDP_PACKET_SIZE; 
			}
		}
		secs = (*pGTIME)/1000; // 0xff800800
		if(secs != prevtime){
			*pPORTFIO_TOGGLE = 0x8; 
			//printf_int("time ", secs); //heartbeat.
			prevtime = secs; 
		}
	}
	return 0;
}
