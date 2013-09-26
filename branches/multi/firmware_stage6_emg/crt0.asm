.text;

#include <defBF532.h>

#define SYSCFG_VALUE 0x30

#include "memory.h"

// Short bootstrap

.global start
start:
	// Avoid BF532 Anomaly #42
	R1 = SYSCFG_VALUE;
	SYSCFG = R1;
	
	sp.h = 0xFFB0;		//Set up supervisor stack in scratch pad
	sp.l = 0x0400;
	fp = sp;


////////////////////////////////////////////////////////////////////////////f
// PLL and clock setups
//
//

setupPLL:
	// we have to enter the idle state after changes applied to the
	// VCO clock, because the PLL needs to lock in on the new clocks.

	p0.l = LO(PLL_CTL);
	p0.h = HI(PLL_CTL);
	r1 = w[p0](z);
	r2 = r1;  
	r0 = 0(z);
	
	r0.l = ~((0x3f << 9) & 1); //this clears the clock multiplier. 
	r1 = r1 & r0;
	r0.l = ((VCO_MULTIPLIER & 0x3f) << 9);
	r1 = r1 | r0;
	// PLL: page 339 or so in the hardware manual.
	//oscillator is at 16mhz on stage2, stage4, and stage6 board.
	r1.l = 16 << 9; // 256Mhz.
	//the hardware guide says to look at the embedded processor data sheet for the 
	//memory delays, but i couldn't find anything, so am leaving them off.
	

 	p1.l = LO(SIC_IWR);  // enable PLL Wakeup Interrupt
	p1.h = HI(SIC_IWR);

	r0 = [p1];			
	bitset(r0,0);	  
	[p1] = r0;
	
 	w[p0] = r1;          // Apply PLL_CTL changes.
	ssync;
 	
	cli r0;
 	idle;	// wait for Loop_count expired wake up
	sti r0;

	// now, set clock dividers:
	p0.l = LO(PLL_DIV);
	p0.h = HI(PLL_DIV);


	// SCLK = VCOCLK / SCLK_DIVIDER
	r0.l = 2; //page 339.  CCLK = vco ; SCLK = VCO/2; 256-> 128mhz.
	w[p0] = r0; // set Core and system clock dividers
	//note: this can be changed at any time to decrease power consumption!

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
 	
	r0.l = _I11HANDLER;
	r0.h = _I11HANDLER;	// IVG10 Handler
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


	// we want to run our program in supervisor mode,
	// therefore we need a few tricks:

	//  Enable Interrupt 15 . 
	p0.l = LO(EVT15);
	p0.h = HI(EVT15);
	r0.l = call_main;  // install isr 15 as caller to main
	r0.h = call_main;
	[p0] = r0;
	
	//don't need to setup the interrupt vector 10  & 11- setup above. 
	
	//SIC_IMASK: page 190.
	p0.l = LO(SIC_IMASK); 
	p0.h = HI(SIC_IMASK); 
	r0.l = 0x2800; // port0 TX & SPI
	r0.h = 0x0000; 
	[p0] = r0; 
	
	//IAR - page 192. 
	p0.l = LO(SIC_IAR0); 
	p0.h = HI(SIC_IAR0);
	r0.l = 0xff5f; //SPI DMA -> IVG12
	r0.h = 0xffff; 
	[p0] = r0;
	
	p0.l = LO(SIC_IAR1); 
	p0.h = HI(SIC_IAR1);
	r0.l = 0x34ff; //remember to +7, hence sport1 rx -> IVG10 & sport0 tx -> IVG11 
	r0.h = 0xffff; 
	[p0] = r0;

	
	p0.l = LO(SIC_IAR2); 
	p0.h = HI(SIC_IAR2);
	r0.l = 0xffff; 
	r0.h = 0xffff; 
	[p0] = r0;
	csync; 

	// IMASK : page 195, NOT THE SAME as SIC_IMASK (above) --both need to be set up correctly.
	//r0 = 0x9c40(z);    // enable irq 15, 10 (sport1rx) 11 (sport0tx) 6 (core timer) 12 (SPI) 0x9c40
	r0 = 0x8000(z); //only enable the lowest-priority interrupt. 
	sti r0;            // set mask
	raise 15;          // raise sw interrupt
	
	p0.l = wait;
	p0.h = wait;

	reti = p0;
	rti;               // return from reset

wait:
	jump wait;         // wait until irq 15 is serviced.

call_main:
	[--sp] = reti;  // pushing RETI allows interrupts to occur inside all main routines
	
	//this is for writing circular buffered data. 
	//i3.l = LO(WFBUF); 
	//i3.h = HI(WFBUF); 
	//l3 = WFBUF_LEN; 
	//if we did a bit-clear, then we'd still have to write 0 to this register
	//to turn o looping behavior.. which would save no time.
	//m3 = 512;  //spacing, in bytes, between channels. 
	//b3 = i3;
	
	p0.l = _main;
	p0.h = _main;

	r0.l = end;
	r0.h = end;

	rets = r0;      // return address for main()'s RTS
	jump (p0);

end:
	idle;
	jump end;

_I11HANDLER:          // IVG 11 Handler
	
	rti; 

_I12HANDLER:          // IVG 12 Handler
	
	rti; 
	

_I13HANDLER:		  // IVG 13 Handler
	r0.l = 13;
	jump display_fail;
 
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
	//call _exception_report; //this should not return.
	idle;
	ssync;
	jump idle_loop;
	rtx;

_HWHANDLER:           // HW Error Handler 5
rti;

_NHANDLER: //non maskable interrrupt? 
	//call _nmi_report; //this should not return.
	idle;
	ssync;
	jump idle_loop;
	rtx;

EXC_HANDLER:          // exception handler
	// removed the old stuff. use JTAG.
	idle;
	ssync;
	jump idle_loop;
	rtx;

_THANDLER:            // Timer Handler 6 (core timer)
	[--sp] = p2; 
	[--sp] = r0; 
	[--sp] = r1; 
	[--sp] = astat; 
	//don't think we have to clear the IRQ.. ?
//	p2.l = LO(TIMESTAMP); 
//	p2.h = HI(TIMESTAMP); 
	r0 = [p2]; 
	r1 = 1(z); 
	r0 = r0 + r1; 
	[p2] = r0; 
	astat = [sp++];
	r1 = [sp++]; 
	r0 = [sp++]; 
	p2 = [sp++]; 
	rti; 

_RTCHANDLER:          // IVG 7 Handler  
	r0.l = 7;
	jump display_fail;

_I8HANDLER:           // IVG 8 Handler
	r0.l = 8;
	jump display_fail;

_I9HANDLER:           // IVG 9 Handler
	r0.l = 9;
	jump display_fail;


/* debug code -- !!
		r0 = 0; 
		bitset(r0, 1); 
		w[p5 + P5_FIO_CLEAR] = r0; 
		p0.h = HI(SPI_TDBR); 
		p0.l = LO(SPI_TDBR); 
		r1 = p4; 
		r1 >>= 8;
		w[p0] = r1;
	*/
////////////////////////////////////////////////////////////////////////////
// we need _atexit if we don't use a libc..
#ifndef USE_LIBC

.global _atexit;
_atexit:
	rts;

#endif
