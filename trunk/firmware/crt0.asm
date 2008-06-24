.text;

#include <defBF537.h>
#include "defBF537_ext.h"

#define SYSCFG_VALUE 0x30

#include "memory.h"

// Short bootstrap
//much of this is from u-boot codebase. 

.global start
.global _spi_delay
.global _delay

start:
	// Avoid BF532 Anomaly #42
	R0 = 0x32;
	SYSCFG = R0;
	SSYNC; 
	
	r1 = 0;	/* Data registers zero'd */
	r2 = 0;
	r3 = 0;
	r4 = 0;
	r5 = 0;
	r6 = 0;
	r7 = 0;

	p0 = 0; /* Address registers zero'd */
	p1 = 0;
	p2 = 0;
	p3 = 0;
	p4 = 0;
	p5 = 0;
	
	i0 = 0; /* DAG Registers zero'd */
	i1 = 0;
	i2 = 0;
	i3 = 0;
	m0 = 0;
	m1 = 0;
	m3 = 0;
	m3 = 0;
	l0 = 0;
	l1 = 0;
	l2 = 0;
	l3 = 0;
	b0 = 0;
	b1 = 0;
	b2 = 0;
	b3 = 0;

	/* Set loop counters to zero, to make sure that
	 * hw loops are disabled.
	 */
	r0  = 0;
	lc0 = r0;
	lc1 = r0;
	
	/* Check soft reset status */
	p0.h = SWRST >> 16;
	p0.l = SWRST & 0xFFFF;
	r0.l = w[p0];

	cc = bittst(r0, 15);
	if !cc jump no_soft_reset;

	/* Clear Soft reset */
	r0 = 0x0000;
	w[p0] = r0;
	ssync;

no_soft_reset:
	nop;
	
	/* turn off the onboard switching regulator */
	r0 = 0x40d8 ; 
	p0.l = LO(VR_CTL); 
	p0.h = HI(VR_CTL); 
	w[p0] = r0 ; 
	SSYNC; 
	
	/* Clear EVT registers */
	p0.h = (EVT_EMULATION_ADDR >> 16);
	p0.l = (EVT_EMULATION_ADDR & 0xFFFF);
	p0 += 8;
	p1 = 14;
	r1 = 0;
	lsetup(4,4) lc0 = p1;
	[ p0 ++ ] = r1;
	
	/* enable pll wakeup */
	p0.h = HI(SIC_IWR);
	p0.l = LO(SIC_IWR);
	r0.l = 0x1;
	w[p0] = r0.l;
	SSYNC;
	
	/* PLL_LOCKCNT - how many SCLK Cycles to delay while PLL becomes stable */
	p0.h = HI(PLL_LOCKCNT);
	p0.l = LO(PLL_LOCKCNT);
	r0 = 0x300(Z); /* 768, default is 512*/
	w[p0] = r0.l;
	ssync;
	
	/* Put SDRAM in self-refresh, in case anything is running */
	p2.H = HI(EBIU_SDGCTL);
	p2.L = LO(EBIU_SDGCTL);
	r0 = [P2];
	bitset (R0, 24);
	[P2] = R0;
	ssync;
	
	/*
	*  Set PLL_CTL with the value that we calculate in R0
	*   - [14:09] = MSEL[5:0] : CLKIN / VCO multiplication factors
	*   - [8]     = BYPASS    : BYPASS the PLL, run CLKIN into CCLK/SCLK
	*   - [7]     = output delay (add 200ps of delay to mem signals)
	*   - [6]     = input delay (add 200ps of input delay to mem signals)
	*   - [5]     = PDWN      : 1=All Clocks off
	*   - [3]     = STOPCK    : 1=Core Clock off
	*   - [1]     = PLL_OFF   : 1=Disable Power to PLL
	*   - [0]     = DF        : 1=Pass CLKIN/2 to PLL / 0=Pass CLKIN to PLL
	*   all other bits set to zero
	*/
	r0 = CONFIG_VCO_MULT & 63;      /* Load the VCO multiplier         */
	r0 = r0 << 9;                   /* Shift it over,                  */
	r1 = CONFIG_CLKIN_HALF;        /* Do we need to divide CLKIN by 2?*/
	r0 = r1 | r0;
	r1 = CONFIG_PLL_BYPASS;         /* Bypass the PLL?                 */
	r1 = r1 << 8;                   /* Shift it over                   */
	r0 = r1 | r0;                   /* add them all together           */
	
	p0.h = HI(PLL_CTL);
	p0.l = LO(PLL_CTL);             /* Load the address                */
	cli r2;                         /* Disable interrupts              */
	ssync;
	w[p0] = r0.l;                   /* Set the value                   */
	idle;                           /* Wait for the PLL to stablize    */
	sti r2;                         /* Enable interrupts               */
	
check_again:
	p0.h =HI(PLL_STAT);
	p0.l = LO(PLL_STAT);
	R0 = W[P0](Z);
	CC = BITTST(R0,5); /* PLL_locked bit */
	if ! CC jump check_again;

	/* Configure SCLK & CCLK Dividers */
	r0 = (0x0 /*CSEL=0,CCLK=VCO*/ | 5 /* SCLK=VCO/5 */); 
	p0.h = HI(PLL_DIV);
	p0.l = LO(PLL_DIV);
	w[p0] = r0.l;
	ssync;
	
	sp.h = 0xFFB0;		//Set up supervisor stack in scratch pad
	sp.l = 0x0400;
	fp = sp;


////////////////////////////////////////////////////////////////////////////
// install default interrupt handlers

	p0.l = LO(EVT2);
	p0.h = HI(EVT2);

	r0.l = _NHANDLER;
	r0.h = _NHANDLER;  	// NMI Handler (Int2)
    [p0++] = r0;

    r0.l = EXC_HANDLER;
  	r0.h = EXC_HANDLER;  	// Exception Handler (Int3)
    [p0++] = r0;
	
	[p0++] = r0; 		// IVT4 isn't used

    r0.l = _HWHANDLER;
	r0.h = _HWHANDLER; 	// HW Error Handler (Int5)
    [p0++] = r0;
	
    r0.l = _THANDLER;
	r0.h = _THANDLER;  	// Timer Handler (Int6)
	[p0++] = r0;
	
    r0.l = _RTCHANDLER;
	r0.h = _RTCHANDLER; // IVG7 Handler
	[p0++] = r0;
	
    r0.l = _I8HANDLER;
	r0.h = _I8HANDLER; 	// IVG8 Handler
  	[p0++] = r0;
  	
  	r0.l = _I9HANDLER;
	r0.h = _I9HANDLER; 	// IVG9 Handler
 	[p0++] = r0;
 	
	r0.l = _I10HANDLER;
	r0.h = _I10HANDLER;	// IVG10 Handler
 	[p0++] = r0;
 	
    r0.l = _I11HANDLER;
	r0.h = _I11HANDLER;	// IVG11 Handler
  	[p0++] = r0;
  	
    r0.l = _I12HANDLER;
	r0.h = _I12HANDLER;	// IVG12 Handler
  	[p0++] = r0;
  	
    r0.l = _I13HANDLER;
	r0.h = _I13HANDLER;	// IVG13 Handler
    [p0++] = r0;

    r0.l = _I14HANDLER;
	r0.h = _I14HANDLER;	// IVG14 Handler
  	[p0++] = r0;

    r0.l = _I15HANDLER;
	r0.h = _I15HANDLER;	// IVG15 Handler
	[p0++] = r0;

/* need to enable/disable peripherals 
	( through the 74LV595 ) */
	//set portf_fer : 
	p0.l = LO(PORTF_FER); 
	p0.h = HI(PORTF_FER); 
	r0 = 0x3c03 (z); //see main.c
	w[p0] = r0 ; 
	
	p0.l = LO(PORTFIO_DIR); 
	p0.h = HI(PORTFIO_DIR); 
	r0 = 0xc250 (z) ; //see main.c
	w[p0] = r0 ; 
	
	p0.l = LO(SPI_BAUD) ; 
	p0.h = HI(SPI_BAUD) ; 
	r0 = 6 ; //baud rate = SCLK / (2* SPI_BAUD) -> 8.33Mhz. 
	w[p0] = r0; 
	p0.l = LO(SPI_FLG) ; 
	p0.h = HI(SPI_FLG) ; 
	r0 = 0; //we don't use SPI_FLAG -- we use portF. 
	w[p0] = r0; 
	p0.l = LO(SPI_STAT) ; 
	p0.h = HI(SPI_STAT) ; 
	r0 = 0x56 (z); //clear status flags. 
	w[p0] = r0; 
	p0.l = LO(SPI_CTL); 
	p0.h = HI(SPI_CTL); 
	r0 = TDBR_CORE | SZ | GM | MSTR | SPE ; 
	w[p0] = r0; 
	
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
	eth_en = 1 (disabled)
	usb_reset = 0 (in reset)
	usb_pout_en = 0 (disabled)
	rs232_en = 0 (enabled)
	lcd_led_en = 1 (enabled)
	boost = 1 (enabled)
	afe_en = 1 (disabled)
	usb_pin_en = 1 (disabled)
	*/
	r0 = 0b11110001 (z); 
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
	ssync; 
	//jump writeforever ; 
	
	// we want to run our program in supervisor mode,
	// therefore we need a few tricks:

	//  Enable Interrupt 15 . 
	p0.l = LO(EVT15);
	p0.h = HI(EVT15);
	r0.l = call_main;  // install isr 15 as caller to main
	r0.h = call_main;
	[p0] = r0;
	
	//don't need to setup the interrupt vector 10  & 11- setup above. 
	
	//SIC_IMASK: page 132.
	p0.l = LO(SIC_IMASK); 
	p0.h = HI(SIC_IMASK); 
	r0.l = 0x1940; // uart0 tx, uart0 rx, sport0 tx, sport1 tx
	r0.h = 0x0000; 
	[p0] = r0; 
	
	//IAR - page 130. 
	p0.l = LO(SIC_IAR0); 
	p0.h = HI(SIC_IAR0);
	r0.l = 0xffff;
	r0.h = 0xf6ff; //	 sport0 TX -> IVG13
	[p0] = r0;
	
	p0.l = LO(SIC_IAR1); 
	p0.h = HI(SIC_IAR1);
	r0.l = 0x7ff6; //remember to +7, hence uart0 rx -> IVG14 
	r0.h = 0xffff; //sport1 tx -> IVG13
	[p0] = r0;

	p0.l = LO(SIC_IAR2); 
	p0.h = HI(SIC_IAR2);
	r0.l = 0xffff; 
	r0.h = 0xffff; 
	[p0] = r0;
	
	p0.l = LO(SIC_IAR3); 
	p0.h = HI(SIC_IAR3);
	r0.l = 0xffff; 
	r0.h = 0xffff; 
	[p0] = r0;
	csync; 

	// IMASK : page 173 in the programming ref., 
	//NOT THE SAME as SIC_IMASK (above) --both need to be set up correctly.
	//r0 = 0x9c40(z);    // enable irq 15, 10 (sport1rx) 11 (sport0tx) 6 (core timer) 12 (SPI) 0x9c40
	r0 = 0x8000(z); // enable 15 . 
	sti r0;            // set mask
	raise 15;          // raise sw interrupt
	
	p0.l = wait;
	p0.h = wait;

	reti = p0;
	rti;               // return from reset

wait:
	jump wait;         // wait until irq 15 is being serviced.

call_main:
	[--sp] = reti;  // pushing RETI allows interrupts to occur inside all main routines
	
	p0.l = _main;
	p0.h = _main;

	r0.l = end;
	r0.h = end;

	rets = r0;      // return address for main()'s RTS
	jump (p0);

end:
	idle;
	jump end;
	
/* spi function to wait until the byte has been transmitted */
_spi_delay: 
	p0.l = LO(SPI_STAT); 
	p0.h = HI(SPI_STAT);
	//first, examine the TXS bit (buffer full)
/*testtest: 
	p1.l = LO(PORTFIO_TOGGLE); 
	p1.h = HI(PORTFIO_TOGGLE); 
	r0 = 0; 
	bitset(r0, 6); 
	w[p1] = r0; 
	jump testtest; */
spi_delay_check1:	
	r0 = w[p0] ; 
	cc = bittst(r0, 3)
	if cc jump spi_delay_check1 ; 
	//next, examine the SPIF bit (transfer finished)
spi_delay_check2: 
	r0 = w[p0]; 
	cc = !bittst(r0, 0) ; 
	if cc jump spi_delay_check2 ; 
	rts ; //don't forget to set the 
	
_delay: 
	//[--sp] = r1; 
_delay_outer_start: 
	cc = r0 == 0 ; 
	if cc jump _delay_end ; 
	r0 += -1 ; 
	r1 = 10;
_delay_inner_start: 
	cc = r1 == 0; 
	if cc jump _delay_outer_start; 
	r1 += -1; 
	jump _delay_inner_start ;
_delay_end:
	//r1 = [sp++]; 
	rts; 
	
_RTCHANDLER:          // IVG 7 Handler  
	r0.l = 7;
	jump display_fail;

_I8HANDLER:           // IVG 8 Handler
	r0.l = 8;
	jump display_fail;

_I9HANDLER:           // IVG 9 Handler
	r0.l = 9;
	jump display_fail;
	
_I10HANDLER:          // IVG 10 Handler
	rti; 

_I11HANDLER:          // IVG 11 Handler
	rti; 

_I12HANDLER:          // IVG 12 Handler
	rti; 
	
_I13HANDLER:		  // IVG 13 Handler
	//for SPORT0 -- the LCD!
	[--sp] = p0; 
	[--sp] = r0; 
	[--sp] = r1; 
	// first, check if something is in the queue -- 
	// if there is nothing, then disable the serial port.
	p0.l = LO(LCD_SERIAL_DATA); 
	p0.h = HI(LCD_SERIAL_DATA); 
	r0 = w[p0] ; 
	cc = bittst(r0, 15); 
	if cc jump i13_write ; 
	// if not then turn off serial port. 
	p0.l = LO(SPORT1_TCR1); 
	p0.h = HI(SPORT1_TCR1); 
	r1 = 0; 
	w[p0] = r1;
	jump i13_end; 
i13_write: 
	//clear the written data (hence the flag, bit 15)
	r1 = 0; 
	w[p0] = r1; 
	p0.l = LO(SPORT1_TX); 
	p0.h = HI(SPORT1_TX); 
	w[p0] = r0; 
i13_end: 
	r1 = [sp++]; 
	r0 = [sp++]; 
	p0 = [sp++]; 
	rti; 
 
_I14HANDLER:		  // IVG 14 Handler
	r0.l = 14;
	jump display_fail;

_I15HANDLER:		  // IVG 15 Handler
	r0.l = 15;
	jump display_fail;


.global idle_loop
idle_loop:
	idle;
	ssync;
	jump idle_loop;


start.end:

// If we get caught in one of these handlers for some reason, 
// display the IRQ vector on the EZKIT LEDs and enter
// endless loop.

display_fail:
	r0 = seqstat;
	r1 = retx;
//	call _exception_report; //this should not return.
	rtx;

_HWHANDLER:           // HW Error Handler 5
rti;

_NHANDLER:
stall:
	jump stall;

EXC_HANDLER:          // exception handler
	r0 = seqstat;
	r1 = retx;
//	call _exception_report; //this should not return.
	rtx;

_THANDLER:            // Timer Handler 6 (core timer)
	rti; 


////////////////////////////////////////////////////////////////////////////
// we need _atexit if we don't use a libc..
#ifndef USE_LIBC

.global _atexit;
_atexit:
	rts;

#endif
