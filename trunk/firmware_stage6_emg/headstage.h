#ifndef __HEADSTAGE_H__
#define __HEADSTAGE_H__

#ifndef u8 
#define u8 unsigned char
#endif
#ifndef u16
#define u16 unsigned short
#endif

#ifdef __BLACKFIN__
	#ifndef u32
	#define u32 unsigned long
	#endif
#else
	#ifndef u32
	#define u32 unsigned int
	#endif
#endif

//assembly externs.
void delay(int);
extern void copy28(int* source, int* dest);
extern void I10HANDLER(); 
extern void radio_tst_asm(); 
extern void radio_bidi_asm(); 
//radio routines.
//void radio_send_status(char pipelined); 
//void radio_send_532(status_packet* stat); 
//usb globals
u8 usb_packet_count ; 
u8 usb_rxbyte ; 
void usb_write(u32 channel, u16 value); 
#endif
