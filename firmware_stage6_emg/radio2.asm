// want to make an assembly version of 
//radio_tx_test - plus filtering! 

//thoughts: filter clobbers almost all registers.
// r0, r1, r2, r3, r5, r6; r7 is left alone. 
// i0, i1, i2; accumulators of course. 
//using i0 .. i1 means that these cannot be used for temp storage.
//still have pointer registers: 
//p0 ... p5.
//may want to use these for thresholding
//or AGC?  maybe work the AGC into the filtering / taps structure?
//also can work from offsets of the pointer registers, 
// e.g. P2 = FP + (P4 << 0x1)
// R0 = W[P2 + -0x20]
// P2 += -0x2
// and can work with the fact that some mmapped registers are close
// to eachother. 
// thing is, other than working the filtering in there - 
// not completely sure how much I can improve on gcc -O2
// best thing would be to re-organize the control flow - 
// make it structurally simpler - but how? 
// maybe some vector operations?
// e.g. awesome instructions like vit_max ! 

//new schema for the frame pointer - simpler protocol. (remember: counts down!)
#define FP_CHAN		4
#define FP_EXCEEDED	8
#define FP_TXCHAN	12
#define FP_QS		16
#define FP_QPACKETS	20
#define FP_RS		24
#define	FP_RPACKETS	28
#define FP_TS	32

#include "../common/spi.h"
#include "../common/nordic_regs.h"
.global _radio_tst_asm
_radio_tst_asm:
	//P0 : Serial port RX data register. 
	p0.l = LO(SPORT1_RX); 
	p0.h = HI(SPORT1_RX); 
	//P1 : portF - FIO_FLAG_D
	p1.l = LO(FIO_FLAG_D); 
	p1.h = HI(FIO_FLAG_D);
	//P2 : read pointer.
	p2.l = LO(WFBUF); 
	p2.h = HI(WFBUF); 
	//P3 : write pointer.
	p3.l = LO(WFBUF); 
	p3.h = HI(WFBUF); 
	//P4 : SPT TDBR
	p4.l = LO(SPI_TDBR); 
	p4.h = HI(SPI_TDBR); 
	//FP : points to FP_BASE. 
	fp.l = LO(FP_BASE); 
	fp.h = HI(FP_BASE);

	r0 = 16; 
	[FP - FP_TXCHAN] = r0; 
	r0 = 0; 
	[FP - FP_CHAN] = r0; 
	[FP - FP_EXCEEDED] = r0;
	[FP - FP_QS] = r0;
	[FP - FP_QPACKETS] = r0;
	[FP - FP_RS] = r0;
	[FP - FP_RPACKETS] = r0; 
	[FP - FP_TS] = r0; 
	
	//circular buffers for filtering. 
	// --coefficients. 
	i0.l = LO(A1); 
	i0.h = HI(A1); 
	l0 = 32; //have: 4 biquads, 4 coef each, each coef is 2 bytes = 32 bytes. 
	m0 = 0; 
	b0 = i0; 
	
	// --this is for reading delays.
	i1.l = LO(W1); 
	i1.h = HI(W1);
	l1 = 640; //bytes: 10 32 bit words / channel by 16 channels --> 40 * 16
	m1 = 0; //not used anymore
	b1 = i1;  //base address of the delay taps. 
	
	// --this is for writing delays. 
	i2 = i1; 
	l2 = l1; 
	m2 = 0; // not used anymore.
	b2 = b1; 
	
	//this is for reading thresholds.
	i3.l = LO(THRESHOLDS); 
	i3.h = HI(THRESHOLDS); 
	l3 = 64; //32 channels, each 2 bytes.
	b3 = i3; 

	//load up the coeficients. 
/* -- elliptic (Cauer, maximum cutoff speed) filters !
	//lowpass biquad.
	r0 = 2484 (x); w[i0++] = r0.l;
	r0 = 1381 (x); w[i0++] = r0.l; 
	r0 = 22836 (x); w[i0++] = r0.l; 
	r0 = -13298 (x); w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15397 (x); w[i0++] = r0.l;
	r0 = -30794 (x); w[i0++] = r0.l; 
	r0 = 30862 (x); w[i0++] = r0.l; 
	r0 = -14584 (x); w[i0++] = r0.l; 
	
	//lowpass biquad.
	r0 = 2484 (x); w[i0++] = r0.l;
	r0 = 4065 (x); w[i0++] = r0.l; 
	r0 = 23236 (x); w[i0++] = r0.l; 
	r0 = -9070 (x); w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15397 (x); w[i0++] = r0.l;
	r0 = -30794 (x); w[i0++] = r0.l; 
	r0 = 32470 (x); w[i0++] = r0.l; 
	r0 = -16125 (x); w[i0++] = r0.l; */
// butterworth (minium ripple) filters ! (look better in practice)
	//lowpass biquad.
	r0 = 2561 (x); w[i0++] = r0.l;
	r0 = 5122 (x); w[i0++] = r0.l; 
	r0 = 20676 (x); w[i0++] = r0.l; 
	r0 = -10069 (x); w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15855 (x); w[i0++] = r0.l;
	r0 = -31710 (x); w[i0++] = r0.l; 
	r0 = 32109 (x); w[i0++] = r0.l; 
	r0 = -15766 (x); w[i0++] = r0.l; 
	
	//lowpass biquad.
	r0 = 2561 (x); w[i0++] = r0.l;
	r0 = 5121 (x); w[i0++] = r0.l; 
	r0 = 16248 (x); w[i0++] = r0.l; 
	r0 = -4404 (x); w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15855 (x); w[i0++] = r0.l;
	r0 = -31710 (x); w[i0++] = r0.l; 
	r0 = 31275 (x); w[i0++] = r0.l; 
	r0 = -14930 (x); w[i0++] = r0.l;
	
wait_samples:
	r3 = w[p0 + (SPORT1_STAT - SPORT1_RX)]; 
	cc =! bittst(r3, 0x0); 
	if cc jump wait_samples (bp); 
	//toggle the MUX step function. (and LED as a performance metric)
	r3 = 0x0100 ; 
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r3; 
	/*toggle the MUX channels. (no longer needed)
	r0 = [fp - FP_CHAN]; 
	r1 = r0; 
	r1 += 1; 
	r1 = r0 ^ r1; 
	r1 <<= 12; //don't have to mask - extra bits will shift off. 
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r1; */
	//read in the samples.  
	r0 = w[p0] (z); 
	r0 <<= 16; 
	r1 = w[p0] (z);
	r0 = r0 + r1;
	//debug!
	/* r0 = 0; 
	r1 = [FP - FP_TS]; 
	r1 += 1; 
	[FP - FP_TS] = r1; 
	r0 = 0; 
	r2 = 0x1fe0 (z); 
	r1 = r1 & r2; 
	cc = r1 == r2; 
	if !cc jump no_impulse (bp);
	nop; 
	r0.l = 0x0fff; 
	r0.h = 0x0fff; 
no_impulse:*/
	/*
	directform 1 biquad, form II saturates 1.15 format.
	operate on the two samples in parallel (both in 1 32bit reg). 
	r0	x(n)				-- the input from the serial bus. 
	r1 	x(n-1) (yn-1)	-- ping-pong the delayed registers. 
	r2	x(n-2) (yn-2)	-- do this so save read cycles. 
	r3	y(n-1) (xn-1)
	r4	y(n-2) (xn-2)
	r5	b0 b1 			-- (low  high)
	r6	a0 a1
	
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

.align 8
	r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0
	a0  = r0.l * r5.l, a1  = r0.h * r5.l || r6 = [i0++] ; //r6 = a0; save x1(n-1)
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r2 = [i1++] ; //r2 = x1(n-2)
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r3 = [i1++] ; //r3 = y1(n-1) / x2(n-1)
	a0 += r3.l * r6.l, a1 += r3.h * r6.l || r4 = [i1++] || [i2++] = r0; //r4 = y1(n-2) / x2(n-1)
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd) || [i2++] = r1;//r0 = y1(n); save x1(n-2)
	
	r5 = [i0++] || [i2++] = r0; //r5 b1; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; //r6 = a1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; //r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; //r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.l ; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); // r0 = y2(n)
	
	r5 = [i0++] || [i2++] = r0; // r5 = b2; save y2(n-1) / x3(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.l || r6 = [i0++] || [i2++] = r1; // r6 = a3; save y2(n-2) / x3(n-2)
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r3 = [i1++]; //r3 = y3(n-1) / x4(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r4 = [i1++]; //r4 = y3(n-2) / x4(n-2)
	a0 += r3.l * r6.l, a1 += r3.h * r6.l ; 
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd); //r0 = y3(n)
	
	r5 = [i0++] || [i2++] = r0; // r5 = b4; save y3(n-1) / x4(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; //r6 = a4; save y3(n-2) / x4(n-2)
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; // r1 = y4(n-1) 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; // r2 = y4(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.l ; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); // r0 = y4(n)
	
	[i2++] = r0; //save y4(n-1)
	[i2++] = r1; //save y4(n-2) ; normally this would be pipelined.
	
	//r0 = the two new samples.
	//r0 = r7; //debug!
	//get the channel.
	r1 = [FP - FP_CHAN]; 
	r6 = [FP - FP_QPACKETS]; 
	cc = bittst(r1, 4); //downsample by 2.
	if cc jump pre_radio; 
	//then first check to see if it crosses threshold.
	//get the threshold.
	r2 = [i3++]; //gets two at the same time.
	r3 = abs r0 (v); //vector absolute value
	r4 = pack(r2.l, r3.l); //need to pack the operands -
	r5 = pack(r2.h, r3.h); //check doc for vit_max.
	r3 = vit_max(r4, r5) (asl); //saves result in a0
	r2 = a0; 
	r3 = 3; 
	r2 = r2 & r3;
	r3 = r1 << 1; //mply by 2.
	r4 = [FP - FP_EXCEEDED];
	r2 <<= r3; //shift to the correct bit position
	r5 = [FP - FP_QS];
	r4 = r2 | r4; 
	//now check to see if we should write it to the queue. 
	r2 = [FP - FP_TXCHAN]; 
	r7 = 27; 
	/* r0 = sample
		r1 = channel
		r2 = transmit channel.
		r3 = temp
		r4 = threshold cross
		r5 = packet byte count (qs)
		r6 = number of queued packets
		r7 = temp */
	r4.l = 0x4321; //output should be: 0x21436587
	r4.h = 0x8765; //this is a little-endian proc, SPI is MSB first.
	cc = r1 == r2
	if !cc jump end_txchan_lo (bp); 
		r3.l = r0.l >>> 8; //arithmetic shift preserves sign.
		r5 += 1; 
		b[p3++] = r3;
		cc = r5 == r7; 
		if !cc jump end_txchan_lo (bp);
			b[p3++] = r1; //write out the channel number.no way around this - we need to know!
			[p3++] = r4; //loaded above.
			r4 = 0; //written out, so clear.
			r5 = 0; //reset the packet / queue state.
			r6 += 1; 
end_txchan_lo:
	bitset(r1, 4); //remeber to clear this for downsampling! 
	cc = r1 == r2; 
	if !cc jump end_txchan_hi (bp); 
		r3.l = r0.h >>> 8; //arithmetic shift preserves sign.
		r5 += 1; 
		b[p3++] = r3;
		cc = r5 == r7; 
		if !cc jump end_txchan_hi (bp); 
			b[p3++] = r1;
			[p3++] = r4; //loaded above.
			r4 = 0; //written out, so clear.
			r5 = 0; //reset the packet / queue state.
			r6 += 1;
end_txchan_hi:
	bitclr(r1,4); //should be zero - see bittst above. 
	[FP - FP_EXCEEDED] = r4;
	[FP - FP_QS] = r5; 
	r3 = p3; 
	bitclr(r3, 9); //clear bit 9, make it wrap.
	p3 = r3; 
pre_radio:
	r7 = [FP - FP_RPACKETS]; 
	r5 = [FP - FP_RS];
	r3 = 8; 
	cc = r6 == r3; 
	if !cc jump do_radio (bp); //start a new radio burst.
		r6 = 0; // qpackets.
		r7 = 8; // rpackets.
		r5 = 0; // rstate.
		//increment the cont tx channel every burst.
		//r2 += 1; 
		//bitclr(r2, 5); 
		//[FP - FP_TXCHAN] = r2; 
do_radio:
	[FP - FP_QPACKETS] = r6; 
	cc = r7 < 0;
	if cc jump no_packets; //leave this unpredicted - codepath below is long!
	cc = r5 == 0; 
	if cc jump rs_eq_0; 
	cc = r5 == 1; 
	if cc jump rs_eq_1; 
	cc = r5 == 2; 
	if cc jump rs_eq_2; 
	cc = r5 == 3; 
	if cc jump rs_eq_3; 
	r3 = 36; 
	cc = r5 < r3;
	if cc jump rs_lt_36; 
	//otherwise, packet has been loaded, wait for flag unless this is the 
	//first packet. 
	r3.l = SPI_CSN | SPI_CE;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r3; 
	cc = bittst(r7, 3); 
	if cc jump start_another_packet; 
	r3.l = w[p1]; 
	cc = bittst(r3, 3); //see if the nRF_IRQ is still high. 
	if cc jump done_radio (bp); 
start_another_packet:
		r5 = 0; 
		r7 += -1; 
		jump done_radio; 
	
rs_eq_0:
	r3.l = SPI_CSN; 
	r4.l = NOR_STATUS + 0x20; //0x27
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r3;
	w[p4] = r4.l; 
	r5 += 1; 
	jump done_radio; 
rs_eq_1:
	r4.l = 0x70; 
	w[p4] = r4.l; 
	r5 += 1; 
	cc = r7 == 0; 
	if !cc jump done_radio (bp); 
	r5 += 63; //skip to IRQ reset, cleared the present IRQ. 
	jump done_radio; 
rs_eq_2:
	r3.l = SPI_CSN; 
	r5 += 1; 
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r3; 
	jump done_radio; 
rs_eq_3:
	r3.l = SPI_CSN; 
	r4.l = 0xa0; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r3;
	w[p4] = r4.l; 
	r5 += 1; 
	jump done_radio; 
rs_lt_36:
	//read out of the buffer.
	r4 = b[p2++] (z); 
	w[p4] = r4; 
	r3 = p2; 
	bitclr(r3, 9); //make the ptr wrap @ 511
	p2 = r3; 
	r5 += 1; 
	jump done_radio; 
no_packets:
	cc = bittst(r5, 8); 
	if cc jump clear_ce; 
	r5 += 1; 
	jump done_radio; 
clear_ce:
	r3 = SPI_CE; 
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r3; 
done_radio:
	[FP - FP_RS] = r5; 
	[FP - FP_RPACKETS] = r7; 
	r1 += 1; 
	bitclr(r1, 5); //max out at 0x1f -- 31. (recall we read 2 samples at once)
	[FP - FP_CHAN] = r1; 
	r3 = 0x0100; 
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r3; 
	jump wait_samples; 

	
	