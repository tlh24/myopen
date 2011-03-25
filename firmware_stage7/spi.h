#ifndef __SPI_H__
#define __SPI_H__

#ifndef __ASM__
#include <cdefBF527.h>
#endif

#define NRF_IRQ0	0x0008
#define NRF_CSN0	0x0010
#define NRF_IRQ1	0x0020
#define	NRF_CSN1	0x0040
#define NRF_IRQ2	0x0100
#define	NRF_CSN2	0x0200
#define NRF_CE		0x0400

#define SPI_FLASH	0x0002 //port G pin 1

#define SPI_BAUDDIV 5 //125/8 is too fast!  quickest is 12.5Mhz; seems reliable.

#define FIO_CLEAR		pPORTFIO_CLEAR
#define FIO_SET			pPORTFIO_SET
#define FIO_TOGGLE		pPORTFIO_TOGGLE
#define FIO_IN			pPORTFIO
#define FIO__INEN		pPORTFIO_INEN
#define FIO__DIR		pPORTFIO_DIR


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
u8 spi_write_register(u16 csn, u8 reg, u8 val);
u8 spi_write_register_ver(u16 csn, u8 reg, u8 val);
u8 spi_read_register(u16 csn, u8 reg);
u8 spi_read_register_status(u16 csn, u8 reg, u8* value);
u8 spi_write_byte(u16 csn, u8 byte);
//void spi_write_packet(void* packet);
//void spi_write_packet_noDMA(void* packet);
//int spi_read_packet(void* packet);
//void spi_read_packet_nocheck(void* packet);
void radio_set_rx(u16 csn, u16 ce);
void radio_set_tx(u16 csn, u16 ce);
//int radio_wait_irq(int time);
u8 radio_init(u16 csn, u16 irq, u8 chan); 

void udelay(int us); 
void printf_newline(); 
#endif
#endif
