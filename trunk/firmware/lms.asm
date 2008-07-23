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
	//setup the shared i2 pointer. 
	r2.l = LO(LMS_WEIGHT); 
	r2.h = HI(LMS_WEIGHT); 
	r4 = 0xf (z); //bottom 4 bits address the channel we are on
	r3 = r1 & r4 ; 
	r3 = r2 + r3; 
	i2 = r3; 
	b2 = r2; 
	l2 = 512; 
	//i3 should be prepared already. 
	[i3++m3] = r0; //save the new sample & post-inc to the read location.
.align 8 //otherwise we'll get instruction pipeline stalls! 
	mnop || r2 = [i2++m2] || r3 = [i3++m2] ; //r2 = weights, r3 = samples
		//m2 = 32 = vertical pitch of the matrix.
	a0 = r2.l * r3.l , 	a1 = r2.h * r3.h 		|| r2 = [i2++m2]	|| r3 = [i3++m2] ;  // 1
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
	r4.l = (a0 += r2.l * r3.l ), r4.h = (a1 += r2.h * r3.h) || nop || nop;  // 16 , default round mode.
	//r4 is the filter output (prediction from the past). 
	r0.l = r0.l - r4.l; //compute the error.  
	r0.h = r0.h - r4.h; 
	r5.l = r0.l >>> 12 ; //arithmetic shift, divide by 4096 (= 1/mu)
	r5.h = r0.h >>> 12 ; 
	//at this point, i2 will have wrapped back to the beginning, but i3 will be at the start again. 
	i3 += m3 ; 
	r6.l = 0x7fff ; //weight decay
	// note: m1 = -1 * m2 (-32)
	// m0 = 2 * m2 (64)
.align 8
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
	rts; 
