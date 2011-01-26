#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h --have to clean this up, it's crufty!
/* BF-532 has two memory banks - 
0xff904000 (B) and 0xff804000 (A)
rules for memory conflicts: "
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
			1024 bytes = length 0x400; end at 0xff90 4400
	0xFF90 5000	mean
				x1 n-1
				x1 n-2
				y1 n-1	x2 n-1
				y1 n-2	x2 n-2
				y2 n-1	x3 n-1
				y2 n-2	x3 n-2
				y3 n-1	x4 n-1
				y3 n-2	x4 n-2
				y4 n-1
				y4 n-2		--total: 11 32 bit words. 704 bytes total buffer for 16 chan.
0	0xFF90 5280	end of delay buffer.	
*/
#define A1 			0xFF904000 //length: 1152 = 0x480
#define W1 			0xFF905000 //length: 704 = 0x2C0 -> 0x52C0
#define FP_BASE			0xFF904500 //length: 0x100, 256 bytes.
	// ** Frame pointer counts down! **

#define TEMP_BUFFER 0xFF905280 //128 bytes = 0x80; end 0x5300
#define PRINTF_BUFFER_SIZE 128
#define PRINTF_BUFFER 0xFF905300 // same size, 128. ends at 0xFF905380
#define GCC_RESERVED 0xFF906000 //above this GCC stomps around on.

//** Bank A **//
#define WFBUF		0xFF804000 //length: 16 32-byte packets, 512 bytes.
#define WFBUF_LEN 512	//actually, the length is much larger on the bridge.
		//there it can be a full 0x4000 - 16k bytes - 512 packets.


#define MASTER_CLOCK   24000000
#define SCLK_DIVIDER   4 // = 60mhz.
#define VCO_MULTIPLIER 15 //10 should = 240mhz.; 11= 264mhz.
#define CCLK_DIVIDER   1


#ifndef LO
#define LO(con32) ((con32) & 0xFFFF)
#endif
#ifndef HI
#define HI(con32) (((con32) >> 16) & 0xFFFF)
#endif

#endif
