#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h
//gcc gets to touch 0xFF90 0000 (sram bank B, size: 0x8000)
// we get to stomp over 0xFF80 0000 (sram bank A, same size)
#define IIR_DELAY 0xFF800000 
	//length 320 (10 * 8 chan * 4 bytes)
#define IIR_WEIGHT 0xFF801000 
	//length 32 (4 biquads * 4 weights * 2 bytes )
#define LMS_DELAY (IIR_DELAY + 320) 
	//16 * 32 matrix * 2 bytes each = 1024 bytes.
	//the extra 16 taps are for the decorrelating delay -- see lms_test.m
#define LMS_WEIGHT (IIR_WEIGHT + 32) 
	//16 * 16 matrix * 2bytes = 512 bytes. 
//note: Both data transfers can access the same data bank if they use different sub-banks
#define F_P5 (LMS_DELAY + 1024) 
	//where we store global variables. 

//pointers for global variables indexed off the frame pointer (fp)
#define F_SAMP_CTR	0 //is incremented 1 for every sample in. 
								//used to downsample by 4 (4ksps -> 1ksps)
#define F_WR_PTR		4 //where the sample will be written to in SDRAM. (pointer to pointer)
#define F_TR_PTR		8 //the transmitted sample pointer.  (transmitted over enet!)
#define F_ADC_CTR		12 //for switching between the 4 multiplexed ports of the ADC). 
#define F_MS_CTR		16 //millisecond counter.	
#define F_RAW_ENAB	20 ////enable the raw data output. only a byte.

#define SAMP_CTR (F_P5 + F_SAMP_CTR)
#define WR_PTR (F_P5 + F_WR_PTR)
#define TR_PTR (F_P5 + F_TR_PTR)
#define ADC_CTR (F_P5 + F_ADC_CTR)
#define MS_CTR (F_P5 + F_MS_CTR)
#define RAW_ENAB (F_P5 + F_RAW_ENAB)

/* ethernet buffers!! */
#define RXBUF_BASE_ADDR		0xFF802000  
	//length: 0x610 * 4 = 0x1840
#define TXBUF_BASE_ADDR		0xFF804000 
	//same length as the rxbuf.
#define RECV_BUFSIZE		(0x610) 
	//1552, slightly smaller than spec sheet. 
#define TX_BUF_CNT		4
#define RX_BUF_CNT		4

//SDRAM address 0x0 to 0x3ffff = circular data buffer. (that's 2^18 bytes = 256kb)
//SDRAM, 32mbytes = 2^25 = 0x0 to 0x0020 0000 - 1
#define HTTP_HEADER		0x00040000 //256 bytes. 
#define HTTP_CONTENT	0x00040100 //i don't know how big we'll need? (have 65k - 0xFF00) 
#define HTTP_RX				0x00050000

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
