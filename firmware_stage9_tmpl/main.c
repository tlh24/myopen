
#include <cdefBF532.h>
#include "memory.h"
#include "headstage.h"
#include "nordic_regs.h"
#include "print.h"
#include "spi.h"
#include "usb.h"

u32 g_excregs[8+6+16] ; //the regular data registers + pointer registers. 

void exception_report(unsigned long seqstat, unsigned long retx){
	//shift the bottom 5 bits out on portf 0 and 1 (1 = clock); 
	//radio may get a bit confused, but these are both inputs so it's ok
	unsigned long mask, out; 
	int i; 
	*pFIO_FLAG_D = 0; 
	printf_str("Exception!!"); 
	printf_hex("hwerr:", (seqstat >> 14) & 0x1f); 
	printf_hex("excause:", seqstat & 0x3f); 
	printf_hex("retx:", retx); 
	u32* p = g_excregs; 
	printf_hex("r0:", *p++); 
	printf_hex("r1:", *p++); 
	printf_hex("r2:", *p++); 
	printf_hex("r3:", *p++); 
	printf_hex("r4:", *p++); 
	printf_hex("r5:", *p++); 
	printf_hex("r6:", *p++); 
	printf_hex("r7:", *p++); 
	uart_str("\n"); 
	printf_hex("p0:", *p++); 
	printf_hex("p1:", *p++); 
	printf_hex("p2:", *p++); 
	printf_hex("p3:", *p++); 
	printf_hex("p4:", *p++); 
	printf_hex("p5:", *p++); 
	//loop registers. 
	uart_str("\n"); 
	printf_hex("i0:", *p++); 		
	printf_hex("b0:", *p++); 		
	printf_hex("l0:", *p++); 	
	uart_str("\n"); 
	printf_hex("i1:", *p++); 		
	printf_hex("b1:", *p++); 		
	printf_hex("l1:", *p++); 		
	uart_str("\n"); 
	printf_hex("i2:", *p++); 		
	printf_hex("b2:", *p++); 		
	printf_hex("l2:", *p++); 		
	uart_str("\n"); 
	printf_hex("i3:", *p++); 		
	printf_hex("b3:", *p++); 		
	printf_hex("l3:", *p++); 		
	uart_str("\n"); 
	printf_hex("m0:", *p++); 		
	printf_hex("m1:", *p++); 		
	printf_hex("m2:", *p++); 		
	printf_hex("m3:", *p++); 		
	while(1){
		//pulse pf 7 (MUX0) for trigger.
		*pFIO_FLAG_T = 0x100; 
		asm volatile("ssync"); 
		*pFIO_FLAG_T = 0x100; 
		asm volatile("ssync"); 
		
		mask = 0x20; 
		out = seqstat;
		for(i=0; i<6; i++){
			if(mask & out)
				*pFIO_FLAG_S = 1; 
			else
				*pFIO_FLAG_C = 1;
			*pFIO_FLAG_T = 2; 
			asm volatile("ssync"); 
			mask = mask >> 1; 
			*pFIO_FLAG_T = 2; 
			asm volatile("ssync"); 
		}
		*pFIO_FLAG_C = 1;
		// insert a pause. 
		for(i=0; i<30; i++){
			asm volatile("nop; nop;"); 
		}
		//only shift out the last 16 bits of retx - we know the top 16 bits. 
		mask = 0x8000; 
		out = retx;
		for(i=0; i<16; i++){
			if(mask & out)
				*pFIO_FLAG_S = 1; 
			else
				*pFIO_FLAG_C = 1;
			*pFIO_FLAG_T = 2; 
			asm volatile("ssync"); 
			mask = mask >> 1; 
			*pFIO_FLAG_T = 2; 
			asm volatile("ssync"); 
			//break into nibbles. (and format for the oscilloscope)
			if((i & 3) == 3){
				asm volatile("nop; nop; nop; nop; nop; nop; nop; nop;"); 
				asm volatile("nop; nop; nop; nop; nop; nop; nop; nop;"); 
				asm volatile("nop; nop; nop; nop; nop; nop; nop; nop;"); 
			}
		}
		*pFIO_FLAG_C = 1;
		// insert a pause. 
		for(i=0; i<300; i++){
			asm volatile("nop; nop;"); 
		}
	}
}
void nmi_report(void){
	int i; 
	printf_str("nonmaskable exception!"); 
	printf_str("this should not occur - hardware problems!"); 
	for(i=0; i<300; i++){
		asm volatile("nop; nop;"); 
	}
}

//globals for bidi test. 
unsigned char chan; 
unsigned char tx_chan; 
short kk[16]; 
short jj[16]; 
short thresh_1[16]; 
short thresh_2[16];
short samp1; 
short samp2; 
short ramp; 
u16 exceeded_1;
u16 exceeded_2;
char qpackets;
u8	qs = 0; //the enquing state, for writing packets to mem.
u8* txbuf = (u8*)(WFBUF); //need space for 16 32-byte packets 
// (ping-pong buffer) - write 8 packets in a burst.
u8* rbuf = (u8*)(WFBUF); 
// that's 2^9 = 512 bytes, 0x200.  
//to make it wrap, clear bit 9.  (first bit is bit 0) 

void sample(){
	u16 l; 
	u16 u = 0;
	while((u & 0x1) == 0){
		u = *pSPORT0_STAT;
	}
	*FIO_SET = 0x0100; //toggle the mux.
	samp1 = *((volatile u16*)pSPORT0_RX); //primary (a), bottom on stage4.
	samp2 = *((volatile u16*)pSPORT0_RX); //secondary, b, top on stage4.
	
	//simple filtering here: one pole highpass.
	l = kk[chan & 0xf]; 
	l = l * 7 + samp1; 
	l >>= 3; 
	//samp1 -= l; 
	kk[chan & 0xf] = l; 
	
	l = jj[chan & 0xf]; 
	l = l * 7 + samp2; 
	l >>= 3; 
	//samp2 -= l; 
	jj[chan & 0xf] = l; 
	
	//check-see if it passes threshold.
	//asm("%0 = abs %0; ":"=d"(samp1));
	//asm("%0 = abs %0; ":"=d"(samp2)); 
	if(samp1 > thresh_1[chan & 0xf])
		exceeded_1 |= 1 << chan & 0xf; 
	if(samp2 > thresh_2[chan & 0xf])
		exceeded_2 |= 1 << chan & 0xf;
	*FIO_CLEAR = 0x0100; //clear the pulse.
}
void get(){
	//sample 16 chanels, then for the next 16 channels return 
	// ( a continuation, sorta).
	u32 x; 
	u16* sptr; //temp ptr for convenience.
	//while(chan < 16){
		sample(); //will need to leave the samples in a reg in the asm...
		// copy to queue if needed. 
		if(chan == tx_chan){
			ramp++; 
			*txbuf++ = (u8)(samp1>>4); //sample
			qs++; 
			if(qs == 27){
				*txbuf++ = (u8)(qpackets + (tx_chan << 3)); //this is a stand-in for more useful
				sptr = (u16*) txbuf; // flags - just need to indicate when
				*sptr++ = 0xfdb9; //exceeded_1; // we'll be in RX mode.
				*sptr++ = 0x7531; //exceeded_2; 
				txbuf = (u8*) sptr; 
				qs = 0; 
				exceeded_1 = 0; //wrote them out, so reset.
				exceeded_2 = 0; 
				qpackets ++; 
				x = (u32)txbuf; 
				x &= (0xfffffffc ^ WFBUF_LEN); 
				//x += qpackets << 5; 
				txbuf = (u8*)x; 
			}
		}
		x = (u32)txbuf; 
		x &= (0xffffffff ^ WFBUF_LEN); //clear bit 9, make it wrap.
		txbuf = (u8*)x; 
		//have sampled & worked on data, increment the channel.
		chan++; 
		chan &= 31; 
	//}
	//otherwise, just sample and return - 
	// time to service the radio.
	//sample(); 
	//chan++; //this variable is not used by radio routines, 
	//chan &= 31; //so incrementing here is ok.
}
void radio_clearfifos(){
	*FIO_CLEAR = SPI_CSN;
		get(); 
	*pSPI_TDBR = NOR_FLUSH_RX; 
		get(); 
	*FIO_SET = SPI_CSN;
		get();
	*FIO_CLEAR = SPI_CSN;
		get(); 
	*pSPI_TDBR = NOR_FLUSH_TX; 
		get(); 
	*FIO_SET = SPI_CSN;
		get(); 	
}
void radio_clearirq(){
	*FIO_CLEAR = SPI_CSN;
		get(); 
	*pSPI_TDBR = NOR_STATUS + 0x20; 
		get(); 
	*pSPI_TDBR = 0x70; //clear IRQ. 
		get(); 
	*FIO_SET = SPI_CSN;
		get(); 	
}
void radio_waitirq(){
	int timeout = 325; 
	while((*pFIO_FLAG_D & SPI_IRQ) && timeout > 0){
		get(); 
		timeout--; 
	}	
} 

void radio_tst_bidi(){
	//this one uses continuations (sorta)
	// to streamline control flow and limit the need for
	// preserving state. 
	int i,k;
	u16 j; 
	u32 x, address, value;
	//initial setup.
	chan = 0; 
	tx_chan = 0; 
	txbuf = (u8*)(WFBUF);
	
	radio_clearfifos(); 
	radio_clearirq(); 
	for(i=0;i<WFBUF_LEN/32;i++){
		for(j=0; j<27; j++){
			*txbuf++ = (u8)((j+(i<<5)) & 0xff); 
		}
		*txbuf++ = (u8)i; //should correctly indicate status packet.
		*txbuf++ = 0xa5; 
		*txbuf++ = 0xb4; 
		*txbuf++ = 0xc3;
		*txbuf++ = 0xd2; 
	}
	txbuf = (u8*)(WFBUF); //reset it.
	rbuf = (u8*)(WFBUF);
	ramp = 0;
	qpackets = 0; 
	qs = 0; 
	while(1){
		while(qpackets < 8) {
			get(); // aka get a sample.
		}
		qpackets = 0; 
		radio_clearfifos(); 
		for(i=0; i<8; i++){
			*FIO_CLEAR = SPI_CSN;
			  get();
			*pSPI_TDBR = 0xa0; //command for writing the fifo on the radio
			  get();
			for(k=0;k<32;k++){
				*pSPI_TDBR = *rbuf;
				x = (u32)rbuf; 
				x++; 
				x &= 0xffffffff ^ (WFBUF_LEN); //clear bit 9, make it wrap.
				rbuf = (u8*)x;
				  get(); 
			}
			*FIO_SET = SPI_CSN | SPI_CE; //enable the radio
			  get(); 
			if( i > 0 ){ //don't wait for the IRQ on the first packet.
				radio_waitirq(); 
				radio_clearirq();
			}
		}
		//sync the read buff ptr - we've written out 256 bytes.
		x = (u32)rbuf; 
		x &= 0xffffff00; 
		rbuf = (u8*)x;
		//there is still 1 packet in the radio's fifo - wait.  
		radio_waitirq();
		radio_clearirq(); 
		*FIO_CLEAR = SPI_CE; 
			get(); 
		//put the radio in RX mode. 

		*FIO_CLEAR = SPI_CSN; 
		  get();
		*pSPI_TDBR = NOR_FLUSH_RX; 
		  get();
		*FIO_SET = SPI_CSN; 
		  get(); 
// 		*FIO_CLEAR = SPI_CSN; //this seems to be BAD!
// 		  get();
// 		*pSPI_TDBR = NOR_CONFIG + 0x20; 
// 		  get();
// 		*pSPI_TDBR = 0;
// 		  get(); 
// 		*FIO_SET = SPI_CSN; 
// 		  get(); 
		*FIO_CLEAR = SPI_CSN; 
		  get();
		*pSPI_TDBR = NOR_CONFIG + 0x20; 
		  get();
		*pSPI_TDBR = NOR_EN_CRC | NOR_CRC0 | 
				NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX;
		  get(); 
		*FIO_SET = SPI_CSN; 
		  get(); 
		*FIO_SET = SPI_CE; 
		  get(); 
		
		//wait for the packet.
		i=0; 
		while(i < 325){
			if((*pFIO_FLAG_D & SPI_IRQ) == 0){
				i = 333; 
			} 
			i++;
			get(); 
		}
		if(i == 334){
			radio_clearirq(); 
			*FIO_CLEAR = SPI_CSN | SPI_CE; 
			  get(); 
			*pSPI_TDBR = 0x61; //command for reading the RX fifo
			  get(); 
			for(k=0; k<4; k++){
				address = 0; 
				value = 0; 
				*pSPI_TDBR = 0x0; //dummy write.
				  get();
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				address += j; //blackfin is little-endian.
				*pSPI_TDBR = 0x0; 
				  get(); 
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				address += j << 8; 
				*pSPI_TDBR = 0x0; 
				  get();
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				address += j << 16; 
				*pSPI_TDBR = 0x0; 
				  get(); 
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				address += j << 24; 
				*pSPI_TDBR = 0x0; 
				  get();
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				value += j;
				*pSPI_TDBR = 0x0; 
				  get(); 
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				value += j << 8; 
				*pSPI_TDBR = 0x0; 
				  get();
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				value += j << 16; 
				*pSPI_TDBR = 0x0; 
				  get(); 
				j = (u16)(*pSPI_SHADOW); j &= 0xff; 
				value += j << 24; 
				if(((address & 0xffff0003) ^ 0xff904000) == 0){
					//then this address is valid, write.
					*((u32*)address) = value;
				}
				  get(); 
			}
			*FIO_SET = SPI_CSN;
			  get(); 
		}
		//put it back in TX mode. 
		*FIO_CLEAR = SPI_CE;
		  get();
		*FIO_CLEAR = SPI_CSN; 
		  get();
		*pSPI_TDBR = NOR_FLUSH_TX; 
		  get();
		*FIO_SET = SPI_CSN; 
		  get(); 
		
		*FIO_CLEAR = SPI_CSN;
		  get(); 
		*pSPI_TDBR = NOR_CONFIG + 0x20; 
		  get(); 
		*pSPI_TDBR = NOR_MASK_MAX_RT | NOR_EN_CRC | 
			NOR_CRC0 | NOR_PWR_UP | NOR_PRIM_TX;
		  get(); 
		*FIO_SET = SPI_CSN;
		  get(); 
		  
	}
}

/*
void doBridge(){
	unsigned int read,write; //watermarks.
	read = write = 0; 
	u8 outpkt[32]; 
	u8* c; 
	int i,j,k; 
	//reflect EP2 status on IRQ line (ignore everything else!)
	wreg(rEPIEN,bmIN2BAVIE); 
	wreg(rUSBIEN,0);
	//rPINCTL should already be set to positive interupts.
	//new bridge routine: look at the USB data transmitted IRQ. 
	u8 epirq = 0; 
	while(1){
		*FIO_SET = 0x0100; 
		//do one of two things: read in a packet. 
		//write out two packets if there is space and 2 are queued. 
		//USB chip needs to be programmed to reflect EP2 status on 
		//USB_IRQ line. 
		if((*pFIO_FLAG_D & SPI_IRQ) == 0){
			c = (u8*)WFBUF; 
			j = write; 
			j *= 32; 
			j &= 0x3fff; 
			c += j; //WFBUF_LEN = 0x4000, 16k.
			spi_read_packet((void*)c); 
			//need to check if they want a response --
			c += 27; 
			if(((*c)&0x7) == 7){
				radio_set_tx();
				//send whatever is in the buffer from the host..
				*FIO_CLEAR = SPI_CSN; 
				asm volatile("ssync;"); 
				*pSPI_TDBR = 0xa0; //command for writing the fifo
				spi_delay(); //wait for this to finish. 
				u8* ptr = outpkt;
				for(i=0; i<32; i++){
					*pSPI_TDBR = *ptr++;
					spi_delay(); 
				}
				*FIO_SET = SPI_CSN | SPI_CE; 
				asm volatile("ssync;"); 
				//wait for the resulting irq.
				while(*pFIO_FLAG_D & SPI_IRQ){
					asm volatile("nop;nop;"); 
				}
				*FIO_CLEAR = SPI_CE; 
				spi_write_register(NOR_STATUS, 0x70); //clear IRQ.
				radio_set_rx(); 
			}
			write++; 
		}
		epirq = rreg(rEPIRQ); 
		if((epirq & bmIN2BAVIRQ) && (write - read >= 1)){
			*FIO_CLEAR = USB_SS; 
			asm volatile("ssync;"); 
			*pSPI_TDBR = (u16)(rEP2INFIFO | 0x2);
			spi_delay(); 
			c = (u8*)WFBUF; 
			j = read; 
			j *= 32; 
			j &= 0x3fff; 
			c += j; 
			for(k=0; k<32; k++){
				*pSPI_TDBR = (u16)(*c++); 
				spi_delay(); 
			}
			//write out a tag - debug USB transmission.
			*pSPI_TDBR = (u16)((read>>0) & 0xff);
			spi_delay(); 
			*pSPI_TDBR = (u16)((read>>8) & 0xff);
			spi_delay(); 
			// *pSPI_TDBR = (u16)((read>>16) & 0xff);
			// spi_delay(); 
			// *pSPI_TDBR = (u16)((read>>24) & 0xff);
			// spi_delay();
			*FIO_SET = USB_SS; 
			asm volatile("ssync;"); 
			wreg(rEP2INBC,34);   // load EP2BC to arm the EP2-IN transfer & ACKSTAT
			read += 1; //two packets read.
		}
		//check for incoming data! 
		if(epirq & bmOUT1DAVIRQ){
			u8 nbytes = rreg(rEP1OUTBC);
			nbytes &= 63; //limit the size.
			//printf_int("usb: ep1_out pack size ", nbytes);
			//printf_newline();
			*FIO_CLEAR = USB_SS; 
			asm volatile("ssync;"); 
			*pSPI_TDBR = (u16)(rEP1OUTFIFO);
			spi_delay(); 
			c = (u8*)outpkt; 
			for(k=0; k<nbytes; k++){
				*pSPI_TDBR = 0; 
				spi_delay(); 
				u8 j = (u8)(*pSPI_SHADOW); 
				if(k < 32)
					*c++ = j; 
			}
			unsigned int u = *((unsigned int*)outpkt); 
			if(nbytes == 4 && (u >> 24) != 0xff){
				//host is telling us that we missed a pkt -- 
				// change the read pointer. 
				read = u; 
			}
			*FIO_SET = USB_SS; 
			asm volatile("ssync;");
			wreg(rEPIRQ, bmOUT1DAVIRQ); //this is critical.
				//page 57 of the MAX3420 programming manual: 
		}
		if(write - read > 256){ //someone hasn't been listening - clear the buffers.
			write = read = 0; 	
		}
		*FIO_CLEAR = 0x0100; 
	}	
}*/
int main()
{
	u16 k; 
	
	//make sure cache is off.
	*pIMEM_CONTROL = 1;  
	asm volatile("csync"); 
	*pDMEM_CONTROL = 1; 
	asm volatile("csync"); 
	
	*pFIO_INEN = 0x8; //stage8.
	*pFIO_DIR = ~(*pFIO_INEN); 
	*pFIO_FLAG_D = 0x0187; 
	
	radio_init(124);  //channel seems to make no difference. used to be 124.
	*FIO_CLEAR = SPI_CE; 
	*FIO_CLEAR = 0x0080; //mux reset. active low.
	for(k=0; k<1000; k++){
		asm volatile("nop; nop; nop; nop;"); 	
	}
	*FIO_SET = 0x0080; 
	
	//serial clock = SCLK / 2*(RCLKDIV+1).  p.539 
	// core clock = 80Mhz / 4 = 20, good. can sample at exactly 1Msps then.
	radio_set_tx();
	*pSPORT0_RCLKDIV = 1; //Determines the SCLK frequency and hence the data bit rate
	*pSPORT0_RFSDIV = 19; //number of clock cycles -1 before generating TFS pulse. 
	*pSPORT0_RCR2 = 0x010f; //16 bit word, secondary channel enabled, no stereo. 
	
	*pSPORT1_RCLKDIV = 1; //Determines the SCLK frequency and hence the data bit rate
	*pSPORT1_RFSDIV = 19; //number of clock cycles -1 before generating TFS pulse. 
	*pSPORT1_RCR2 = 0x010f; //16 bit word, secondary channel enabled, no stereo. 
	
	/** these moved to radio5.asm, to avoid timing issues. ('enable the sports')
	*pSPORT1_RCR1 = 0x0401; //external frame sync and clock
	*pSPORT0_RCR1 = 0x0603; //enable both simlutaneously (I hope!)
	**/
	/*sample on falling clk,(*)
	early sync, active high sync,require fs, internal fs, 
	msb first, zero fill, internal clock, enable!
	the ADCS7476 drives it's signals & samples on the rising clock edge -- the datasheet is wrong!
	note - register writes to the configuration registers are disabled while the SPORT is enabled.
	
	(*)  ADCS7476 drives on falling clock, wants 
	the proc to sample on next falling clk - good given long wires -
	and counts falling edges of clk after FS goes down, hence FS should 
	be driven on rising edge of clk.
	seems that on new board prev. sample LSB goes to MSB of sample - 
	need to mask off programmatically.
	(writing this b/c worried about timing budgets & data validity)
	*/
	//radio_tx_test(); 
	radio_bidi_asm(); //infinite loop! ends here!
	//radio_tst_bidi(); //infinite loop.
	
	return 0;
}
