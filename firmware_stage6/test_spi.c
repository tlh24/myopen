// file to test spi functions. 
#include <cdefBF527.h>
#include "memory.h"
#include "util.h"
#include "print.h"
#include "spi.h"
#include "ethernet.h"
#include "nordic_regs.h"

typedef struct {
	u32		destIP; 
	u32		radioChan;
	u32		destPort;
} nv_data; 

u8 g_streamEnabled; 
u8 g_outpkt[32]; 
nv_data g_nv; 

void eth_listen(int etherr){
	int r = 0; 
	u32* data;
	if(!etherr) r = bfin_EMAC_recv( (u8**)(&data) ); 
	if(r > 0){
		udp_packet* pkt = (udp_packet*)data; 
		//printf_hex(" packet from ", pkt->ip.src); 
		/*printf_int(" dest ", htons(pkt->udp.dest));
		printf_int(" src ", htons(pkt->udp.src)); */
		if(pkt->ip.src == NetDataDestIP && htons(pkt->udp.dest) == 4342){
			//well then, copy it over! (don't check the checksum..)
			u8* ptr = (u8*) data; 
			ptr += sizeof(udp_packet); 
			memcpy_(ptr, g_outpkt, 32); 
			//printf_hex(" ptr ", *((u32*)ptr));
			//printf_hex(" ptr[1] ", ptr[1]); 
		}
	}
}

u8 read_flash_u8(u32 address){
	//tested, looks like it works.
	*FIO_CLEAR = SPI_FLASH; 
	asm volatile("ssync"); 
	spi_write_byte(0x03); 
	spi_write_byte((address >> 16)&0xff);
	spi_write_byte((address >> 8)&0xff); 
	spi_write_byte((address)&0xff); 
	u8 r = spi_write_byte(0); 
	*FIO_SET = SPI_FLASH; 
	asm volatile("ssync"); 
	return r; 
}
u32 read_flash_u32(u32 address){
	//also tested, looks good.
	*FIO_CLEAR = SPI_FLASH; 
	asm volatile("ssync"); 
	spi_write_byte(0x03); 
	spi_write_byte((address >> 16)&0xff);
	spi_write_byte((address >> 8)&0xff); 
	spi_write_byte((address)&0xff); 
	//ints are stored big-endian in flash. easier.
	u32 r = 0; 
	r += spi_write_byte(0); 
	r <<= 8; 
	r += spi_write_byte(0); 
	r <<= 8; 
	r += spi_write_byte(0); 
	r <<= 8; 
	r += spi_write_byte(0); 
	*FIO_SET = SPI_FLASH; asm volatile("ssync"); 
	return r; 
}
void write_enable_flash(){
	//aslo clears the bank protection registers.
	//first EWSR
	*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0x50); 
	*FIO_SET = SPI_FLASH; asm volatile("ssync");
	
	*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	//write the status register
	spi_write_byte(0x01); 
	spi_write_byte(0x00); 
	*FIO_SET = SPI_FLASH; asm volatile("ssync");
	
	//write enable command.
	*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0x06); 
	*FIO_SET = SPI_FLASH; asm volatile("ssync");
}
void wait_flash(){
	u8 stat = 1; 
	while(stat & 1){
		*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0x05); 
		stat = spi_write_byte(0); 
		*FIO_SET = SPI_FLASH; asm volatile("ssync");
		//printf_hex_byte("\nSST status: ",stat);
	}
}
void write_flash(int len, u8* data){
	//have to erase the page that the structure is on..
	//let's use the last 4kB page for this.
	//flash size is 4Mbit = 512kbyte, 0x3ffff; 
	//last page at 0x3f000. (total 128 pages)
	u32 page = 127;
	u32 address = page * 4 * 1024; 
	write_enable_flash(); 
	
	//erase page
	*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0x20);
	spi_write_byte((address >> 16)&0xff);
	spi_write_byte((address >> 8)&0xff); 
	spi_write_byte((address)&0xff); 
	*FIO_SET = SPI_FLASH; asm volatile("ssync");
	
	//now have to wait for the erase page to be complete. 
	wait_flash(); 
	//alright, write the bytes. (slow mode)
	u32 i, a;
	u8* p = data; 
	for(i=0; i<len; i++){
		//write enable command.
		*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0x06); 
		*FIO_SET = SPI_FLASH; asm volatile("ssync");
		a = address + i; 
		*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0x02);
		spi_write_byte((a >> 16)&0xff);
		spi_write_byte((a >> 8)&0xff); 
		spi_write_byte((a)&0xff); 
		spi_write_byte(*p);
		*FIO_SET = SPI_FLASH; asm volatile("ssync");
		p++; 
		wait_flash(); 
	}
	//great, now verify. 
	p = data; 
	u8 r, good = 1; 
	for(i=0; i<len; i++){
		r = read_flash_u8(address + i); 
		if(r != *p){
			printf_hex_byte("\nverify: got ", r);
			printf_hex_byte(" should be ", *p); 
			good = 0; 
		}
		p++; 
	}
	if(!good){
		printf_str("\nverify flash write failed!"); 
	}
}
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
	if(0){
		printf_str("reading flash, starting from addr 0\n"); 
		for(i=0;i<32;i++){
			printf_hex(" ", read_flash_u32((u32)(i*4))); 
			if((i & 7) == 7) printf_str("\n"); 
		}
		//write nonvolatile info to flash. 
		g_nv.destIP = FormatIPAddress(152, 16, 229, 19); 
		g_nv.radioChan = 124; 
		g_nv.destPort = 4340; 
		write_flash(sizeof(g_nv), (u8*)&g_nv); 
	}
	//start the milisecond timer. 
	*pTIMER_DISABLE = 0xffff; 
	asm volatile("ssync"); 
	*pGTIME = 0; 
	*pTIMER5_CONFIG = IRQ_ENA | PERIOD_CNT | OUT_DIS | PWM_OUT; 
	*pTIMER5_PERIOD = 125000; 
	*pTIMER5_WIDTH = 62500; 
	*pTIMER_ENABLE |= 0x20; //enable the timer.
	
	//startup the ethernet..
	int etherr = bfin_EMAC_init(); 
	if(!etherr) DHCP_req();  
	
	/*setup for heartbeat & eth activity
		portF 3 = heartbeat
		portF 4 = bfin_emac_recv
		portF 5 = bfin_emac_send_nocopy */
	*pPORTF_FER &= (0xffff ^ 0x38);
	*pPORTFIO_DIR |= 0x38; 
	*pPORTFIO_INEN &= (0xffff ^ 0x38); 
	//and for the IRQ. 
	*pPORTGIO_INEN |= SPI_IRQ; 
	*pPORTGIO_DIR &= (0xffff ^ SPI_IRQ); 
	//and reading / writing flash
	*pPORTGIO_INEN &= (0xffff ^ SPI_FLASH); 
	*pPORTGIO_DIR |= SPI_FLASH; 
	*pPORTG_FER &= (0xffff ^ SPI_FLASH); 
	
	//write out data.
	#define UDP_PACKET_SIZE 256
	int prevtime = 0;
	int secs; 
	u32* data;
	u32  wrptr = 0; //write pointer - not actual address! (must wrap by hand)
	u32  trptr = 0;
	char result;
	char gotx = 0; 
	
	//enable the radio.
	radio_init(124); 
	printf_str("starting reception!\n"); 
	radio_set_rx(); 
	//you have to be ready to get packets immediately after RX mode is turned on --
	//otherwise the  fifo gets confused, and you could have 2-3 packets
	//in the fifo but only read out one. 
	
	while(1){
		//listen for packets? (both interfaces, respond on eth)
		eth_listen(etherr); 
		//u8 fifostatus; 
		//u8 status = spi_read_register_status(NOR_FIFO_STATUS, &fifostatus); 
		if((*pPORTGIO & SPI_IRQ) == 0){
			spi_write_register(NOR_STATUS, 0x70); //clear IRQ.
			asm volatile("ssync;"); 
			*pPORTGIO_CLEAR = SPI_CSN; 
			asm volatile("ssync;"); 
			*pSPI_TDBR = 0x61; //command for reading the fifo
			spi_delay(); //wait for this to finish. 
			u8* ptr = (u8*)(wrptr); 
			for(i=0; i<32; i++){
				*pSPI_TDBR = 0;
				spi_delay(); 
				*ptr++ = (u8)(*pSPI_SHADOW); 
			}
			*pPORTGIO_SET = SPI_CSN | SPI_CE; 
			asm volatile("ssync;");
			
			//need to check if the headstage wants a response.
			char* c = (char*)(wrptr); 
			wrptr += 32; 
			wrptr &= 0xfff; 
			c += 27; 
			if(((*c)&0x7) == 7){
				radio_set_tx();
				//send whatever is in the buffer from the host..
				*FIO_CLEAR = SPI_CSN | SPI_CE; //clearing CE is essential here!
				// ESSENTIAL!!!
				asm volatile("ssync;"); 
				*pSPI_TDBR = 0xa0; //command for writing the fifo
				spi_delay(); //wait for this to finish. 
				u8* ptr = g_outpkt;
				for(i=0; i<32; i++){
					*pSPI_TDBR = *ptr++;
					spi_delay(); 
				}
				*FIO_SET = SPI_CSN | SPI_CE; 
				asm volatile("ssync;"); 
				eth_listen(etherr); //this inserts a bit of (useful) delay
				//wait for the resulting irq.
				while(*pPORTGIO & SPI_IRQ){
					asm volatile("nop;nop;"); 
				}
				spi_write_register(NOR_STATUS, 0x70); //clear IRQ.
				radio_set_rx(); 
				gotx = 1; 
			}
		}
		if(gotx || wrptr >= UDP_PACKET_SIZE){
			spi_write_byte(NOR_FLUSH_RX); //will this fix the problem of immediately syncing 
			data = (u32*) ( udp_packet_setup(UDP_PACKET_SIZE + 4, &result )); 
			if(result > 0){
				//copy the data from SDRAM.. (starting @ 0x0000 0000, looping 256k bytes)
				//include a copy of the tptr, so that we can (possibly) reorder it. 
				(*data++) = trptr; //this is the +4
				memcpy_(0, (u8*)data, UDP_PACKET_SIZE); 
				trptr ++ ; 
				bfin_EMAC_send_nocopy(); 
			} else {
				//reset, since we were not able to send anything 
				// (possibly due to ARP). 
				trptr ++; 
			}
			gotx = 0; 
			wrptr = 0; 
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
