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
u32 g_nextFlag; 
u32	g_dropped; 
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
	*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0,0x03); 
	spi_write_byte(0,(address >> 16)&0xff);
	spi_write_byte(0,(address >> 8)&0xff); 
	spi_write_byte(0,(address)&0xff); 
	u8 r = spi_write_byte(0,0); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
	return r; 
}
u32 read_flash_u32(u32 address){
	//also tested, looks good.
	*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0,0x03); 
	spi_write_byte(0,(address >> 16)&0xff);
	spi_write_byte(0,(address >> 8)&0xff); 
	spi_write_byte(0,(address)&0xff); 
	//ints are stored big-endian in flash. easier.
	u32 r = 0; 
	r += spi_write_byte(0,0); 
	r <<= 8; 
	r += spi_write_byte(0,0); 
	r <<= 8; 
	r += spi_write_byte(0,0); 
	r <<= 8; 
	r += spi_write_byte(0,0); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
	return r; 
}
void write_enable_flash(){
	//aslo clears the bank protection registers.
	//first EWSR
	*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0, 0x50); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
	
	*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	//write the status register
	spi_write_byte(0,0x01); 
	spi_write_byte(0,0x00); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
	
	//write enable command.
	*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0,0x06); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
}
void wait_flash(){
	u8 stat = 1; 
	while(stat & 1){
		*FIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0,0x05); 
		stat = spi_write_byte(0,0); 
		*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
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
	*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
	spi_write_byte(0,0x20);
	spi_write_byte(0,(address >> 16)&0xff);
	spi_write_byte(0,(address >> 8)&0xff); 
	spi_write_byte(0,(address)&0xff); 
	*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
	
	//now have to wait for the erase page to be complete. 
	wait_flash(); 
	//alright, write the bytes. (slow mode)
	u32 i, a;
	u8* p = data; 
	for(i=0; i<len; i++){
		//write enable command.
		*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0,0x06); 
		*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
		a = address + i; 
		*pPORTGIO_CLEAR = SPI_FLASH; asm volatile("ssync"); 
		spi_write_byte(0,0x02);
		spi_write_byte(0,(a >> 16)&0xff);
		spi_write_byte(0,(a >> 8)&0xff); 
		spi_write_byte(0,(a)&0xff); 
		spi_write_byte(0,*p);
		*pPORTGIO_SET = SPI_FLASH; asm volatile("ssync"); 
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
//global pointers.
#define UDP_PACKET_SIZE 512
#define M_NORMAL	1
#define	M_SLOW	2
#define M_FAST	4
u32 wrptr; 
u32 trptr; 
u8  g_samples[512]; //interleaved chs 1 & 2
u32 g_sampW; 
u32 g_sampR; 
u32	g_sampInc; //increment by this every sample. base 31. (0x7ffffff); 
u32 g_sampOff; //offset for interpolation.
u8  g_sampCh; 
u8	g_sampMode; 
void getRadioPacket(u16 csn, u16 irq, u8 write){
	// write is to enable 'null' reads of the fifo.
	// (clearing the fifo will not work)
	char gotx = 0; //read: 'go tx' not 'got x'
	char result; 
	u32* data; 
	u16 i; 
	
	spi_write_register(csn, NOR_STATUS, 0x70); //clear IRQ.
	asm volatile("ssync;"); 
	*FIO_CLEAR = csn; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = 0x61; //command for reading the fifo
	spi_delay(); //wait for this to finish. 
	u8* ptr = (u8*)(wrptr); 
	for(i=0; i<32; i++){
		*pSPI_TDBR = 0;
		spi_delay(); 
		if(write){ 
			u8 t = (u8)(*pSPI_SHADOW); 
			*ptr++ = t; 
			//copy over to the sample (audio out) buffer.
			if(i < 24){
				if((i & 0x3) == 0){
					g_samples[g_sampW & 511] = t;
					g_sampW++; 
				}
				if((i & 0x3) == 1){
					g_samples[g_sampW & 511] = t; 
					g_sampW++; 
				}
			}
		}
	}
	
	*FIO_SET = csn; 
	asm volatile("ssync;");
	//need to check if the headstage wants a response.
	//have to check encoding.
	if(write){
		unsigned int* c = (unsigned int*)(wrptr); 
		wrptr += 32; 
		wrptr &= 0xfff; 
		c += 24/4; //offset to template match bytes (8, 2 uints) 
		unsigned int flag = *c; 
		flag = ((flag >> 7) & 1) | ((flag >> 14) & 2)
				| ((flag >> 21) & 4) | ((flag >> 28) & 8); 
		if(g_nextFlag != flag){
			if(g_nextFlag > flag) 
				g_dropped += (16+flag) - g_nextFlag;
			else
				g_dropped += flag - g_nextFlag; 
			*pPORTFIO_SET = 0x4;
		}
		g_nextFlag = (flag + 1) & 0xf; 
		if(flag == 0xf){ //end of a frame.
			radio_set_tx(csn, NRF_CE); //must clear CE here - essential!
			asm volatile("ssync;"); 
			*FIO_CLEAR = csn; 
			*pSPI_TDBR = 0xa0; //command for writing the fifo
			spi_delay(); //wait for this to finish. 
			u8* ptr = g_outpkt;
			for(i=0; i<32; i++){
				*pSPI_TDBR = *ptr++;
				spi_delay(); 
			}
			*FIO_SET = csn | NRF_CE; 
			asm volatile("ssync;"); 
			//wait for the resulting irq.
			while(*pPORTFIO & irq){
				//asm volatile("nop; nop; nop; nop;"); 
				eth_listen(0); //this inserts a bit of (useful) delay
			}
			spi_write_register(csn, NOR_STATUS, 0x70); //clear IRQ.
			radio_set_rx(csn, NRF_CE); 
			gotx = 1; 
		}
	}
	if(gotx || wrptr >= UDP_PACKET_SIZE){
		*pPORTFIO_SET = 0x4000; //transmit UDP flag.
		spi_write_byte(csn,NOR_FLUSH_RX); //will this fix the problem of immediately syncing? 
		data = (u32*) ( udp_packet_setup(wrptr+4, &result )); 
		if(result > 0){
			//copy the data from SDRAM.. (starting @ 0x0000 0000, looping 256k bytes)
			//include a copy of the tptr, so that we can (possibly) reorder it. 
			(*data++) = g_dropped; //this is the +4 above
			unsigned int *ptr = 0; 
			for(i=0; i<wrptr/4; i++){
				*data++ = *ptr++;
			}
			trptr ++ ; 
			bfin_EMAC_send_nocopy(); 
			*ptr = 0; 
			for(i=0; i<UDP_PACKET_SIZE/4; i++){
				*ptr++ = 0; //clear the old data away!
			}
		} else {
			//reset, since we were not able to send anything 
			// (possibly due to ARP). 
			trptr ++; 
		}
		*pPORTFIO_CLEAR = 0x4004; 
		gotx = 0; 
		wrptr = 0; 
	}
}
void __attribute__((interrupt_handler)) audio_out(void)
{
	*pSPORT1_STAT = 0x30;  //clear the sticky statuses
		//basically need a PID controller to get rid of the clock skew. 
		//has to be relatively high resolution.
	u8 chan = g_sampCh; 
	u8 s1 = g_samples[(g_sampR + chan) & 511]; //interpolate between 2 samples.
	u8 s2 = g_samples[(g_sampR + chan + 2) & 511]; 
	s1 ^= 0x80; //convert to unsigned.
	s2 ^= 0x80; 
	//u16 samp = s1 << 8; 
	u16 samp = s1 * (0xff - (g_sampOff >> 20)) 
			 + s2 * ((g_sampOff >> 20)); 
	*pSPORT1_TX = samp | (0x3 << 19) | (chan << 16); //command, address
	//adjust the rate.
	if(chan == 1){ 
		if(g_sampW < g_sampR){ g_sampR = g_sampW;} //wrap!
		unsigned int d = g_sampW - g_sampR; 
		if(d > 500 - 32){
			if(g_sampMode == M_NORMAL) g_sampMode = M_FAST;
			if(g_sampMode == M_SLOW){ g_sampMode = M_NORMAL;}
		}
		else if(d < 100){
			if(g_sampMode == M_NORMAL) g_sampMode = M_SLOW;
			if(g_sampMode == M_FAST){ g_sampMode = M_NORMAL;}
		}
		if(g_sampMode == M_FAST){
			g_sampInc = 0x1013abcd; 
		} else if (g_sampMode == M_SLOW){
 			g_sampInc = 0x0ff14321; 
		} else {
			g_sampInc = 0x10000000; // C 
		}
		g_sampOff += g_sampInc; 
		while(g_sampOff > 0x10000000){
			g_sampR += 2; 
			g_sampOff -= 0x10000000; 
		}
		g_sampOff &= 0x0fffffff; 
	}
	g_sampCh ^= 1; 
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
		g_nv.destIP = FormatIPAddress(152, 16, 229, 54); 
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
	
	/*setup portF - SPORT0 RX + NRF CSN, IRQ, CE, SPORT1 TX
	MUX		0000 0001 0100 0000  0x0140
	FER		0011 1000 1000 0011  0x3883
	INPUT	0000 0001 1010 1011  0x01ab
	!! this will have to change based on wether the headstage is wired or not
	!! the MUX configuration is too coarse to support both.
	*/
	*pPORTF_FER = 0x3883;
	*pPORTFIO_DIR = (0xffff ^ 0x01a9); 
	*pPORTFIO_INEN = 0x01ab; 
	*pPORTF_MUX = 0x0140; //support the DAC
	//and reading / writing flash
	*pPORTGIO_INEN &= (0xffff ^ SPI_FLASH); 
	*pPORTGIO_DIR |= SPI_FLASH; 
	*pPORTG_FER &= (0xffff ^ SPI_FLASH); 
	
	/* this for audio output.  would be nice to get spikes on this.
		the headstage samples at 1e6/32 = 31250 sps
		have 2ch DAC, so should put out samples at 62500 sps
		with 32 clocks between TFS, need 2Mhz clk -> divide by 30.
	*/
	if(1){
		*pSPORT1_TCR1 = 0; //turn everything off before changing speed..(also clears errors)
		asm volatile("ssync"); 
		g_sampW = g_sampR = 0; //reset the counters.
		g_sampOff = 0; 
		g_sampMode = M_NORMAL; 
		g_sampInc = 0x8000000; //start by assuming they are synchonized.
		g_sampCh = 0; 
		//serial clock is CCLK / 2*(TCLKDIV+1) ; ho
		*pSPORT1_TCLKDIV = 29 ; //120Mhz / 2*30 = 2M / 32 = 62.5k / 2 = 31.25 ksps/ch
		*pSPORT1_TFSDIV = 31 ; //32 clocks between assertions of the frame sync
		*pSPORT1_TCR2 = 23; //word length 24, secondary disabled. 
		*pSPORT1_TCR1 = 0x4e03 ;
		//init the IRQ. first the event vector table.
		*pEVT7 = audio_out; 
		*pSIC_IMASK0 = 1 << 9; //page 170 of the hardware ref.
	}/*
		int j, k, m, n, x, y; 
		i = j = k = m = n = x = y = 0; 
		int freqs[] = {240, 400, 300, 180};
		int freqs2[] = {540, 600, 360, 480, 266}; 
		while(1){
			while(*pSPORT1_STAT & TXF){
				asm volatile("nop; nop; nop; nop"); 
			}
			//channel 1 (stereo DAC)
			*pSPORT1_TX = (((i+x)>>1) | (0x3 << 19) | (0x0 << 16));
			while(*pSPORT1_STAT & TXF){
				asm volatile("nop; nop; nop; nop"); 
			}
			//channel 2
			*pSPORT1_TX = (((j+y)>>1) | (0x3 << 19) | (0x1 << 16));
			i += freqs[m]; 
			i &= 0xffff; 
			j += freqs[m]+1; 
			j &= 0xffff; 
			x += freqs2[n]; 
			x &= 0x7fff; 
			y += freqs2[n]+1; 
			y &= 0x7fff; 
			k++; 
			if( k > 50000){
				k = 0; 
				m ++; 
				m &= 3; 
			}
			if(k == 25000){
				n ++; 
				n = n % 5; 
			}
		}
	}*/
	//write out data.
	int prevtime = 0;
	int secs; 
	wrptr = 0; //write pointer - not actual address! (must wrap by hand)
	trptr = 0;
	g_dropped = 0; 
	g_nextFlag = 0; 
	
	//enable the three radios.
	printf_str("init radios!\n"); 
	*FIO_CLEAR = NRF_CE; 
	*FIO_SET = NRF_CSN0 | NRF_CSN1 | NRF_CSN2;
	*pPORTGIO_SET = SPI_FLASH; 
	asm volatile("ssync;"); 
	radio_init(NRF_CSN0, NRF_IRQ0, 124); 
	radio_init(NRF_CSN1, NRF_IRQ1, 124); 
	radio_init(NRF_CSN2, NRF_IRQ2, 124); 

	
	radio_set_rx(NRF_CSN0, 0); 
	radio_set_rx(NRF_CSN1, 0); 
	radio_set_rx(NRF_CSN2, NRF_CE); //enables RX. 
	
	//you have to be ready to get packets immediately after RX mode is turned on --
	//otherwise the  fifo gets confused, and you could have 2-3 packets
	//in the fifo but only read out one. 
	
	char write = 1; 
	while(1){
		//listen for packets? (both interfaces, respond on eth)
		eth_listen(etherr); 
		//u8 fifostatus; 
		//u8 status = spi_read_register_status(NOR_FIFO_STATUS, &fifostatus); 
		if((*pPORTFIO & NRF_IRQ0) == 0){
			getRadioPacket(NRF_CSN0, NRF_IRQ0, write);
			write = 0; 
		}
		if((*pPORTFIO & NRF_IRQ1) == 0){
			getRadioPacket(NRF_CSN1, NRF_IRQ1, write);
			write = 0; 
		}
		if((*pPORTFIO & NRF_IRQ2) == 0){
			getRadioPacket(NRF_CSN2, NRF_IRQ2, write);
			write = 0; 
		}
		if((*pPORTFIO & (NRF_IRQ0 | NRF_IRQ1 | NRF_IRQ2)) == 
			(NRF_IRQ0 | NRF_IRQ1 | NRF_IRQ2))
			write = 1; //no-change fall-through: only write one RXed packet.
		
		*FIO_SET = NRF_CSN0 | NRF_CSN1 | NRF_CSN2;
		secs = (*pGTIME)/1000; // 0xff800800
		if(secs != prevtime){
			*pPORTFIO_TOGGLE = 0x8000; 
			//printf_int("time ", secs); //heartbeat.
			prevtime = secs; 
		}
	}
	return 0;
}
