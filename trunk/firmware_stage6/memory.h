#ifndef __MEMORY_H__
#define __MEMORY_H__

//gcc gets to touch 0xFF90 0000 (sram bank B, size: 0x8000)
// we get to stomp over 0xFF80 0000 (sram bank A, same size)
// don't need to run filters anymore - that's on the wireless part - 
// so can use for whatever.
#define PRINTF_TEMP	0xff800000
#define PRINTF_OUT	0xff800400
#define PRINTF_BUFFER_SIZE 0x0400 //1kbytes

//global pointers!! 
#define GTIME 0xff800800
#define pGTIME ((u32*)GTIME)
#define WR_PTR	(GTIME+4)
#define pWR_PTR ((u32*)WR_PTR)
#define TR_PTR	(GTIME+8)
#define pTR_PTR ((u32*)TR_PTR)
#define RAW_ENAB (GTIME+12)
#define pRAW_ENAB ((u8*)RAW_ENAB)



/* ethernet buffers!! */
#define RXBUF_BASE_ADDR		0xff801000  //in L1.
	//length: 0x610 * 4 = 0x1840
#define TXBUF_BASE_ADDR		0xff803000
	//same length as the rxbuf.

//SDRAM, 32mbytes = 2^25 = 0x0 to 0x0020 0000 - 1
#define HTTP_HEADER		0x4000 //256 bytes. 
#define HTTP_CONTENT	0x4100 //i don't know how big we'll need? 
#define HTTP_RX		0x10000 //have 48K (0xBF00)


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
