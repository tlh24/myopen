#include <cdefBF537.h>
#include "util.h"
#include "print.h"
#include "ethernet.h"
#include "http.h"

//need to keep a IP -> MAC LUT. 
arp_lut	NetArpLut[ARP_LUT_N]; 
u16		NetArpLut_age;

void ARP_init(){
	int i, j; 
	for(i=0; i<ARP_LUT_N; i++){
		NetArpLut[i].ip = 0; 
		for(j=0; j<6; j++){
			NetArpLut[i].mac[j] = 0; 
		}
		NetArpLut[i].age = 0; 
		NetArpLut[i].timeout = 0;
		NetArpLut[i].flags = 0; 
	}
	NetArpLut_age = 100; 
}

void ARP_tx(u32 who){
	int i; 
	arp_packet* p; 
	
	p = (arp_packet*)(txbuf[txIdx]->FrmData); 
	p->eth.length = sizeof(arp_packet); 
	
	//fill out the data structures. 
	for(i=0; i<6; i++){
		p->eth.dest[i] = 0xff; //broadcast.
	}
	for(i=0; i<6; i++){
		p->eth.src[i] = NetOurMAC[i];
	}
	p->eth.protLen = htons(ETH_PROTO_ARP); 
	
	p->arp.htype = htons(ARP_HTYPE_ETH); 
	p->arp.ptype = htons(ARP_PTYPE_IPV4); 
	p->arp.hlen = 6; 
	p->arp.plen = 4; 
	p->arp.operation = htons(ARP_OP_REQ); 
	for(i=0; i<6; i++){
		p->arp.sha[i] = NetOurMAC[i]; 
		p->arp.tha[i] = 0; //don't know it yet!
	}
	p->arp.spa[0] = NetOurIP & 0xff; 
	p->arp.spa[1] = (NetOurIP >> 8) & 0xff; 
	p->arp.spa[2] = (NetOurIP >> 16) & 0xff; 
	p->arp.spa[3] = (NetOurIP >> 24) & 0xff; 
	p->arp.tpa = who; 
	
	bfin_EMAC_send_nocopy();
}
int ARP_rx(u8* data, int length){
	arp_packet * p; 
	arp_packet * pt;
	int i;
	
	p = (arp_packet*)(data); 
	if(htons(p->eth.protLen) == ETH_PROTO_ARP && 
		length >= sizeof(arp_packet)){
		//printf_ip("ARP packet, dest ", p->arp.tpa); 
		//printf_str("\n"); 
		if(p->arp.htype == htons(ARP_HTYPE_ETH)  && 
			p->arp.ptype == htons(ARP_PTYPE_IPV4) &&
			p->arp.hlen == 6 && 
			p->arp.plen == 4)
		{
			//see if it was a response.. 
			if(p->arp.operation == htons(ARP_OP_REPLY) && 
				p->arp.tha[0] == NetOurMAC[0] && 
				p->arp.tha[1] == NetOurMAC[1] && 
				p->arp.tha[2] == NetOurMAC[2] && 
				p->arp.tha[3] == NetOurMAC[3] && 
				p->arp.tha[4] == NetOurMAC[4] && 
				p->arp.tha[5] == NetOurMAC[5] )
			{
				u32 who = pack4chars(p->arp.spa);  
				printf_ip("ARP: discovered MAC address for ", who);
				printf_str("\n"); 
				//save it to the LUT.  first find an open slot.
				ARP_lut_add(who, p->arp.sha);
				return 1; //handled. 
			}
			//see if it was a request for our MAC address..
			if( 	p->arp.htype == htons(ARP_HTYPE_ETH)  && 
				p->arp.ptype == htons(ARP_PTYPE_IPV4) &&
				p->arp.hlen == 6 && 
				p->arp.plen == 4 && 
				p->arp.operation == htons(ARP_OP_REQ) &&
				p->arp.tpa == NetOurIP)
			{
				printf_str("ARP request with our IP\n"); 
		
				pt = (arp_packet*)(txbuf[txIdx]->FrmData); 
				pt->eth.length = sizeof(arp_packet) -2; 
				
				//fill out the data structures. 
				for(i=0; i<6; i++){
					pt->eth.dest[i] = p->eth.src[i];
				}
				for(i=0; i<6; i++){
					pt->eth.src[i] = NetOurMAC[i];
				}
				pt->eth.protLen = htons(ETH_PROTO_ARP); 
				
				pt->arp.htype = htons(ARP_HTYPE_ETH); 
				pt->arp.ptype = htons(ARP_PTYPE_IPV4); 
				pt->arp.hlen = 6; 
				pt->arp.plen = 4; 
				pt->arp.operation = htons(ARP_OP_REPLY); 
				for(i=0; i<6; i++){
					pt->arp.sha[i] = NetOurMAC[i]; 
					pt->arp.tha[i] = p->arp.sha[i]; 
				}
				pt->arp.spa[0] = NetOurIP & 0xff; 
				pt->arp.spa[1] = (NetOurIP >> 8) & 0xff; 
				pt->arp.spa[2] = (NetOurIP >> 16) & 0xff; 
				pt->arp.spa[3] = (NetOurIP >> 24) & 0xff; 
				pt->arp.tpa = FormatIPAddress(
					p->arp.spa[0],p->arp.spa[1],p->arp.spa[2],p->arp.spa[3]); 
				
				printf_str("sending ARP response\n");
				bfin_EMAC_send_nocopy();	
				return 1; 
			}
		}
	}
	return 0; 
}
int ARP_lut_find(){
	//simply find a slot that we can use. 
	//look for empty slots first, followed by the oldest.
	int i, j, age; 
	for(i=0; i<ARP_LUT_N; i++){
		if(NetArpLut[i].ip == 0) break; 
	} //very limited networking stack here... 
	if(i == ARP_LUT_N){
		//then we have to search for the oldest to replace. 
		i = 0; 
		age = NetArpLut[i].age; 
		for(j=0; j<ARP_LUT_N; j++){
			if(NetArpLut[j].age < age){
				i = j; 
				age = NetArpLut[j].age; 
			}
		}
	}
	return i; 
}
void ARP_lut_add(u32 who, u8* mac){
	int i, j, fnd; 
	fnd = -1; 
	//first have to see if it's already there... 
	for(i=0; i<ARP_LUT_N && fnd < 0; i++){
		if(NetArpLut[i].ip == who)
			fnd = i; 
	}
	if(fnd < 0){
		fnd = ARP_lut_find(); 
	}
	/*printf_ip("ARP adding to LUT ", who); 
	printf_int(" at ", fnd); 
	printf_str("\n"); */
	NetArpLut[fnd].ip = who; 
	for(j=0; j<6; j++){
		NetArpLut[fnd].mac[j] = mac[j]; 
	}
	NetArpLut_age++; //let it wrap if need be..
	NetArpLut[fnd].age = NetArpLut_age; 
	NetArpLut[fnd].flags = ARP_LUT_VALID; //clear any old wait flags in there.
}
int ARP_lu(u32 who, u8* mac_dest){
	//see if it is in the ARP LUT; if not, get the address. 
	int i, j; 
	for(i=0; i<ARP_LUT_N; i++){
		if(NetArpLut[i].ip == who && (NetArpLut[i].flags & ARP_LUT_VALID)){
			//sweet, copy it over
			for(j=0; j<6;j++) {
				*mac_dest++ = NetArpLut[i].mac[j]; 
			}
			return 1; 
		}
	}
	return 0; 
}
/* ARP_req ->  look in the table for this IP. 
if it is there, then return the MAC
if it is not, then check the timeout. 
if the timeout is zero or expired, send a request. 
otherwise, give up.  (there is no limit to the 
number of ARP requests in this scheme.) */
int ARP_req(u32 who, u8* mac_dest){
	//look in present table..
	if(ARP_lu(who, mac_dest)) return 1;  
	int i; 
	u32 t = *pGTIME; 
	for(i=0; i<ARP_LUT_N; i++){
		if(NetArpLut[i].ip == who && (NetArpLut[i].flags & ARP_LUT_WAIT)){
			if(NetArpLut[i].timeout > t){
				return 0; //have to wait longer... 
			}else{
				//the timer has expired. 
				printf_ip("ARP error: no response from ", who); 
				printf_str("\n"); 
				ARP_tx(who); 
				NetArpLut[i].timeout = t + 1000 ; //one second. 
				return 0; //still have to wait for the response. 
			}
		}
	}
	//ok, it must not be in the table. 
	i = ARP_lut_find(); 
	NetArpLut[i].ip = who; 
	NetArpLut[i].flags = ARP_LUT_WAIT; 
	NetArpLut[i].timeout = t + 1000 ;
	NetArpLut_age++; //let it wrap if need be..
	NetArpLut[i].age = NetArpLut_age; 
	//finally ... 
	ARP_tx(who); 
	return 0; //will still have to wait for a response...
}
