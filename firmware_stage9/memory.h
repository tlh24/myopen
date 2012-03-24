#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h --have to clean this up, it's crufty!
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
hence, the weights and taps should, at least, be on different sub-banks.*/
/* Bank B */
/*
memory map:
	0xFF90 4000	filter coeficients, b[0] b[1] a[0] a[1] ordering.
			4864 bytes = length 0x1300; end at 0xff90 5300
	0xFF80 4000	mean		-- different bank so we don't get collisions.
				x1 n-1
				x1 n-2
				y1 n-1	x2 n-1
				y1 n-2	x2 n-2
				y2 n-1	x3 n-1
				y2 n-2	x3 n-2
				y3 n-1	x4 n-1
				y3 n-2	x4 n-2
				y4 n-1
				y4 n-2		--total: 11 32 bit words. 2816 bytes total buffer for 64 chan.
	length b00
	0xFF80 4b00	end of delay buffer.
*/
#define A1 				0xFF904000  /** BANK B **/ //i0 accesses -- coefficients.
#define A1_AGC			4			//units: 32bit words.
#define A1_LMS			7
#define A1_IIR			16			//4 coefs per 4 biquads.
#define A1_TEMPLATE		16
#define A1_APERTURE		2			// 4 16-bit words
#define A1_IIRSTARTA	(A1_AGC + A1_LMS) //11
#define A1_AGCB		(A1_IIRSTARTA + A1_IIR)
#define A1_IIRSTARTB	(A1_AGCB + A1_AGC + A1_LMS) //38
#define A1_TEMPA		(A1_IIRSTARTB + A1_IIR) //54
#define A1_APERTUREA	(A1_TEMPA + A1_TEMPLATE) //68
#define A1_TEMPB		(A1_APERTUREA + A1_APERTURE) //72
#define A1_APERTUREB	(A1_TEMPB + A1_TEMPLATE) //88
#define A1_STRIDE		(A1_APERTUREB + A1_APERTURE) // 90; // total 11520 0x2D00
		// (agc+lms+iir)*2 + (template + aperture)*2 = 90 ok!
#define FP_BASE			0xFF906F00 //length: 0x200, 512 bytes.
	// ** Frame pointer counts down! **

#define TEMP_BUFFER 	0xFF906F00 //128 bytes = 0x80;
#define PRINTF_BUFFER_SIZE 128
#define PRINTF_BUFFER 	0xFF906F80 //same size, 128.
#define GCC_RESERVED 	0xFF907000 //above this GCC stomps around on.

#define W1 				0xFF804000  /** BANK A **/
#define	W1_STRIDE		14 // (10 words per IIR, 1 mean, 1 gain, 2 lms).
						  //total length = W1_STRIDE * 2 * 32 * 4 = 3584 = 0xE00 bytes
#define T1				0xFF805000 //accessed by i3, read/write delayed filtered signal
#define T1_LENGTH		(16*32*4) // 16 delays, both templates matched to same delay,
									//32 channels, 4 bytes each ch.
									// 2048 = 0x800
#define MATCH			0xFF806000 //256 bits, 128 channels * 2 templates.
#define MATCH_LENGTH	64    // 32 bytes. 8 words, TWICE -
							//second half is 7-b encoded.

#define ENC_LUT			0xff806100 //256 bytes, map 8 bits -> 7 bits.
#define STATE_LUT		0xff806200 // 16 32bit words, 64 bytes.

#define WFBUF			0xFF807000  //really the transmit buffer.
#define WFBUF_LEN		1024		// length 2 512 byte, 16-packet frames.



//use the frame pointer to store local variables for fast access.
#define FP_CHAN			4
#define FP_QS			8 //queue state -- how many samples have we written?
#define FP_QPACKETS		12
#define FP_ADDRESS		16  //for RX
#define FP_VALUE		20  //for RX
#define FP_TXCHAN3		24
#define FP_TXCHAN2		28
#define FP_TXCHAN1		32
#define FP_TXCHAN0		36
#define FP_TIMER		40
#define FP_WEIGHTDECAY	44
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
