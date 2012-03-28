#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h -- how the memory is laid out in the blackfin.
/* BF-532 has two memory banks -
0xff904000 (B) and 0xff804000 (A)
rules for memory conflicts:  (from Analog EE-197, look it up!)
A one cycle stall is incurred during a collision of simultaneous
accesses only if the accesses are to
* the same 32-bit word polarity (address bits 2 match),
* the same 4 KB sub-bank (address bits 13 and 12 match),
	4kb = 0x1000, e.g. one bank = 0xff904000 - 0xff904fff.
* the same 16 KB half-bank (address bits 16 match),
* the same bank (address bits 21 and 20 match).
"
hence, the weights and taps should, at least, be on different sub-banks.
we put them on separate banks completely. */
/* Bank B */
/*
memory map:
	Filter coeficients:
		0xFF90 4000
		read with i0. (and write, in the case of LMS).
		clear step | clear reset.
		set step  | set reset (on the correct channel)
		{
			32000, -16384 		integrator, pre-scale.
			16384, 800			integrator, mu
			LMS 0					m0 increments 2 channels (below)
			LMS 1					m1 jump back to update weight,
			LMS 2						2 to 16 32b words.
			LMS 3					m2 jump forward to update channel,
			LMS 4						multiple of m0.
			LMS 5					i3 indexes a table which loads m1, m2.
			LMS 6
			LMS 7
			LMS 8
			LMS 9
			LMS 10
			LMS 11
			LMS 12
			LMS 13
			LMS 14
			LMS weight decay (16384 = none, sneezle.).
			AGC targets, sqrt.
			AGC, 16384 & mu.
			b00 b01 b02 a00 a01	-- unit 1.
			b10 b11 b12 a10 a12
			threshold unit 1
			loadmask unit 1
			b00 b01 b02 a00 a01	-- unit 2.
			b10 b11 b12 a10 a12
			threshold unit 2
			loadmask unit 2
		} X2
		0x0fff0fff
		channel, 0-31

		Total (one sport): XXX
		88 * 32 * 4 = 11264, 0x2C00.
		end at 0xFF90 6C00


	Taps/delays/data:
			read with i1, write with i2.
	0xFF80 4000
				integral
				sample, mean removed.
				saturated sample
				gain
				x1 n-1 	(unit 1)
				x1 n-2
				y1 n-1	x2 n-1
				y1 n-2	x2 n-2
				y2 n-1
				y2 n-2
				x1 n-1 	(unit 2)
				x1 n-2
				y1 n-1	x2 n-1
				y1 n-2	x2 n-2
				y2 n-1
				y2 n-2
			-- and repeat for SPORT1.
	Total: 16*2 * 32 ch * 32-bit words -- perfect!
		m0 offset just (update channel+1) << (5+1+2)
			5 for 32 words / loop,
			1 for increment 2 channels (15 LMS taps, not 31),
			2 for 4 bytes/word.
			update channel goes from 0 14 hence.
	total length: 4k, 0x1000
	0xFF80 5000	end of delay buffer.
*/
#define A1 				0xFF904000  /** BANK B **/ //i0 accesses -- coefficients.
#define A1_INT			2			//units: 32bit words.
#define A1_LMS			16			//15 taps + weight decay.
#define A1_AGC			2			//4 coefs per 4 biquads.
#define A1_IIR			10
#define A1_UNIT		2
#define A1_INTS		0
#define A1_LMSA		(A1_INTR + A1_INT) //2
#define A1_AGCS		(A1_LMSA + A1_LMS) //18
#define A1_IIRA		(A1_AGCS + A1_AGC) //20
#define A1_UNITA		(A1_IIRA + A1_IIR) //30
#define A1_IIRB		(A1_UNITA + A1_UNIT) //32
#define A1_UNITB		(A1_IIRB + A1_IIR) //42
#define A1_STRIDE 	(A1_UNITB + A1_UNIT) //total: 44.

#define FP_BASE		0xFF906F00 //length: 0x200, 512 bytes.
	// ** Frame pointer counts down! **

#define TEMP_BUFFER 		0xFF906F00 //128 bytes = 0x80;
#define PRINTF_BUFFER_SIZE 128
#define PRINTF_BUFFER 	0xFF906F80 //same size, 128.
#define GCC_RESERVED 	0xFF907000 //above this GCC stomps around on.

#define W1 				0xFF804000  /** BANK A **/
#define W1_STRIDE	 	16 // see above.
						  //total length = W1_STRIDE * 2 * 32 * 4 = 4k = 0x1000 bytes
#define T1				0xFF805000 //accessed by i3, read/write delayed filtered signal
#define T1_LENGTH		(16*32*4) // 16 delays, both templates matched to same delay,
									//32 channels, 4 bytes each ch.
									// 2048 = 0x800
#define MATCH			0xFF806000 //256 bits, 128 channels * 2 templates.
#define MATCH_LENGTH	64    // 32 bytes. 8 words, TWICE -
							//second half is 7-b encoded.

#define ENC_LUT		0xff806100 //256 bytes, map 8 bits -> 7 bits.
#define STATE_LUT		0xff806200 // 16 32bit words, 64 bytes.

#define WFBUF			0xFF807000  //really the transmit buffer.
#define WFBUF_LEN		1024		// length 2 512 byte, 16-packet frames.



//use the frame pointer to store local variables for fast access.
#define FP_CHAN			4
#define FP_QS				8 //queue state -- how many samples have we written?
#define FP_QPACKETS		12
#define FP_ADDRESS		16  //for RX
#define FP_VALUE			20  //for RX
#define FP_TXCHAN3		24
#define FP_TXCHAN2		28
#define FP_TXCHAN1		32
#define FP_TXCHAN0		36
#define FP_TIMER			40
#define FP_MATCH			44
#define FP_8080			48
#define FP_5555			52
#define FP_AAAA			56
#define FP_SPORT0_RX	60
#define FP_SPI_TDBR		64
#define FP_FIO_FLAG_D	68
#define FP_MATCH_BASE	72 //= MATCH, defined above. write ptr= this + FP_CHAN
#define FP_MATCH_PTR7	76
#define FP_ENC_LUT_BASE	80
#define FP_STATE_LUT_BASE 84
#define FP_ECHO			88
#define FP_BLINK			92

#ifndef LO
#define LO(con32) ((con32) & 0xFFFF)
#endif
#ifndef HI
#define HI(con32) (((con32) >> 16) & 0xFFFF)
#endif

#endif
