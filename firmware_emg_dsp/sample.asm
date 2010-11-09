#include <defBF537.h>
#include "defBF537_ext.h"
#include "memory.h"

.global _I11HANDLER

_I11HANDLER:          // IVG 11 Handler
	//serial port reception. note that all 4 samples - primary and secondary 
	// on both sports will be captured at the same time. 
	// we only need to enable interupts on one sport, though. 
	[--sp] = (r7:0, p5:4); 
	[--sp] = astat ; 
	[--sp] = lc0 ;
	[--sp] = rets; //needto save since we issue CALLs.
	
	//i2 (and associated) is shared between LMS and here - 
	//copy the values from i1 (and associated) before using it
	i2 = i1; 
	b2 = b1; 
	l2 = l1; //after these operations, 4 cycles are required before doing anything with i2
	i0 = b0; //not strictly necessary.
	p4.h = HI(SPORT0_RX); 
	p4.l = LO(SPORT0_RX); 
	p5.h = HI(F_P5); 
	p5.l = LO(F_P5); 
	r1 = [p4];  //channel. 1 (in this block)
	r1 = r1 << 3; 
	r2 = [p4]; //need to read these with full 32 bit word as the serial word is 20 bits. 
	r2 = r2 << 3; //we are using a 13-bit ADC. 
	r0 = pack(r1.l, r2.l); 
	[--sp] = r0; //save for raw output. 
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
	mnop || r5 = [i0++] || r1 = [i1++]; 
	a0 = r0.l * r5.l , a1 = r0.h * r5.l || r6 = [i0++] ||  [i2++] = r0; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r2 = [i1++] ; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r3 = [i1++] ; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l || r4 = [i1++] ;
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd) || [i2++] = r1;

	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r1; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r3 = [i1++]; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r4 = [i1++]; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l; 
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd); 
	
	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	[i2++] = r0; //save the delays. 
	[i2++] = r1; //normally this would be pipelined.
	[--sp] = r0; //save on the stack for later (LMS, ethernet). 
	//grab the next two samples. 
	p4.l = LO(SPORT1_RX); 
	r1 = [p4];  //channel. 1 (in this block)
	r1 = r1 << 3; 
	r2 = [p4]; //need to read these with full 32 bit word as the serial word is 20 bits. 
	r2 = r2 << 3; //we are using a 13-bit ADC. 
	r0 = pack(r1.l, r2.l); 
	[--sp] = r0; 
	
.align 8
	mnop || r5 = [i0++] || r1 = [i1++]; 
	a0 = r0.l * r5.l , a1 = r0.h * r5.l || r6 = [i0++] ||  [i2++] = r0; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r2 = [i1++] ; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r3 = [i1++] ; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l || r4 = [i1++] ;
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd) || [i2++] = r1;
	
	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r1; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r3 = [i1++]; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r4 = [i1++]; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l; 
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd); 
	
	mnop || r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	[i2++] = r0; //save the delays. 
	[i2++] = r1; //normally this would be pipelined.
	
	// downsample by 4 - that's 16*4 samples, so bits 4 & 5 must both be 1.
	r1 = [p5 + F_SAMP_CTR]; //F_SAMP_CTR is hence incremented at a rate of 16k/sec
	r6 = 0x3f ; 
	r5 = r1; 
	r5 = r5 & r6 ;  //this will be 0, 4, 8, C, 10, 14 ..repeating.
	r6 = 0x3c;
	cc = r6 == r5 ; 
	if !cc jump skip_ms_incr
		r5 = [p5 + F_MS_CTR]; 
		r5 += 1; 
		[p5 + F_MS_CTR] = r5; 
skip_ms_incr:
	r5 = r1 >> 4; 
	r6 = 0x3 ; 
	r5 = r5 & r6 ; 
	cc = r6 == r5 ; 
	if !cc jump skip_sample
		//call LMS to filter the sample. 
		//r0 = most recent filtered sample, r1 = sample counter. 
		call _LMS;
		//r0 = abs r0 (v); 
		r7 = [sp++]; //pop the old raw sample.
		r3 = [p5 + F_WR_PTR]; 
		r4.h = 0x0003; 
		r4.l = 0xffff; 
		r4 = r3 & r4; 
		r3 += 8 ; //we'll save 4 samples here, 2 bytes each. 
		[p5 + F_WR_PTR] = r3; 
		p4 = r4; 
		r6 = b[p5+F_RAW_ENAB]; 
		cc = bittst(r6, 0) ; 
		if !cc jump write_filtered_0
			//otherwise, write the raw sample.
			[p4++] = r7; 
			jump write_filtered_done0; 
	write_filtered_0: 
			[p4++] = r0; //write to ram.
	write_filtered_done0:
		r0 = [sp++]; //pop the old filtered sample.
		r1 += 2; 
		call _LMS ; 
		//r0 = abs r0 (v); 
		r7 = [sp++]; 
		r6 = b[p5+F_RAW_ENAB]; //r6 will have been clobbered by LMS.
		cc = bittst(r6, 0) ; 
		if !cc jump write_filtered_1
			//otherwise, write the raw sample.
			[p4++] = r7; 
			jump write_filtered_done1; 
	write_filtered_1: 
			[p4++] = r0; //write to ram.
	write_filtered_done1:
		r1 += -2 ; //so the increment by 4 below works.
		jump no_pop_sample ;
skip_sample: //samples 0, 1, or 2. 
	r0 = [sp++]; //if we did not pop it in the inner loop, we need to pop it here. 
	r0 = [sp++]; //to keep delta stack = 0.
	r0 = [sp++]; 
no_pop_sample: 
	r1 += 4; //we read in 4 samples just now. 
	[p5 + F_SAMP_CTR] = r1; 
	
	rets = [sp++]; 
	lc0 = [sp++]; 
	astat = [sp++]; 
	(r7:0, p5:4) = [sp++]; 
	rti; 
