// an assembly version of radio_tst_bidi

//thoughts: filter clobbers almost all registers.
// r0, r1, r2, r3, r5, r6; r7 is left alone. 
// i0, i1, i2; accumulators of course. 
//using i0 .. i1 means that these cannot be used for temp storage.
//still have pointer registers: 
//p0 ... p5.
// goal here: make asm versions of get and sample. 
// leave the core radio control code in C. 
// this means we'll have to save / pop registers on the stack. 
// is the stack pointer even setup? 

#include "spi.h"
#include "nordic_regs.h"

//new schema for the frame pointer - simpler protocol. 
//  (remember: counts down!)
// see memory.h for FP_BASE (0xff904500)
#define FP_CHAN		4  		// 0xff9044fc
#define FP_TXCHAN		8	// 0xff9044f8
#define FP_EXCEEDED	12		// 0xff9044f4
#define FP_QS			16	// 0xff9044f0
#define FP_QPACKETS	20
#define FP_THRESH		24
#define FP_ADDRESS	28
#define FP_VALUE		32
#define FP_RAMP		36
#define STEP 0x0100
#define MUXRESET 0x0080  //active low; must keep it high.
.align 8 //call is a 5-cycle latency if target is aligned.
_get_asm: 
	//reads in the data, filters, thresholds, clobbers most all registers :-)
	//this is always a leaf, no need to save RTS. 
	r7 = STEP (x); //portF pin 8, step.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;//clear before waiting.
	//increment the channel here (best to only do it in one place..)
	r1 = [FP - FP_CHAN]; //hence this variable need start at 31.
	r1 += 1; 
	bitclr(r1, 4); //used to be bit 5
	[FP - FP_CHAN] = r1; 
//rather than using a software wait loop, should enable wakeup and interupts in the 
// SIC_IWR register,and then issue the IDLE instruction to save further power.
// will have to test this, as we are running in a SW loop, not interrupt driven processing.

wait_samples:
	//cli r0; 
	//idle; //wait for wake-up event.
	//sti r0;
	r3 = w[p0 + (SPORT1_STAT - SPORT1_RX)]; 
	cc =! bittst(r3, 0); 
	if cc jump wait_samples (bp); 
	//toggle the MUX step function. (and LED as a performance metric)
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 

	//read in the samples.  
	r0 = w[p0] (z); 
	r1 = w[p0] (z);
	r0 <<= 16; 
	r2 = r0 + r1; //the mean should be about 2^11, 0x2000
	//apply one-pole highpass + gain. 
	//r5.l = 32000; 
	//r5.h = -16384; // -1 base 14
	//r6.l = 16384
	//r6.h = 800
.align 8
	r5 = [i0++] || r1 = [i1++]; //r5 = gain,-1. r1 = integrated mean
	a0 = r2.l * r5.l, a1 = r2.h * r5.l; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r6 = [i0++]; //r6 = 1, k
	r0.l = (a0 += r1.l * r5.h), r0.h = (a1 += r1.h * r5.h) (s2rnd); 
	a0 = r1.l * r6.l , a1 = r1.h * r6.l; //integrator
	r2.l = (a0 += r0.l * r6.h), r2.h = (a1 += r0.h * r6.h) (s2rnd); 
	[i2++] = r2; //save the mean
	/*
	directform 1 biquad; form II saturates 1.15 format.
	operate on the two samples in parallel (both in 1 32bit reg). 
	r0	x(n)				-- the input from the serial bus. 
	r1 	x(n-1) (yn-1)	-- ping-pong the delayed registers. 
	r2	x(n-2) (yn-2)	-- do this so save read cycles. 
	r3	y(n-1) (xn-1)
	r4	y(n-2) (xn-2)
	r5	b0  				-- (low  high)
	r6	b1
	r7 a0
	r5 a1
	
	i0 reads the coeficients into the registers; 
		it loops every 32 bytes (16 coef, 4 biquads)
	i1 reads the delays. 
		it loops every 640 bytes = 10 delays * 4 bytes/delay * 16 stereo channels.
		only increments. 
	i2 writes the delays, loops every 640 bytes. 
		also only increments. 
		if i1 and i2 are dereferenced in the same cycle, the processor will stall -- 
		each of the 1k SRAM memory banks has only one port. 
	
	format of delays in memory: 
	[x1(n-1) , 
	 x1(n-2) ,  
	 x2(n-1) aka y1(n-1) , 
	 x2(n-2) aka y1(n-2) , 
	 x3(n-1) aka y2(n-1) , 
	 x3(n-2) aka y2(n-2) , 
	 x4(n-1) aka y3(n-1) , 
	 x4(n-2) aka y3(n-2) , 
	 y4(n-1) , 
	 y4(n-2) ] 
	 --that's 10 delays, 4 bytes each. 
	*/
	//[--sp] = r0;
.align 8
	r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0.0
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || r2 = [i1++] ; //r6 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.h || r7 = [i0++] || r3 = [i1++]; //r7 = a0.0; r3 = y1(n-1) / x2(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r4 = [i1++] ; //r5 = a0.1; r4 = y1(n-2) / x2(n-1)
	a0 += r3.l * r7.l, a1 += r3.h * r7.h || [i2++] = r0 ; // save x1(n-1)
	r0.l = (a0 += r4.l * r5.l), r0.h = (a1 += r4.h * r5.h) (s2rnd) || [i2++] = r1;//r0 = y1(n); save x1(n-2)
	
	r5 = [i0++] || [i2++] = r0; //r5 b1.0; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r3; //r6 = b1.1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r6.l, a1 += r3.h * r6.h || r7 = [i0++] || r1 = [i1++]; //r7 = a1.0; r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r2 = [i1++]; //r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r7.l, a1 += r1.h * r7.h || r5 = [i0++]; // r5 = a1.1
	r0.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd); // r0 = y2(n)
	
	r5 = [i0++] || [i2++] = r0; // r5 = b2.0; save y2(n-1) / x3(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r1; //r6 = b2.1; save y2(n-2) / x3(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.h || r7 = [i0++] || r3 = [i1++]; //r7 = a2.0; r3 = y3(n-1) / x4(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r4 = [i1++]; //r4 = y3(n-2) / x4(n-2)
	a0 += r3.l * r7.l, a1 += r3.h * r7.h || r5 = [i0++]; //r5 = a2.1
	r0.l = (a0 += r4.l * r5.l), r0.h = (a1 += r4.h * r5.h) (s2rnd); //r0 = y3(n)
	//[--sp] = r0; 
	//nop;
	r5 = [i0++] || [i2++] = r0; // r5 = b3.0; save y3(n-1) / x4(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r3; //r6 = b3.1; save y3(n-2) / x4(n-2)
	a0 += r3.l * r6.l, a1 += r3.h * r6.h || r7 = [i0++] || r1 = [i1++]; //r7 = a3.0; r1 = y4(n-1) 
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r2 = [i1++]; // r2 = y4(n-2)
	a0 += r1.l * r7.l, a1 += r1.h * r7.h || r5 = [i0++]; // r5 = a3.1
	r0.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd); // r0 = y4(n)
	
	[i2++] = r0; //save y4(n-1)
	[i2++] = r1; //save y4(n-2) ; normally this would be pipelined.
	
	//apply some extra gain here.
	r7.l = 31000;
	r7.h = 32000;
	a0 = r0.l * r7.l, a1 = r0.h * r7.l;
	r6.l = (a0 += r0.l * r7.h), r6.h = (a1 += r0.h * r7.h) (s2rnd); 
	r0 = r6;
	//r0 = [sp++];
	//there are two possible codepaths here: 
	// 1 sample & write to buffer
	// 2 run the radio (via a return)
	//the two codepaths alternate by which channel, so as to effect downsampling. 
	r1 = [FP - FP_CHAN]; 
//	cc = bittst(r1, 4); //downsample by 2.
//	if !cc jump downsample (bp); //the radio control routines are shorter than below.
//		RTS; //just return!
downsample:
	//now determine if it crosses threshold. 
	r7 = [FP - FP_THRESH]; 
	a0 = 0; //the documentation says that the accumulator extension reg must be cleared before VIT_MAX
	r4 = r0 >>> 1 (v); // vit_max works on signed numbers ... but imperfectly; this is a workaround.
	r6 = pack(r4.l, r7.l); //need to pack the operands (order: high, low)
	r5 = pack(r4.h, r7.l); //see doc for vit_max
	r7 = vit_max(r6, r5) (asl); 
	r6 = a0; 
	//r7 = 3; 
	//r6 = r6 & r7; should not be needed - see a0 = 0 above.
	r5 = r1 << 1; //mply by 2. 
	r2 = [FP - FP_EXCEEDED]; 
	r6 <<= r5; //shift to bit position dep on channel.
	r2 = r2 | r6;
	//check to see if it should be written to queue.
	r3 = [FP - FP_TXCHAN]; 
	r4 = [FP - FP_QS];
	r5 = [FP - FP_QPACKETS];
	r7 = 27; 
	/*  r0 = sample
		r1 = channel
		r2 = threshold cross bits
		r3 = transmit channel
		r4 = packet byte count (qs)
		r5 = number of queued packets
		r6 = temp
		r7 = temp */
	//r2.l = 0x4321; //output should be: 0x21436587
	//r2.h = 0x8765; //this is a little-endian proc, SPI is MSB first.
	cc = r1 == r3
	if !cc jump end_txchan_lo (bp); 
		r3.l = r0.l >>> 8; //arithmetic shift preserves sign.
		r4 += 1; 
		b[p4++] = r3;
		cc = r4 == r7; 
		if !cc jump end_txchan_hi (bp); //we know we're on a low channel
			r6 = r1 << 3; 
			r6 = r6 + r5; 
			b[p4++] = r6; //write out the channel number + qs
			[p4++] = r2; //loaded above.
			r2 = 0; //written out, so clear.
			r4 = 0; //reset the packet / queue state.
			r5 += 1; 
end_txchan_lo:
	bitset(r1, 4); //remeber to clear this for downsampling! 
	cc = r1 == r3; 
	if !cc jump end_txchan_hi (bp); 
		r3.l = r0.h >>> 8; //arithmetic shift preserves sign.
		//r3 = [FP-FP_RAMP];
		r4 += 1; 
		b[p4++] = r3;
		//r3 += 1; 
		//r6 = 0xff; 
		//r3 = r3 & r6; 
		//[FP-FP_RAMP] = r3; 
		cc = r4 == r7; 
		if !cc jump end_txchan_hi (bp);
			r6 = r1 << 3; 
			r6 = r6 + r5; 
			b[p4++] = r6; //write out the channel number + qs
			[p4++] = r2; //loaded above.
			r2 = 0; //written out, so clear.
			r4 = 0; //reset the packet / queue state.
			r5 += 1;
end_txchan_hi: 
	r7 = p4; //make p4 loop.
	bitclr(r7, 9); 
	p4 = r7; 
	[FP - FP_EXCEEDED] = r2;
	[FP - FP_QS] = r4; 
	[FP - FP_QPACKETS] = r5;
	RTS ; //used to be jump
	//jump _get_asm; //loop! (don't return -- codepath too long)
	

_clearirq_asm: //just write the status register via spi to clear.
	[--sp] = rets; 
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm;
	r6 = NOR_STATUS + 0x20; //write to status register.
	w[p3] = r6; 
	call _get_asm;
	r6 = 0x70; 
	w[p3] = r6; //clear irq. 
	call _get_asm;
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	rets = [sp++];
	rts; 
	
_waitirq_asm:
	[--sp] = rets; 
	r7 = 250; 
waitirq_loop:
	r6 = w[p1]; 
	cc = bittst(r6, 3); 
	if !cc jump waitirq_end; 
	r6 = 0; 
	cc = r6 == r7;
	if cc jump waitirq_end; 
	r7 += -1; 
	[--sp] = r7; 
	call _get_asm; 
	r7 = [sp++]; 
	jump waitirq_loop; 
waitirq_end:
	call _get_asm; 
	rets = [sp++]; 
	rts;
	
.global _radio_bidi_asm
_radio_bidi_asm:
	//enable SPORT1 rx wake-up events.
	p0.l = LO(SIC_IWR); 
	p0.h = HI(SIC_IWR); 
	r0 = 0;
	//bitset(r0,10); 
	bitset(r0,0); //enable PLL wakeup interrupt
	[p0] = r0;
	p0.l = LO(PLL_CTL);
	p0.h = HI(PLL_CTL);
	r0.l = 0x0a00; //80Mhz
	w[p0] = r0; 
	ssync; 
	
	cli r0;
 	idle;	// wait for Loop_count expired wake up
	sti r0;
	
	p0.l = LO(SPI_BAUD); 
	p0.h = HI(SPI_BAUD); 
	r0 = 2 (z); //for a core clock of 40Mhz, run it at 10Mhz (rated limit)
	w[p0] = r0; //must be word-sized-write.
	//disable associated interupts.
	/*p0.l = LO(SIC_IMASK); 
	p0.h = HI(SIC_IMASK); 
	r0 = 0; 
	[p0] = r0; */
	//P0 : Serial port RX data register. 
	p0.l = LO(SPORT1_RX); 
	p0.h = HI(SPORT1_RX); 
	//P1 : portF - FIO_FLAG_D
	p1.l = LO(FIO_FLAG_D); 
	p1.h = HI(FIO_FLAG_D);
	//P2 : read pointer (radio)
	p2.l = LO(WFBUF); 
	p2.h = HI(WFBUF); 
	//P3 : SPI TDBR
	p3.l = LO(SPI_TDBR); 
	p3.h = HI(SPI_TDBR);
	//P4 : write pointer (sampler)
	p4.l = LO(WFBUF); 
	p4.h = HI(WFBUF); 
	//FP : points to FP_BASE. 
	fp.l = LO(FP_BASE); 
	fp.h = HI(FP_BASE);

	r0 = 15(z); //because we pre-increment.
	[FP - FP_CHAN] = r0; 
	r0 = 16; 
	[FP - FP_TXCHAN] = r0; 
	r0 = 0; 
	[FP - FP_EXCEEDED] = r0;
	[FP - FP_QS] = r0;
	[FP - FP_QPACKETS] = r0;
	r0.l = 0xf000 ; 
	r0.h = 16000 ; 
	[FP - FP_THRESH] = r0; 
	
	//make sure we aren't driving anything that we needn't be. 
	r0 = SPI_CE | SPI_CSN | STEP | MUXRESET; 
	w[p1 + (FIO_DIR - FIO_FLAG_D)] = r0; 
	r0 = SPI_IRQ; 
	w[p1 + (FIO_INEN - FIO_FLAG_D)] = r0;
	
	//circular buffers for filtering. 
	// --coefficients. 
	i0.l = LO(A1); 
	i0.h = HI(A1);
	l0 = 1152; //have: 32 channels, 4 biquads, 4 coef each + 2 coefs at beginning
	m0 = 0; //each coef is 2 bytes = 1152 bytes. 
	b0 = i0; //or: 16 chan, 18 4-bytes reads.  
	
	// --this is for reading delays.
	i1.l = LO(W1); 
	i1.h = HI(W1);
	l1 = 704; //bytes: 11 32 bit words / channel by 16 channels --> 44 * 16
	m1 = 0; //not used anymore
	b1 = i1;  //base address of the delay taps. 
	
	// --this is for writing delays. 
	i2 = i1; 
	l2 = l1; 
	m2 = 0;
	b2 = b1; 

// butterworth (minium ripple) filters ! (look better in practice, less ringing)
/*
lowpass, b1 a1 b2 a2
        7892       15785
        5293       -7479
        7892       15782
        3824        -854
        
highpass, b1 a1 b2 a2
       15342      -30687
       31397      -15172
       15342      -30681
       29836      -13603
*/
	p5 = 16 (x); 
	lsetup(lt_top,lt_bot) lc0 = p5;  
lt_top:
	//gain and integrator
	r0.l = 32000; 
	r0.h = -16384; 
	[i0++] = r0; 
	r0.l = 16384; 
	r0.h = 800; 
	[i0++] = r0; 
	//lowpass biquad.
	r0 = 7892 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 15785 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 5293 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -7479 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15342 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -30687 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 31397 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -15172 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	
	//lowpass biquad.
	r0 = 7892 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 15782 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 3824 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -854 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15342 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -30681 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 29836 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -13603 (x); w[i0++] = r0.l; w[i0++] = r0.l;
lt_bot: nop; 

radio_loop: 
wait_8pkts:
	call _get_asm; 
	r5 = [FP - FP_QPACKETS]; 
	cc = bittst(r5, 3)
	if !cc jump wait_8pkts;
	//got 8 packets in the queue at this point. 
	call _get_asm; 
	r5 = 0; 
	[FP - FP_QPACKETS] = r5; 
	p5 = 8; 
	call _clearirq_asm; //includes many _get_asm calls.
	LSETUP(wp_top, wp_bot) lc0 = p5; 
	wp_top:
		r7 = SPI_CSN;
		w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
		call _get_asm; 
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
		r7 = p2; //the poniter wrap used to be in the loop
		bitclr(r7, 9); //but i trust the proc to keep it aligned.  (fingers crossed)
		p2 = r7; 
		r7 = SPI_CSN | SPI_CE; 
		w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
		call _get_asm; 
		r7 = 8;
		r6 = lc0;
		cc = r7 == r6; //first iter, don't wait for IRQ. pipeline!
		if cc jump wp_bot ; 
		//otherwise, wait for asserted IRQ.
		call _waitirq_asm; 
		call _clearirq_asm;
	wp_bot: nop; 
	//there is still one packet in the radio fifo - wait.
	call _waitirq_asm; 
	call _clearirq_asm; 
	r7 = SPI_CE; //disable the radio.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	
	//put the radio in RX mode now.
	//first clear the config register (put in standby mode)
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r6 = NOR_CONFIG + 0x20; 
	w[p3] = r6; 
	call _get_asm; 
	r6 = 0; 
	w[p3] = r6; 
	call _get_asm; 
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	
	//now write config register with valid values.
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r6 = NOR_CONFIG + 0x20; 
	w[p3] = r6; 
	call _get_asm; 
	/** enable CRC for RX of critical values **/
	r6 = NOR_EN_CRC | NOR_CRC0 | 
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX; 
	w[p3] = r6; 
	call _get_asm; 
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
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
	call _clearirq_asm; 
	r7 = SPI_CE; //enable the radio
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r7 = SPI_CSN ; //turn off the lna as soon as possible. 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r6 = 0x61; //command for reading the fifo. 
	w[p3] = r6; 
	call _get_asm; 
	p5 = 4; 
	LSETUP(rp_top,rp_bot) lc0 = p5; 
	rp_top:
		r7 = 0; 
		[FP - FP_ADDRESS] = r7; //init the local variables.
		[FP - FP_VALUE] = r7; 
		call _get_asm; 
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
		call _get_asm; 
		p5 = 4; 
		LSETUP(v32_top,v32_bot) lc1 = p5; 
		v32_top:
			w[p3] = r7; //dummy write. 
			call _get_asm; 
			r7 = w[p3 + (SPI_SHADOW - SPI_TDBR)]; 
			r6 = 0xff; 
			r7 = r7 & r6; 
			r6 = [FP - FP_VALUE]; 
			r6 = r6 << 8; 
			r6 = r6 + r7; 
			[FP - FP_VALUE] = r6; 
		v32_bot: nop; 
		call _get_asm; 
		//verify the address. 
		r7 = [FP - FP_ADDRESS]; 
		r6.h = 0xffff; 
		r6.l = 0x4003; 
		r5 = r7 & r6; 
		r6.h = 0xff90; 
		r6.l = 0x4000;
		cc = r5 == r6; 
		if !cc jump invalid; 
			p5 = r7; 
			r6 = [FP - FP_VALUE]; 
			[p5] = r6; //danger danger.
		invalid:
		call _get_asm; 
	rp_bot: nop; 
	//close out the RX frame.
	r7 = SPI_CSN; //enable the radio
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
no_rxpacket:
	//put it back in TX mode.
	r7 = SPI_CE; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	//clear the config register (put in standby mode)
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r6 = NOR_CONFIG + 0x20; 
	w[p3] = r6; 
	call _get_asm; 
	r6 = 0; 
	w[p3] = r6; 
	call _get_asm; 
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	
	//now write config register with valid values.
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	r6 = NOR_CONFIG + 0x20; 
	w[p3] = r6; 
	call _get_asm; 
	/** no CRC on bulk transmit -- bit errors matter less.**/
	r6 = NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_TX; 
	w[p3] = r6; 
	call _get_asm; 
	r7 = SPI_CSN; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	call _get_asm; 
	
	jump radio_loop; 
