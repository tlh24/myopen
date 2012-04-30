#include "spi.h"
#include "nordic_regs.h"

.align 8
_clearirq_asm: //just write the status register via spi to clear.
	[--sp] = rets;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r6 = NOR_STATUS + 0x20; //write to status register.
	w[p3] = r6;
	call _get_asm;
	r6 = 0x70;
	w[p3] = r6; //clear irq.
	call _get_asm2;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;
	rets = [sp++];
	rts;

.align 8
_waitirq_asm:
	[--sp] = rets;
	r7 = 182; // should take max 360us = 178. min @ 1msps = 160
	[fp - FP_TIMER] = r7;
waitirq_loop:
	r6 = w[p1];
	cc = bittst(r6, 3); //irq pin.
	if !cc jump waitirq_end;
	call _get_asm;
	r6 = 0;
	r7 = [fp - FP_TIMER];
	cc = r6 == r7;
	if cc jump waitirq_end;
	r7 += -1;
	[fp - FP_TIMER] = r7;
	call _get_asm2;
	jump waitirq_loop;
waitirq_end:
	call _get_asm;
	rets = [sp++];
	rts;

.align 8
_clearfifos_asm:
	[--sp] = rets;
	// flush RX fifo (seems to improve reliability)
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r6 = NOR_FLUSH_RX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm2;
	// and flush TX fifo.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_TX;
	w[p3] = r6;
	call _get_asm2;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;
	// return.
	rets = [sp++];
	rts;

.align 8
.global _radio_bidi_asm
_radio_bidi_asm:
	//set the baud.
	p5.l = LO(SPI_BAUD);
	p5.h = HI(SPI_BAUD);
	r0 = 4 (z); //for a core clock of 80Mhz, run it at 10Mhz (rated limit)
	w[p5] = r0; //must be word-sized-write.

	//FP : points to FP_BASE.
	fp.l = LO(FP_BASE);
	fp.h = HI(FP_BASE);
	//P0 : free, though usually: Serial port RX data register.
	p0.l = LO(SPORT0_RX);
	p0.h = HI(SPORT0_RX);
	[FP - FP_SPORT0_RX] = p0;
	//P1 : portF - FIO_FLAG_D (can be used for other stuff too)
	p1.l = LO(FIO_FLAG_D);
	p1.h = HI(FIO_FLAG_D);
	[FP - FP_FIO_FLAG_D] = p1;
	//P2 : read pointer (radio)
	p2.l = LO(WFBUF);
	p2.h = HI(WFBUF);
	//P3 : SPI TDBR
	p3.l = LO(SPI_TDBR);
	p3.h = HI(SPI_TDBR);
	[FP - FP_SPI_TDBR] = p3;
	//P4 : write pointer (sampler)
	p4.l = LO(WFBUF);
	p4.h = HI(WFBUF);

	r0 = 0;
	[FP - FP_QPACKETS] = r0;
	[FP - FP_ECHO] = r0;
	[FP - FP_ADDRESS] = r0;
	[FP - FP_VALUE] = r0;
	r0.l = LO(MATCH);
	r0.h = HI(MATCH);
	[FP - FP_MATCH_BASE] = r0;
	r0.l = LO(MATCH + 32);
	r0.h = HI(MATCH + 32);
	[FP - FP_MATCH_PTR7] = r0;
	r0 = 0;
	[FP - FP_BLINK] = r0;

	r0.l = LO(ENC_LUT);
	r0.h = HI(ENC_LUT);
	[FP - FP_ENC_LUT_BASE] = r0; //addressed with bytes; no align needed.
	r0.l = LO(STATE_LUT);
	r0.h = HI(STATE_LUT);
	r0 = r0 >> 2; //because we use add with shift for 4-byte word alignment.
	[FP - FP_STATE_LUT_BASE] = r0;
	r0.l = 0x0fff;
	r0.h = 0x0fff;
	[FP - FP_0FFF0FFF] = r0;
	r0.l = 16384;
	r0.h = 16384;
	[FP - FP_16384] = r0;
	//setup the pointers now; careful, this is tricky!
	//channel 0.
	r0.l = LO(W1 + 5*4 + 0 + 1); //little-endian, hence +1.
	r0.h = HI(W1 + 5*4 + 0 + 1);
	[FP - FP_TXCHAN0] = r0;
	//channel 32.
	r0.l = LO(W1 + 5*4 + 2 + 1);
	r0.h = HI(W1 + 5*4 + 2 + 1);
	[FP - FP_TXCHAN1] = r0;
	//channel 64.
	r0.l = LO(W1 + 21*4 + 0 + 1); //W1 stride 16.
	r0.h = HI(W1 + 21*4 + 0 + 1);
	[FP - FP_TXCHAN2] = r0;
	//channel 96.
	r0.l = LO(W1 + 21*4 + 2 + 1);
	r0.h = HI(W1 + 21*4 + 2 + 1);
	[FP - FP_TXCHAN3] = r0;

	//make sure we aren't driving anything that we needn't be.
	r0 = SPI_CE | SPI_CSN | STEP | MUXRESET | LED_BLINK;
	w[p1 + (FIO_DIR - FIO_FLAG_D)] = r0;
	r0 = SPI_IRQ;
	w[p1 + (FIO_INEN - FIO_FLAG_D)] = r0;

	//reset the MUX on the Intans.
	r7 = STEP (x);
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; //set STEP
	ssync;
	r7 = MUXRESET (x); //portF pin 7, reset, active low.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	ssync;

	call _init6; //this inits all the loop registers
	// & the memory that they touch.

	//zero threshold exceeded (otherwise may trigger abnormal end-frame packet)
	p5.l = LO(MATCH);
	p5.h = HI(MATCH);
	r0 = 0;
	[p5++] = r0; //1
	[p5++] = r0; //2
	[p5++] = r0; //3
	[p5++] = r0; //4
	[p5++] = r0; //5
	[p5++] = r0; //6
	[p5++] = r0; //7
	[p5++] = r0; //8

	//set up the template-match look up table.
	call _enc_create;

	//enable the watchdog timer.
	// disable while debugging, so we can trap bad events. 
	p5.l = LO(WDOG_CNT);
	p5.h = HI(WDOG_CNT);
	r0.h = 0x000c; //set the timer for 10ms = 8e5 clks
	r0.l = 0x3500; //have to reset every frame
	[p5--] = r0; //by writing anything to WDOG_STAT.
	r0 = 0x0; //generate reset event, enable watchdog.
	w[p5] = r0;
	

	//clear the MUX reset.
	r7 = MUXRESET (x); //portF pin 7, reset, active low.
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	ssync;
	//finally, enable the sports.
	p5.l = LO(SPORT1_RCR1);
	p5.h = HI(SPORT1_RCR1);
	r0.l = 0x0401;
	w[p5] = r0;
	p5.l = LO(SPORT0_RCR1);
	p5.h = HI(SPORT0_RCR1); //enable both simultaneously!
	r0.l = 0x0603;
	w[p5] = r0;

radio_loop:
wait_16pkts:
	call _get_asm;
	r5 = [FP - FP_QPACKETS];
	cc = bittst(r5, 4)
	if !cc jump wait_16pkts;
	//got 8 packets in the queue at this point.
	call _get_asm2;
	r5 = 0;
	[FP - FP_QPACKETS] = r5;
	call _clearfifos_asm; // both include
	call _clearirq_asm; // many _get_asm calls.
	p5 = 16;
	LSETUP(wp_top, wp_bot) lc0 = p5;
	wp_top:
		r7 = SPI_CSN;
		w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
		call _get_asm2;
		r6 = 0xa0;
		w[p3] = r6;
		call _get_asm;
		p5 = 32;
		LSETUP(pb_top, pb_bot) lc1 = p5;
		pb_top:
			r6 = b[p2++];
			w[p3] = r6;
			call _get_asm;
		pb_bot: nop;
		r7 = p2; //the pointer wrap used to be in the loop
		bitclr(r7, 10); //but i trust the proc to keep it aligned.  (fingers crossed)
		p2 = r7;
		call _get_asm2;
		r7 = SPI_CSN | SPI_CE;
		w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
		call _get_asm;
		r7 = 16;
		r6 = lc0;
		cc = r7 == r6; //first iter, don't wait for IRQ. pipeline!
		if cc jump wp_bot ;
		//otherwise, wait for asserted IRQ.
		call _waitirq_asm; //calls _get_asm
		call _clearirq_asm; //calls _get_asm
	wp_bot: nop;
	//there is still one packet in the radio fifo - wait.
	call _waitirq_asm;
	call _clearirq_asm;
	r7 = SPI_CE; //disable the radio.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;

	//put the radio in RX mode now.
	//first clear the config register (put in standby mode)
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_RX;
	w[p3] = r6;
	call _get_asm2;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;

	//now write config register with valid values.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r6 = NOR_CONFIG + 0x20;
	w[p3] = r6;
	call _get_asm2;
	/** enable CRC for RX of critical values **/
	r6 = NOR_EN_CRC | NOR_CRC0 |
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r7 = SPI_CE; //enable the radio
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;

	//now wait for the status pkt.
	call _waitirq_asm;
	//see if we got something (as opposed to timeout)
	r7 = w[p1];
	cc = bittst(r7, 3);
	if cc jump no_rxpacket;
	//oh, goody - we got something. first clear the irq.
	call _clearirq_asm; //many _get_asm calls.
	r7 = SPI_CE; //disable the radio; turn off LNA as soon as possible.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r7 = SPI_CSN ;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = 0x61; //command for reading the fifo.
	w[p3] = r6;
	call _get_asm2;
	p5 = 4;
	LSETUP(rp_top,rp_bot) lc0 = p5;
	rp_top:
		r7 = 0;
		[FP - FP_ADDRESS] = r7; //init the local variables.
		[FP - FP_VALUE] = r7;
		call _get_asm2;
		p5 = 4;
		LSETUP(a32_top,a32_bot) lc1 = p5;
		a32_top:
			w[p3] = r7; //dummy write.
			call _get_asm;
			r7 = w[p3 + (SPI_SHADOW - SPI_TDBR)];
			r6 = 0xff;
			r7 = r7 & r6;
			r6 = [FP - FP_ADDRESS];
			r6 = r6 << 8;
			r6 = r6 + r7;
			[FP - FP_ADDRESS] = r6;
		a32_bot: nop;
		//now get the value..
		call _get_asm2;
		p5 = 4;
		LSETUP(v32_top,v32_bot) lc1 = p5;
		v32_top:
			w[p3] = r7; //dummy write.
			call _get_asm2;
			r7 = w[p3 + (SPI_SHADOW - SPI_TDBR)];
			r6 = 0xff;
			r7 = r7 & r6;
			r6 = [FP - FP_VALUE];
			r6 = r6 << 8;
			r6 = r6 + r7;
			[FP - FP_VALUE] = r6;
		v32_bot: nop;
		call _get_asm2;
		//extract the echo flag.
		r7 = [FP - FP_ADDRESS];
		r6 = r7 >> 28; //shift upper nibble
		p0 = r6;
		p5 = [FP - FP_STATE_LUT_BASE];
		r6 = 0xf;
		r6 = r6 << 28;
		r7 = r7 | r6; //set upper nibble to 0xf
		[FP - FP_ADDRESS] = r7; // we always address 0xff something..
		p5 = (p5 + p0) << 2; //4 byte align
		r7 = [p5];
		[FP - FP_ECHO] = r7;
		call _get_asm2;
		//verify the address.
		r7 = [FP - FP_ADDRESS];
		r6.h = 0xffef;
		r6.l = 0xc003;
		r5 = r7 & r6;
		r6.h = 0xff80; //also accepts 0xff905000 addresses
		r6.l = 0x4000; //see mask above.
		cc = r5 == r6;
		if !cc jump invalid;
			p5 = r7;
			r6 = [FP - FP_VALUE];
			[p5] = r6; //danger danger. 4 byte acces.
		invalid:
/* actually only need 15 bits address here (are addressing 32kBytes of RAM)
but, 16 bit addressing would only slightly increase the throughput --
5 words written per packet as opposed to the present 4.
if we allowed only 8 bit offsets from a start pointer,
could still only cram 5 accesses into one packet.
A much better idea is to put the echo into the upper nibble of the address
(which is always 0xff anyway..and that way we have some confirmation that the
headstage got the message). */
		call _get_asm2;
	rp_bot: nop;
	//close out the RX frame.
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm2;
no_rxpacket:
	//put it back in TX mode.
	r7 = SPI_CE; //clear CE.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	//flush the TX fifo.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;
	r6 = NOR_FLUSH_TX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm2;

	//now write config register with valid values.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_CONFIG + 0x20;
	w[p3] = r6;
	call _get_asm2;
	/** CRC on bulk transmit too - have antenna diversity! **/
	r6 = NOR_MASK_MAX_RT | NOR_EN_CRC |
			NOR_CRC0 | NOR_PWR_UP | NOR_PRIM_TX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm2;

	//reload the watchdog timer -- we are alive!
	p5.h = HI(WDOG_STAT);
	p5.l = LO(WDOG_STAT);
	[p5] = r7; //value doesn't matter.
	call _get_asm;

	//blink. first clear LED.
	r7 = LED_BLINK;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm2;

	r7 = [FP - FP_BLINK];
	r6 = 1 (z);
	r7 = r7 + r6;
	//flash once every 256 packets. 1/256 duty cycle.
	r6 = r7 >> 4;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r6;
	bitclr(r7, 8);
	[FP - FP_BLINK] = r7;
	call _get_asm2;

	jump radio_loop;
