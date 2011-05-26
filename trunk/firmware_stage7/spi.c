#include "spi.h"
#include "nordic_regs.h"
#include "print.h"

#ifdef __ADSPBF537__
#include "../bridge/bridge.h"
#endif

void spi_delay(){
	//wait until the spi transation is done. 
	u16 status = 8;
	//the SPI port has a transmit fifo, but as we are using software to drive the pins, 
	// only continue when this buffer is empty ( = has been transferred to the shift reg). 
	//without this, the SPI behavior is pipelined and rather confusing! 
	while( (status & 0x8) ){ //examine the TXS bit (buffer full)
		status = *pSPI_STAT; 
	}
	while( (status & 0x1) == 0 ){ //examine the SPIF (transfer finished) bit. 
		status = *pSPI_STAT; 
	}
}

//this is for writing a SPI register on the radio, for setup ETC!
u8 spi_write_register(u16 csn, u8 reg, u8 val){
	reg = reg | 0x20; 
	*FIO_CLEAR = csn; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	//note: read the shadow buffer so that we don't trigger another SPI transaction.
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = (u16)val; 
	spi_delay();
	*FIO_SET = csn; 
	asm volatile("ssync;"); 
	return reg; 
}

//this is for reading a SPI register on the radio, for setup ETC!
u8 spi_read_register(u16 csn, u8 reg){
	*FIO_CLEAR = csn; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = 0; 
	spi_delay();
	reg = *pSPI_SHADOW; //read it in - the contents of the register.
	*FIO_SET = csn; 
	asm volatile("ssync;"); 
	return reg; 
}

//only works if we have printf functionality! (should have put a uart on the headstage proto..done.)
u8 spi_write_register_ver(u16 csn, u8 reg, u8 val){
	u8 read; 
	spi_write_register(csn, reg, val);
	read = spi_read_register(csn, reg); 
	if(read != val){
		printf_int("nordic: wrote reg ", reg); 
		uart_str(" "); 
		printf_hex_byte("expected ", val); 
		uart_str(" "); 
		printf_hex_byte("recieved ", read); 
		uart_str("\n"); 
	}
	return read;
}

u8 spi_read_register_status(u16 csn, u8 reg, u8* value){
	//same as above, except the status is returned & 
	//the value of the register is returned in the pointer.
	*FIO_CLEAR = csn; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = 0; 
	spi_delay();
	*value = *pSPI_SHADOW; //read it in - the contents of the register.
	*FIO_SET = csn; 
	asm volatile("ssync;"); 
	return reg; 
}

u8 spi_write_byte(u16 csn, u8 byte){
	*FIO_CLEAR = csn; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)byte;
	spi_delay(); 
	byte = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*FIO_SET = csn; 
	asm volatile("ssync;"); 
	return byte; 
}

void radio_set_rx(u16 csn, u16 ce){
	//this function will also clear then set CE. 
	*FIO_CLEAR = ce; 
	asm volatile("ssync;"); 
	//clear the interupts, we may start listening for packets immediately.
	spi_write_register(csn, NOR_CONFIG, 0 ); // ?? needed seems to decrease reliability
	//spi_write_byte(NOR_FLUSH_TX);
	spi_write_byte(csn, NOR_FLUSH_RX); 
	/** CRC should always be enabled -- dropped packets are better than wrong data. **/
	spi_write_register(csn, NOR_CONFIG, NOR_EN_CRC | NOR_CRC0 |
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX ); 
	spi_write_register(csn, NOR_STATUS, 0x70); 
	asm volatile("ssync;"); 
	*FIO_SET = ce; 
	asm volatile("ssync;"); 
}

void radio_set_tx(u16 csn, u16 ce){
	//this function will also clear then set CE. 
	*FIO_CLEAR = ce; //this is also essential for transitioning between states.
	asm volatile("ssync;"); 
	spi_write_register(csn, NOR_CONFIG, 0 ); // needed? seems to decrease reliability
	spi_write_byte(csn, NOR_FLUSH_TX);
	spi_write_register(csn, NOR_STATUS, 0x70); 
	/** by default, CRC is enabled for transmission - it is critical that the 
	filter taps be written to the right location, with the correct values **/
	spi_write_register(csn, NOR_CONFIG, NOR_EN_CRC | NOR_CRC0 |
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_TX ); 
	//spi_write_register(NOR_STATUS, 0x70); 
}

u8 radio_init(u16 csn, u16 irq, u8 chan){
	//first, setup the baud rate, etc. baud first..
	*pSPI_CTL = 0; //to change the baud.
	asm volatile("ssync"); 
	*pSPI_BAUD = SPI_BAUDDIV; //core clock 125Mhz, divide by 10.
	*pSPI_CTL = TDBR_CORE | SZ | EMISO | GM | MSTR | SPE; 
	*pSPI_FLG = 0x0000; //we don't use this -- use portF. 
	*FIO_SET = csn; //active low signal. 
	*FIO__INEN |= irq; 
	*FIO__DIR &= 0xffff ^ irq; 
	*FIO__DIR |= csn | NRF_CE; 
	if(chan > 124) chan = 124; 
	printf_int("radio channel set to ", chan); 
	uart_str("\n"); 
	spi_write_register(csn,NOR_CONFIG, 0); 
	//you can only write registers in power-down mode. 
	spi_write_register_ver(csn,NOR_EN_AA, 0x00); //turn off auto-ack, as part of enhanced shock burst. 
	spi_write_register_ver(csn,NOR_EN_RXADDR, 0x01); //enable pipe 0.
	spi_write_register_ver(csn,NOR_SETUP_AW, 0x01); //rx/tx address width = 3 (smaller is better)
	spi_write_register_ver(csn,NOR_SETUP_RETR, 0x00); //turn off retransmit & ARC (see page 44 - puts it in shockburst mode) 
	spi_write_register_ver(csn,NOR_RF_CH, chan); //set the channel = 124 = 2.524 ghz. should not be anything in that band
	spi_write_register_ver(csn,NOR_RF_SETUP, 0x0f); // rf_setup = 00001111 : pll lock off, 2mbps, 0dbm output, lna_hcurr.
	spi_write_register_ver(csn,NOR_STATUS, 0x70); //clear the interrupts. should bitch about verification.
	spi_write_register_ver(csn,NOR_RX_PW_P0, 32); //essential - tell the radio how big the packets are!
	//for the addresses, leave the default 0xe7e7e7e7e7
	
	spi_write_byte(csn,0xe2); //clear the RX fifo. 
	return spi_write_byte(csn,0xe1); //clear the TX fifo. 
}
