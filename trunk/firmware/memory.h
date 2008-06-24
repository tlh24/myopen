#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h

#define LCD_SERIAL_DATA 	0xFF900000 //what is to be written. 

#define TXPTRBUF	0xFF904300 
//circular buffer of 128*4 byte pointers
#define	TXHDRBUF	0xFF904500 
//corresponds to above, except 128*4 byte header info (channel, timestamp). 
#define	TXBUF_LEN	128
//		end	0xFF904700
#define ISICOUNT	0xFF904700 //32 * 2bytes ea = 64, 0x40
#define STATUSPKT	0xFF904740 //32 bytes
#define RXPKT		0xFF904760 //32 bytes

#define WFBUF		0xFF804000 //takes entire 16kb - thats 512 samples/channel, or 17ms. 
#define WFBUF_LEN	0x4000 //thus it ends at 0xFF80 8000 - by simply clearing bit 15, we can make it loop.

//<stuff for radio_control>
//the primary state. 
#define	RS_WAIT				0x1
#define RS_TX_DATA			0x2
#define RS_TX_STATUS		0x4
#define	RS_RX_CMD			0x8
#define	RS_SET_RX			0x10
#define	RS_SET_TX			0x20
#define RS_WAITIRQ			0x40
#define RS_WAITIRQ_BIT		6
#define RS_CLEARIRQ			0x80
#define RS_CLEARIRQ_BIT		7


//the secondary state.
#define RS_PREAMBLE			256
#define RS_PREAMBLE_BIT		8
#define RS_SET_CE			512
#define RS_SET_CE_BIT		9
//timeouts...
#define DATA_TIMEOUT 3000
#define STATUS_TIMEOUT 5000
//</radio control>


#define CONFIG_CLKIN_HZ          25000000 /*external clock*/
/* CONFIG_CLKIN_HALF controls what is passed to PLL 0=CLKIN      */
/*                                                  1=CLKIN/2    */
#define CONFIG_CLKIN_HALF               0 
/* CONFIG_PLL_BYPASS controls if the PLL is used 0=don't bypass  */
/*                                               1=bypass PLL    */
#define CONFIG_PLL_BYPASS               0
/* CONFIG_VCO_MULT controls what the multiplier of the PLL is.   */
/* Values can range from 1-64                                    */
#define CONFIG_VCO_MULT			16
/* CONFIG_SCLK_DIV controls what the peripheral clock divider is */
/* Values can range from 1-15                                    */
#define CONFIG_SCLK_DIV			5

#ifndef LO
#define LO(con32) ((con32) & 0xFFFF)
#endif
#ifndef HI
#define HI(con32) (((con32) >> 16) & 0xFFFF)
#endif

#endif
