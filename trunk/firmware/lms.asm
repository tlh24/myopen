#include <defBF537.h>
#include "defBF537_ext.h"
#include "memory.h"

.global _LMS

_LMS : //LMS adaptive decorrelator. 
/*the arrangement of the delays in memory is: 
	(in the matrix, the numbers are the offsets from the start of the matrix. 
	you might consider this fortran-style layout)
	
		d0	d1	d2	d3	d4 	(...)	d31
ch0	0		32	64	96	128			992
ch1	2		34	66	98	130			994
ch2	4		36	68	100	132
ch3	6		38	70	102	134
ch4	8		40	72	104	136
(...)
ch15 30	62	94	126	158			1022

the weights are arranged similarly, only it is a 16x16 matrix. 

writes to the delay matrix go in sequence. 
convolution also is in sequence, so effectively the H matrix is time-reversed in memory
	(first tap corresponds to oldest data). 
to get the convolution offset, simply add 512 (= 16 * 16 * 2), which is in m3. 
algorithm must operate on 2 samples at a time, stored in r0. 
sampling rate is at present assumed to be 1ksps ; 2ksps requires a longer filter to cancel 50/60hz. 

arguments: 
	r0 two new samples
	r1 global writepointer (used to figure out what channel we are on). 
	output is on r0.  r1 is unchanged, all other data registers might be.
		no pregs are modified.
		
	i1 += m0;
*/
	[--sp] = p4; 
	//setup the shared i2 pointer. 
	r2.l = LO(LMS_WEIGHT); 
	r2.h = HI(LMS_WEIGHT); 
	r4 = 0xf (z); //bottom 4 bits address the channel we are on
	r3 = r1 & r4 ; 
	r3 = r3 << 1; //R1 is in samples, and we need to address i16 - so, * 2.
	r3 = r2 + r3; 
	i2 = r3; 
	b2 = r2; 
	l2 = 512; 
	//i3 should be prepared already. 
	[i3++m3] = r0; //save the new sample & post-inc to the read location.
.align 8 //otherwise we'll get instruction pipeline stalls! 
	mnop || r2 = [i2++m2] || r3 = [i3++m2] ; //r2 = weights, r3 = samples
		//m2 = 32 = vertical pitch of the matrix.
	a0 = r2.l * r3.l , 	a1 = r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 1
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 2
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 3
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 4
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 5
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 6
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 7
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 8
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 9
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 10
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 11
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 12
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 13
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 14
	a0 += r2.l * r3.l ,	a1 += r2.h * r3.h 	|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 15
	r5.l = (a0 += r2.l * r3.l ), r5.h = (a1 += r2.h * r3.h) || nop || nop;  // 16 , default round mode.
	//r5 is the filter output (prediction from the past). 
	//now we must normalize. 
	r2 = 0; 
	//at this point, i2 will have wrapped back to the beginning, but i3 will be at the start again. 
	i3 += m3 ; 
	r3 = [i3++m2]; 
.align 8
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v)|| nop || nop ; //1
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //2
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //3
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //4
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //5
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //6
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //7
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //8
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //9
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //10
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //11
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //12
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //13
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //14
	r4 = abs r3 (v) || r3 = [i3++m2]; 
	r2 = max(r2, r4) (v) || nop || nop ; //15
	r4 = abs r3 (v) ; 
	r2 = max(r2, r4) (v); //16
	//r2 now contains the maximum absolute value of the two signals.
	r3.l = 16; 
	r3.h = 16; 
	r2 = r2 +|+ r3 (s); //add in a bit so we don't divide by zero.
	//[--sp] = r2; 
	
	//need to compute the normalization factor : 2^16 / r2. 
	r3 = 1; 
	r3 = r3 << 16+1 //the 16 is to convert 1 to 2^16; the 1 is part of the divide algo. 
	p4 = 15; //evaluate quotient to 16 bits
	divs(r3, r2); // compute r3 / r2. 
	lsetup (divls, divle) lc0=p4;
divls: 
		divq(r3, r2); //only operates on the low word of r4. 
divle: 
	nop; 
	r2 = r2 >> 16; //shift the high word into the low (denominator/divisor). 
	r4 = 1; 
	r4 = r4 << 16 + 1; 
	divs(r4, r2); 
	lsetup (divhs, divhe) lc0 = p4; 
divhs: 
		divq(r4, r2); 
divhe: 
	nop; 
	//r2 = [sp++]; //can't pop off the stack after a loop.
	r6 = pack(r4.l, r3.l); //first argument goes in the high half.  

	r0.l = r0.l - r5.l (s); //compute the error.  
	r0.h = r0.h - r5.h (s); 
	r5 = r0 >>> 8 (v) ; //vector shift, divide by 256 (= 1/mu)
	//to get the sign, shift right arithmetic so it is either -1 or 0, shift left by 1 (mply by 2) and add 1.
	r7 = r0 >>> 15 (v) ; 
	r7 = r7 << 1 (v,s); 
	r2.l = 1; 
	r2.h = 1; 
	r7 = r7 +|+ r2 (s); 
	r7 = r7 +|+ r5 (s); //add in the scaled error (for faster convergence with large signals). 
	//finally, multiply the error by the normalization factor. 
	r5.l = r7.l * r6.l , r5.h = r7.h * r6.h (is) ; //signed integer multiply. 
	//r0 = r5; //output the error.
	//r5 = r7; 
	
	//at this point, i2 will have wrapped back to the beginning, but i3 will be at the start again. 
	i3 += m3 ; 
	r6.l = 0x7fff ; //weight decay
	// note: m1 = -1 * m2 (-32)
	// m0 = 2 * m2 (64)
.align 8
	//r2 = weights, r3 = samples
	mnop || r2 = [i2++m2] || r3 = [i3++m2] ; 
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || nop || nop; 
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 1
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 1
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 2
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 2
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 3
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 3
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 4
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 4
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 5
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 5
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 6
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 6
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 7
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 7
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 8
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 8
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 9
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 9
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 10
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 10
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 11
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 11
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 12
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 12
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 13
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 13
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 14
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 14
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || r2 = [i2++m1] ; // calc 15
	a0 = r2.l * r6.l , a1 = r2.h * r6.l || [i2++m0] = r7 || r3 = [i3++m2]; 		// write 15
	r7.l = (a0 += r3.l * r5.l) , r7.h = (a1 += r3.h * r5.h) || nop ; 					// calc 16
	[i2] = r7 ; 																						// write 16
	//finally, move i3 to the next 2 channels. 
	i3+= 4; 
	//that's it!
	p4 = [sp++]; 
	rts; 
