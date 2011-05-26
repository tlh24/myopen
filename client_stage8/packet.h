#ifndef __PACKET_H__
#define __PACKET_H__

typedef struct {
	char data[24]; //in groups of 4 channels, e.g. 0,32,64,96
	unsigned int tmpl[2]; //template match!
} packet; 

int decodePacket(packet* p, int* channel, char* match); 

#endif