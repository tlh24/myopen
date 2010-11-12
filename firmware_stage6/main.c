#include <cdefBF527.h>
#include "memory.h"
// #include "util.h"
#include "lcd.h"
#include "ethernet.h"
#include "usb.h"

u32 g_excregs[8+6+16] ; //the regular data registers + pointer registers. 
u8 g_mouseXpos; //the channel used to drive positive x cursor movement.  
u8 g_mouseXneg; 
u8 g_mouseYpos; 
u8 g_mouseYneg; 
u32 g_mouseShift; //scaling factor. 
u8   g_streamEnabled; 
u8   g_streamRaw ; //output the raw samples.

int PhysicalToLogicalChan(int c){
	//converts a physical channel (connector # on the board!) 
	// to logical channel (offset in memory)
	return (((c & 0x3) ^ 0x2) << 2) | (((c & 0xc) >> 2) ^ 0x3); 
}
int LogicalToPhysicalChan(int c){
	return (((c & 0x3) ^ 0x3) << 2) | (((c & 0xc) >> 2)^ 0x2); 
}

int main() {
	// disable cache. no imem_control on this proc? 
	*pDMEM_CONTROL = 0x00001001; 
	asm volatile("csync"); 
	// disable the serial ports (for now)
	*pSPORT0_TCR1 = 0; 
	*pSPORT0_TCR2 = 0; 
	*pSPORT0_RCR1 = 0; 
	*pSPORT0_RCR2 = 0; 
	*pSPORT0_TCLKDIV = 0; 
	*pSPORT0_RCLKDIV = 0; 
	*pSPORT0_TFSDIV = 0; 
	*pSPORT0_RFSDIV = 0; 
	
	*pSPORT1_TCR1 = 0; 
	*pSPORT1_TCR2 = 0; 
	*pSPORT1_RCR1 = 0; 
	*pSPORT1_RCR2 = 0; 
	*pSPORT1_TCLKDIV = 0; 
	*pSPORT1_RCLKDIV = 0; 
	*pSPORT1_TFSDIV = 0; 
	*pSPORT1_RFSDIV = 0; 
	
	/* port f:
	0	DR0PRI in
	1	RFS0 out
	2	RCLK0 out
	3	PF3		0b0111 ; 0b0110 ; 0b0001
	4	PF4
	5	PF5
	6	PF6
	7	DR0SEC i	0b1000 ; 0b0000 ; 0b1000
	8	PF8
	9	PF9
	10	PF10
	11	TFS1 o	0b1000 ; 0b1000 ; 0b0000
	12	DT1PRI o
	13	TSCLK1 o
	14	PF14
	15	P15		0b0011 ; 0b0011 ; 0b0000
	*/
	*pPORTF_FER = 0x3887 ;
	*pPORTFIO_DIR = 0x3806 ; 
	*pPORTFIO_INEN = 0x0081 ; 
	/* port g:
	0	PG0 o
	1	PG1-SPISS o
	2	SCK o
	3	MISO i
			0b1100 ; 0b0111 ; 0b1000
	4	MOSI o
	5	PG5-WIRED_STEP o
	6	PG6-WIRED_RESET o
	7	UART0TX o
			0b1001 ; 0b1111 ; 0b0000
	8	UART0RX i
	9	PG9-NRF_CSN o
	10	PG10-NRF_CE o
	11	PG11-NRF_IRQ i
			0b0001 ; 0b0110 ; 0b1001
	12	PG12
	13	PG13
	14	MDC
	15	PHYINIT
			0b1100 ; 0b0111 ; 0b0000
	*/
	*pPORTG_FER = 0xc19c ; 
	*pPORTGIO_DIR = 0x76f7 ; 
	*pPORTGIO_INEN = 0x0908 ; 
	/* port h:  all are hooked to the ethernet PHY */
	*pPORTH_FER = 0xffff ; 
	*pPORTHIO_DIR = 0 ; 
	*pPORTHIO_INEN = 0 ; 
	
	asm volatile("ssync"); 

	*pUART0_IER = 0; //turn off interrupts, turn them on later.
	*pUART0_MCR = 0; 
	*pUART0_LCR =  0x0080; //enable access to divisor latch. 
	*pUART0_DLL = 136; 
		//bit rate = SCLK / 16*divisor. 
		//this is the lower byte of the divisor.
		// 136 -> 57600 w/ system clock of 125MHz
	*pUART0_DLH = 0; 
	*pUART0_LCR = 0x0003; //parity disabled, 1 stop bit, 8 bit word. 
	*pUART0_GCTL = 0x0001; //enable the clock.
	printf_temp = (char*)PRINTF_TEMP; //init the pointers. 
	printf_out = (char*)PRINTF_OUT; 
	printf_int("Myopen svn v.", /*SVN_VERSION{*/401/*}*/ ) ; 
	printf_str("\n"); 
	printf_str("checking SDRAM...\n"); 
	unsigned short* p; 
	p = 0; 
	int i; 
	for(i=0; i<4*1024*1024; i++){ //memory size = 32mbytes.
		(*p++) = 0xDECA; 
		(*p++) = 0xFBAD; 
		(*p++) = 0xC0ED; 
		(*p++) = 0xBABE; 
	}
	p = 0; 
	unsigned short s; 
	for(i=0; i<4*1024*1024; i++){
		s = *p++; 
		if(s!= 0xDECA) {
			printf_hex("mem err @ ",i); 
			printf_hex("\ngot:", s); 
			printf_str("\n"); 
			delay(400000); 
		}
		s = *p++; 
		if(s!= 0xFBAD) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0xC0ED) printf_hex("mem err @ ",i); 
		s = *p++; 
		if(s!= 0xBABE) printf_hex("mem err @ ",i); 
	}
	printf_str("memory check done.\n"); 
	
	//test out some floating point ... 
	/*
	float a = 1.3450693; 
	for(i=0; i<120; i++){
		a = a*a; 
		if(a > 20.0) a /= 10.0; 
	}
	printf_hex("float, hex:", (int)a);
	*/
	//usb_init(); 
	int etherr = bfin_EMAC_init(); 
	if(!etherr) DHCP_req();  //want to be able to turn this one off, if we need to operate with APL & XPC stuff.
	
	//setup the filters before we start acquiring samples! 
	//please see (or run!) flt_design.m

	//set up cursor control? 
	g_mouseXpos = PhysicalToLogicalChan(0); 
	g_mouseXneg = PhysicalToLogicalChan(1); 
	g_mouseYpos = PhysicalToLogicalChan(2); 
	g_mouseYneg = PhysicalToLogicalChan(3); 
	g_mouseShift = 7; //scaling / threshold. 
	//turn on the SPORTS last, as the ethernet has to be ready to blast out the data. 
	g_streamEnabled = 0; 
	printf_str("turning on SPORTs\n"); 
	if(1){
		//set up the receive first, since it is controled by the transmit sport. 
		*pSPORT0_RCR2 = 0x0100 + 19; //enable second side, serial word length 20
		*pSPORT1_RCR2 = 0x0100 + 19; 
		/* RCR = 0100 0100 0000 0001
		sample data on rising edge, 
		early frame syncs,
		active high frame syncs,
		require frame sync for every word, 
		external frame sync, 
		msb first, 
		zero fill data, 
		external recieve clock,  
		enable. */
		*pSPORT0_RCR1 = 0x4401 ; 
		*pSPORT1_RCR1 = 0x4401 ; 
		//transmit port
		*pSPORT1_TCLKDIV = 149 ; //120Mhz / 300 = 400k / 25 = 16k / 4 = 4 ksps/ch
		*pSPORT1_TFSDIV = 24 ; //25 clocks between assertions of the frame sync
		*pSPORT1_TCR2 = 19; //word length 20, secondary disabled. 
		// TCR = 0100 0110 0000 0011
		*pSPORT1_TCR1 = 0x4603 ; 
	}
	u32* data; 
	char result; 
	u32* tr_ptr = pTR_PTR;
	u32* wr_ptr = pWR_PTR; 
	#define UDP_PACKET_SIZE 512
	while(1) {
		if(!etherr) bfin_EMAC_recv( (u8**)(&data) ); //listen for packets? (and respond)
		if(!etherr && bfin_EMAC_send_check() && g_streamEnabled){
			if(*wr_ptr < *tr_ptr) *tr_ptr = 0; //rollover.
			if(*wr_ptr - *tr_ptr >= UDP_PACKET_SIZE){//then we have at least one packet to send.
				data = (u32*) ( udp_packet_setup(UDP_PACKET_SIZE + 4, &result ) ); 
				if(result > 0){
					//copy the data from SDRAM.. (starting @ 0x0000 0000, looping 256k bytes)
					//include a copy of the tptr, so that we can (possibly) reorder it. 
					(*data++) = *tr_ptr; //this is the +4
					//we don't know if the transmit pointer will be aligned with packet boundaries -- 
					//so do the memcpy manually. 
					//memcpy((u8*)((*tr_ptr) & 0x0003ffff), data, 1024); 
					u32* src = (u32*)( *tr_ptr ); 
					//alignment errors?  need it to be 32-byte aligned. 
					src = (u32*)((u32)src & (~0x1f)) ; 
					for(i=0; i<UDP_PACKET_SIZE/4; i++){
						src = (u32*) ( ((u32)src) & 0x3ffff ); 
						*data++ = *src++; 
					}
					(*tr_ptr) += UDP_PACKET_SIZE ; 
					bfin_EMAC_send_nocopy(); 
				} else {
					//reset, since we were not able to send anything 
					// (possibly due to ARP). 
					*tr_ptr += UDP_PACKET_SIZE; 
				}
			}
		}
		//usb_intr(); //check to see if there are any USB events to respond to.
		*pPORTFIO_TOGGLE = 0x40 ; //toggle the nordic CSN pin.
	}
	return 0; 
}
void exception_report(unsigned long seqstat, unsigned long retx){
	printf_str("Exception!!\n"); 
	printf_hex("hwerr:", (seqstat >> 14) & 0x1f); 
	printf_str("\n"); 
	printf_hex("excause:", seqstat & 0x3f); 
	printf_str("\n"); 
	printf_hex("retx:", retx); 
	printf_str("\n"); 
	u32* p = g_excregs; 
	printf_hex("r0:", *p++); 
	printf_str("\n"); 
	printf_hex("r1:", *p++); 
	printf_str("\n"); 
	printf_hex("r2:", *p++); 
	printf_str("\n"); 
	printf_hex("r3:", *p++); 
	printf_str("\n"); 
	printf_hex("r4:", *p++); 
	printf_str("\n"); 
	printf_hex("r5:", *p++); 
	printf_str("\n"); 
	printf_hex("r6:", *p++); 
	printf_str("\n"); 
	printf_hex("r7:", *p++); 
	printf_str("\n"); 
	printf_hex("p0:", *p++); 
	printf_str("\n"); 
	printf_hex("p1:", *p++); 
	printf_str("\n"); 
	printf_hex("p2:", *p++); 
	printf_str("\n"); 
	printf_hex("p3:", *p++); 
	printf_str("\n"); 
	printf_hex("p4:", *p++); 
	printf_str("\n"); 
	printf_hex("p5:", *p++); 
	printf_str("\n"); 
	//loop registers. 
	printf_hex("i0:", *p++); 		printf_str(" "); 
	printf_hex("b0:", *p++); 		printf_str(" "); 
	printf_hex("l0:", *p++); 		printf_str("\n"); 
	
	printf_hex("i1:", *p++); 		printf_str(" "); 
	printf_hex("b1:", *p++); 		printf_str(" "); 
	printf_hex("l1:", *p++); 		printf_str("\n"); 
	
	printf_hex("i2:", *p++); 		printf_str(" "); 
	printf_hex("b2:", *p++); 		printf_str(" "); 
	printf_hex("l2:", *p++); 		printf_str("\n"); 
	
	printf_hex("i3:", *p++); 		printf_str(" "); 
	printf_hex("b3:", *p++); 		printf_str(" "); 
	printf_hex("l3:", *p++); 		printf_str("\n"); 
	
	printf_hex("m0:", *p++); 		printf_str(" "); 
	printf_hex("m1:", *p++); 		printf_str(" "); 
	printf_hex("m2:", *p++); 		printf_str(" "); 
	printf_hex("m3:", *p++); 		printf_str("\n"); 
	
	while(1) {
		asm volatile("nop"); 
	}
}
