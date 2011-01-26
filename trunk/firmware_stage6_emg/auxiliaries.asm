// Auxiliary routines


#define DELAY 0x800

#include <defBF532.h>
#include "memory.h"


.section .l1code;
.text;

.global _ptrtx;


/*
_copy28:
	//copy 28 bytes (7 32 bit words) into tx buffer. 
	//this one is source-aligned to 32 bit words. 
	//arguments: r0 = source, r1 = dest. dest must be 4 byte aligned.
	//looks like a lot, but I can't think of a better way of doing it.. 
	[--sp] = i3; 
	[--sp] = b3; 
	[--sp] = l3;
	[--sp] = (r7:4, p5:4); 
	l3 = 64; //32 2byte words
	r5 = -64 (x); //stupid trick.  can check with 'to hex'.
	r6 = r0 & r5; //bitmask. 'and' target cannot be b registers. 
	b3 = r6; 
	r5 = -4 (x); 
	r6 = r0 & r5; 
	i3 = r6; //align to 4 byte boundaries (input should be alinged to 2 byte boundaries)
	//m2 = 56; //TRASHING THE VALUE! xxyz.
	i3 -= m2; // = 28*2, circular buffering on! (56 is a multiple of 4, so alignment is maintained)
	//note: this does not copy the most recent sample. if we wanted to, then ptr would be unaligned.
	p5 = r1;
	p4 = 7; 
	//now need to decide what alignment
	cc = bittst(r0, 1)
	if cc jump copy28_1_align;
copy_28_0_align: //unused but descriptive label. 32 bit aligned.
	loop copy28loop00 lc1 = p4; 
	loop_begin copy28loop00; 
		r5 = [i3++];
		r6 = [i3++]; 
		r5 = r5 >> 8; //this will preserve the sign bit. 
		r6 = r6 >> 8; //blackfin is little endian.
		r7 = bytepack(r5, r6); 
		[p5++] = r7; 
	loop_end copy28loop00; 
	jump copy28_end; 
	
copy28_1_align: 
	//have to do two extra loads for this... 
	r5 = [i3++]; 
	r6 = [i3++]; 
	r5 = r5 >> 8; //this will preserve the sign bit. 
	r6 = r6 >> 8; 
	r4 = bytepack(r5, r6); //i wish there was a bytepack that did this already.. 
	loop copy28loop10 lc1 = p4; 
	loop_begin copy28loop10; 
		r5 = [i3++];
		r6 = [i3++]; 
		r5 = r5 >> 8; //this will preserve the sign bit. 
		r6 = r6 >> 8; 
		r7 = bytepack(r5, r6); 
		r5 = align8(r7, r4); 
		[p5++] = r5; 
		r4 = r7; 
	loop_end copy28loop10; 

copy28_end:
	(r7:4, p5:4) = [sp++]; 
	l3 = [sp++]; 
	b3 = [sp++]; 
	i3 = [sp++]; 
	rts; 
*/
/*
hand-coded (and heavily modified) assembly version of the copy_tx function. 
because, somehow, we need every cycle that we can get.. 
input: 
r5, the channel - should not be touched.
p4, the source pointer, where we just put the new sample - should not be touched.
r6, the channel & r7, the sample, must not be destroyed.
p3 points to bank b of data ram.
*/
_ptrtx:

	//first, check to see if we have overwritten anything with the latest sample.
	r0 = [fp - TXRDPTR]; //load the read pointer/counter
	r2 = (TXBUF_LEN-1)(z); //top bits will be zeros.
	p3.l = LO(TXPTRBUF);
	r1 = r0 & r2; 
	p0 = r1; 
	p1 = p3 + (p0<<2); 
	p3.l = LO(ISICOUNT); 
	r3 = [p1]; 
	r4 = p4
	cc = r3 == r4; //comparing regs in this way is faster..
	if !cc jump ptrtx_checkisi (bp); //this will almost never fail.
		//otherwise, this queued tx packet has been overwritten - kill it! 
		r1 = [fp - DROPCOUNT]; 
		r0 += 1; 
		r1 += 1; //increment the dropcount, too.
		[fp - TXRDPTR] = r0;
		[fp - DROPCOUNT] = r1; 
	//p3.h = HI(ISICOUNT); 
	//p3.l = LO(ISICOUNT); 
ptrtx_checkisi:
	//second, check the isi count of this channel. 
	p0 = r5; 
	p1 = p3+(p0<<1); //shift left 1 b/c we are addressing shorts (ISI)
	r1 = w[p1]; 
	r2 = 1(z); //have to use registers for saturation.
	r1 = r1 + r2(s); //saturate the add - don't let it overflow.  
	r2 = 27(z); 
	w[p1] = r1; //save the update. 
	cc = r1<=r2 (IU); //e.g. if the counter is 27 or lower, jump.
	if cc jump ptrtx_end; //problly they are > 27, predict not taken
		//otherwise, this one is a canidate 
		// - see if it is enabled for continuous transmission. 
		r1 = [fp - CONTMASK]; 
		r1>>=r5; 
		cc = !bittst(r1, 0x0);
		//if the bit is not set, exit. 
		if cc jump ptrtx_end (bp); 
			//ok, so it is set for continuous transmission. 
			//even if there is no space, reset the isi, 
			// so we at least wait another 28 before trying again. 
			r0 = 0; 
			w[p1] = r0; 
		
			//bitset(r0, 8); //debug
			//w[p5 + P5_FIO_TOGGLE] = r0; //debug
		
			//see if there is space. 
			r1 = [fp - TXWRPTR]; 
			r2 = [fp - TXRDPTR]; 
			r4 = (TXBUF_LEN-1)(z); 
			r3 = r1 - r2; 
			cc = r3<=r4 (iu); 
			if !cc jump ptrtx_end; //predict not taken
				//then there is space in the outgoing queue. 
				//this is a bit trixy, as the buffers are circular, 
				//and we have to write the presentbyte -28. 

				r4 = p4; //we don't modify p4, so no problems..
				//calcuate the per-channel base address. 
				r3 = r4 >> 9; 
				r3 <<= 9; 
				r4 += -28; 
				cc = r4 < r3 (iu);
				if !cc jump ptrtx_nowrap (bp); 
					r2 = 512 (z); 
					r4 = r4 + r2;
			ptrtx_nowrap:
				r1 += 1;
				[fp - TXWRPTR] = r1; //increment write pointer. 
				r1 += -1; //move it back to present pointer loc.
				//setup the spi write-pointer. 
				p3.l = LO(TXPTRBUF); 
				r2 = (TXBUF_LEN-1)(z); //should be 0x7f - note the shift is later.
				r0 = r1 & r2; //make the pointer circular. 
				p1 = r0; 
				p2 = p3 + (p1<<2); //align to u32
				[p2] = r4; //save where to start reading out...
				
				//now, write the first byte of the header -- channel and timestamp.
				p3.l = LO(TXHDRBUF); 
				//get the timestamp. 
				r3 = [fp - TIMESTAMP]; 
				p2 = p3 + (p1<<2); 
				r3 = r3 << 8; //shift left so we send the least-significant 24 bits.
				[p2] = r3; 
				b[p2] = r5; //e.g. overwrite the first byte.

				//r0 = 0; 
				//bitset(r0, 8); //debug
				//w[p5 + P5_FIO_TOGGLE] = r0; //debug
				rts; 
	//that't it i guess.. 			
ptrtx_end:
	rts; 
