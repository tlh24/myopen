#ifndef __PACKET_H__
#define __PACKET_H__

typedef struct {
	unsigned int ms; //time, in ms, that the bridge rxed the message.
	char data[24]; //in groups of 4 channels, e.g. 0,32,64,96
	unsigned int tmpl[2]; //template match!
} packet; //size: 36 bytes.

int decodePacket(packet* p, int* channel, char* match, unsigned int &echo);

#define BRIDGE_CLOCK 9155.2734375 // Hz.

#endif