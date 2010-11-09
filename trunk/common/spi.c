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
u8 spi_write_register(u8 reg, u8 val){
	reg = reg | 0x20; 
	*FIO_CLEAR = SPI_CSN; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	//note: read the shadow buffer so that we don't trigger another SPI transaction.
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = (u16)val; 
	spi_delay();
	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
	return reg; 
}

//only works if we have printf functionality! (should have put a uart on the headstage proto..done.)
u8 spi_write_register_ver(u8 reg, u8 val){
	u8 read; 
	spi_write_register(reg, val);
	read = spi_read_register(reg); 
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

//this is for reading a SPI register on the radio, for setup ETC!
u8 spi_read_register(u8 reg){
	*FIO_CLEAR = SPI_CSN; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = 0; 
	spi_delay();
	reg = *pSPI_SHADOW; //read it in - the contents of the register.
	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
	return reg; 
}

u8 spi_read_register_status(u8 reg, u8* value){
	//same as above, except the status is returned & 
	//the value of the register is returned in the pointer.
	*FIO_CLEAR = SPI_CSN; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*pSPI_TDBR = 0; 
	spi_delay();
	*value = *pSPI_SHADOW; //read it in - the contents of the register.
	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
	return reg; 
}

u8 spi_write_byte(u8 byte){
	*FIO_CLEAR = SPI_CSN; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)byte;
	spi_delay(); 
	byte = *pSPI_SHADOW; //read the status from the radio, has useful bits. 
	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
	return byte; 
}

void spi_write_packet(void* packet){
	//assumes packet length 32! 
	//don't check the status of the fifo anymore - program flow controls 
	// fill level (should never exceed 2)
	*FIO_CLEAR = SPI_CSN;  //CSN= lo
	asm volatile("ssync;"); 
	*pSPI_TDBR = 0xa0; //command for writing the fifo on the radio
	spi_delay(); //wait for this to finish - don't want to clobber it with DMA data. 

	//setup DMA for writing the packet. this takes less processor resources, 
	//and less *time* when the processor is heavily loaded = more efficient use of radio.
	//*pSPI_CTL = 0; 
	//asm volatile("ssync"); does nothing.. 
	*pSPI_CTL = TDBR_DMA | SZ | MSTR | SPE; //pretty sure SPI has to be enabled before DMA.
	*pDMA5_X_COUNT = 32; 
	*pDMA5_X_MODIFY = 1; 
	*pDMA5_START_ADDR = packet; 
	asm volatile("ssync;"); //ssync here messes things up?? or is necessary?
	*pDMA5_CONFIG = FLOW_STOP | WDSIZE_8 | DI_EN | DMAEN; 

	//DI_EN is needed for checking the DMA_DONE bit. 
	//now, wait for the DMA to finish
	do{
		asm volatile("nop; nop; nop; nop"); 
		//asm volatile("ssync;");//needed, somehow. 
	}while(((*pDMA5_IRQ_STATUS & DMA_DONE) == 0) || (*pSPI_STAT & 0x8) 
		|| (*pDMA5_IRQ_STATUS & DMA_RUN) );
	//see page 10-32 in the 533 hardware ref - have to wait for the SPI_STAT TXS
	// bit to go low for two sucessive reads. 
	//also see silicon errata 4 0500119 DMA_RUN Bit Is Not Valid after a Peripheral Receive Channel DMA Stops
	spi_delay(); //should have been using this all along! dumbie!
	//asm volatile("ssync;"); 
	//spi_delay(); //looks like this is essential too!

	*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; 
	*pSPI_CTL = TDBR_CORE | SZ | GM | MSTR | SPE; //back to core-control mode.
	*pDMA5_CONFIG = 0;

	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
}
void spi_write_packet_noDMA(void* packet){
	//demonstrated to be the same as spi_write_packet
	*FIO_CLEAR = SPI_CSN;  //CSN= lo
	asm volatile("ssync;"); 
	*pSPI_TDBR = 0xa0; //command for writing the fifo
	spi_delay(); //wait for this to finish. 
	int i; 
	char* c = (char*)packet; 
	for(i=0; i<32; i++){
		*pSPI_TDBR = (*c++);
		spi_delay(); 
	}
	*FIO_SET = SPI_CSN; 
	asm volatile("ssync;"); 
}

int spi_read_packet(void* packet){
	//assumes packet length 32! 
	//checks to see if a packet can be recieved.
	u8 status, fifostatus, k; 
	u8 *ptr = (u8*)packet; 
	//this reads two registers at the same time, so to check all relevant bits.
	status = spi_read_register_status(NOR_FIFO_STATUS, &fifostatus); 
	if( ( (status & NOR_RX_DR) || (fifostatus & NOR_RXFIFO_FULL) )
		&& ((fifostatus & NOR_RXFIFO_EMPTY) == 0) ){
		//clear the interrupt flag so that, potentially, we can run / stop on the resulting interrupt.
		spi_write_register(0x07, 0x70); 
		//spi_write_byte(NOR_FLUSH_RX); //debug.
		*FIO_CLEAR = SPI_CSN;  //CSN= lo
		asm volatile("ssync;"); 
		*pSPI_TDBR = 0x61; //command for reading the fifo.
		spi_delay(); //wait for this to finish - don't want to clobber it with DMA data. 
		
		/*setup DMA for writing the packet. this takes less processor resources. 
		*pSPI_CTL = 0; //this is essential, o/w enabling DMA will start the transfer immediately. 
		*pDMA5_X_COUNT = 32; 
		*pDMA5_X_MODIFY = 1; 
		*pDMA5_START_ADDR = packet; 
		*pDMA5_CONFIG = FLOW_STOP | WDSIZE_8 | DI_EN | WNR | DMAEN; 
		*pSPI_CTL = RDBR_DMA | SZ | MSTR | SPE; //recieve transfer initiated upon enabling of the SPI
		//DI_EN is needed for checking the DMA_DONE bit. 
		//now, wait for the DMA to finish
		do{
			asm volatile("nop; nop; nop; nop"); 
		}while(((*pDMA5_IRQ_STATUS & DMA_DONE) == 0) ); */
		for(k=0; k<32; k++){
			*pSPI_TDBR = 0; 
			spi_delay(); 
			*ptr++ = (u8)(*pSPI_SHADOW); 
		}
		//presumably, dma_done will only be asserted when all bytes have been written to ram.
		//also see silicon errata 4 0500119 DMA_RUN Bit Is Not Valid after a Peripheral Receive Channel DMA Stops
		/*
		*pDMA5_CONFIG = 0;
		*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; 
		*pSPI_CTL = TDBR_CORE | SZ | GM | MSTR | SPE; */
		//back to core-control mode -- TRANSMIT SPI! 
		
		*FIO_SET = SPI_CSN;  //CSN= hi
		asm volatile("ssync;"); 
		
		return 1; 
	}else{
		return 0; 
	}
}
void spi_read_packet_nocheck(void* packet){
	//assumes packet length 32! 
	//don't bother clearing the IRQ flag - that is done by the radio_wait_irq routine.
	*FIO_CLEAR = SPI_CSN;  //CSN= lo
	asm volatile("ssync;"); 
	*pSPI_TDBR = 0x61; //command for reading the fifo.
	spi_delay(); //wait for this to finish - don't want to clobber it with DMA data. 
	
	//setup DMA for writing the packet. this takes less processor resources. 
	*pSPI_CTL = 0; //this is essential, o/w enabling DMA will start the transfer immediately. 
	*pDMA5_X_COUNT = 32; 
	*pDMA5_X_MODIFY = 1; 
	*pDMA5_START_ADDR = packet; 
	*pDMA5_CONFIG = FLOW_STOP | WDSIZE_8 | DI_EN | WNR | DMAEN; 
	*pSPI_CTL = RDBR_DMA | SZ | MSTR | SPE; //recieve transfer initiated upon enabling of the SPI
	//DI_EN is needed for checking the DMA_DONE bit. 
	//now, wait for the DMA to finish
	do{
		asm volatile("nop; nop; nop; nop"); 
	}while(((*pDMA5_IRQ_STATUS & DMA_DONE) == 0) );
	//presumably, dma_done will only be asserted when all bytes have been written to ram.
	//also see silicon errata 4 0500119 DMA_RUN Bit Is Not Valid after a Peripheral Receive Channel DMA Stops
	
	*pDMA5_CONFIG = 0;
	*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; 
	*pSPI_CTL = TDBR_CORE | SZ | GM | MSTR | SPE; 
	//back to core-control mode -- TRANSMIT SPI! 
	
	*FIO_SET = SPI_CSN;  //CSN= hi
	asm volatile("ssync;"); 
}

void radio_set_rx(){
	//this function will also clear then set CE. 
	*FIO_CLEAR = SPI_CE; 
	asm volatile("ssync;"); 
	//clear the interupts, we may start listening for packets immediately.
	spi_write_register(NOR_CONFIG, 0 ); // ?? needed seems to decrease reliability
	spi_write_register(NOR_CONFIG, 
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_RX ); 
	//spi_write_byte(NOR_FLUSH_RX); 
	//spi_write_register(NOR_STATUS, 0x70); 
	//spi_write_byte(NOR_FLUSH_TX); 
	*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; //clear any irqs..
	*FIO_SET = SPI_CE; 
	asm volatile("ssync;"); 
}

void radio_set_tx(){
	//this function will also clear then set CE. 
	*FIO_CLEAR = SPI_CE; //this is also essential for transitioning between states.
	asm volatile("ssync;"); 
	spi_write_register(NOR_CONFIG, 0 ); // needed? seems to decrease reliability
	spi_write_register(NOR_CONFIG, 
		NOR_MASK_MAX_RT | NOR_PWR_UP | NOR_PRIM_TX ); 
	spi_write_byte(NOR_FLUSH_TX); 
	//spi_write_register(NOR_STATUS, 0x70); 
	*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; //clear any irqs..
	//experiment - wait to enable the transmission (assert CE) until we have a packet.
	//doesn't seem to matter much, but probably better this way - lower power. 
	//*FIO_SET = SPI_CE; 
	//asm volatile("ssync;"); 
}

int radio_wait_irq(int time){
	int j=0; 
	while(*FIO_IN & SPI_IRQ && j < time){
		//this is lower power than accessing the SPI all the time.
		//and lower noise, too.
		asm volatile("nop; nop; nop; nop;"); 
		j++; 					
	}
	if(j < time)
		spi_write_register(0x07, 0x70); 
	/*
	if(j >= time){// ah, crap. well, flush the fifos before continuing.
		spi_write_byte(NOR_FLUSH_TX); 
		spi_write_byte(NOR_FLUSH_RX); 
	}
	*/
	return j;
}

u8 radio_init(u8 chan){
	//first, setup the baud rate, etc. baud first..
	*pSPI_BAUD = SPI_BAUDDIV; 
	*pSPI_CTL = TDBR_CORE | SZ | EMISO | GM | MSTR | SPE; 
	*pSPI_FLG = 0x0000; //we don't use this -- use portF. 
	*FIO_SET = SPI_CSN; //active low signal. 
	*FIO__INEN |= SPI_IRQ; 
	*FIO__DIR &= 0xffff ^ SPI_IRQ; 
	*FIO__DIR |= SPI_CSN | SPI_CE; 
	if(chan > 124) chan = 124; 
	printf_int("radio channel set to ", chan); 
	uart_str("\n"); 
	spi_write_register(NOR_CONFIG, 0); 
	//you can only write registers in power-down mode. 
	spi_write_register_ver(NOR_EN_AA, 0x00); //turn off auto-ack, as part of enhanced shock burst. 
	spi_write_register_ver(NOR_EN_RXADDR, 0x01); //enable pipe 0.
	spi_write_register_ver(NOR_SETUP_AW, 0x01); //rx/tx address width = 3 (smaller is better)
	spi_write_register_ver(NOR_SETUP_RETR, 0x00); //turn off retransmit & ARC (see page 44 - puts it in shockburst mode) 
	spi_write_register_ver(NOR_RF_CH, chan); //set the channel = 124 = 2.524 ghz. should not be anything in that band
	spi_write_register_ver(NOR_RF_SETUP, 0x0f); // rf_setup = 00001111 : pll lock off, 2mbps, 0dbm output, lna_hcurr.
	spi_write_register_ver(NOR_STATUS, 0x70); //clear the interrupts. should bitch about verification.
	spi_write_register_ver(NOR_RX_PW_P0, 32); //essential - tell the radio how big the packets are!
	//for the addresses, leave the default 0xe7e7e7e7e7
	
	//init is a bit more complicated on the BF537 - we use DMA channel 5, not the default 7, 
	// for SPI transfers. 
	#ifdef __ADSPBF537__
	*pDMA5_PERIPHERAL_MAP = 0x7000; //DMA 5 services SPI.  
	*pDMA7_PERIPHERAL_MAP = 0x5000; //DMA7 services SPORT1 RX. 
	#endif
	#ifdef __ADSPBF532__
	*pDMA5_PERIPHERAL_MAP = 0x5000; //DMA 5 services SPI.  just to be sure. 
					// on the BF532, DMA 7 services the UART. 
	#endif
	*pDMA5_IRQ_STATUS = DMA_DONE | DMA_ERR; //clear any irqs..
	spi_write_byte(0xe2); //clear the RX fifo. 
	return spi_write_byte(0xe1); //clear the TX fifo. 
}
