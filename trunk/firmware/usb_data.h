#ifndef _USB_DATA_
#define _USB_DATA_
const unsigned char DD[]=	// DEVICE Descriptor (should not change)
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
		
const unsigned char CD_old[]=	// CONFIGURATION Descriptor
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

const unsigned char CD_kbd[]= //keyboard and mouse. 
{	0x09, 		//length
	0x02, 		//type = configuration
	59, 0,		//total length, low/high
	0x02, 		//number of interfaces
	0x01, 		//config value
	0x00, 		//iconfig, string index for this configuration. 
	0xC0, 		//attributes, b7=1 b6=self-powered 
	0x01, 		//2ma from bus
// interface descriptor 1 - mouse.  
	0x09, 		//length = 9
	0x04, 		//type = interface
	0x00, 		//IF # 0, zero-based.
	0x00, 		//alternate setting
	0x01, 		//number of endpoints used by this interface
	0x03, 		//interface class = HID
	0x01, 		//boot device
	0x02, 		//interface protocol - mouse. 
	0x00, 		//iInterface, index to a string descriptor. 
// HID descriptor 1 @ CD[18]
	0x09, 		//length
	0x21, 		//descritpor type (HID)
	0x10, 0x01, // bcdHID(L/H) Rev 1.1
	0x00, 		//country code
	0x01, 		//number of report descriptors to follow
	0x22, 		//report descriptor type - HID
	50, 0, 		//report descriptor length (L/H)
// endpoint descriptor 1 (EP 2)
	0x07, 		//length
	0x05, 		//type endpoint
	0x82, 		//endpoint 2, in
	0x03, 		//interrupt
	64, 0, 		//max packet size
	10, 			//polling interval (10ms)
// interface descriptor 2 - keyboard. 
	0x09,		// length = 9
	0x04,		// type = IF
	0x01,		// IF #1
	0x00,		// bAlternate Setting
	0x01,		// bNum Endpoints
	0x03,		// bInterfaceClass = HID
	0x00,0x00,		// bInterfaceSubClass, bInterfaceProtocol
	0x00,		// iInterface
// HID descriptor 2 @ CD[43]
	0x09,		// bLength
	0x21,		// bDescriptorType = HID
	0x10,0x01,		// bcdHID(L/H) Rev 1.1
	0x00,		// bCountryCode (none)
	0x01,		// bNumDescriptors (one report descriptor)
	0x22,		// bDescriptorType	(HID, report)
	43,0,        // CD[25]: wDescriptorLength(L/H) (report descriptor size is 43 bytes)
// endpoint descriptor 2 (EP3)
	0x07,		// bLength
	0x05,		// bDescriptorType (Endpoint)
	0x83,		// bEndpointAddress (EP3-IN)		
	0x03,		// bmAttributes	(interrupt)
	64,0,        // wMaxPacketSize (64)
	10};		// bInterval (poll every 10 msec)

const unsigned char CD[]= //USB key configuration description.
{	0x09, 		//length
	0x02, 		//type = configuration
	32, 0,		//total length, low/high
	0x01, 		//number of interfaces
	0x01, 		//config value
	0x00, 		//iconfig, string index for this configuration. 
	0xC0, 		//attributes, b7=1 b6=self-powered 
	0x01, 		//2ma from bus
// interface descriptor 1 - MSD (mass storage device).  CD[9] 
	0x09, 		//length = 9
	0x04, 		//type = interface
	0x00, 		//IF # 0, zero-based.
	0x00, 		//alternate setting
	0x02, 		//number of endpoints used by this interface
	0x08, 		//interface class = MSD
	0x06, 		//subclass = SCSI transparent command set class 6.
	0x50, 		//interface protocol = bulk-only transport. 
	0x00, 		//iInterface, index to a string descriptor. 
// endpoint descriptor 1 (EP 2, in) CD[18]
	0x07, 		//length
	0x05, 		//type endpoint
	0x82, 		//endpoint 2, in (0x80)
	0x02, 		//interrupt = 0x03, bulk = 0x02
	64, 0, 		//max packet size
	0, 			//polling interval (off)
// endpoint descriptor 2 (EP 1, out) CD[25]
	0x07, 		//length
	0x05, 		//type endpoint
	0x01, 		//endpoint 1, out (0x00)
	0x02, 		//interrupt = 0x03, bulk = 0x02
	64, 0, 		//max packet size
	0 				//polling interval (off)
};		//length: 32. 
	
const unsigned char RepD[]=   // Report descriptor 
        {
        0x05,0x01,              // Usage Page (generic desktop)
        0x09,0x06,              // Usage (keyboard)
        0xA1,0x01,              // Collection
        0x05,0x07,              //   Usage Page 7 (keyboard/keypad)
        0x19,0xE0,              //   Usage Minimum = 224
        0x29,0xE7,              //   Usage Maximum = 231
        0x15,0x00,              //   Logical Minimum = 0
        0x25,0x01,              //   Logical Maximum = 1
        0x75,0x01,              //   Report Size = 1
        0x95,0x08,              //   Report Count = 8
        0x81,0x02,              //  Input(Data,Variable,Absolute)
        0x95,0x01,              //   Report Count = 1
        0x75,0x08,              //   Report Size = 8
        0x81,0x01,              //  Input(Constant)
        0x19,0x00,              //   Usage Minimum = 0
        0x29,0x65,              //   Usage Maximum = 101
        0x15,0x00,              //   Logical Minimum = 0,
        0x25,0x65,              //   Logical Maximum = 101
        0x75,0x08,              //   Report Size = 8
        0x95,0x01,              //   Report Count = 1
        0x81,0x00,              //  Input(Data,Variable,Array)
        0xC0};                  // End Collection 

	// http://www.usb.org/developers/devclass_docs/HID1_11.pdf page 71 !!
/* this is a usb trace from plugging in my optical mouse: 
05010902 a1010901 a1000509 19012903 15002501 75019503 81027505 95018101
	so: 
	05	01
	09	02
	a1	01
	09	01
	a1	00
	05	09
	19	01
	29	03
	15	00
	25	01
	75	01
	95	03
	81	02
	75	05
	95	01
	81	01
	unfortunately the usbmon debug kernel module does not report more than 32 bytes :(
*/
const unsigned char RepMouse[] =  
{	//length 50 bytes
	0x05, 0x01, 	// usage (generic desktop)
	0x09, 0x02, 	// usage (mouse)
	0xA1, 0x01, 	// collection (application)
	0x09, 0x01, 	//   usage (pointer)
	0xA1, 0x00, 	//	collection (linked)
	0x05, 0x09, 	//		usage page (buttons)
	0x19, 0x01, 	//			usage minimum = 1
	0x29, 0x03, 	//			usage maximum = 3
	0x15, 0x00, 	//			logical minimum = 0
	0x25, 0x01, 	//			logical maximum = 1
	0x95, 0x03, 	//			report count = 3
	0x75, 0x01, 	//			report size = 1
	0x81, 0x02, 	//			input (3 button bits)
	0x95, 0x01, 	//			report count = 1
	0x75, 0x05, 	//			report size = 5
	0x81, 0x01, 	//			input (constant, 5 bit padding)
	0x05, 0x01, 	//		usage page (generic desktop)
	0x09, 0x30, 	//			usage = x
	0x09, 0x31, 	//			usage = y
	0x15, 0x81, 	//			logical minium = -127
	0x25, 0x7f, 		//			logical maximium = 127
	0x75, 0x08, 	//			report size = 8
	0x95, 0x03, 	//			report count = 3
	0x81, 0x06, 	//			input (2 position bytes X & Y)
	0xC0, 0xC0 };  	//	end collection, end collection. 
		
const unsigned char RepKbd[]=   // Report descriptor -- for the keyboard! 
	{ //length 43 bytes
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
	'M',0,'A',0,'X',0,'3',0,'4',0,'2',0,'1',0,'E',0,' ',0,
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
		'1',0,
		'E',0,
}};
#endif
