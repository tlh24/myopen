//this partially from u-boot, also under GPL. 
#include "memory.h"

.global start
.global _delay
start: //init_sdram.asm
	[--sp] = ASTAT;
	[--sp] = RETS;
	[--sp] = (r7:0);
	[--sp] = (p5:0);
	
	p0.l = LO(PORTFIO_DIR); 
	p0.h = HI(PORTFIO_DIR); 
	r0 = w[p0]; 
	bitset(r0, 6)
	w[p0] = r0 ; 
	p0.l = LO(PORTF_FER); 
	p0.h = HI(PORTF_FER); 
	r0 = w[p0]; 
	bitclr(r0, 6)
	w[p0] = r0 ; 
	
	r0 = 0x32;
	SYSCFG = r0;
	SSYNC; 
	
	/* Set loop counters to zero, to make sure that hw loops are disabled. */
	r0  = 0;
	lc0 = r0;
	lc1 = r0;
	
	/* turn off the onboard switching regulator */
	r0 = 0x40d8 ; 
	p0.l = LO(VR_CTL); 
	p0.h = HI(VR_CTL); 
	w[p0] = r0 ; 
	SSYNC; 
	/*I've hard-wired boost to 'on', so we don't have to fuss with the 
	SPI-sequenced peripherals here */
	/* need to enable/disable peripherals before anything else -
	most importantly, the core voltage needs to be set! */
	//save the SPI control register! the boot loader needs this in a particular state!
	//rather than guessing what it needs, we just save to stack.
	/*
	p0.h = HI(SPI_CTL); 
	p0.l = LO(SPI_CTL); 
	r7.l = w[p0]; 
	[--sp] = r7; 
	p0.l = LO(SPI_FLG); 
	r7.l = w[p0]; 
	[--sp] = r7; 
	call _start_peripherals ; //trounces a bunch of registers, fyi..
	r7 = [sp++]; 
	p0.h = HI(SPI_FLG); 
	p0.l = LO(SPI_FLG); 
	w[p0] = r7.l; 
	r7 = [sp++]; 
	p0.l = LO(SPI_CTL); 
	//first write a zero to disable, then re-enable.
	r0 = 0; 
	w[p0] = r0.l ; 
	ssync; 
	w[p0] = r7.l; 
	//jump _test ; 
	*/
	
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
	r0 = 20 & 63;      /* Load the VCO multiplier         */
	/* core clock = 25MHz * 20 = 500Mhz */
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
		//125MHz system clock, 600Mhz core clock.
	p0.h = HI(PLL_DIV);
	p0.l = LO(PLL_DIV);
	w[p0] = r0.l;
	ssync;
	
	//check to see if the SDRAM is already enabled. 
	p0.l = LO(EBIU_SDSTAT); 
	p0.h = HI(EBIU_SDSTAT); 
	r0 = [p0]; 
	cc = bittst(r0, 3); 
	if !cc jump skip_init_sdram ; 

	/* Init the SDRAM Refresh Rate Control Register */
	p0.l = LO(EBIU_SDRRC);
	p0.h = HI(EBIU_SDRRC);
	r0 = 967 (z);
	w[p0] = r0.l;
	ssync;

	 /* SDRAM Memory Bank Control Register - bank specific parameters */
	p0.l = LO(EBIU_SDBCTL);
	p0.h = HI(EBIU_SDBCTL);
	r0 = 0x13; //9 bit column address width, 32Mbyte bank size, enabled.
	w[p0] = r0.l;
	ssync;

	/* configure timing in the global control register */
	p2.h = HI(EBIU_SDGCTL);
	p2.l = LO(EBIU_SDGCTL);
	// 1000 0100 1001 0001
	r0.h = 0x8491 ;  //from the hardware ref, i hope it is correct!
	// 1001 1001 1000 1101
	r0.l = 0x998d ; 
	[p2] = r0;
	SSYNC;
	nop;
	nop; 
	/* try accessing the SDRAM to get it to start up. */
	p2 = 0(z); 
	r0.l = w[p2];  //read the 'null' pointer - works here!
	nop ;

/*
_test: 
	p0.h = HI(PORTFIO_SET); 
	p0.l = LO(PORTFIO_SET); 
	r0 = 0 (z); 
	bitset(r0, 6); 
	w[p0] = r0.l; 
	ssync; 
	
	r0 = 10 (z); 
	call _delay; 
	
	p0.h = HI(PORTFIO_CLEAR); 
	p0.l = LO(PORTFIO_CLEAR);
	r0 = 0 (z); 
	bitset(r0, 6); 
	w[p0] = r0.l; 
	ssync; 
	
	r0 = 10 (z); 
	call _delay; 
	//jump _test;
*/
	
skip_init_sdram: 
	/* might also want to speed up the SPI port here .. */
	(P5:0) = [sp++];
	(R7:0) = [sp++];
	RETS   = [sp++];
	ASTAT  = [sp++];
	/* jump start_crt0; */
	RTS;
/*
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
*/
