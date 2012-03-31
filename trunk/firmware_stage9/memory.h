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
	Filter coeficients A1:
	0xFF90 4000	-- read with i0. (and write, in the case of LMS).
		toggle step  | toggle reset (on the correct channel)
		{
			32000, -16384 		integrator, pre-scale (lo, hi)
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
			AGC, 16384, 1 (mu).
			b00 b01 b02 a00 a01	-- unit 1.
			b10 b11 b12 a10 a12
			threshold unit 1
			b00 b01 b02 a00 a01	-- unit 2.
			b10 b11 b12 a10 a12
			threshold unit 2
			loadmask unit 1
			loadmask unit 2
		} X2 (44 altogether, = A1_STRIDE)
		channel, 0-31

		Total (both sports): 88 + 2 = 90
		90 * 32 * 4 = 11520, 0x2D00.
		end at 0xFF90 6D00


	Taps/delays/data:
			read with i1, write with i2.
	0xFF80 4000
				integral
				sample, mean removed, pre LMS.
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
	total length: 4kb, 0x1000
	0xFF80 5000	end of delay buffer.

	T1: stores state, indexed by i3.
	0	m1[0]		16*4
	1	m2[0]		m0*1
	2	qs[0]		0
	3	m1[1]		15*4
	4	m2[1]		m0*2
	5	qs[1]		1
	6	m1[2]		14*4
	7	m2[2]		m0*3
	8	qs[2]		2
	9	m1[3]		13*4
	10	m2[3]		m0*4
	11	qs[3]		3
	12	m1[4]		12*4
	13	m2[4]		m0*5
	14	qs[4]		4
	15	m1[5]		11*4
	16	m2[5]		m0*6
	17	qs[5]		5

	18	sf[0]		0x0000 0000 --state flag. bits 31, 23, 15, 7 (mask 0x80808080)
	19 mp[0]		(MATCH + 32 + 0*8) --32 for 7b region, 8 for # match bytes/pkt.

	20	m1[0]		10*4
	21	m2[0]		m0*7
	22	qs[0]		0
	23	m1[1]		9*4
	24	m2[1]		m0*8
	25	qs[1]		1
	26	m1[2]		8*4
	27	m2[2]		m0*9
	28	qs[2]		2
	29	m1[3]		7*4
	30	m2[3]		m0*10
	31	qs[3]		3
	32	m1[4]		6*4
	33	m2[4]		m0*11
	34	qs[4]		4
	35	m1[5]		5*4
	36	m2[5]		m0*12
	37	qs[5]		5

	38	sf[1]		0x0000 0080 --state flag. bits 31, 23, 15, 7 (mask 0x80808080)
	39 mp[1]		(MATCH + 32 + 1*8) -- '1' this varies from 0-3.

	Total length of this buffer is determined by the three cycles it supports: 15, 6, and 16
	(15 for LMS, 6 for packet samples, 16 for state flag (and 4 for match write.)
	-- LCM: 5*3*2^4 = 240.
	This is too big; we have 0x1000 memory available.
	Each packet consumes 20 words (above), or 80 bytes, so we have space for 51 packets.
	Packets must come in multiple of 16 -- unlike LMS which can be skipped -- so
	we have space for 48 packets.
	This will go through 19.2 LMS updates -- most LMS weights will be updated 19 times,
	and 1/5 will be updated 20 times.  Seems OK!
*/
#define A1 				0xFF904000  /** BANK B **/ //i0 accesses -- coefficients.
#define A1_STEP		1			//should *not* change this from the client. unless I make a mistake.
#define A1_INT			2			//units: 32bit words.
#define A1_LMS			16			//15 taps + weight decay.
#define A1_AGC			2			//4 coefs per 4 biquads.
#define A1_IIR			10
#define A1_INTR		0
#define A1_LMSA		(A1_INTR + A1_INT) //2
#define A1_AGCS		(A1_LMSA + A1_LMS) //18
#define A1_IIRA		(A1_AGCS + A1_AGC) //20
#define A1_UNITA		(A1_IIRA + A1_IIR) //30
#define A1_IIRB		(A1_UNITA + 1) //31
#define A1_UNITB		(A1_IIRB + A1_IIR) //41
#define A1_STRIDE 	(A1_UNITB + 3) //total: 44.
#define A1_PITCH		(A1_STRIDE*2 + 2) //step and channel afterward.

#define FP_BASE		0xFF906F00 //length: 0x200, 512 bytes.
	// ** Frame pointer counts down! **

#define TEMP_BUFFER 		0xFF906F00 //128 bytes = 0x80;
#define PRINTF_BUFFER_SIZE 128
#define PRINTF_BUFFER 	0xFF906F80 //same size, 128.
#define GCC_RESERVED 	0xFF907000 //above this GCC stomps around on.

#define W1 				0xFF804000  /** BANK A **/
#define W1_STRIDE	 	16 // see above.
						  //total length = W1_STRIDE * 2 * 32 * 4 = 4k = 0x1000 bytes
#define T1				0xFF805000 //accessed by i3, read/write LMS & state.
#define T1_LENGTH		(48*20*4) //3840, 0xF00


#define MATCH			0xFF806000 //256 bits, 128 channels * 2 templates.
#define MATCH_LENGTH	64    // 32 bytes, or 8 4-byte words, TWICE -
							//second half is 7-b encoded.

#define ENC_LUT		0xff806100 //256 bytes, map 8 bits -> 7 bits.
#define STATE_LUT		0xff806200 // 16 32bit words, 64 bytes.

#define WFBUF			0xFF807000  //really the transmit buffer.
#define WFBUF_LEN		1024		// length 2 512 byte, 16-packet frames.



//use the frame pointer to store local variables for fast access.
#define FP_QPACKETS		4
#define FP_ADDRESS		8  //for RX
#define FP_VALUE			12  //for RX
#define FP_TXCHAN3		16
#define FP_TXCHAN2		20
#define FP_TXCHAN1		24
#define FP_TXCHAN0		28
#define FP_TIMER			32
#define FP_MATCH			36
#define FP_SPORT0_RX		40
#define FP_SPI_TDBR		44
#define FP_FIO_FLAG_D	48
#define FP_MATCH_BASE	52 //= MATCH, defined above. write ptr= this + FP_CHAN
#define FP_MATCH_PTR7	56
#define FP_ENC_LUT_BASE	60
#define FP_STATE_LUT_BASE 64 //need this for echo flag.
#define FP_ECHO			68
#define FP_BLINK			72
#define FP_0FFF0FFF		76

#ifndef LO
#define LO(con32) ((con32) & 0xFFFF)
#endif
#ifndef HI
#define HI(con32) (((con32) >> 16) & 0xFFFF)
#endif

//pins.
#define STEP 			0x0100
#define MUXRESET 		0x0080  //active low; must keep it high.
#define LED_BLINK		0x0010  //blink LED.

#endif
