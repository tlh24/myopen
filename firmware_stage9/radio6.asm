#include "spi.h"
#include "nordic_regs.h"

.align 8 //call is a 5-cycle latency if target is aligned.
_get_asm:
	//reads in the data, filters, thresholds, clobbers most all registers :-)
	//this is always a leaf, no need to save RTS.
	//reset p0. (do it here to avoid latency.)
	p0 = [FP - FP_SPORT0_RX];
	r7 = STEP;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7; //clear step. (0)
	r7 = MUXRESET;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; //clear reset. (1)
//rather than using a software wait loop, should enable wakeup and interupts in the
// SIC_IWR register,and then issue the IDLE instruction to save further power.
// will have to test this, as we are running in a SW loop, not interrupt driven processing.
// did test this - takes too long for processor to emerge from sleep.
	//cli r0;
	//idle; //wait for wake-up event.
	//sti r0;
wait_samples:
	r3 = w[p0 + (SPORT0_STAT - SPORT0_RX)];
	cc =! bittst(r3, 0);
	if cc jump wait_samples; //not predicting this branch is faster!

	//channel is stored implicitly in i0 -- don't need explicit update anymore.
	//read in the samples -- SPORT0
	r0 = w[p0] (z);
	r1 = w[p0] (z);
	r2 = [FP-FP_0FFF0FFF]; //hides MMR latency.
	r1 <<= 16;  //secondary channel in the upper word.
	r0 = r0 | r1;
	r2 = r0 & r2;
	//either toggle STEP or MUXRESET, depending on the channel.
	r7 = [i0++];
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r7;
	//apply integrator highpass + gain (4, shift and *2)).
.align 8
	r2 = r2 << 1 (v) || r5 = [i0++]; //*2, r5 = 32000,-16384. (lo, high)
			//(initial multiply by 2,2: 12 -> 13 -> 14 bits, unsgined.
	a0 = r2.l * r5.l, a1 = r2.h * r5.l || r1 = [i1++] || r6 = [i0++];
			// r1 = integral, r6 = 16384 (1), 800 (mu)
	r0.l = (a0 += r1.l * r5.h), r0.h = (a1 += r1.h * r5.h) (s2rnd) || nop;
		//subtract the mean, r0 mean-removed sample.
	a0 = r1.l * r6.l , a1 = r1.h * r6.l //integrator
		|| i1 += m0; //move to channel+2
	r2.l = (a0 += r0.l * r6.h), r2.h = (a1 += r0.h * r6.h) (s2rnd) //update integral.
		|| r1 = [i1++m0]; //load sample from channel+2,
	r7 = r0 << 7 (v,s) || r2 = [i0++] || [i2++] = r2;
			//saturate sample, load corresponding weight, save integral.
	a0 = r1.l * r2.l, a1 = r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //1
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //2
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //3
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //4
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //5
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //6
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //7
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //8
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //9
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //10
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //11
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //12
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //13
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //14
	r6.l=(a0+= r1.l * r2.l), r6.h=(a1+= r1.h * r2.h)  //15; default signed rounding ok.
		|| r1 = [i1++] || r5 = [i0++]; //i1 to saturated sample, r5 = weight decay.

	//update one of the weights:
	r0 = r0 -|- r6 (s) || i0 -= m1 || [i2++] = r0 ;
		//compute error, move i0 to active weight, save original (pre-LMS)
	r6 = r0 << 7 (v,s) || i1 += m2 || [i2++] = r7; //move i1 to update channel, save saturated.
	r6 = r6 >>> 15 (v,s) || r1 = [i1++] || r2 = [i0];
		//r6 = sign of error, r1 = saturated sample, r2 = w0, i1 @ gain + updatechan.
	a0 = r1.l * r6.l, a1 = r1.h * r6.h || nop; //load delta w, r5 weight decay.
r4.l = (a0+= r2.l * r5.l), r4.h = (a1+= r2.h * r5.h) || i1 -= m2 ;
			//load/decay weight, r6 AGC targets (sqrt), move i1 back to present channel.
	mnop || r5 = [i1++] || [i0++m1] = r4 ; //r5 = gain, save the new weight, i0 back to AGC0
	a0 = r0.l * r5.l, a1 = r0.h * r5.h ; //apply gain, r6 = 16384, 1 (mu)
 	a0 = a0 << 8 ; // 14 bits in SRC, this makes 22 bits and
	a1 = a1 << 8 ; // gain goes from 0-128 hence (don't forget about sign)
	r7.l = a0, r7.h = a1 ;  //r7 gained sample. default mode should work (treat both as signed fractions)
	a0 = abs a0, a1 = abs a1 || r6 = [i0++]; //take abs, r6 = sqrt AGC targets.
	r4.l = (a0 -= r6.l * r6.l), r4.h = (a1 -= r6.h * r6.h) (is) //subtract target, saturate, store difference
		|| r6 = [i0++]; //r6.l = 16384 (1), r6.h = 1 (mu)
	a0 = r5.l * r6.l, a1 = r5.h * r6.l || nop; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r6.h), r3.h = (a1 -= r4.h * r6.h) (s2rnd) || nop; //r6.h = 1 (mu); within a certain range gain will not change.
	r3 = abs r3 (v) //no negative gain -- unstable!
													 || r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0.0
	MNOP || [i2++] = r3; // save the gain.
.align 8
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r3 = [i1++] ;//r5 = b0.2; r3 = y1(n-1) or x2(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = a0.0; r4 = y1(n-2) or x2(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| [i2++] = r1 ;//r0 = y1(n); save x1(n-2)

	MNOP ||											 r5 = [i0++] || [i2++] = r0 ;//r5 = b1.0; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r5 = [i0++] || [i2++] = r3 ;//r5 = b1.1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || r1 = [i1++] ;//r5 = b1.2; r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = a1.0; r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++]; 					  //r5 = a1.1
r0.l=(a0 +=r2.l * r5.l), r0.h=(a1 +=r2.h * r5.h)(s2rnd)|| r5 = [i0++] ;//r0 = y2(n); r5 = threshold.
//this is the output of the matched filter; may need more biquads. compare with thresh.
	r0 = r0 +|+ r5 (s) || [i2++] = r0; // add threshold, save y2(n)`
	r6 = r0 >>> 15 (v) || r5 = [i0++] || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00080008), save y2(n-1)
	MNOP				 							 || r5 = [i0++] || r1 = [i1++] ;// r6 match; r1 x1(n-1); r5 b0.0
//second unit.
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r3 = [i1++] ;//r5 = b0.2; r3 = y1(n-1) or x2(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = a0.0; r4 = y1(n-2) or x2(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| [i2++] = r1 ;//r0 = y1(n); save x1(n-2)

														 r5 = [i0++] || [i2++] = r0 ;//r5 = b1.0; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r5 = [i0++] || [i2++] = r3 ;//r5 = b1.1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || r1 = [i1++] ;//r5 = b1.2; r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = a1.0; r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++]; 					  //r5 = a1.1
r0.l=(a0 +=r2.l * r5.l), r0.h=(a1 +=r2.h * r5.h)(s2rnd)|| r5 = [i0++] ;//r0 = y2(n); r5 = threshold.
//this is the output of the matched filter; may need more biquads. compare with thresh.
	r0 = r0 +|+ r5 (s) || r7 = [i0++] || [i2++] = r0; // add threshold, save y2(n)`
	r0 = r0 >>> 15 (v,s) || r5 = [i0++] || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00040004), save y2(n-1)
	r6 = r6 & r7 ; // r7 = 0x00010001
	r0 = r0 & r5 ; // r5 = 0x00020002
	r6 = r6 | r0 ; // r6 match on 2 units, 2 channels now.
	[fp - FP_MATCH] = r6;

	//read in the samples -- SPORT1
	r0 = w[p0] (z);
	r1 = w[p0] (z);
	r2 = [FP-FP_0FFF0FFF];
	r1 <<= 16;  //secondary channel in the upper word.
	r0 = r0 | r1;
	r2 = r0 & r2;
	// integrator highpass & gain.
	r2 = r2 << 1 (v); //move these here to avoid unneccesary NOPS.
	r5 = [i0++];  //*2, r5 = 32000,-16384. (lo, high)
.align 8
			//(initial multiply by 2,2: 12 -> 13 -> 14 bits, unsgined.
	a0 = r2.l * r5.l, a1 = r2.h * r5.l || r1 = [i1++] || r6 = [i0++];
			// r1 = integral, r6 = 16384 (1), 800 (mu)
	r0.l = (a0 += r1.l * r5.h), r0.h = (a1 += r1.h * r5.h) (s2rnd) || nop;
		//subtract the mean, r0 mean-removed sample.
	a0 = r1.l * r6.l , a1 = r1.h * r6.l //integrator
		|| i1 += m0; //move to channel+2
	r2.l = (a0 += r0.l * r6.h), r2.h = (a1 += r0.h * r6.h) (s2rnd) //update integral.
		|| r1 = [i1++m0]; //load sample from channel+2,
	r7 = r0 << 7 (v,s) || r2 = [i0++] || [i2++] = r2;
			//saturate sample, load corresponding weight, save integral.
	a0 = r1.l * r2.l, a1 = r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //1
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //2
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //3
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //4
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //5
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //6
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //7
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //8
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //9
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //10
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //11
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //12
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //13
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m0] || r2 = [i0++]; //14
	r6.l=(a0+= r1.l * r2.l), r6.h=(a1+= r1.h * r2.h)  //15; default signed rounding ok.
		|| r1 = [i1++] || r5 = [i0++]; //i1 to saturated sample, r5 = weight decay.

	//update one of the weights:
	r0 = r0 -|- r6 (s) || i0 -= m1 || [i2++] = r0 ;
		//compute error, move i0 to active weight, save original (pre-LMS)
	r6 = r0 << 7 (v,s) || i1 += m2 || [i2++] = r7; //move i1 to update channel, save saturated.
	r6 = r6 >>> 15 (v,s) || r1 = [i1++] || r2 = [i0];
		//r6 = sign of error, r1 = saturated sample, r2 = w0, i1 @ gain + updatechan.
	a0 = r1.l * r6.l, a1 = r1.h * r6.h || nop; //load delta w, r5 weight decay.
r4.l = (a0+= r2.l * r5.l), r4.h = (a1+= r2.h * r5.h) || i1 -= m2 ;
			//load/decay weight, r6 AGC targets (sqrt), move i1 back to present channel.
	mnop || r5 = [i1++] || [i0++m1] = r4 ; //r5 = gain, save the new weight, i0 back to AGC0
	a0 = r0.l * r5.l, a1 = r0.h * r5.h ; //apply gain, r6 = 16384, 1 (mu)
 	a0 = a0 << 8 ; // 14 bits in SRC, this makes 22 bits and
	a1 = a1 << 8 ; // gain goes from 0-128 hence (don't forget about sign)
	r7.l = a0, r7.h = a1 ;  //r7 gained sample. default mode should work (treat both as signed fractions)
	a0 = abs a0, a1 = abs a1 || r6 = [i0++]; //take abs, r6 = sqrt AGC targets.
	r4.l = (a0 -= r6.l * r6.l), r4.h = (a1 -= r6.h * r6.h) (is) //subtract target, saturate, store difference
		|| r6 = [i0++]; //r6.l = 16384 (1), r6.h = 1 (mu)
	a0 = r5.l * r6.l, a1 = r5.h * r6.l || nop; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r6.h), r3.h = (a1 -= r4.h * r6.h) (s2rnd) || nop; //r6.h = 1 (mu); within a certain range gain will not change.
	r3 = abs r3 (v) //no negative gain -- unstable!
													 || r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0.0
	MNOP || [i2++] = r3; // save the gain.
.align 8
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r3 = [i1++] ;//r5 = b0.2; r3 = y1(n-1) or x2(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = a0.0; r4 = y1(n-2) or x2(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| [i2++] = r1 ;//r0 = y1(n); save x1(n-2)

	MNOP ||											 r5 = [i0++] || [i2++] = r0 ;//r5 = b1.0; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r5 = [i0++] || [i2++] = r3 ;//r5 = b1.1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || r1 = [i1++] ;//r5 = b1.2; r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = a1.0; r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++]; 					  //r5 = a1.1
r0.l=(a0 +=r2.l * r5.l), r0.h=(a1 +=r2.h * r5.h)(s2rnd)|| r5 = [i0++] ;//r0 = y2(n); r5 = threshold.
//this is the output of the matched filter; may need more biquads. compare with thresh.
	r0 = r0 +|+ r5 (s) || [i2++] = r0; // add threshold, save y2(n)`
	r6 = r0 >>> 15 (v) || r5 = [i0++] || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00080008), save y2(n-1)
	MNOP				 							 || r5 = [i0++] || r1 = [i1++] ;// r6 match; r1 x1(n-1); r5 b0.0
//second unit.
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r3 = [i1++] ;//r5 = b0.2; r3 = y1(n-1) or x2(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = a0.0; r4 = y1(n-2) or x2(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| [i2++] = r1 ;//r0 = y1(n); save x1(n-2)

														 r5 = [i0++] || [i2++] = r0 ;//r5 = b1.0; save y1(n-1) / x2(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r5 = [i0++] || [i2++] = r3 ;//r5 = b1.1; save y1(n-2) / x2(n-2)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || r1 = [i1++] ;//r5 = b1.2; r1 = y2(n-1) / x3(n-1)
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = a1.0; r2 = y2(n-2) / x3(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++]; 					  //r5 = a1.1
r0.l=(a0 +=r2.l * r5.l), r0.h=(a1 +=r2.h * r5.h)(s2rnd)|| r5 = [i0++] ;//r0 = y2(n); r5 = threshold.
//this is the output of the matched filter; may need more biquads. compare with thresh.
	r0 = r0 +|+ r5 (s) || r7 = [i0++] || [i2++] = r0; // subtract threshold, save y2(n)`
	r0 = r0 >>> 15 (v,s) || r5 = [i0++] || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00040004), save y2(n-1)
	r6 = r6 & r7 ; // r7 = 0x00040004
	r0 = r0 & r5 ; // r5 = 0x00080008
	r6 = r6 | r0 ; // r6 match on 2 units, 2 channels now.
	r7 = [fp - FP_MATCH]; // r6 match on 2 units, 2 channels now.
	r0 = r7 | r6;
/* r0 contents:
	low nibble r0.l
	[ch 64 B][ch 64 A][ch 0 B][ch 0 A]
	low nibble r0.h
	[ch 96 B][ch 96 A][ch 32 B][ch 32 A]
	must merge the two nibbles into a byte, which we can 'or' and write.
*/
	r6 = [i0++]; //load channel into r6.
	p0 = r6; //byte addressing so we be okay.
	p5 = [FP - FP_MATCH_BASE];
	p1 = [FP - FP_ENC_LUT_BASE]; //3 cycle latency before we can use p1.
	r0.h = r0.h << 4; //merge nibbles.
	r0.l = r0.l + r0.h; // deposit instruction would save nothing -- we'd still have to load the mask.
	p5 = p5 + p0;
	r1 = b[p5];
	r1 = r1 | r0;
	p0 = r1; //p0 not channel, now offest to LUT.
	b[p5] = r1; //save the ORed template match data, 8b area.
	//also update the encoding, which the radio will write out.
	p3 = 32;
	p5 = p5 + p3; //move to 7b encoding region.
	p1 = p1 + p0; //offset to LUT, 0-255. i hope.
	r2 = b[p1]; //read LUT value
	b[p5] = r2; //write to 7-bit area.

	r0 = 31;
	//check to see if it should be written to queue.
	cc = r6 == r0
	if !cc jump end_txchan (bp); //predict not taken -- most likely.
		//pointers p0 and p5 are free; p1 and p3 are static and are reset below.
		p0 = [FP - FP_TXCHAN0] ; //put here for better alignment.
.align 8
		mnop || p1 = [FP - FP_TXCHAN1] || r0 = [i3++]; //for m1
		mnop || p3 = [FP - FP_TXCHAN2] || r1 = [i3++]; //for m2
		mnop || p5 = [FP - FP_TXCHAN3] || r4 = [i3++]; //for QS. (queue-state)
		m1 = r0;
		m2 = r1;
		r0 = b[p0];
		r1 = b[p1];
		r2 = b[p3];
		r3 = b[p5];
		b[p4++] = r0;
		b[p4++] = r1;
		b[p4++] = r2;
		b[p4++] = r3;
		r7 = 5;
		cc = r4 == r7;
		if !cc jump end_txchan_qs (bp); //finish a packet.
			//hide latency by managing flags.
			r7 = [i3++]; //load state flag, used as an OR mask for communicating with bridge.
			r6 = [i3++]; //points to MATCH_PTR7; loops every 4 packets. cycles through 256bits.
			p5 = r5;
			r5 = [FP - FP_QPACKETS];
			r5 += 1; //one more packet on the queue.
			[FP - FP_QPACKETS] = r5; //save for other thread.
			r5 = [FP - FP_ECHO]; //echo flag in bits 31, 23, 15, 7.
			//read in template match.
			r0 = [p5++];
			r1 = [p5++];
			//flag upper bit in each byte with QS & echo.
			r0 = r0 | r7;
			r1 = r1 | r5;
			r7 = p5; //make p5 loop.
			p0 = -36; //because both increment and decrement are post!
					// 32 8-bit words, ea 4 chan = 128 chan + 4 post-dec offset.
			p5 = p5 + p0; //move to 8b encoding region; clear.
			//latency hidden, write template matches.
			[p4++] = r0;
			[p4++] = r1;
			r4 = 0; //also clears sample count qs.
			[p5--] = r4; //reset template match, 8b region.
			[p5--] = r4;
end_txchan_qs:
		p1 = [FP - FP_FIO_FLAG_D]; //reset the pointers.
		p3 = [FP - FP_SPI_TDBR]; //saves clock relative to push/pop stack.
		r7 = p4; //make p4 loop.
		bitclr(r7, 10); //two 512-byte frames.
		p4 = r7;
		//thought: since the codepath is so long here, might want to jump directly to the head
		//after resetting state.  o/w radio may take too long.
end_txchan:
	RTS ; //used to be jump.


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
	call _get_asm;
	jump waitirq_loop;
waitirq_end:
	call _get_asm;
	rets = [sp++];
	rts;

_clearfifos_asm:
	[--sp] = rets;
	// flush RX fifo (seems to improve reliability)
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_RX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;
	// and flush TX fifo.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_TX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;
	// return.
	rets = [sp++];
	rts;

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
	call _get_asm;
	r5 = 0;
	[FP - FP_QPACKETS] = r5;
	call _clearfifos_asm; // both include
	call _clearirq_asm; // many _get_asm calls.
	p5 = 16;
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
		r7 = p2; //the pointer wrap used to be in the loop
		bitclr(r7, 10); //but i trust the proc to keep it aligned.  (fingers crossed)
		p2 = r7;
		call _get_asm;
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
	call _get_asm;

	//put the radio in RX mode now.
	//first clear the config register (put in standby mode)
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_RX;
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
	call _clearirq_asm; //many _get_asm calls.
	r7 = SPI_CE; //disable the radio; turn off LNA as soon as possible.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r7 = SPI_CSN ;
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
		call _get_asm;
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
		call _get_asm;
	rp_bot: nop;
	//close out the RX frame.
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;
no_rxpacket:
	//put it back in TX mode.
	r7 = SPI_CE; //clear CE.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	//flush the TX fifo.
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;
	r6 = NOR_FLUSH_TX;
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
	/** CRC on bulk transmit too - have antenna diversity! **/
	r6 = NOR_MASK_MAX_RT | NOR_EN_CRC |
			NOR_CRC0 | NOR_PWR_UP | NOR_PRIM_TX;
	w[p3] = r6;
	call _get_asm;
	r7 = SPI_CSN;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7;
	call _get_asm;

	//reload the watchdog timer -- we are alive!
	p5.h = HI(WDOG_STAT);
	p5.l = LO(WDOG_STAT);
	[p5] = r7; //value doesn't matter.
	call _get_asm;

	//blink. first clear LED.
	r7 = LED_BLINK;
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;
	call _get_asm;

	r7 = [FP - FP_BLINK];
	r6 = 1 (z);
	r7 = r7 + r6;
	//flash once every 256 packets. 1/256 duty cycle.
	r6 = r7 >> 4;
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r6;
	bitclr(r7, 8);
	[FP - FP_BLINK] = r7;
	call _get_asm;

	jump radio_loop;
