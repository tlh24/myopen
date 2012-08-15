#include "spi.h"
#include "nordic_regs.h"

.align 8 //call is a 5-cycle latency if target is aligned.
#ifdef _AGC_ //enable EGC update.
.global _get_asm
_get_asm: 
#else 
.global _get_asm2
_get_asm2:
#endif
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
//	cli r0;
//	idle; //wait for wake-up event.
//	sti r0;
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
	r7 = r0 & r2;
	
	r5 = [i0++];//either toggle STEP or MUXRESET, depending on the channel.
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r5;
	//new schema: apply bandpass biquad at beginning. 
	// (design with ellip(1,6,40,[500/15e3, 5/15])
	// get better / more flexible performance for the same number of ops. 
	// & remove out-of-band noise prior LMS. 
	/** prefilter **/
	r6 = [FP - FP_16384]; //FP relative loads cannot be paralelled :-(
.align 8
	MNOP || r5 = [i0++] || r1 = [i1++]; //r5 = b0.0, r1 = x1(n-1)
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = b0.2; r4 = y1(n-2) 
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r3 = [i1++];//r5 = a0.0; r3 = y1(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| r5 = [i1++] ;
		//r0 = y1(n); r5 = gain & move to gained sample.
	/** AGC **/
	a0 = r0.l * r5.l, a1 = r0.h * r5.h || [i2++] = r1; //apply gain,save x1(n-2)
 	a0 = a0 << 7 || [i2++] = r3; //save y1(n-2) ;14 bits in SRC, this makes 22 bits and
	a1 = a1 << 7 || [i2++] = r0; //save y1(n-1) ;gain goes from 0-128 hence (don't forget about sign)
	r7.l = a0, r7.h = a1 || i1 += m0;  
		//r7 = gained sample, r2 = 16384, move y1(n-1) of chan+2; 
		//for r7, default rounding mode should work (treat both as signed fractions)
#ifdef _AGC_
	a0 = abs a0, a1 = abs a1 || r1 = [i0++]; //take abs, r1 = sqrt AGC targets.
	r4.l = (a0 -= r1.l * r1.l), r4.h = (a1 -= r1.h * r1.h) (is) //subtract target, saturate, store difference
		|| r1 = [i0++]; //r1 = mu (1) for both channels. 
	a0 = r5.l * r6.l, a1 = r5.h * r6.l ; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r1.l), r3.h = (a1 -= r4.h * r1.h) (s2rnd) ; //within a certain range gain will not change.
	r3 = abs r3 (v) //no negative gain -- unstable!									 
	MNOP || [i2++] = r3; // save the gain.
#else
	MNOP || i0 += m3 || r3 = [i2++]; //m3 = 8, dummy read to keep i2 in sync; ifndef _AGC_
#endif
	r0 = r7 << 13 (v,s) || r1 = [i1++m0] || r2 = [i0++]; 
		//saturate sample, load channel+2 / move chan+4, load corresponding weight.
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
	r7 = r7 -|- r6 (s) || i0 -= m1 || [i2++] = r7 ;
		// error into r7, move i0 to active weight, save gained sample.
	r3 = r7 << 7 (v,s) || i1 += m2 || [i2++] = r0 ;  //move i1 to update channel, save saturated.
	r3 = r3 >>> 14 (v,s) || r1 = [i1++m3] || r2 = [i0]; // r2 = w0.
		//r3 = sign of error, r1 = saturated sample, i1 @ x1(n-1)
	a0 = r1.l * r3.l, a1 = r1.h * r3.h || [i2++] = r6; //load delta w, save LMS prediction.
r4.l = (a0+= r2.l * r5.l), r4.h = (a1+= r2.h * r5.h) || i1 -= m2 ;
			//load/decay weight, move i1 back to present channel.
	MNOP || [i0++m1] = r4 ; // save the new weight, i0 back to b00 unit 1.
	/** matched filters **/
	MNOP || r5 = [i0++] || r1 = [i1++];  // r7 samp; r1 x1(n-1); r5 b0.0
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
	r6 = r0 >>> 15 (v) || [i2++] = r1; //either -1 (0xffff) or 0, save y2(n-1)
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
	r6 = r6 & r7 ; // r7 = 0x00100001 -- note upper nibble shifted.
	r0 = r0 & r5 ; // r5 = 0x00200002 -- this saves a cycle later.
	r6 = r6 | r0 ; // r6 match on 2 units, 2 channels now.
	[fp - FP_MATCH] = r6;

	//read in the samples -- SPORT1
	r0 = w[p0 + (SPORT1_RX - SPORT0_RX)] (z);
	r1 = w[p0 + (SPORT1_RX - SPORT0_RX)] (z);
	r2 = [FP-FP_0FFF0FFF];
	r1 <<= 16;  //secondary channel in the upper word.
	r0 = r0 | r1;
	r7 = r0 & r2;
	/** prefilter **/
	r6 = [FP - FP_16384]; //FP relative loads cannot be paralelled :-(
.align 8
	MNOP || r5 = [i0++] || r1 = [i1++]; //r5 = b0.0, r1 = x1(n-1)
	a0  = r7.l * r5.l, a1  = r7.h * r5.h || r5 = [i0++] || r2 = [i1++] ;//r5 = b0.1; r2 = x1(n-2)
	a0 += r1.l * r5.l, a1 += r1.h * r5.h || r5 = [i0++] || r4 = [i1++] ;//r5 = b0.2; r4 = y1(n-2) 
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r5 = [i0++] || r3 = [i1++];//r5 = a0.0; r3 = y1(n-1)
	a0 += r3.l * r5.l, a1 += r3.h * r5.h || r5 = [i0++] || [i2++] = r7 ;//r5 = a0.1; save x1(n-1)
r0.l=(a0 +=r4.l * r5.l), r0.h=(a1 +=r4.h * r5.h)(s2rnd)|| r5 = [i1++] ;
		//r0 = y1(n); r5 = gain; i1 on gained sample.
	/** AGC **/
	a0 = r0.l * r5.l, a1 = r0.h * r5.h || [i2++] = r1; //apply gain,save x1(n-2)
 	a0 = a0 << 7 || [i2++] = r3; //save y1(n-2) ;14 bits in SRC, this makes 22 bits and
	a1 = a1 << 7 || [i2++] = r0; //save y1(n-1) ;gain goes from 0-128 hence (don't forget about sign)
	r7.l = a0, r7.h = a1 || i1 += m0;  
		//r7 = gained sample, r2 = 16384, move y1(n-1) of chan+2; 
		//for r7, default rounding mode should work (treat both as signed fractions)
#ifdef _AGC_
	a0 = abs a0, a1 = abs a1 || r1 = [i0++]; //take abs, r1 = sqrt AGC targets.
	r4.l = (a0 -= r1.l * r1.l), r4.h = (a1 -= r1.h * r1.h) (is) //subtract target, saturate, store difference
		|| r1 = [i0++]; //r1 = mu (1) for both channels. 
	a0 = r5.l * r6.l, a1 = r5.h * r6.l ; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r1.l), r3.h = (a1 -= r4.h * r1.h) (s2rnd) ; //within a certain range gain will not change.
	r3 = abs r3 (v) //no negative gain -- unstable!									 
	MNOP || [i2++] = r3; // save the gain.
#else
	MNOP || i0 += m3 || r3 = [i2++]; //m3 = 8, dummy read to keep i2 in sync; ifndef _AGC_
#endif
	r0 = r7 << 13 (v,s) || r1 = [i1++m0] || r2 = [i0++]; 
		//saturate sample, load channel+2 / move chan+4, load corresponding weight.
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
	r7 = r7 -|- r6 (s) || i0 -= m1 || [i2++] = r7 ;
		// error into r7, move i0 to active weight, save gained sample.
	r3 = r7 << 7 (v,s) || i1 += m2 || [i2++] = r0 ;  //move i1 to update channel, save saturated.
	r3 = r3 >>> 14 (v,s) || r1 = [i1++m3] || r2 = [i0]; // r2 = w0.
		//r3 = sign of error, r1 = saturated sample, i1 @ x1(n-1)
	a0 = r1.l * r3.l, a1 = r1.h * r3.h || [i2++] = r6; //load delta w, save LMS prediction.
r4.l = (a0+= r2.l * r5.l), r4.h = (a1+= r2.h * r5.h) || i1 -= m2 ;
			//load/decay weight, move i1 back to present channel.
	MNOP || [i0++m1] = r4 ; // save the new weight, i0 back to b00 unit 1.
	/** matched filters **/
	MNOP || r5 = [i0++] || r1 = [i1++];  // r7 samp; r1 x1(n-1); r5 b0.0
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
	r6 = r0 >>> 15 (v) || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00080008), save y2(n-1)
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
	r0 = r0 >>> 14 (v,s) || r5 = [i0++] || [i2++] = r1; //either -1 (0xffff) or 0; load mask (0x00040004), save y2(n-1)
	r6 = r6 & r7 ; // r7 = 0x00400004 --again, upper nibble shifted.
	r0 = r0 & r5 ; // r5 = 0x00800008
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
	r0.l = r0.l + r0.h; // deposit instruction would save nothing -- we'd still have to load the mask.
	r0 = r0.b; //mask!  needed from above, o/w get r0 = 0x0040 0040.
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
		r7 = 5; //also hide latency.
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
		cc = r4 == r7;
		if !cc jump end_txchan_qs (bp); //finish a packet.
			//hide latency by managing flags.
			r7 = [i3++]; //load state flag, used as an OR mask for communicating with bridge.
			r6 = [i3++]; //points to MATCH_PTR7; loops every 4 packets. cycles through 256bits.
			p5 = r6;
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
		r7 = p4; //make p4 loop.
		bitclr(r7, 10); //two 512-byte frames.
		p4 = r7;
		//thought: since the codepath is so long here, might want to jump directly to the head
		//after resetting state.  o/w radio may take too long.
end_txchan:
	p3 = [FP - FP_SPI_TDBR]; //saves clock relative to push/pop stack.
	p1 = [FP - FP_FIO_FLAG_D]; //reset p1 pointer.
	RTS ; //used to be jump.
