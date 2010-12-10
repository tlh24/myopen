#ifndef __SPI_H__
#define __SPI_H__

#ifdef __ADSPBF532__
//need to define the SPI pins, etc.
#include <cdefBF532.h>

#define FIO_CLEAR		pFIO_FLAG_C
#define FIO_SET		pFIO_FLAG_S
#define FIO_TOGGLE	pFIO_FLAG_T
#define FIO_IN			pFIO_FLAG_D
#define FIO__INEN		pFIO_INEN
#define FIO__DIR		pFIO_DIR

#define USB_SS 		0x0040 //pin 6 on port F (and 7 on broken board XXX)
#define USB_IRQ 		0x0010 //pin 4 on port F
#define USB_RESET 	0x0800 //pin 11.

//SPI pins. 
#define SPI_IRQ	 	0x0008
#define SPI_CSN	0x0002
#define SPI_CE		0x0001

#ifdef __BRIDGE__
#define SPI_BAUDDIV 5 //stimulator/bridge
#else
#define SPI_BAUDDIV 4 //headstage.  10Mhz, looks oaky (not okay, oaky)
#endif

#endif

#ifdef __ADSPBF537__
#include <cdefBF537.h>

#define FIO_CLEAR		pPORTFIO_CLEAR
#define FIO_SET		pPORTFIO_SET
#define FIO_TOGGLE	pPORTFIO_TOGGLE
#define FIO_IN			pPORTFIO
#define FIO__INEN		pPORTFIO_INEN
#define FIO__DIR		pPORTFIO_DIR

#define USB_SS 0x4000 //on port F.
#define USB_IRQ 0x0100 

//SPI pins, needed by spi.c
#define SPI_IRQ	0x4000 //port f pin 14
#define SPI_CSN	0x0010 //port f pin 4
#define SPI_CE	0x0020 //port f pin 5

#define SPI_BAUDDIV 11

#endif

#ifdef __ADSPBF527__
#include <cdefBF527.h>

#define FIO_CLEAR		pPORTGIO_CLEAR
#define FIO_SET		pPORTGIO_SET
#define FIO_TOGGLE	pPORTGIO_TOGGLE
#define FIO_IN			pPORTGIO
#define FIO__INEN		pPORTGIO_INEN
#define FIO__DIR		pPORTGIO_DIR

//SPI pins, needed by spi.c
#define SPI_IRQ	0x0800 //port G pin 11
#define SPI_CSN	0x0200 //port G pin 9
#define SPI_CE		0x0400 //port G pin 10
#define SPI_FLASH	0x0002 //port G pin 1

#define SPI_BAUDDIV 6
// system clock is 125Mhz, so divide by 12. (10.41MHz)

#endif

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

// SPI routines. 
#ifndef __ASM__
void spi_delay();
u8 spi_write_register(u8 reg, u8 val);
u8 spi_write_register_ver(u8 reg, u8 val);
u8 spi_read_register(u8 reg);
u8 spi_write_byte(u8 byte);
void spi_write_packet(void* packet);
void spi_write_packet_noDMA(void* packet);
int spi_read_packet(void* packet);
void spi_read_packet_nocheck(void* packet);
void radio_set_rx();
void radio_set_tx();
int radio_wait_irq(int time);
u8 radio_init(u8 chan); 

void udelay(int us); 
void printf_newline(); 
#endif
#endif
