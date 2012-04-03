#include "memory.h"

.global _init6
_init6:
	//the purpose of this is only initalize memory acessed by the looping pointers.
	//i0 first: accesses A0.
	i0.l = LO(A1);
	i0.h = HI(A1);
	b0 = i0;
	l0.l = LO(A1_PITCH*32*4);
	l0.h = HI(A1_PITCH*32*4);
	//set m0 correctly for LMS (used to increment i1, hence W1 pitch)
	m0.l = LO(W1_STRIDE*2*2*4);
	m0.h = HI(W1_STRIDE*2*2*4);
	p5 = 32;
	r1 = 0;
	lsetup(lt_top,lt_bot) lc0 = p5;
lt_top:
		r0 = STEP (x); [i0++] = r0; //sets the toggle.
		p5 = 2;
		lsetup(lt2_top,lt2_bot) lc1 = p5;
lt2_top:
			r0.l = 32000 ; r0.h = -16384 ;  [i0++] = r0;
			r0.l = 16384 ; r0.h =  900   ;  [i0++] = r0;
			r0 = 0;  //LMS coef:
			[i0++] = r0; //1
			[i0++] = r0; //2
			[i0++] = r0; //3
			[i0++] = r0; //4
			[i0++] = r0; //5
			[i0++] = r0; //6
			[i0++] = r0; //7
			[i0++] = r0; //8
			[i0++] = r0; //9
			[i0++] = r0; //10
			[i0++] = r0; //11
			[i0++] = r0; //12
			[i0++] = r0; //13
			[i0++] = r0; //14
			[i0++] = r0; //15
			r0.l = 0x7fff;		w[i0++] = r0.l; w[i0++] = r0.l; //LMS weight decay.
			r0.l = 9915; r0.h = 9915;  [i0++] = r0; // AGC target. sqrt(6000*16384);
			r0.l = 16384; r0.h = 1  ;  [i0++] = r0; //AGC gain scaler / mu.
			//init IIR matched filters with GP lowpass / highpass.
			//lowpass biquad.
			r0 = 7892 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 15785 (x); 	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 7892 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 5293 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -7479 (x); 	w[i0++] = r0.l; w[i0++] = r0.l; //4

			//highpass biquad.
			r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -30687 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 31397 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -15172 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			//threshold.
			r0 = 10000 (x) ;	w[i0++] = r0.l; w[i0++] = r0.l;

			//second unit.
			//lowpass biquad.
			r0 = 7892 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 15782 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 7892 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 3824 (x);		w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -854 (x);		w[i0++] = r0.l; w[i0++] = r0.l;

			//highpass biquad.
			r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -30681 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 15342 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = 29836 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			r0 = -13603 (x);	w[i0++] = r0.l; w[i0++] = r0.l;
			//threshold.
			r0 = 10000 (x) ;	w[i0++] = r0.l; w[i0++] = r0.l;
			r0.l = 0x1; 		w[i0++] = r0.l; 
			r0.l = 0x10; 	w[i0++] = r0.l; //little-endian. check this.
			r0.l = 0x2; 		w[i0++] = r0.l; 
			r0.l = 0x20; 	w[i0++] = r0.l; 
lt2_bot:
		m3 = 8 ; //move back to rewrite masks.
		i0 -= m3; 
		r0.l = 0x4; 		w[i0++] = r0.l; 
		r0.l = 0x40; 	w[i0++] = r0.l; //little-endian. check this.
		r0.l = 0x8; 		w[i0++] = r0.l; 
		r0.l = 0x80; 	w[i0++] = r0.l; 
		[i0++] = r1; //channel.
		r0 = 1;
		r1 = r1 + r0;
lt_bot:
	/* i0 should at this point be back to the beginning.
	need to go back to set the reset signal properly.
	there are two pipeline delays: one in the intan MUX, and one in the SPORT.
	without pipeline delays, reset should be asserted when ch = 31
	with, when ch = 29. */
	p0.l = LO(A1 + A1_PITCH*29*4);
	p0.h = HI(A1 + A1_PITCH*29*4);
	r0 = MUXRESET;
	[p0] = r0;

	// now for i1, i2, which both index the taps.
	// all taps should be fine with an initial value of 0,
	// including AGC -- gain will rapidly ramp up.
	i1.l = LO(W1);
	i1.h = HI(W1);
	l1.l = LO(W1_STRIDE*2*32*4);
	l1.h = HI(W1_STRIDE*2*32*4);
	i2 = i1;
	b1 = i1;
	b2 = i2;
	l2 = l1;
	// modify registers m1 and m2 written each loop, as part of LMS.
	//set them here anyway (see memory.h for an explanation)
	m1 = 16*4; 
	m2 = m0; 
	// now zero the taps.
	p0.l = LO(W1); //p0 is free -- don't use p2 or p4, they are fixed!
	p0.h = HI(W1); 
	p5.l = LO(W1_STRIDE*2*32);
	p5.h = HI(W1_STRIDE*2*32);
	r0 = 0; 
	lsetup(lt3_top,lt3_bot) lc0 = p5;
lt3_top:
		nop;
		[p0++] = r0;
lt3_bot:
	nop; 
	//finally, i3, which stores LMS offset / packet states.
	i3.l = LO(T1)
	i3.h = HI(T1);
	l3.l = LO(T1_LENGTH);
	l3.h = HI(T1_LENGTH);
	b3 = i3;
	m3 = 8; 


	r0 = 0; // counter, 0-15.
	r1 = m0;
	r2 = 0; //state flag / match pointer counter; only high word, though.
	r7 = 0; // packet state, 0-5. 
	p5 = 48;
	lsetup(lt4_top,lt4_bot) lc0 = p5;
lt4_top:
		nop; 
		p5 = 6;
		lsetup(lt5_top,lt5_bot) lc1 = p5;
lt5_top:
			r4 = 16;
			r3 = r4 - r0; //(16-n)
			r4 = 4;
			r3 *= r4; //(16-n)*4
			[i3++] = r3;
			r4 = 1;
			r3 = r0 + r4; //(n+1)
			r3 *= r1; //(n+1)*m0
			[i3++] = r3;
			[i3++] = r7; // n
			r0 = r0 + r4;
			r7 = r7 + r4; 
			r4 = 15;
			cc = r0 == r4
			if !cc jump no_rollover
				r0 = 0;
no_rollover:
			nop;
			r4 = 6;
			cc = r7 == r4
			if !cc jump no_rollover2
				r7 = 0;
no_rollover2:
			nop;
lt5_bot:
		nop; 
		//set state flag and match pointer.
		r5 = 0;
		r3 = r2 << (31 - 3);
		r4 = 1;
		r4 = r4 << 31;
		r3 = r3 & r4;
		r5 = r5 | r3;
		r3 = r2 << (23 - 2);
		r4 = r4 >> 8;
		r3 = r3 & r4;
		r5 = r5 | r3;
		r3 = r2 << (15 - 1);
		r4 = r4 >> 8;
		r3 = r3 & r4;
		r5 = r5 | r3;
		r3 = r2 << (7 - 0);
		r4 = r4 >> 8;
		r3 = r3 & r4;
		r5 = r5 | r3;
		[i3++] = r5;
		r3.l = LO(MATCH+32);
		r3.h = HI(MATCH+32);
		r4 = 3;
		r5 = r2 & r4; //loop 0-3.
		r5 = r5 << 3; //sf*8
		r5 = r5 + r3;
		[i3++] = r5;
		r4 = 1;
		r2 = r2 + r4;
		r4 = 15; // 16 packets / frame.
		r2 = r2 & r4; //loop 0-15.
lt4_bot:
	nop;
	r0 = 0; //so that we have something to stop on.
	//leaf subroutine. return.
	RTS;