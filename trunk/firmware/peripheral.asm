.global _start_peripherals
.global _spi_delay 
.global _delay 

_start_peripherals: 
	[--sp] = RETS; 
/* need to enable/disable peripherals 
	( through the 74LV595 ) */
	//set portf_fer; SR_LOAD is on PORTF15: 
	p0.l = LO(PORTF_FER); 
	p0.h = HI(PORTF_FER); 
	r0.l = w[p0]; 
	bitclr(r0, 15); 
	w[p0] = r0.l ; 
	//likewise for the direction register. 
	p0.l = LO(PORTFIO_DIR); 
	p0.h = HI(PORTFIO_DIR); 
	r0.l = w[p0]; 
	bitset(r0, 15); 
	w[p0] = r0.l ; 
	
	//disable the spi port before changing / re-enabling. 
	p0.l = LO(SPI_CTL); 
	p0.h = HI(SPI_CTL); 
	r0 = 0; 
	w[p0] = r0;
	ssync; 
	p0.l = LO(SPI_BAUD) ; 
	r0 = 120 ; //baud rate = SCLK / (2* SPI_BAUD) -> 8.33Mhz. 
	w[p0] = r0; 
	p0.l = LO(SPI_FLG) ; 
	r0 = 0; //dont' forget that the flash _cs is on PF10.
	w[p0] = r0; //the bootloader needs this value ??
	p0.l = LO(SPI_STAT) ; 
	r0 = 0x56 (z); //clear status flags. 
	w[p0] = r0; 
	p0.l = LO(SPI_CTL); 
	r0 = TDBR_CORE | SZ | EMISO| GM | MSTR | SPE ; 
	w[p0] = r0; 
	ssync;
	
	//writeforever:
	//clear SR_LOAD (signal is latched on rising edge)
	r0 = 0; 
	bitset(r0, 15); 
	bitset(r0, 6) ; //mirror w/ CSN
	p1.l = LO(PORTFIO_CLEAR); 
	p1.h = HI(PORTFIO_CLEAR); 
	w[p1] = r0;  
	ssync; 
	/*write out a byte ..  SPI = MSB first. 
	eth_en = 0 (enabled)
	usb_reset = 0 (in reset)
	usb_pout_en = 0 (disabled)
	rs232_en = 0 (enabled)
	lcd_led_en = 1 (enabled)
	boost = 1 (enabled)
	afe_en = 1 (disabled)
	usb_pin_en = 1 (disabled)
	*/
	r0 = 0b11110000 (z); //probably should make this a function.
	p0.l = LO(SPI_TDBR) ; 
	p0.h = HI(SPI_TDBR) ; 
	w[p0] = r0 ; 
	r0 = 10; //this value is relatively sensitive, don't know why.. 
	call _delay ; //I have no clue why spi_delay does not work .. eh well.
		//(it works, it just interferes with the bootloader). 
	
	//pulse SR_LOAD
	r0 = 0; 
	bitset(r0, 15); 
	bitset(r0, 6) ; //mirror w/ CSN
	p1.l = LO(PORTFIO_SET); 
	p1.h = HI(PORTFIO_SET); 
	w[p1] = r0; 
	/*
testtest: 
	p1.l = LO(PORTFIO_TOGGLE); 
	p1.h = HI(PORTFIO_TOGGLE); 
	r0 = 0; 
	bitset(r0, 6); 
	w[p1] = r0; 
	jump testtest; 
	*/
	RETS = [sp++]; 
	rts; //and return! 
	
/* spi function to wait until the byte has been transmitted */
_spi_delay: 
	p0.l = LO(SPI_STAT); 
	p0.h = HI(SPI_STAT);
	//first, examine the TXS bit (buffer full)
spi_delay_check1:	
	r0.l = w[p0] ; 
	cc = bittst(r0, 3)
	if cc jump spi_delay_check1 ; 
	//next, examine the SPIF bit (transfer finished)
spi_delay_check2: 
	r0 = w[p0]; 
	cc = !bittst(r0, 0) ; 
	if cc jump spi_delay_check2 ; 
	r0 = 0x56 (z); //clear status flags. 
	w[p0] = r0.l ;
	rts; 
