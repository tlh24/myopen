#include <stdio.h>
#include "../firmware_stage9_tmpl/decoder.h"
#include "packet.h"

//decode the template-match part of a packet
int decodePacket(packet* p, int* channel, char* match, unsigned int &echo){
	// channel and match must be arrays of 32.
	// match can be 0 (none) 1 or 2.
	// returns the channel flag, 0-15, 'exch'
	// and the flag, also 0-15.
	int exch = 0; 
	exch += 0x8 & ((p->tmpl[0]) >> (32-4)); //0x80808080 format; convert to 0xf format.
	exch += 0x4 & ((p->tmpl[0]) >> (24-3));
	exch += 0x2 & ((p->tmpl[0]) >> (16-2));
	exch += 0x1 & ((p->tmpl[0]) >> (8-1));
	
	echo = 0; 
	echo += 0x8 & ((p->tmpl[1]) >> (32-4)); //0x80808080 format; convert to 0xf format.
	echo += 0x4 & ((p->tmpl[1]) >> (24-3));
	echo += 0x2 & ((p->tmpl[1]) >> (16-2));
	echo += 0x1 & ((p->tmpl[1]) >> (8-1));
	
	//mapping : 0 -> 0,32,64,96; 1->1,33,65,97. 
	// much simpler than old mapping.
	for(int k=0; k<2; k++){ //2 32 bit word template matches per packet
		for(int j=0; j<4; j++){ //4 bytes per word
			int chan = (exch * 8)%32 + k*4 + j; 
			unsigned char encoded = ((p->tmpl[k]) >> (8*j)) & 0x7f; 
			unsigned short decoded = decoder[encoded]; 
			if(decoded & 0x100) printf("error caught in template match!\n"); 
			int bitoff[4] = {0,4,1,5}; //0,32,64,96.
			for(int m = 0; m < 4; m++){
				int adr = chan + m*32;
				int indx = k*16 + j*4 + m; 
				channel[indx] = adr; 
				match[indx] = 0; 
				int b = bitoff[m]; 
				for(int t=0; t<2; t++){
					if((0x01<<(b+2*t)) & decoded){
						match[indx] = t+1; 
					}
				}
			}
		}
	}
	return exch; 
}