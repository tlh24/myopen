
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
		u = *pSPORT1_STAT;
	}
	*FIO_SET = 0x0100; //toggle the mux.
	samp1 = *((volatile u16*)pSPORT1_RX); //primary (a), bottom on stage4.
	samp2 = *((volatile u16*)pSPORT1_RX); //secondary, b, top on stage4.
	
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
	while(chan < 16){
		sample(); //will need to leave the samples in a reg in the asm...
		// copy to queue if needed. 
		if(chan == tx_chan){
			*txbuf++ = (u8)(samp1>>4); //sample.
			ramp++; 
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
				x &= 0xffffff00; //sync
				x += qpackets << 5; 
				txbuf = (u8*)x; 
			}
		}
		if(chan+16 == tx_chan){
			*txbuf++ = (u8)(samp2>>4); 
			ramp++; 
			qs++; 
			if(qs == 27){
				*txbuf++ = (u8)(qpackets + (tx_chan << 3)); 
				sptr = (u16*) txbuf; 
				*sptr++ = 0xfdb9; //exceeded_1; // we'll be in RX mode.
				*sptr++ = 0x7531; //exceeded_2; 
				txbuf = (u8*) sptr; 
				qs = 0; 
				exceeded_1 = 0; //wrote them out, so reset.
				exceeded_2 = 0; 
				qpackets ++; 
				x = (u32)txbuf; 
				x &= 0xffffff00; //sync
				x += qpackets << 5; 
				txbuf = (u8*)x; 
			}
		} 
		x = (u32)txbuf; 
		x &= (0xffffffff ^ WFBUF_LEN); //clear bit 9, make it wrap.
		txbuf = (u8*)x; 
		//have sampled & worked on data, increment the channel.
		chan++; 
		chan &= 31; 
	}
	//otherwise, just sample and return - 
	// time to service the radio.
	sample(); 
	chan++; //this variable is not used by radio routines, 
	chan &= 31; //so incrementing here is ok.
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
	int timeout = 128; 
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
	ramp = 0;
	qpackets = 0; 
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
		/*
		*FIO_CLEAR = SPI_CSN; 
		  get();
		*pSPI_TDBR = NOR_CONFIG + 0x20; 
		  get();
		*pSPI_TDBR = 0;
		  get(); 
		*FIO_SET = SPI_CSN; 
		  get(); 
		*/
		*FIO_CLEAR = SPI_CSN; 
		  get();
		*pSPI_TDBR = NOR_CONFIG + 0x20; 
		  get();
		*pSPI_TDBR =  /*NOR_EN_CRC | NOR_CRC0 | */
				NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX;
		  get(); 
		*FIO_SET = SPI_CSN; 
		  get(); 
		*FIO_SET = SPI_CE; 
		  get(); 
		
		//wait for the packet.
		i=0; 
		while(i < 250){
			if((*pFIO_FLAG_D & SPI_IRQ) == 0){
				i = 254; 
			} 
			i++;
			get(); 
		}
		if(i == 255){
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

int main()
{
	//make sure cache is off.
	*pIMEM_CONTROL = 1;  
	asm volatile("csync"); 
	*pDMEM_CONTROL = 1; 
	asm volatile("csync"); 
	
	*pFIO_INEN = 0x8; 
	*pFIO_DIR |= 0x01e7;
	*pFIO_FLAG_D = 0x0; 
	
	//test ADC. 
	*pSPORT0_TCLKDIV = 39; 
	*pSPORT0_TFSDIV = 15; //16 clocks between assertions of FS. 
	*pSPORT0_TCR2 = 15 | 0x200 ; //word length 16, use stereo mode.
	
	*pSPORT1_TCLKDIV = 39 ; //80Mhz / 80 = 1M / 25 = 40k / 2 = 20 ksps/ch
	*pSPORT1_TFSDIV = 24 ; //25 clocks between assertions of the frame sync
	*pSPORT1_TCR2 = 23 ; //word length 24, secondary disabled. 
	
	*pSPORT0_RCLKDIV = 39; 
	*pSPORT0_RFSDIV = 17; 
	*pSPORT0_RCR2 = 15 ;//| 0x200; 
	
	*pSPORT1_TCR1 = 0x0e03 ; 
	*pSPORT0_TCR1 = 0x6603; //go! go!
	asm volatile("ssync"); //put a delay in here.
	*pSPORT0_RCR1 = 0x5403;
	
	u16 a = 0; //signed.
	u16 sample = 0; 
	u16 prev = 0; 
	u8 state = 0; 
	int dir = 128; 
	while(1){
		while(*pSPORT0_STAT & TXF){
			asm volatile("nop; nop; nop; nop");
		}
		*((volatile short*)SPORT0_TX) = 
		(short)(0x3c01 <<2);  // 0x2801 orig
		a = *((volatile short*)SPORT0_STAT); 
		if(a & RXNE){
			a = *((volatile unsigned short*)SPORT0_RX);
			sample = a;
			
			/*sample += dir; 
			if(sample > 0xffff - 128) dir= -128;
			if(sample < 128) dir= 128; 
			sample &= 0xffff; */
		}
		if((*pSPORT1_STAT & TXF) == 0){
			*pSPORT1_TX = ((sample & 0xffff) | (0x3 << 19) | (0x0 << 16));
		}
	}
	
	//test audio out port.
	*pSPORT1_TCLKDIV = 39 ; //80Mhz / 80 = 1M / 25 = 40k / 2 = 20 ksps/ch
	*pSPORT1_TFSDIV = 24 ; //25 clocks between assertions of the frame sync
	*pSPORT1_TCR2 = 23 ; //word length 24, secondary disabled. 
	*pSPORT1_TCR1 = 0x0e03 ; 
	
	int i, j, k, m, n, x, y, w, s; 
	i = j = k = m = n = x = y = 0; 
	int freqs[] = {240, 400, 300, 180};
	int freqs2[] = {540, 600, 360, 480};
	s = 120; 
	w = 1000; 
	while(1){
		while(*pSPORT1_STAT & TXF){
			asm volatile("nop; nop; nop; nop"); 
		}
		//channel 1 (stereo DAC)
		*pSPORT1_TX = (((i+x+w)>>1) | (0x3 << 19) | (0x0 << 16));
		while(*pSPORT1_STAT & TXF){
			asm volatile("nop; nop; nop; nop"); 
		}
		//channel 2
		*pSPORT1_TX = (((j+y+w)>>1) | (0x3 << 19) | (0x1 << 16));
		i += freqs[m]; 
		i &= 0xffff; 
		j += freqs[m]+1; 
		j &= 0xffff; 
		x += freqs2[n]+1; 
		x &= 0x7fff; 
		y += freqs2[n]; 
		y &= 0x7fff; 
		w += s; 
		if(w > 0x7fff){s = -120; w=0x7fff;}
		if(w < 0){s = 120; w=0;}
		k++; 
		if( k > 50000){
			k = 0; 
			m ++; 
			m &= 3; 
		}
		if(k == 25000){
			n ++; 
			n &= 3; //note: the modulus operator is broken on BF532!!
		}
	}
	//todo: read from the ADC!
	
	/*
	*FIO_CLEAR = 0xf000; 
	*FIO_SET = 4 << 12; 
	*/
	/*startup the core timer. 
	*pTCOUNT = 240000; //make a 500khz clock @ 264Mhz / 2.
	*pTPERIOD = 240000; 
	*pTSCALE = 1; //run at half the core clock rate.
	*pTCNTL = 0x7; //enable, turn on power, auto reload. */
	//service routine in crt0.asm
	//enabled through IVTMR bit in IMASK register.
	
	//startup the UART 
	/*
	*pUART_IER = 0; //turn off interrupts. never turn them back on. bwhahah.
	*pUART_MCR = 0; 
	*pUART_LCR =  0x0080; //enable access to divisor latch, p584 of BF533 hw ref.
	#ifdef __BRIDGE__
	*pUART_DLL = 108;
	#else
	*pUART_DLL = 87; //see page 592 of the BF533 hardware ref. this is the lower byte of the divisor. 
		// baud rate = SCLK / (16 * this register). 
		// 87 -> 57600 w/ system clock of 80Mhz.
		// 138 -> 57600 w/ system clock of 128Mhz.
		// 9 -> 888,888 baud.  close-ish to 921600. (3.5%)
	#endif
	*pUART_DLH = 0; 
	*pUART_LCR = 0x0003; //parity disabled, 1 stop bit, 8 bit word. 
	*pUART_GCTL = 0x0001; //enable the clock.
	//wait for the uart to be ready. 
	for(i=0; i<0x7fff; i++){
		asm volatile("nop"); 
		asm volatile("nop"); 
	}
	*/
	//this is before the SPORTS are turned on.
	/*ss = 0; 
	while(0){
		asm volatile("a0 = r0.l * r5.l , a1 = r0.h * r5.l"); 
		asm volatile("a0 += r0.l * r6.l , a1 += r0.h * r6.l"); 
		asm volatile("a0 += r0.l * r1.l , a1 += r0.h * r1.l"); 
		asm volatile("a0 += r0.l * r2.l , a1 += r0.h * r2.l"); 
		FIO_CLEAR = 0x0001; 
		asm volatile("cli r0"); 
		asm volatile("idle"); 
		asm volatile("sti r0"); 
		asm volatile("nop"); 
		*FIO_SET = 0x0001;
		asm volatile("nop"); 
		asm volatile("nop"); 
		asm volatile("nop"); 
		asm volatile("nop");  
		*FIO_TOGGLE = 0x00c0; //toggle usb_ss
		*pFIO_FLAG_D = (ss << 12) & 0xf000; 
		ss++; 
		ss &= 0xf; 
	}*/
	//printf_int("neurorecord svn v.", /*SVN_VERSION{*/271/*}*/ ) ; 
	//uart_str("\n"); 
	//setup the radio ... 
	//printf_str("starting up the radio\n"); 
	radio_init(124); 
	*FIO_CLEAR = SPI_CE; 
	*FIO_CLEAR = 0x0080; //mux reset. active low.
	for(k=0; k<1000; k++){
		asm volatile("nop; nop; nop; nop;"); 	
	}
	*FIO_SET = 0x0080; 
	#ifndef __BRIDGE__
		//serial clock = SCLK / 2*(RCLKDIV+1).  p.539 
		// core clock = 80Mhz / 4 = 20, good. can sample at exactly 1Msps then.
		radio_set_tx();
		*pSPORT1_RCLKDIV = 1; //Determines the SCLK frequency and hence the data bit rate
		*pSPORT1_RFSDIV = 19; //number of clock cycles -1 before generating TFS pulse. 
		*pSPORT1_RCR2 = 0x010f; //16 bit word, secondary channel enabled, no stereo. 
		*pSPORT1_RCR1 = 0x0603; 
		//sample on falling clk, early sync, active high sync,require fs, internal fs, 
		//msb first, zero fill, internal clock, enable!
		//the ADCS7476 drives it's signals & samples on the rising clock edge -- the datasheet is wrong!
		//note - register writes to the configuration registers are disabled while the SPORT is enabled.
		//radio_tx_test(); 
		radio_bidi_asm(); //infinite loop! ends here!
		//radio_tst_bidi(); //infinite loop.
	#endif
	/*
	//testing out frame sync generation for the AD7682 (EMG)
	*pSPORT0_TCLKDIV = 9; //SCLK / 2*(RCLKDIV+1), 5MHz
	*pSPORT0_TFSDIV = 17; //# clock cycles -1 before generating frame sync
	*pSPORT0_TCR2 = 0x000f; // word length = 16
	*pSPORT0_TCR1 = 0x7e03; // 0111 1110 0000 0011
	//setup USB ...
	usb_packet_count = 0; 
	usb_rxbyte = 0; 
	usb_init(); 
	while(usb_rxbyte != 't'){ //t for transmit! 
		service_irqs(); 
		if(usb_rxbyte < 'a' && usb_rxbyte > 'o'){
			*pFIO_FLAG_D = (ss << 12) & 0xf000; 
			ss++; 
			ss &= 0xf; 
		}
	}printf_str("starting reception!\n"); 
	
	radio_set_rx(); //will set CE too.

	//and the transmit serial port. 
	// *pSPORT0_TCR1 = 0; 
	// *pSPORT0_TCLKDIV = 15; // divide by 32 -> 1.03 mhz output rate, 60.6ksps 
		//recall we have a stereo DAC, with left-right interleave - to get 60.6ksps output
		// on the left channel, the clock divisor must be 15.  
	// *pSPORT0_TFSDIV = 0x10; //17 clocks.. 1 clock for FS = 0. needed to make it match serial input. 
	// *pSPORT0_TCR2 = 0x020f; 
	//16 bit word, stereo mode, secondary disabled.
	// *pSPORT0_TCR1 = 0x4603; 
	// *pSPORT0_TCR1 = 0; //turn it off - we are using the radio now, and this consumes cycles.
	//asm("ssync;"); 
	//0100 1110 0000 0011
	//drive on falling edge, early frame sync, active high fs, 
	//data-dependent fs, tfs for every word, internal fs, 
	// msb first, normal compounding, internal clock, enabled! 
	//setup the interrupts... no they are setup in assembly. 
	doBridge(); 
	
	//try the USB in a simpler loop - 
	//just write out the samples. 
	//serial clock = SCLK / 2*(RCLKDIV+1).  p.539 
	*pSPORT1_RCR1 = 0;
	*pSPORT1_RCR2 = 0;
	asm volatile("ssync;"); 
	// core clock = 80Mhz / 4 = 20, good. can sample at exactly 1Msps then.
	*pSPORT1_RCLKDIV = 19; //Determines the SCLK frequency and hence the data bit rate
	*pSPORT1_RFSDIV = 19; //number of clock cycles -1 before generating TFS pulse. 
	*pSPORT1_RCR2 = 0x010f; //16 bit word, secondary channel enabled, no stereo. 
	*pSPORT1_RCR1 = 0x0603; 
	ss = 0; 
	ramp = 0; 
	sav = 0; 
	*/
	/*
	while(0){
		k = 0; 
		while((k & 0x1) == 0){
			k = *pSPORT1_STAT;
		}
		//internal counter advances to next channel on rising edge of _step.
		*FIO_SET = 0x0100; 
		//read in the samples.
		j = *((volatile u16*)pSPORT1_RX); //primary (a), bottom on stage4 & 5.
		asm volatile("nop");
		k = *((volatile u16*)pSPORT1_RX); //secondary, b, top on stage4 & 5.
		asm volatile("nop"); 
		if(ss == 0){
			*FIO_CLEAR = USB_SS; 
			asm volatile("ssync;"); 
			*pSPI_TDBR = (u16)(rEP2INFIFO | 0x2);
		}
		if((ss & 0xf) == 5){
			*pSPI_TDBR = (u16)(j>>8);
			sav = j; 
			ramp++; 
			ramp &= 0x0fff; 
		}
		if((ss & 0xf) == 10){
			*pSPI_TDBR = (u16)(sav);
		}
		ss++; 
		if((ss / 16) >= 32){
			*FIO_SET = USB_SS; 
			asm volatile("ssync;"); 
			wregAS(rEP2INBC,64);   // load EP2BC to arm the EP2-IN transfer & ACKSTAT
			ss = 0; 
		}
		*FIO_CLEAR = 0x0100; 
	}
	*/
	//radio -> USB bridge. (old, i think)
	/*
	ramp = 0; 
	while(1){
		*FIO_SET = 0x0100; 
		//read in two packets - usb payload is 64 bytes, 
		//and can't interleave as they are both on SPI bus!
		while(*pFIO_FLAG_D & SPI_IRQ){
			asm volatile("nop; nop; nop; nop;"); 	
		}
		spi_read_packet((void*)(WFBUF)); 
		while(*pFIO_FLAG_D & SPI_IRQ){
			asm volatile("nop; nop; nop; nop;"); 	
		}
		spi_read_packet((void*)(WFBUF+32));
		wreg(rEPIRQ, bmOUT1DAVIRQ); //essential - see p 57 in prog manual.
		*FIO_CLEAR = USB_SS; 
		asm volatile("ssync;"); 
		*pSPI_TDBR = (u16)(rEP2INFIFO | 0x2);
		spi_delay(); 
		c = (u8*)WFBUF; 
		for(k=0; k<64; k++){
			*pSPI_TDBR = (u16)(*c++); 
			// *pSPI_TDBR = (u16)(ramp++); 
			ramp &= 0xff; 
			spi_delay(); 
		}
		*FIO_SET = USB_SS; 
		asm volatile("ssync;"); 
		wregAS(rEP2INBC,64);   // load EP2BC to arm the EP2-IN transfer & ACKSTAT
		
		*FIO_CLEAR = 0x0100; 
	}
	*/
	//I10HANDLER(); //read it in!
	return 0;
}



