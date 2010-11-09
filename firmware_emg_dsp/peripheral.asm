.global _start_peripherals
.global _spi_delay 
.global _delay 

_start_peripherals: 
	[--sp] = (r7:0, p5:0); 
	[--sp] = astat ; 
	[--sp] = RETS; 
/* need to enable/disable peripherals 
	( through the 74LV595 ) */
	//set portf_fer; SR_LOAD is on PORTF15, 
	p0.l = LO(PORTF_FER); 
	p0.h = HI(PORTF_FER); 
	r0.l = w[p0]; 
	bitclr(r0, 15); 
	bitset(r0, 11); //MOSI
	bitset(r0, 12); //MISO
	bitset(r0, 13); //SCLK
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
	r0 = 12 ; //baud rate = SCLK / (2* SPI_BAUD) -> 8.33Mhz. 
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
	
	writeforever:
	//;clear SR_LOAD (signal is latched on rising edge)
	r0 = 0; 
	bitset(r0, 15); 
	bitset(r0, 6) ; //mirror w/ CSN
	p1.l = LO(PORTFIO_CLEAR); 
	p1.h = HI(PORTFIO_CLEAR); 
	w[p1] = r0;  
	ssync; 
	/*write out a byte ..  SPI = MSB first. 
	0 eth_en = 0 (enabled)
	1 usb_reset = 1 (not reset -- use software reset.)
	2 usb_pout_en = 0 (disabled)
	3 rs232_en = 0 (enabled)
	4 lcd_led_en = 1 (enabled)
	5 boost = 1 (enabled)
	6 afe_en = 0 (enabled)
	7 usb_pin_en = 0 (enabled, we can't change this anymore)
	*/
	//;looks like this register is shifted over by one (?) 
	r0 = 0x32 (z) ; //  0b00110010 (z); //probably should make this a function.
	p0.l = LO(SPI_TDBR) ; 
	p0.h = HI(SPI_TDBR) ; 
	w[p0] = r0 ; 
	call _spi_delay ; 
	
	//pulse SR_LOAD
	r0 = 0; 
	bitset(r0, 15); 
	bitset(r0, 6) ; //mirror w/ CSN
	p1.l = LO(PORTFIO_SET); 
	p1.h = HI(PORTFIO_SET); 
	w[p1] = r0; 
	r0 = 2; 
	call _delay ; 
	//jump writeforever ;
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
	astat = [sp++]; 
	(r7:0, p5:0) = [sp++]; 
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
