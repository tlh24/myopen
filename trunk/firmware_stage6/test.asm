
.global start

start: 
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
	
	/* Configure SCLK & CCLK Dividers */
	//PLL_DIV defaults to 4, which puts the system clock at 150MHz - 
	// beyond spec. (max = 133MHz.)
	r0 = (0x0 /*CSEL=0,CCLK=VCO*/ | 5 /* SCLK=VCO/5 */); 
		//125MHz system clock, 600Mhz core clock.
	p0.h = HI(PLL_DIV);
	p0.l = LO(PLL_DIV);
	w[p0] = r0.l;
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
	r0 = 24 & 63;      /* Load the VCO multiplier         */
	/* core clock = 25MHz * 24 = 600Mhz */
	r0 = r0 << 9;                   /* Shift it over,                  */
	r1 = 0/*CONFIG_CLKIN_HALF*/;        /* Do we need to divide CLKIN by 2?*/
	r0 = r1 | r0;
	r1 = 0/*CONFIG_PLL_BYPASS*/;         /* Bypass the PLL?                 */
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
	p0.h = HI(PLL_STAT);
	p0.l = LO(PLL_STAT);
	R0 = W[P0](Z);
	CC = BITTST(R0,5); /* PLL_locked bit */
	if ! CC jump check_again;

	p0.l = LO(PORTFIO_INEN);
	p0.h = HI(PORTFIO_INEN); 
	r0 = 0; 
	w[p0] = r0; 
	p0.l = LO(PORTFIO_DIR);
	p0.h = HI(PORTFIO_DIR); 
	r0 = [p0]; 
	r1 = 0xff; 
	r0 = r0 | r1; 
	w[p0] = r0; 
	p0.l = LO(PORTF_FER);
	p0.h = HI(PORTF_FER); 
	r0 = [p0]; 
	r1 = 0xff00 (z); 
	r0 = r0 & r1; 
	w[p0] = r0; 
	
	p0.l = LO(PORTGIO_INEN);
	p0.h = HI(PORTGIO_INEN); 
	r0 = 0; 
	w[p0] = r0; 
	p0.l = LO(PORTGIO_DIR);
	p0.h = HI(PORTGIO_DIR); 
	r0 = [p0]; 
	r1 = 0x1; 
	r0 = r0 | r1; 
	w[p0] = r0; 
	p0.l = LO(PORTG_FER);
	p0.h = HI(PORTG_FER); 
	r0 = [p0]; 
	r1 = 0xfffe (z); 
	r0 = r0 & r1; 
	w[p0] = r0; 
_test_loop:
	p0.h = HI(PORTFIO_TOGGLE); 
	p0.l = LO(PORTFIO_TOGGLE); 
	r0 = 0xff (z); 
	w[p0] = r0.l; 
	p0.h = HI(PORTGIO_TOGGLE); 
	p0.l = LO(PORTGIO_TOGGLE); 
	r0 = 0x1 (z); 
	w[p0] = r0.l; 
	ssync; 
	jump _main; 
	nop;
	jump _test_loop; 
