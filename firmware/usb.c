#include <cdefBF537.h>
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "usb.h"

#define USB_SS 0x4000 //on port F

u8 wreg(u8 reg, u8 val){
	//write a register on the usb controller (MAX3421)
	reg = reg | 0x2; //set the 'write' bit.
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	//note: read the shadow buffer so that we don't trigger another SPI transaction.
	reg = *pSPI_SHADOW; //read the status 
	*pSPI_TDBR = (u16)val; 
	spi_delay();
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
	return reg; 
}
u8 wregAS(u8 reg, u8 val){
	reg |= 1 ; //ACKSTAT = 1; 
	return wreg(reg, val); 
}
void writebytes(u8 reg, u8 n, u8* p){
	reg = reg | 0x2; //set the 'write' bit.
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	while(n>0){
		*pSPI_TDBR = (u16)(*p);
		spi_delay(); 
		p++; 
		n--; 
	}
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
}
u8 rreg(u8 reg){
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg; //note: does not mask out unused bits!
	spi_delay(); 
	reg = *pSPI_SHADOW; //read the status.
	*pSPI_TDBR = 0; 
	spi_delay();
	reg = *pSPI_SHADOW; //read it in - the contents of the register.
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
	return reg; 
}
u8 rregAS(u8 reg){
	reg |= 1 ; //ACKSTAT = 1; 
	return rreg(reg); 
}
void readbytes(u8 reg, u8 n, u8* p){
	*pPORTFIO_CLEAR = USB_SS; 
	asm volatile("ssync;"); 
	*pSPI_TDBR = (u16)reg;
	spi_delay(); 
	while(n>0){
		*pSPI_TDBR = 0;
		spi_delay(); 
		*p = (u8)(*pSPI_SHADOW); 
		p++; 
		n--; 
	}
	*pPORTFIO_SET = USB_SS; 
	asm volatile("ssync;"); 
}

//Global variables
u8 g_SUD[8];		// Local copy of the 8 setup data read from the MAX3420E SUDFIFO
u8 g_msgidx; 
u8 g_msglen;	// Text string in EnumApp_enum_data.h--index and length
u8 g_configval;		// Set/Get_Configuration value
u8 g_ep3stall;		// Flag for EP3 Stall, set by Set_Feature, reported back in Get_Status
u8 g_interfacenum;      // Set/Get interface value
u8 g_inhibit_send;	// Flag for the keyboard character send routine
u8 g_RWU_enabled;       // Set by Set/Clear_Feature RWU request, sent back for Get_Status-RWU
u8 g_suspended;         // Tells the main loop to look for host resume and RWU pushbutton
u8 g_send3zeros;        // EP3-IN function uses this to send HID (key up) codes between keystrokes


void usb_test() {
	//let's just see if we can talk to the USB controller (for now). 
	//have to set it up in full-duplex mode. 
	wreg(rPINCTL,bmFDUPSPI | bmPOSINT);    // MAX3420: SPI=full-duplex
	wreg(rPINCTL, 0x17);  //yea, what?? 
	wreg(rUSBCTL,bmCHIPRES);    // reset the MAX3420E
	udelay(20); 
	wreg(rUSBCTL,0);            // remove the reset
	//have to wait for the oscillator to stabilize. 
	u8 d; 
	do{
		d = rreg(rUSBIRQ); 
		d &= bmOSCOKIRQ ; 
	}while(!d); 
	u8 rd, wr = 1; 
	int i; 
	for(i=0; i<3; i++){
		wreg(rPINCTL, 0x17);  //yea, what?? 
	}
	for(i=0; i<80;i++){
		wreg(rUSBIEN, wr); 
		rd = rreg(rUSBIEN); 
		if(rd != wr){
			printf_int("usb: wrote ", wr); 
			printf_int(" got:", rd); 
			printf_str("\n"); //total mystery why the first two writes fail. 
		}
		wr++; 
		if( wr == 255) wr = 0; 
	}
	initialize_MAX(); 
	while(1){
		if(g_suspended){
			if(rreg(rUSBIRQ) & bmBUSACTIRQ)     // the host resumed bus traffic
				g_suspended=0;                    // no longer suspended
			//we do not need the remote wake-up functionality here. 
		}
		if( *pPORTFIO & 0x0100 ){ //positive level interupt.  probably should actually make this an interupt!
			printf_str("usb interupt\n"); 
			service_irqs();
		}
	}
	printf_str("usb test done"); 
	while(1){
		wreg(rUSBIEN, wr); 
		rd = rreg(rUSBIEN); 
		wr <<= 1; 
		if( wr == 0) wr = 1; 
	}
}

#define ENABLE_IRQS wreg(rEPIEN,(bmSUDAVIE+bmIN3BAVIE)); wreg(rUSBIEN,(bmURESIE+bmURESDNIE));
#define SETBIT(reg,val) wreg(reg,(rreg(reg)|val));
#define CLRBIT(reg,val) wreg(reg,(rreg(reg)&~val));
#define STALL_EP0 wreg(rEPSTALLS,0x23);	// Set all three EP0 stall bits--data stage IN/OUT and status stage

void initialize_MAX(void){
	g_ep3stall=0;			// EP3 inintially un-halted (no stall) (CH9 testing)
	g_msgidx = 0;			// start of KB Message[]
	g_inhibit_send = 0x01;		// 0 means send, 1 means inhibit sending
	g_send3zeros=1;
	// software flags
	g_configval=0;                    // at pwr on OR bus reset we're unconfigured
	g_suspended=0;
	g_RWU_enabled=0;            // Set by host Set_Feature(enable RWU) request
	wreg(rPINCTL,(bmFDUPSPI+gpxSOF)); 
	// MAX3420: SPI=full-duplex, INT=positive level, GPX=SOF
	// This is a self-powered design, so the host could turn off Vbus while we are powered.
	// Therefore set the VBGATE bit to have the MAX3420E automatically disconnect the D+
	// pullup resistor in the absense of Vbus. Note: the VBCOMP pin must be connected to Vbus
	// or pulled high for this code to work--a low on VBCOMP will prevent USB connection.
	wreg(rUSBCTL,(bmCONNECT+bmPOSINT)); 
		// VBGATE=1 disconnects D+ pullup if host turns off VBUS
	ENABLE_IRQS
	wreg(rCPUCTL,bmIE);                 // Enable the INT pin
}

void service_irqs(void){
	u8 itest1,itest2;
	itest1 = rreg(rEPIRQ);            // Check the EPIRQ bits
	itest2 = rreg(rUSBIRQ);           // Check the USBIRQ bits
	if(itest1 & bmSUDAVIRQ) {
		wreg(rEPIRQ,bmSUDAVIRQ);     // clear the SUDAV IRQ
		do_SETUP();
	}
	if(itest1 & bmIN3BAVIRQ){          // Was an EP3-IN packet just dispatched to the host?
		do_IN3();                     // Yes--load another keystroke and arm the endpoint
	}                    // NOTE: don't clear the IN3BAVIRQ bit here--loading the EP3-IN byte
						  // count register in the do_IN3() function does it.
	if((g_configval != 0) && (itest2&bmSUSPIRQ)){   // HOST suspended bus for 3 msec
		wreg(rUSBIRQ,(bmSUSPIRQ+bmBUSACTIRQ));  // clear the IRQ and bus activity IRQ
		g_suspended=1;                  // signal the main loop
	}
	if(rreg(rUSBIRQ)& bmURESIRQ){
		wreg(rUSBIRQ,bmURESIRQ);      // clear the IRQ
	}
	if(rreg(rUSBIRQ) & bmURESDNIRQ){
		wreg(rUSBIRQ,bmURESDNIRQ);    // clear the IRQ bit
		g_suspended=0;                  // in case we were suspended
		ENABLE_IRQS                   // ...because a bus reset clears the IE bits
	}
} 

void do_SETUP(void){							
	readbytes(rSUDFIFO,8,g_SUD);          // got a SETUP packet. Read 8 SETUP bytes
	switch(g_SUD[bmRequestType]&0x60){    // Parse the SETUP packet. For request type, look only at b6&b5
		case 0x00:	std_request();		break;
		case 0x20:	class_request();	break;  // just a stub in this program
		case 0x40:	vendor_request();	break;  // just a stub in this program
		default:	STALL_EP0                       // unrecognized request type
	}
}

void do_IN3(void){
	if (g_inhibit_send==0x01){
		wreg(rEP3INFIFO,0);			// send the "keys up" code
		wreg(rEP3INFIFO,0);
		wreg(rEP3INFIFO,0);
	}else if (g_send3zeros==0x01){                  // precede every keycode with the "no keys" code
		wreg(rEP3INFIFO,0);			// send the "keys up" code
		wreg(rEP3INFIFO,0);
		wreg(rEP3INFIFO,0);
		g_send3zeros=0;                           // next time through this function send the keycode
	}else{
		g_send3zeros=1;
		wreg(rEP3INFIFO, 0x02); // shift
		wreg(rEP3INFIFO, 0x00);
		wreg(rEP3INFIFO, 0x17);
		g_inhibit_send=1;                     // send the string once per pushbutton press
	}
	wreg(rEP3INBC,3);				// arm it
}

void std_request(void){
	switch(g_SUD[bRequest]){
		case	SR_GET_DESCRIPTOR:			send_descriptor();   break;
		case	SR_SET_FEATURE:					feature(1);           	break;
		case	SR_CLEAR_FEATURE:			feature(0);           	break;
		case	SR_GET_STATUS:						get_status();         	break;
		case	SR_SET_INTERFACE:				set_interface();     	break;
		case	SR_GET_INTERFACE:				get_interface();      	break;
		case	SR_GET_CONFIGURATION:	get_configuration();  break;
		case	SR_SET_CONFIGURATION:	set_configuration();  break;
		case	SR_SET_ADDRESS: 					rregAS(rFNADDR);      break;  // discard return value
		default:  STALL_EP0
	}
}

void set_configuration(void){
	g_configval=g_SUD[wValueL];           // Store the config value
	if(g_configval != 0)                // If we are configured, 
	  SETBIT(rUSBIEN,bmSUSPIE);       // start looking for SUSPEND interrupts
	rregAS(rFNADDR);                  // dummy read to set the ACKSTAT bit
}

void get_configuration(void){
	wreg(rEP0FIFO,g_configval);         // Send the config value
	wregAS(rEP0BC,1);   
}

void set_interface(void){	// All we accept are Interface=0 and AlternateSetting=0, otherwise send STALL
	u8 dumval;
	if((g_SUD[wValueL]==0)		// wValueL=Alternate Setting index
	  &&(g_SUD[wIndexL]==0))		// wIndexL=Interface index
		dumval=rregAS(rFNADDR);	// dummy read to set the ACKSTAT bit
	else STALL_EP0
}

void get_interface(void){	// Check for Interface=0, always report AlternateSetting=0
	if(g_SUD[wIndexL]==0) {		// wIndexL=Interface index
		wreg(rEP0FIFO,0);		// AS=0
		wregAS(rEP0BC,1);		// send one byte, ACKSTAT
	}
	else STALL_EP0
}

void get_status(void){
	u8 testbyte;
	testbyte=g_SUD[bmRequestType];
	switch(testbyte){
	case 0x80: 			// directed to DEVICE
		wreg(rEP0FIFO,(g_RWU_enabled+1));	// first byte is 000000rs where r=enabled for RWU and s=self-powered.
		wreg(rEP0FIFO,0x00);		// second byte is always 0
		wregAS(rEP0BC,2); 		// load byte count, arm the IN transfer, ACK the status stage of the CTL transfer
		break; 				
	case 0x81: 			// directed to INTERFACE
		wreg(rEP0FIFO,0x00);		// this one is easy--two zero bytes
		wreg(rEP0FIFO,0x00);		
		wregAS(rEP0BC,2); 		// load byte count, arm the IN transfer, ACK the status stage of the CTL transfer
		break; 				
	case 0x82: 			// directed to ENDPOINT
		if(g_SUD[wIndexL]==0x83){	// We only reported ep3, so it's the only one the host can stall IN3=83
			wreg(rEP0FIFO,g_ep3stall);	// first byte is 0000000h where h is the halt (stall) bit
			wreg(rEP0FIFO,0x00);		// second byte is always 0
			wregAS(rEP0BC,2); 		// load byte count, arm the IN transfer, ACK the status stage of the CTL transfer
		}else  STALL_EP0		// Host tried to stall an invalid endpoint (not 3)	
		break; 
	default:      STALL_EP0		// don't recognize the request
	}
}

// **********************************************************************************************
// FUNCTION: Set/Get_Feature. Call as feature(1) for Set_Feature or feature(0) for Clear_Feature.
// There are two set/clear feature requests:
//	To a DEVICE: 	Remote Wakeup (RWU). 
//  	To an ENDPOINT:	Stall (EP3 only for this app)
//
void feature(u8 sc){
	u8 mask;
	if((g_SUD[bmRequestType]==0x02)	// dir=h->p, recipient = ENDPOINT
	&&  (g_SUD[wValueL]==0x00)	// wValueL is feature selector, 00 is EP Halt
	&&  (g_SUD[wIndexL]==0x83)){	// wIndexL is endpoint number IN3=83
		mask=rreg(rEPSTALLS);   // read existing bits
		if(sc==1){               // set_feature
			mask += bmSTLEP3IN;       // Halt EP3IN
			g_ep3stall=1;
		}else {                      // clear_feature
			mask &= ~bmSTLEP3IN;      // UnHalt EP3IN
			g_ep3stall=0;
			wreg(rCLRTOGS,bmCTGEP3IN);  // clear the EP3 data toggle
		}
		wreg(rEPSTALLS,(mask|bmACKSTAT)); // Don't use wregAS for this--directly writing the ACKSTAT bit
	}else if ((g_SUD[bmRequestType]==0x00)	// dir=h->p, recipient = DEVICE
	&&  (g_SUD[wValueL]==0x01)) {	// wValueL is feature selector, 01 is Device_Remote_Wakeup
		g_RWU_enabled = sc<<1;	// =2 for set, =0 for clear feature. The shift puts it in the get_status bit position.			
		rregAS(rFNADDR);		// dummy read to set ACKSTAT
	} else STALL_EP0
}

void send_descriptor(void) {
	u16 reqlen,sendlen,desclen;
	u8 *pDdata = 0;					// pointer to ROM Descriptor data to send
	// NOTE This function assumes all descriptors are 64 or fewer bytes and can be sent in a single packet
	desclen = 0;					// check for zero as error condition (no case statements satisfied)
	reqlen = g_SUD[wLengthL] + 256*g_SUD[wLengthH];	// 16-bit
	switch (g_SUD[wValueH]) {			// wValueH is descriptor type
		case  GD_DEVICE:
			desclen = DD[0];	// descriptor length
			pDdata = (u8*)DD;
			break;	
		case  GD_CONFIGURATION:
			desclen = CD[2];	// Config descriptor includes interface, HID, report and ep descriptors
			pDdata = (u8*)CD;
			break;
		case  GD_STRING:
			desclen = strDesc[g_SUD[wValueL]][0];   // wValueL=string index, array[0] is the length
			pDdata = (u8*)(strDesc[g_SUD[wValueL]]);       // point to first array element
			break;
		case  GD_HID:
			desclen = CD[18];
			pDdata = (u8*)(&CD[18]);
			break;
		case  GD_REPORT:
			desclen = CD[25];
			pDdata = (u8*)RepD;
			break;
	}
	if (desclen!=0) {               // one of the case statements above filled in a value
		sendlen = (reqlen <= desclen) ? reqlen : desclen; // send the smaller of requested and avaiable
		writebytes(rEP0FIFO,sendlen,pDdata);
		wregAS(rEP0BC,sendlen);   // load EP0BC to arm the EP0-IN transfer & ACKSTAT
	}
	else STALL_EP0  // none of the descriptor types match
}

void class_request(void) { STALL_EP0 } 

void vendor_request(void){ STALL_EP0 }
