#include "spi.h"
#include "nordic_regs.h"

#define STEP 			0x0100
#define MUXRESET 		0x0080  //active low; must keep it high.
#define LED_BLINK		0x0010  //blink LED.
.align 8 //call is a 5-cycle latency if target is aligned.
_get_asm: 
	//reads in the data, filters, thresholds, clobbers most all registers :-)
	//this is always a leaf, no need to save RTS. 
	//reset p0. (do it here to avoid latency.)
	p0 = [FP - FP_SPORT0_RX]; 
	r7 = MUXRESET (x); //always clear the reset of falling edge of step.
	w[p1 + (FIO_FLAG_S - FIO_FLAG_D)] = r7; 
	r7 = STEP (x); //portF pin 8, step.
	w[p1 + (FIO_FLAG_C - FIO_FLAG_D)] = r7;//clear before waiting.
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

	//increment the channel here (best to only do it in one place..)
	r6 = [FP - FP_CHAN]; //hence this variable need start at 30.
	r6 += 1; 
	bitclr(r6, 5); // count 0 to 31
	[FP - FP_CHAN] = r6; 
		
	//read in the samples -- SPORT0
	r0 = w[p0] (z); 
	r1 = w[p0] (z);
	r2.l = 0xfff; 
	r0 = r0 & r2; 
	r1 = r1 & r2; 
	r1 <<= 16;  //secondary channel in the upper word.
	r2 = r0 + r1; 
	//set STEP to move to the next channel - this should be slightly after the 
	// falling edge of RFS 
	//(CS to the ADCS7476, which samples on the falling edge)
	//if the channel=31, assert reset instead
	r5 = 30; //30 due to *two* pipeline delays (MUX, sample)
	r4 = MUXRESET;
	cc = r5 == r6; 
	if cc r7 = r4; //toggle the reset or the step. to keep the mux in sync.
	//the toggle statement should not get out of sync b/c there are set/clear statements above. 
	w[p1 + (FIO_FLAG_T - FIO_FLAG_D)] = r7; 
	//apply integrator highpass + gain. 
	r5 = [i0++]; //r5 = 32000,-16384. 
.align 8 
	a0 = r2.l * r5.l, a1 = r2.h * r5.l || r1 = [i1++]; // r1 = integrated mean
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r6 = [i0++]; //r6 = 16384 (1), 800 (mu)
	r0.l = (a0 += r1.l * r5.h), r0.h = (a1 += r1.h * r5.h) (s2rnd); 
	a0 = r1.l * r6.l , a1 = r1.h * r6.l; //integrator
	r2.l = (a0 += r0.l * r6.h), r2.h = (a1 += r0.h * r6.h) (s2rnd)
	/*AGC*/	|| r5 = [i1++] || r7 = [i0++]; //r5 = gain, r7 AGC targets (sqrt)
	a0 = r0.l * r5.l, a1 = r0.h * r5.h || [i2++] = r2; //save mean, above
 	a0 = a0 << 8 ; // 12 bits in SRC, amp to 16 bits, which leaves 4 more bits for amplification (*16)
	a1 = a1 << 8 ; //gain goes from 0-128 hence (don't forget about sign)
	r0.l = a0, r0.h = a1 ;  //default mode should work (treat both as signed fractions)
	a0 = abs a0, a1 = abs a1;
	r4.l = (a0 -= r7.l * r7.l), r4.h = (a1 -= r7.h * r7.h) (is) //subtract target, saturate, store difference
		|| r6 = [i0++]; //r6.l = 16384 (1), r6.h = 1 (mu) 
	a0 = r5.l * r6.l, a1 = r5.h * r6.l || nop; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r6.h), r3.h = (a1 -= r4.h * r6.h) (s2rnd) || nop; //r6.h = 1 (mu); within a certain range gain will not change.
.align 8
	r3 = abs r3 (v) || r7 = [FP - FP_WEIGHTDECAY]; //set weightdecay to zero to disable LMS.
	r4.l = (a0 = r0.l * r7.l), r4.h = (a1 = r0.h * r7.l) (is) || i1 += m1 || [i2++] = r3; 
				//saturate the sample, save the gain.
// LMS! woo
	mnop || r1 = [i1++] || [i2++] = r4; //move to x1(n-1), save the saturated sample.
	mnop || r1 = [i1++m2] || r2 = [i0++]; //r1 = sample, r2 = weight.
	a0 = r1.l * r2.l, a1 = r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	r6.l = (a0+= r1.l * r2.l), r6.h = (a1+= r1.h * r2.h) || r1 = [i1++m1] || r2 = [i0++m0]; 
	
	r0 = r0 -|- r6 (s) || [i2++] = r0 || r1 = [i1--] ; //compute error, save original, move i1 back to saturated samples.
	r6 = r0 >>> 15 (v,s) || r1 = [i1++m2] || r2 = [i0++];//r1 = saturated sample, r2 = w0, i0 @ 1
	//r6 = r6 << 1 (v,s);
	//r6 = r6 +|+ r3; 
.align 8	
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || nop || nop; //load / decay weight.
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w1, i0 @ 0
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 0, i0 @ 2
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w2, i0 @ 1
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 1, i0 @ 3
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w3, i0 @ 2
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 2, i0 @ 4
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w4, i0 @ 3
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 3, i0 @ 5
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w5, i0 @ 4
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 4, i0 @ 6
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w6, i0 @ 5
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 5, i0 @ 7
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m3] || r2 = [i0--];// inc to x1(n-1) r2 = w1, i0 @ 6
	mnop || [i0++] = r5; //write 6.
/* LMS adaptive noise remover (above)
	want to predict the current channel based on samples from the previous 8. 
	at this point i1 will point to x(n-1) of the present channel. 
		(i2 is not used, we do not need to write taps -- IIR will take care of this.)
	24 32-bit samples are written each time through this loop, 
	so to go back 8 channels subtract m1 = -672
	to move forward one channel add m2 = 96
	for modifying i0, m3 = 8 (move +2 weights)
		and m0 = -32 (move -8 weights)
	i0, as usual, points to the filter taps!
*/
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
	mnop || r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0.0
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
	r0.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd) || NOP; // r0 = y2(n)
	
	r5 = [i0++] || [i2++] = r0; // r5 = b2.0; save y2(n-1) / x3(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r1; //r6 = b2.1; save y2(n-2) / x3(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.h || r7 = [i0++] || r3 = [i1++]; //r7 = a2.0; r3 = y3(n-1) / x4(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r4 = [i1++]; //r4 = y3(n-2) / x4(n-2)
	a0 += r3.l * r7.l, a1 += r3.h * r7.h || r5 = [i0++]; //r5 = a2.1
	r0.l = (a0 += r4.l * r5.l), r0.h = (a1 += r4.h * r5.h) (s2rnd) || NOP; //r0 = y3(n)

	r5 = [i0++] || [i2++] = r0; // r5 = b3.0; save y3(n-1) / x4(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r3; //r6 = b3.1; save y3(n-2) / x4(n-2)
	a0 += r3.l * r6.l, a1 += r3.h * r6.h || r7 = [i0++] || r1 = [i1++]; //r7 = a3.0; r1 = y4(n-1) 
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r2 = [i1++]; // r2 = y4(n-2)
	a0 += r1.l * r7.l, a1 += r1.h * r7.h || r5 = [i0++]; // r5 = a3.1
	r0.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd); // r0 = y4(n)
	
	[i2++] = r0; // save y4(n-1)
	[i2++] = r1; // save y4(n-2) (normally pipelined)
	[--sp] = r0; //store the samples on the stack.	
	
	//read in the samples -- SPORT1
	r0 = w[p0 + (SPORT1_RX - SPORT0_RX)] (z); 
	r1 = w[p0 + (SPORT1_RX - SPORT0_RX)] (z);
	r2.l = 0xfff; 
	r0 = r0 & r2; 
	r1 = r1 & r2;
	r1 <<= 16; //secondary channel in upper word.
	r2 = r0 + r1; 
	//apply integrator highpass + gain. 
	r5 = [i0++]; //r5 = 32000,-16384. 
.align 8 
	a0 = r2.l * r5.l, a1 = r2.h * r5.l || r1 = [i1++]; // r1 = integrated mean
	a0 += r2.l * r5.l, a1 += r2.h * r5.l || r6 = [i0++]; //r6 = 16384 (1), 800 (mu)
	r0.l = (a0 += r1.l * r5.h), r0.h = (a1 += r1.h * r5.h) (s2rnd); 
	a0 = r1.l * r6.l , a1 = r1.h * r6.l; //integrator
	r2.l = (a0 += r0.l * r6.h), r2.h = (a1 += r0.h * r6.h) (s2rnd)
/*AGC*/	|| r5 = [i1++] || r7 = [i0++]; //r5 = gain, coefs r7.l = 876, r7.h = 876
	a0 = r0.l * r5.l, a1 = r0.h * r5.h || [i2++] = r2; //save mean, above
 	a0 = a0 << 8 ; // 12 bits in SRC, amp to 16 bits, which leaves 4 more bits for amplification (*16)
	a1 = a1 << 8 ; //gain goes from 0-128 hence (don't forget about sign)
	r0.l = a0, r0.h = a1 ;  //default mode should work (treat both as signed fractions)
	a0 = abs a0, a1 = abs a1;
	r4.l = (a0 -= r7.l * r7.l), r4.h = (a1 -= r7.h * r7.h) (is) //subtract target, saturate, store difference
		|| r6 = [i0++]; //r6.l = 16384 (1), r6.h = 1 (mu) 
	a0 = r5.l * r6.l, a1 = r5.h * r6.l || nop; //load the gain again & scale.
	r3.l = (a0 -= r4.l * r6.h), r3.h = (a1 -= r4.h * r6.h) (s2rnd) || nop; //r6.h = 1 (mu); within a certain range gain will not change.
.align 8
	r3 = abs r3 (v) || r7 = [FP - FP_WEIGHTDECAY]; //set weightdecay to zero to disable LMS.
	r4.l = (a0 = r0.l * r7.l), r4.h = (a1 = r0.h * r7.l) (iss2) || i1 += m1 || [i2++] = r3; 
				//saturate the sample, save the gain.
// LMS! woo
	mnop || r1 = [i1++] || [i2++] = r4; //move to x1(n-1), save the saturated sample.
	mnop || r1 = [i1++m2] || r2 = [i0++]; //r1 = sample, r2 = weight.
	a0 = r1.l * r2.l, a1 = r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	a0+= r1.l * r2.l, a1+= r1.h * r2.h || r1 = [i1++m2] || r2 = [i0++]; 
	r6.l = (a0+= r1.l * r2.l), r6.h = (a1+= r1.h * r2.h) || r1 = [i1++m1] || r2 = [i0++m0]; 
	
	r0 = r0 -|- r6 (s) || [i2++] = r0 || r1 = [i1--] ; //compute error, save original, move i1 back to saturated samples.
	r6 = r0 >>> 15 (v,s) || r1 = [i1++m2] || r2 = [i0++];//r1 = saturated sample, r2 = w0, i0 @ 1
	//r6 = r6 << 1 (v,s);
	//r6 = r6 + r3; 
.align 8	
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || nop || nop; //load / decay weight.
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w1, i0 @ 0
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 0, i0 @ 2
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w2, i0 @ 1
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 1, i0 @ 3
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w3, i0 @ 2
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 2, i0 @ 4
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w4, i0 @ 3
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 3, i0 @ 5
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w5, i0 @ 4
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 4, i0 @ 6
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m2] || r2 = [i0--];//r2 = w6, i0 @ 5
	a0 = r2.l * r7.h, a1 = r2.h * r7.h || [i0++m3] = r5; //write 5, i0 @ 7
r5.l = (a0 += r1.l * r6.l), r5.h = (a1 += r1.h * r6.h) || r1 = [i1++m3] || r2 = [i0--];// inc to x1(n-1) r2 = w1, i0 @ 6
	mnop || [i0++] = r5; //write 6.

// IIR !
	mnop || r5 = [i0++] || r1 = [i1++];  // r0 samp; r1 x1(n-1); r5 b0.0
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
	r0.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd) || NOP; // r0 = y2(n)
	
	r5 = [i0++] || [i2++] = r0; // r5 = b2.0; save y2(n-1) / x3(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r1; //r6 = b2.1; save y2(n-2) / x3(n-2)
	a0 += r1.l * r6.l, a1 += r1.h * r6.h || r7 = [i0++] || r3 = [i1++]; //r7 = a2.0; r3 = y3(n-1) / x4(n-1)
	a0 += r2.l * r5.l, a1 += r2.h * r5.h || r4 = [i1++]; //r4 = y3(n-2) / x4(n-2)
	a0 += r3.l * r7.l, a1 += r3.h * r7.h || r5 = [i0++]; //r5 = a2.1
	r0.l = (a0 += r4.l * r5.l), r0.h = (a1 += r4.h * r5.h) (s2rnd) || NOP; //r0 = y3(n)

	r5 = [i0++] || [i2++] = r0; // r5 = b3.0; save y3(n-1) / x4(n-1)
	a0  = r0.l * r5.l, a1  = r0.h * r5.h || r6 = [i0++] || [i2++] = r3; //r6 = b3.1; save y3(n-2) / x4(n-2)
	a0 += r3.l * r6.l, a1 += r3.h * r6.h || r7 = [i0++] || r1 = [i1++]; //r7 = a3.0; r1 = y4(n-1) 
	a0 += r4.l * r5.l, a1 += r4.h * r5.h || r2 = [i1++]; // r2 = y4(n-2)
	a0 += r1.l * r7.l, a1 += r1.h * r7.h || r5 = [i0++]; // r5 = a3.1
	r3.l = (a0 += r2.l * r5.l), r0.h = (a1 += r2.h * r5.h) (s2rnd); // r0 = y4(n) 
	
	nop || [i2++] = r3; // save y4(n-1),
	r2 = [sp++] || [i2++] = r1; // save y4(n-2) (normally pipelined)
	
	//template comparison. ala plexon, although sliding here  - no threshold.
	//r2 and r3 are presently the read-in samples. pack them.
	r2 = r2 >>> 8 (v); //vector shift. preserve sign.
	r3 = r3 >>> 8 (v); 
	r4 = bytepack(r2, r3) //lo, hi //newest sample chs 96,64,32,0. (hi to lo)
	r0 = [FP - FP_8080] ; //r0 = 80808080; 
	r4 = r4 ^ r0; //convert to unsigned. SAA works on unsigned numbers, to the best of my knowledge.
	r0 = r4; //cannot be paralleled. need the copy for later.
.align 8; 
	a0 = a1 = 0 || r2 = [i0++]; /**template A**/ //r2 template, r0 / r4 new samples.
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //1 ; template A starts most recent
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //2 ; then least recent, 2nd least..
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //3
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //4
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //5
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //6
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //7
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //8
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //9
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //10
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //11
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //12
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //13 
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //14
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //15 (read)
	saa( r1:0, r3:2 ) || [i3++] = r4 ; //write new sample @ [15]
	//now .. result is in a0.l, a0.h, a1.l, a1.h ; need to compare to aperture.
	r0 = a0, r1 = a1 (fu) || r2 = [i0++] || i3 += m0; //move -7 delays. 
	//subtract - if the answer is negative, criteria satisfied. 
	r0 = r0 -|- r2 (s) || r3 = [i0++] || i3 -= m3; //r0 chs 32 0 (hi lo); move -2 delays.
	r1 = r1 -|- r3 (s) || i3 += m0; //r1 chs 96 64; move -7 delays for total -16.
	//shift to bit 0 -- have to shift anyway, as these are 16 bit packed. 
	r0 = r0 >>> 15 (v); //these will be -1 or 0. 
	r1 = r1 >>> 15 (v); 
	r0 = -r0 (v); //now 0 or 1, hi and low sections.
	r1 = -r1 (v); //will save these for later packing into a nibble..
	r1 <<= 1; 
	r6 = r0 + r1;// [ch 96 A][ch 32 A]...14 bits...[ch 64 A][ch 0 A]
.align 8 /** template B **/
	a0 = a1 = 0 || r0 = [i3++] || r2 = [i0++]; //read in first template, r0 / r4 new samples.
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //1 ; template b is in order.
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //2
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //3
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //4
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //5
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //6
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //7
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //8
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //9
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //10
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //11
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //12
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //13 
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //14 
	saa( r1:0, r3:2 ) || r0 = [i3++] || r2 = [i0++]; //15 (read)
	saa( r1:0, r3:2 ) || nop; //i3 should be moved 1 forward, ready for next set of 4 channels.
	//now .. result is in a0.l, a0.h, a1.l, a1.h ; need to compare to aperture.
	r0 = a0, r1 = a1 (fu) || r2 = [i0++] ; //load aperture.
	//subtract - if the answer is negative, criteria satisfied. 
	r0 = r0 -|- r2 (s) || r3 = [i0++]; //chs 0 32 (lo hi), load aperture.
	r1 = r1 -|- r3 (s) ; //chs 64 96
	//shift to bit 0 -- have to shift anyway, as these are 16 bit packed. 
	r0 = r0 >>> 15 (v); //these will be -1 or 0. 
	r1 = r1 >>> 15 (v); 
	r0 = -r0 (v); //now 0 or 1, hi and low sections.
	r1 = -r1 (v); //save these for later packing into a nibble..
	r1 <<= 3; 
	r0 <<= 2; 
	r0 = r0 + r1; 
	r0 = r0 + r6; //templ. A match.
/* contents:
	low nibble r0.l 
	[ch 64 B][ch 0 B][ch 64 A][ch 0 A]
	low nibble r0.h
	[ch 96 B][ch 32 B][ch 96 A][ch 32 A]
	must merge the two nibbles into a byte, which we can 'or' and write. 
*/
	p0 = [FP - FP_CHAN]; //byte addressing so we be okay.
	p1 = [FP - FP_ENC_LUT_BASE]; //3 cycle latency before we can use p1.
	p5 = [FP - FP_MATCH_BASE]; 
	r0.h = r0.h << 4; 
	r0.l = r0.l + r0.h; 
	//[ch 96 B][ch 32 B][ch 96 A][ch 32 A][ch 64 B][ch 0 B][ch 64 A][ch 0 A]
	r0 = r0.b (z); //this is necessay - otherwise we get 0x00010010 e.g. if ch 64 active.
	r6 = p0; //r6 = chan
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
	/* r4 = packet byte count (qs)
		r5 = number of queued packets, 0-15
		r6 = mux channel (0-31)
		*/
	r0 = 31;
	//check to see if it should be written to queue.
	cc = r6 == r0
	if !cc jump end_txchan (bp); //predict not taken -- most likely.
		//pointers p0 and p5 are free; p1 and p3 are static and are reset below.
		p0 = [FP - FP_TXCHAN0];
		p1 = [FP - FP_TXCHAN1];
		p3 = [FP - FP_TXCHAN2];
		p5 = [FP - FP_TXCHAN3];
		r0 = b[p0];
		r1 = b[p1];
		r2 = b[p3];
		r3 = b[p5];
		b[p4++] = r0;
		b[p4++] = r1;
		b[p4++] = r2;
		b[p4++] = r3;
		r4 = [FP - FP_QS];
		r7 = 6; 
		r4 += 1; 
		i3 += 4; //implement delay line - we're on the last ch.
		cc = r4 == r7; 
		if !cc jump end_txchan_qs (bp); //finish a packet.
			//hide latency by managing flag.
			r5 = [FP - FP_QPACKETS];
			p1 = r5; //used to index to state_lut ; hide 4 cycle latency.
			p0 = [FP - FP_STATE_LUT_BASE]; 
			p5 = [FP - FP_MATCH_PTR7]; //must cycle through 256 bytes.
			r5 += 1; //one more packet on the queue.
			[FP - FP_QPACKETS] = r5;
			p0 = (p0 + p1) << 2; // 4 byte align.
			r5 = [FP - FP_ECHO]; //echo flag in bits 31, 23, 15, 7. 
			r7 = [p0];
			//could easily put in an echo flag here; 
			// client has to write properly-masked bits!
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
			bitclr(r7,6); //loop within 64 bytes.
			bitset(r7,5); //stay in 7b region.
			[FP - FP_MATCH_PTR7] = r7;
			//latency hidden, write template matches.
			[p4++] = r0;
			[p4++] = r1; 
			r4 = 0; //also clears sample count qs.
			[p5--] = r4; //reset template match, 8b region.
			[p5--] = r4;
end_txchan_qs:
		[FP - FP_QS] = r4; 
		r7 = p4; //make p4 loop.
		bitclr(r7, 10); //two 512-byte frames.
		p4 = r7; 
end_txchan:
	p1 = [FP - FP_FIO_FLAG_D]; //reset the pointers.
	p3 = [FP - FP_SPI_TDBR]; //saves clock relative to push/pop stack.
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

	r0 = 30(z); //because we pre-increment, and the ADC/SPORT implies pipeline.
	[FP - FP_CHAN] = r0;  
	r0 = 0; 
	[FP - FP_QS] = r0;
	[FP - FP_QPACKETS] = r0;
	r0.l = 0x8080;
	r0.h = 0x8080; 
	[FP - FP_8080] = r0;
	r0.l = 0x5555; 
	r0.h = 0x5555;
	[FP - FP_5555] = r0; 
	r0.l = 0xaaaa; 
	r0.h = 0xaaaa;
	[FP - FP_AAAA] = r0; 
	r0.l = 0x0003; 
	r0.h = 0x7fff;
	[FP - FP_WEIGHTDECAY] = r0;
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
	//setup the pointers now; careful, this is tricky! 
	//channel 0. 
	r0.l = LO(W1 + 10*4 + 0 + 1); //little-endian
	r0.h = HI(W1 + 10*4 + 0 + 1); 
	[FP - FP_TXCHAN0] = r0; 
	//channel 32. 
	r0.l = LO(W1 + 10*4 + 2 + 1); 
	r0.h = HI(W1 + 10*4 + 2 + 1); 
	[FP - FP_TXCHAN1] = r0; 
	//channel 64. 
	r0.l = LO(W1 + 22*4 + 0 + 1); 
	r0.h = HI(W1 + 22*4 + 0 + 1); 
	[FP - FP_TXCHAN2] = r0; 
	//channel 96. 
	r0.l = LO(W1 + 22*4 + 2 + 1); 
	r0.h = HI(W1 + 22*4 + 2 + 1); 
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
	
	// --coefficients. 
	i0.l = LO(A1); 
	i0.h = HI(A1);
	l0 = A1_STRIDE*32*4; /* A1_STRIDE in 4 byte units.
	   see memory.h - it's complicated now.*/
	m0 = -7*4; //for moving back to start of LMS weights.
	b0 = i0; //or: 16 chan, 18 4-bytes reads.  
	
	// --this is for reading delays.
	i1.l = LO(W1); 
	i1.h = HI(W1);
	l1 = W1_STRIDE*2*32*4;//bytes: 26 32 bit words / channel by 32 channels 
	m1 = -7*W1_STRIDE*2*4;//for moving back 7 channels (in same bank)
	b1 = i1; 	//base address of the delay taps. 
	
	// i2 is for writing delays. 
	i2 = i1; 
	l2 = l1; 
	m2 = W1_STRIDE*2*4; //for moving forward one channel's delays in LMS.
	b2 = b1; 
	
	//i3 is for reading/writing template delays (post-filter)
	i3.l = LO(T1);
	i3.h = HI(T1);
	l3 = T1_LENGTH; 
	m3 = 4*2; //2 32-bit words -- has to jump to the read point for LMS
	b3 = i3; 
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
/*	leave i0 at channel 62 ( -2, remembering we do 2 cycles per STEP pulse)
	this is to compensate for pipeline delays in the sample / SPORT controller
		(FP_CHAN starts at 30 for this reason -- -2 here for pre-increment.)
	and to make the filter taps be where expected in memory
		(hence where expected from the client.)
*/
	p5 = 32+31 (x); 
	lsetup(lt_top,lt_bot) lc0 = p5;  
lt_top:
	p5 = 2; 
	lsetup(lt2_top,lt2_bot) lc1 = p5; 
lt2_top:
	//gain and integrator
	r0.l = 32000; 	w[i0++] = r0.l;
	r0.l = -16384;	w[i0++] = r0.l;
	r0.l = 16384; 	w[i0++] = r0.l;
	r0.l = 800; 	w[i0++] = r0.l;
	//AGC
	r0.l = 9915;	w[i0++] = r0.l; // AGC target. sqrt(6000*16384)
	r0.l = 9915;	w[i0++] = r0.l; 
	r0.l = 16384; 	w[i0++] = r0.l;
	r0.l = 1; 		w[i0++] = r0.l; //make it sorta bang-bang
	//LMS coef. (7)
	r0 = 0 (x);	
	[i0++] = r0;
	[i0++] = r0; 
	[i0++] = r0; 
	[i0++] = r0;
	[i0++] = r0; 
	[i0++] = r0; 
	[i0++] = r0;
	//lowpass biquad.
	r0 = 7892 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 15785 (x); w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 5293 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -7479 (x); w[i0++] = r0.l; w[i0++] = r0.l; //4
	
	//highpass biquad.
	r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -30687 (x);w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 31397 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -15172 (x);w[i0++] = r0.l; w[i0++] = r0.l;
	
	//lowpass biquad.
	r0 = 7892 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 15782 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 3824 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -854 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	
	//highpass biquad.
	r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -30681 (x);w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = 29836 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
	r0 = -13603 (x);w[i0++] = r0.l; w[i0++] = r0.l; 
lt2_bot: nop; 
	//templates.

	// 127 113 102 111 132 155 195 235 250 224 187 160 142 126
	r0 = 127; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; //this is the 'new' sample.
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //16 template b is in order.
	r0 = 113; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; //not efficient but whatever.
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //1
	r0 = 102; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //2
	r0 = 111; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //3
	r0 = 132; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //4
	r0 = 155; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //5
	r0 = 195; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //6
	r0 = 235; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //7
	r0 = 250; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //8
	r0 = 224; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //9
	r0 = 187; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //10
	r0 = 160; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //11
	r0 = 142; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //12
	r0 = 126; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //13
	r0 = 120; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //14
	r0 = 110; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //15
	//aperture: default small.
	r0.l = 56; r0.h = 56; [i0++] = r0; [i0++] = r0;
	
	// 127 113 102 111 132 155 195 235 250 224 187 160 142 127
	r0 = 127; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; //not efficient but whatever.
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //1
	r0 = 113; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //2
	r0 = 102; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //3
	r0 = 111; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //4
	r0 = 132; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //5
	r0 = 155; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //6
	r0 = 195; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //7
	r0 = 235; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //8
	r0 = 250; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //9
	r0 = 224; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //10
	r0 = 187; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //11
	r0 = 160; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //12
	r0 = 142; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //13
	r0 = 127; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //14
	r0 = 110; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //15
	r0 = 95; 	r1 = r0 << 8; r2 = r1 << 8; r3 = r2 << 8; 
				r0 = r0 | r1; r0 = r0 | r2; r0 = r0 | r3; [i0++] = r0; //16
	//aperture: default small.
	r0.l = 56; r0.h = 56; [i0++] = r0; [i0++] = r0;

lt_bot: nop; 

	//now, zero the delays.
	p5 = (32+31)*W1_STRIDE*2; //leave pointers on ch 31; see above.
	r0 = 0; 
	lsetup(zer_top,zer_bot) lc0 = p5;  
zer_top:
	[i1++] = r0; //zero delays.
	r1 = [i2++]; //no effect other than keep pointers in sync.
zer_bot:
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
	call _clearirq_asm; 
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
