#include <defBF537.h>
#include "defBF537_ext.h"
#include "memory.h"

_I11HANDLER:          // IVG 11 Handler
	//serial port reception. note that all 4 longs - primary and secondary 
	// on both sports will be captured at the same time. 
	// we only need to enable interupts on one sport. 
	[--sp] = (r7:0, p5:2); 
	[--sp] = astat ; 
	[--sp] = lc0 ;
	p2.h = _g_rptr; 
	p2.l = _g_rptr; 
	r3 = [p2]; //pointer to a pointer!
	//i2 (and associated) is shared between LMS and here - 
	//copy the values from i1 (and associated) before using it
	i2 = i1; 
	b2 = b1; 
	l2 = l1; //after these operations, 4 cycles are required before doing anything with i2
	//have to bitmask here so we address a looping region of 2^18 bytes (256k)
	// in the lowest part of SDRAM. 
	r1.l = 0xffff ; 
	r1.h = 0x0003; 
	r2 = r3 & r1; 
	p3 = r2; 
	p5.h = HI(SPORT0_RX); 
	p5.l = LO(SPORT0_RX); 
	r0.l = w[p5];  //channel. 1 (in this block)
	r0 = r0 << 16; 
	r0.l = w[p5]; 
	r0 = r0 << 3 ; //we are using a 13-bit ADC
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
	r5 = [i0++] || r1 = [i1++]; 
	a0 = r0.l * r5.l , a1 = r0.h * r5.l || r6 = [i0++] ||  [i2++] = r0; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r2 = [i1++] ; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r3 = [i1++] ; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l || r4 = [i1++] ;
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd) || [i2++] = r1;
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 += r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r1; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r3 = [i1++]; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r4 = [i1++]; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l; 
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd); 
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 += r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	//have to write these out before reading in a new sample. 
	[i2++] = r0; //save the delays. 
	[i2++] = r1; //normally this would be pipelined.
	[p3++] = r0; //save to SDRAM (for writing over enet)
	//grab the next two samples. 
	r0.l = w[p5];  //channel. 1 (in this block)
	r0 = r0 << 16; 
	r0.l = w[p5]; 
	r0 = r0 << 3 ; //we are using a 13-bit ADC
	
	r5 = [i0++] || r1 = [i1++]; 
	a0 = r0.l * r5.l , a1 = r0.h * r5.l || r6 = [i0++] ||  [i2++] = r0; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r2 = [i1++] ; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r3 = [i1++] ; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l || r4 = [i1++] ;
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd) || [i2++] = r1;
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 += r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 = r0.h * r5.l || r6 = [i0++] || [i2++] = r1; 
	a0 += r1.l * r5.h, a1 += r1.h * r5.h || r3 = [i1++]; 
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r4 = [i1++]; 
	a0 += r3.l * r6.l, a1 += r3.h * r6.l; 
	r0.l = (a0 += r4.l * r6.h), r0.h = (a1 += r4.h * r6.h) (s2rnd); 
	
	r5 = [i0++] || [i2++] = r0; 
	a0 = r0.l * r5.l, a1 += r0.h * r5.l || r6 = [i0++] || [i2++] = r3; 
	a0 += r3.l * r5.h, a1 += r3.h * r5.h || r1 = [i1++]; 
	a0 += r4.l * r5.l, a1 += r4.h * r5.l || r2 = [i1++]; 
	a0 += r1.l * r6.l, a1 += r1.h * r6.l; 
	r0.l = (a0 += r2.l * r6.h), r0.h = (a1 += r2.h * r6.h) (s2rnd); 
	
	[i2++] = r0; //save the delays. 
	[i2++] = r1; //normally this would be pipelined.
	[p3++] = r0; //save to SDRAM (for writing over enet)
	
	r3 = [p2] ; //reload
	r3 += 8 ; //keep around the full 32 bits, since we compare with the transmit pointer. 
	[p2] = r3;
	lc0 = [sp++]; 
	astat = [sp++]; 
	(r7:0, p5:2) = [sp++]; 
	rti; 