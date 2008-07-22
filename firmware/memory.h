#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h
//gcc gets to touch 0xFF90 0000 (sram bank B, size: 0x8000)
// we get to stomp over 0xFF80 0000 (sram bank A, same size)
//#define LMS_X 0xFF800000 //16 * 8 matrix = 256 bytes. 
//note: Both data transfers can access the same data bank if they use different sub-banks
//#define LMS_H 0xFF801000 //much larger matrix of weights - 
// size 15*16*8*2 = 3840 bytes. (0xF00, of course)
#define IIR_DELAY 0xFF800000 //length 320 (10 * 8 chan * 4 bytes)
#define IIR_WEIGHTS 0xFF801000 //length 32 (4 biquads * 4 weights * 2 bytes )

#pointers for global variables indexed off the frame pointer (fp)
#define CHAN_AVG 		0
#define CHAN_SUM		4


#define CONFIG_CLKIN_HZ          25000000 /*external clock*/
/* CONFIG_CLKIN_HALF controls what is passed to PLL 0=CLKIN      */
/*                                                  1=CLKIN/2    */
#define CONFIG_CLKIN_HALF               0 
/* CONFIG_PLL_BYPASS controls if the PLL is used 0=don't bypass  */
/*                                               1=bypass PLL    */
#define CONFIG_PLL_BYPASS               0
/* CONFIG_VCO_MULT controls what the multiplier of the PLL is.   */
/* Values can range from 1-64                                    */
#define CONFIG_VCO_MULT			24

#ifndef LO
#define LO(con32) ((con32) & 0xFFFF)
#endif
#ifndef HI
#define HI(con32) (((con32) >> 16) & 0xFFFF)
#endif

#endif
