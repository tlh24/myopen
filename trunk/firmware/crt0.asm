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
	
	/* Clear EVT registers */
	p0.h = (EVT_EMULATION_ADDR >> 16);
	p0.l = (EVT_EMULATION_ADDR & 0xFFFF);
	p0 += 8;
	p1 = 14;
	r1 = 0;
	lsetup(4,4) lc0 = p1;
	[ p0 ++ ] = r1;
	
	sp.h = 0xFFB0;		//Set up supervisor stack in scratch pad
	sp.l = 0x0400;
	fp = sp; 

	//enable the peripherals. 
	call _start_peripherals ; 
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
	// SIC_IMASK lo : 0001 1001 0001 0000
	r0.l = 0x1920; // uart0 tx, uart0 rx, sport0 rx, sport1 tx
	r0.h = 0x0000; 
	[p0] = r0; 
	
	//IAR - page 130. 
	p0.l = LO(SIC_IAR0); 
	p0.h = HI(SIC_IAR0);
	r0.l = 0xffff;
	r0.h = 0xff4f; //	 sport0 RX -> IVG11
	[p0] = r0;
	
	p0.l = LO(SIC_IAR1); 
	p0.h = HI(SIC_IAR1);
	r0.l = 0xfff3; //remember to +7, sport1 tx -> IVG10
	r0.h = 0xffff; 
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

	// IMASK : page 173 in the programming ref., (not hardware ref!)
	//NOT THE SAME as SIC_IMASK (above) --both need to be set up correctly.
	//r0 = 0x9c40(z);    // enable irq 15, 10 (sport1rx) 11 (sport0tx) 6 (core timer) 12 (SPI) 0x9c40
	r0 = 0x8c00(z); // enable 15, 11, 10
	sti r0;            // set mask
	raise 15;          // raise sw interrupt
	
	p0.l = wait;
	p0.h = wait;

	reti = p0;
	rti;               // return from reset

wait:
	jump wait;         // wait until irq 15 is being serviced.

call_main:
	//setup loop registers. 
	i0.l = LO(IIR_WEIGHT); 
	i0.h = HI(IIR_WEIGHT); 
	l0 = 32; //4 biquads * 4 weights each * 2 bytes/weight.
	b0 = i0; 
	
	i1.l = LO(IIR_DELAY); //used for reading IIR delays. 
	i1.h = HI(IIR_DELAY); //and writing, really.
	l1 = 320; //10 delays * 16 channels * 2bytes/delay.
	b1 = i1; 
	//note: i2 is setup in the serial port ISR. 
	
	i3.l = LO(LMS_DELAY); 
	i3.h = HI(LMS_DELAY); 
	l3 = 1024; 
	b3 = i3; 
	m3 = 512; //decorrelating delay of 16. 
	m2 = 32; //vertical dimension of matrix.
	m1 = -32 (x); //to move backwards one column in matrix. 
	m0 = 64; 
		
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
	
	
_delay: 
	[--sp] = r1; 
_delay_outer_start: 
	cc = r0 == 0 ; 
	if cc jump _delay_end ; 
	r0 += -1 ; 
	r1 = 100;
_delay_inner_start: 
	cc = r1 == 0; 
	if cc jump _delay_outer_start; 
	r1 += -1; 
	jump _delay_inner_start ;
_delay_end:
	r1 = [sp++]; 
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
	// serial port transmission (for switching between the 4 multiplexed ports on the ADC)
	[--sp] = (r7:4, p5:4); 
	[--sp] = astat ; 
	p5.h = HI(F_P5); 
	p5.l = LO(F_P5); 
	r7 = [p5+F_ADC_CTR]; //the write pointer will increment 8 (4 samples) per TFS.
	p4.h = HI(SPORT1_TX); 
	r4 = 0x10; //start bit = 1, differential sampling.
	p4.l = LO(SPORT1_TX); 
	r5 = r4 | r7; 
	r5 = r5 << 15 ; //20-bit word to write out, 1 start, 1differential, 2channel bits. 
	r5 += 1; //put a mark for debugging.
	//note: lsbit on the channel is always zero, as we do not want to invert the polarity
	// of the channels (see the MCP3304 data sheet). 
	[p4] = r5; //write the output buffah! 
	r6 = 0x7 (z); //for some strange reason, it looks like this routine is being called twice / this value is incrementing twice.. ?
	r7 += 1; 
	r7 = r7 & r6 ; //bitmask (make it rollover)
	[p5+F_ADC_CTR] = r7 ; //save it.
	
	astat = [sp++]; 
	(r7:4, p5:4) = [sp++]; 
	rti; 

_I12HANDLER:          // IVG 12 Handler
	rti; 
	
_I13HANDLER:		  // IVG 13 Handler
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


display_fail:
	r0 = seqstat;
	r1 = retx;
	call _exception_report; //this should not return.
	rtx;

_HWHANDLER:           // HW Error Handler 5
rti;

_NHANDLER:
stall:
	jump stall;

EXC_HANDLER:          // exception handler
	//save registers to memory so we may print them out. 
	[--sp] = p5; 
	p5.l = _g_excregs ; 
	p5.h = _g_excregs ; 
	[p5++] = r0; 
	[p5++] = r1; 
	[p5++] = r2; 
	[p5++] = r3; 
	[p5++] = r4; 
	[p5++] = r5; 
	[p5++] = r6; 
	[p5++] = r7; 
	[p5++] = p0; 
	[p5++] = p1; 
	[p5++] = p2; 
	[p5++] = p3; 
	[p5++] = p4; 
	p4 = p5; 
	p5 = [sp++]; //pop back off the stack.
	[p4++] = p5; 
	
	r0 = i0; 
	[p4++] = r0; 
	r0 = b0; 
	[p4++] = r0; 
	r0 = l0; 
	[p4++] = r0; 
	
	r0 = i1; 
	[p4++] = r0; 
	r0 = b1; 
	[p4++] = r0; 
	r0 = l1; 
	[p4++] = r0; 
	
	r0 = i2; 
	[p4++] = r0; 
	r0 = b2; 
	[p4++] = r0; 
	r0 = l2; 
	[p4++] = r0; 
	
	r0 = i3; 
	[p4++] = r0; 
	r0 = b3; 
	[p4++] = r0; 
	r0 = l3; 
	[p4++] = r0; 
	
	r0 = m0; 
	[p4++] = r0; 
	r0 = m1; 
	[p4++] = r0; 
	r0 = m2; 
	[p4++] = r0; 
	r0 = m3; 
	[p4++] = r0; 
	
	r0 = seqstat;
	r1 = retx;
	call _exception_report; //this should not return.
	rtx;

_THANDLER:            // Timer Handler 6 (core timer)
	rti; 


_test: 
	p0.h = HI(PORTFIO_TOGGLE); 
	p0.l = LO(PORTFIO_TOGGLE); 
	r0 = 0 (z); 
	bitset(r0, 6); 
	w[p0] = r0.l; 
	ssync; 
	jump _test; 

////////////////////////////////////////////////////////////////////////////
// we need _atexit if we don't use a libc..
#ifndef USE_LIBC

.global _atexit;
_atexit:
	rts;

#endif
