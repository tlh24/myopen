#ifndef _USB_h_
#define _USB_h_

u8 		wreg(u8 reg, u8 val);
u8 		wregAS(u8 reg, u8 val);
void 	writebytes(u8 reg, u8 n, u8* p);
u8 		rreg(u8 reg);
u8 		rregAS(u8 reg);
void 	readbytes(u8 reg, u8 n, u8* p);
void 	usb_test();
void 	initialize_MAX(void);
void 	service_irqs(void); 
void 	do_SETUP(void);
void 	do_IN3(void);
void 	std_request(void);
void 	set_configuration(void);
void 	get_configuration(void);
void 	set_interface(void);
void 	get_interface(void);
void 	get_status(void);
void 	feature(u8 sc);
void 	send_descriptor(void);
void 	class_request(void);
void 	vendor_request(void);
// MAX3420E Registers
#define rEP0FIFO    0<<3
#define rEP1OUTFIFO 1<<3
#define rEP2INFIFO  2<<3
#define rEP3INFIFO  3<<3
#define rSUDFIFO    4<<3
#define rEP0BC      5<<3
#define rEP1OUTBC   6<<3
#define rEP2INBC    7<<3
#define rEP3INBC    8<<3
#define rEPSTALLS   9<<3
#define rCLRTOGS    10<<3
#define rEPIRQ      11<<3
#define rEPIEN      12<<3
#define rUSBIRQ     13<<3
#define rUSBIEN     14<<3
#define rUSBCTL     15<<3
#define rCPUCTL     16<<3
#define rPINCTL     17<<3
#define rRevision   18<<3
#define rFNADDR     19<<3
#define rGPIO       20<<3

// MAX3420E bit masks for register bits
// R9 EPSTALLS Register
#define bmACKSTAT   0x40
#define bmSTLSTAT   0x20
#define bmSTLEP3IN  0x10
#define bmSTLEP2IN  0x08
#define bmSTLEP1OUT 0x04
#define bmSTLEP0OUT 0x02
#define bmSTLEP0IN  0x01

// R10 CLRTOGS Register
#define bmEP3DISAB  0x80
#define bmEP2DISAB  0x40
#define bmEP1DISAB  0x20
#define bmCTGEP3IN  0x10
#define bmCTGEP2IN  0x08
#define bmCTGEP1OUT 0x04

// R11 EPIRQ register bits
#define bmSUDAVIRQ  0x20
#define bmIN3BAVIRQ 0x10
#define bmIN2BAVIRQ 0x08
#define bmOUT1DAVIRQ 0x04
#define bmOUT0DAVIRQ 0x02
#define bmIN0BAVIRQ 0x01

// R12 EPIEN register bits
#define bmSUDAVIE   0x20
#define bmIN3BAVIE  0x10
#define bmIN2BAVIE  0x08
#define bmOUT1DAVIE 0x04
#define bmOUT0DAVIE 0x02
#define bmIN0BAVIE  0x01

// R13 USBIRQ register bits
#define bmURESDNIRQ 0x80
#define bmVBUSIRQ   0x40
#define bmNOVBUSIRQ 0x20
#define bmSUSPIRQ   0x10
#define bmURESIRQ   0x08
#define bmBUSACTIRQ 0x04
#define bmRWUDNIRQ  0x02
#define bmOSCOKIRQ  0x01

// R14 USBIEN register bits
#define bmURESDNIE  0x80
#define bmVBUSIE    0x40
#define bmNOVBUSIE  0x20
#define bmSUSPIE    0x10
#define bmURESIE    0x08
#define bmBUSACTIE  0x04
#define bmRWUDNIE   0x02
#define bmOSCOKIE   0x01

// R15 USBCTL Register
#define bmHOSCSTEN  0x80
#define bmVBGATE    0x40
#define bmCHIPRES   0x20
#define bmPWRDOWN   0x10
#define bmCONNECT   0x08
#define bmSIGRWU    0x04

// R16 CPUCTL Register
#define bmIE        0x01

// R17 PINCTL Register
#define bmFDUPSPI   0x10
#define bmINTLEVEL  0x08
#define bmPOSINT    0x04
#define bmGPOB      0x02
#define	bmGPOA      0x01

//
// GPX[B:A] settings (PINCTL register)
#define gpxOPERATE  0x00
#define gpxVBDETECT 0x01
#define gpxBUSACT   0x02
#define gpxSOF      0x03

// ************************
// Standard USB Requests
#define SR_GET_STATUS		0x00	// Get Status
#define SR_CLEAR_FEATURE	0x01	// Clear Feature
#define SR_RESERVED		0x02	// Reserved
#define SR_SET_FEATURE		0x03	// Set Feature
#define SR_SET_ADDRESS		0x05	// Set Address
#define SR_GET_DESCRIPTOR	0x06	// Get Descriptor
#define SR_SET_DESCRIPTOR	0x07	// Set Descriptor
#define SR_GET_CONFIGURATION	0x08	// Get Configuration
#define SR_SET_CONFIGURATION	0x09	// Set Configuration
#define SR_GET_INTERFACE	0x0a	// Get Interface
#define SR_SET_INTERFACE	0x0b	// Set Interface

// Get Descriptor codes	
#define GD_DEVICE		0x01	// Get device descriptor: Device
#define GD_CONFIGURATION	0x02	// Get device descriptor: Configuration
#define GD_STRING		0x03	// Get device descriptor: String
#define GD_HID	            	0x21	// Get descriptor: HID
#define GD_REPORT	        0x22	// Get descriptor: Report

// SETUP packet offsets
#define bmRequestType	0
#define	bRequest			1
#define wValueL				2
#define wValueH				3
#define wIndexL				4
#define wIndexH				5
#define wLengthL			6
#define wLengthH			7

// HID bRequest values
#define GET_REPORT		1
#define GET_IDLE		2
#define GET_PROTOCOL            3
#define SET_REPORT		9
#define SET_IDLE		0x0A
#define SET_PROTOCOL            0x0B
#define INPUT_REPORT            1


const unsigned char DD[]=	// DEVICE Descriptor
        {0x12,	       		// bLength = 18d
        0x01,			// bDescriptorType = Device (1)
        0x00,0x01,		// bcdUSB(L/H) USB spec rev (BCD)
		0x00,0x00,0x00, 	// bDeviceClass, bDeviceSubClass, bDeviceProtocol
		0x40,			// bMaxPacketSize0 EP0 is 64 bytes
		0x6A,0x0B,		// idVendor(L/H)--Maxim is 0B6A
		0x46,0x53,		// idProduct(L/H)--5346
		0x34,0x12,		// bcdDevice--1234
		1,2,3,			// iManufacturer, iProduct, iSerialNumber
		1};			// bNumConfigurations

const unsigned char CD[]=	// CONFIGURATION Descriptor
	{0x09,			// bLength
	0x02,			// bDescriptorType = Config
	0x22,0x00,		// wTotalLength(L/H) = 34 bytes
	0x01,			// bNumInterfaces
	0x01,			// bConfigValue
	0x00,			// iConfiguration
	0xE0,			// bmAttributes. b7=1 b6=self-powered b5=RWU supported
	0x01,			// MaxPower is 2 ma
// INTERFACE Descriptor
	0x09,			// length = 9
	0x04,			// type = IF
	0x00,			// IF #0
	0x00,			// bAlternate Setting
	0x01,			// bNum Endpoints
	0x03,			// bInterfaceClass = HID
	0x00,0x00,		// bInterfaceSubClass, bInterfaceProtocol
	0x00,			// iInterface
// HID Descriptor--It's at CD[18]
	0x09,			// bLength
	0x21,			// bDescriptorType = HID
	0x10,0x01,		// bcdHID(L/H) Rev 1.1
	0x00,			// bCountryCode (none)
	0x01,			// bNumDescriptors (one report descriptor)
	0x22,			// bDescriptorType	(report)
	43,0,                   // CD[25]: wDescriptorLength(L/H) (report descriptor size is 43 bytes)
// Endpoint Descriptor
	0x07,			// bLength
	0x05,			// bDescriptorType (Endpoint)
	0x83,			// bEndpointAddress (EP3-IN)		
	0x03,			// bmAttributes	(interrupt)
	64,0,                   // wMaxPacketSize (64)
	10};			// bInterval (poll every 10 msec)


const unsigned char RepD[]=   // Report descriptor 
	{
	0x05,0x01,		// Usage Page (generic desktop)
	0x09,0x06,		// Usage (keyboard)
	0xA1,0x01,		// Collection
	0x05,0x07,		//   Usage Page 7 (keyboard/keypad)
	0x19,0xE0,		//   Usage Minimum = 224
	0x29,0xE7,		//   Usage Maximum = 231
	0x15,0x00,		//   Logical Minimum = 0
	0x25,0x01,		//   Logical Maximum = 1
	0x75,0x01,		//   Report Size = 1
	0x95,0x08,		//   Report Count = 8
	0x81,0x02,		//  Input(Data,Variable,Absolute)
	0x95,0x01,		//   Report Count = 1
	0x75,0x08,		//   Report Size = 8
	0x81,0x01,		//  Input(Constant)
	0x19,0x00,		//   Usage Minimum = 0
	0x29,0x65,		//   Usage Maximum = 101
	0x15,0x00,		//   Logical Minimum = 0,
	0x25,0x65,		//   Logical Maximum = 101
	0x75,0x08,		//   Report Size = 8
	0x95,0x01,		//   Report Count = 1
	0x81,0x00,		//  Input(Data,Variable,Array)
	0xC0};			// End Collection 

// STRING descriptors. An array of string arrays

const unsigned char strDesc[][64]= {
// STRING descriptor 0--Language string
{
        0x04,			// bLength
	0x03,			// bDescriptorType = string
	0x09,0x04		// wLANGID(L/H) = English-United Sates
},
// STRING descriptor 1--Manufacturer ID
{
        12,			// bLength
	0x03,			// bDescriptorType = string
	'M',0,'a',0,'x',0,'i',0,'m',0 // text in Unicode
}, 
// STRING descriptor 2 - Product ID
{	24,			// bLength
	0x03,			// bDescriptorType = string
	'M',0,'A',0,'X',0,'3',0,'4',0,'2',0,'0',0,'E',0,' ',0,
        'E',0,'n',0,'u',0,'m',0,' ',0,'C',0,'o',0,'d',0,'e',0
},

// STRING descriptor 3 - Serial Number ID
{       20,			// bLength
		0x03,			// bDescriptorType = string
		'S',0,				
		'/',0,
		'N',0,
		' ',0,
		'3',0,
		'4',0,
		'2',0,
		'0',0,
		'E',0,
}};
#endif
