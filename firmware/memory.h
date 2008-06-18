#ifndef __MEMORY_H__
#define __MEMORY_H__

//memory.h
/*
memory map: 
	0xFF90 4000	filter coeficients, b[0] b[1] a[0] a[1] ordering. 
			4 pairs of 4, 32 bytes (bote: last biquad in main is not used)
	0xFF90 4020	x1 n-1
				x1 n-2
				y1 n-1	x2 n-1
				y1 n-2	x2 n-2
				y2 n-1	x3 n-1
				y2 n-2	x3 n-2
				y3 n-1	x4 n-1
				y3 n-2	x4 n-2
				y4 n-1
				y4 n-2		--total: 10 32 bit words. 640 bytes total buffer for 16 chan.
0	0xFF90 42A0	end of delay buffer.	
*/
#define A1 			0xFF904000 //this is actually B's initially in the present direct form 1 scheme
#define W1 			0xFF904020
#define FP_BASE			0xFF904300 
#define P5_BASE			FIO_FLAG_D
#define P5_FIO_DATA		0
#define P5_FIO_CLEAR		FIO_FLAG_C - FIO_FLAG_D
#define P5_FIO_SET		FIO_FLAG_S - FIO_FLAG_D
#define P5_FIO_TOGGLE		FIO_FLAG_T - FIO_FLAG_D
	//use the frame pointer to acess all the common variables - as it should be used. 
	// compile with -fomit-frame-pointer to keep gcc from touching it.
	// the addresses below are then the offsets from the fp.  
	// use r1 = [fp - TXWRPTR]; for example.
#define TXWRPTR				4
#define TXRDPTR				8
#define CONTMASK			12
#define DROPCOUNT			16
#define MUXCHAN				20
#define TIMESTAMP			24
#define TXEDPACKETS			28
#define RXEDPACKETS			32
#define TXEDSTATPACKETS 	36
#define RADIO_STATE			40
#define RADIO_COUNT			44
#define RADIO_UNACKED		48
#define RADIO_PACKETS		52
#define RADIO_LASTTS		56
#define RADIO_LASTSTATTS	60
#define RADIO_WORKINPACKET	64 //pointer.
#define RADIO_WORKINHDR		68 //actual header.
#define RADIO_WORKINBASE	72 //base address for loop. 
#define	WFBUF_BASE_PTR		76
#define SPORT_BASE			80 //location: 42B0 (not a ton of headroom!)
//now, we want to access the buffers below as quick as possible - 
//store the pointers on the heap, and load them when needed. 
//this requires a 16 bit instruction as opposed to 32 bit load-immediate
// (don't need 2 load-immediates

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
#define CONFIG_VCO_MULT			20
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
