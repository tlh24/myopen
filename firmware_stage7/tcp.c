#include <cdefBF537.h>
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "ethernet.h"
#include "http.h"

u32 TcpState; 
u32 TcpSeqClient; 	//the last SYN/ACK packet recieved. host byte order.
u32 TcpSeqHost; 	// our counter. host byte order.
u16 TcpClientPort;	//from which port a client is querying us. 
					// IN NETWORK ORDER
u32 TcpSeqHttpStart; //the sequence number of the start of a HTTP PDU. 
u32 TcpHighestAck ; //the largest ACKed byte that the reciever claims to have gotten. 
u32 TcpHighestAckTimeout; //when we should go back and transmit from HighestAck
u32 TcpBurstOffset ; 

u8* tcp_packet_setup(int len, char* result, u32 dest, u8 flags, u32 seq, u32 ack){
	//setup a tcp packet, caller sends it. 
	//len is the payload length.
	
	int length; 
	u8* data; 
	
	length = sizeof(tcp_packet) + len; 
	data = eth_header_setup(&length, result, dest);
	if( *result < 0 ) return 0; 
	//printf_int("tcp packet setup: ip packet length: ", length); 
	//printf_str("\n"); 
	data = ip_header_setup(data, &length, dest, IP_PROT_TCP); 
	data = tcp_header_setup(data, &length, flags, seq, ack); 
	
	return data; 
}

u16 tcp_checksum_calc(u8* data, int length){
	// length is the length of tcp payoad data
	// http://mathforum.org/library/drmath/view/54379.html
	int i; 
	tcp_packet* p; 
	p = (tcp_packet*)data;
	
	u32 sum = 0;
	u16* ptr; 	
	//first, add up the IP pseudo-header. 
	u32* pp = &(p->ip.src) ; 
	ptr = (u16*)( pp ); 
	for(i=0; i<4; i++){
		sum += *ptr++; 
	}
	sum += ((p->ip.p) << 8) & 0xffff; 
	sum += htons(length + ((p->tcp.dataoff)>>2)); 
	
	if(length & 0x1){ //pad with zero. 
		u8* c = (u8*)(&(p->tcp));
		c +=  length + ((p->tcp.dataoff) >> 2); 
		*c = 0; 
		length++; 
	}
	//checksum the actual packet.
	p->tcp.xsum = 0; 
	ptr = (u16*)( &(p->tcp) ); 
	for(i=0; i < length/2 + ((p->tcp.dataoff)>>3); i++){
		sum += *ptr++;
	}
	//manage the carries
	sum = (sum & 0xffff) + (sum >> 16);
	return ~(sum & 0xffff); 
	//don't think we need to change the byte-order, as we are 
	//operating on stuff that is network-byte order, ready to transmit.
}

void tcp_checksum_set(int length){
	//assumes that we are working on a packet in an outgoing dma buffer.
	//length is the payload length.
	tcp_packet* p; 
	p = (tcp_packet*)(txbuf[txIdx]->FrmData); 
	p->tcp.xsum = tcp_checksum_calc((u8*)(txbuf[txIdx]->FrmData), length);
}
u8 tcp_checksum_check(u8* data, int length){
	//assumes that we are working on a packet in the RX buffer. 
	tcp_packet* p; 
	u16 sump, sumc; 
	p = (tcp_packet*)data; 
	sump = p->tcp.xsum ; 
	sumc = tcp_checksum_calc(data, length); 
	//note: includes the present checksum; 
	// set to zero if this is a packet to be transmitted. 
	if(sump == sumc){
		//printf_hex("TCP checksum correct, is:", sump); 
		//printf_str("\n"); 
		return 1; 
	}else{
		printf_hex("TCP checksum incorrect, is:", sump); 
		printf_hex(" calculated: ", sumc); 
		printf_str("\n"); 
		return 0; 
	}
}

int tcp_length(tcp_packet* p){
	//calculate the payload length in bytes & return it. 
	int length = htons(p->ip.len);
	length -= (p->ip.hl_v & 0x0f) << 2; // specifies 32 bit words, so only shift 2.
	length -= (p->tcp.dataoff & 0xf0)  >> 2; //same here, 'cept the other direction. (>>4 , << 2)
	return length; 
}

//need to keep track of the bytes that were acknowleged. 

int tcp_rx(u8* data, int length){
	tcp_packet* p; 
	int rxlen; 
	char* payload, result;
	u8* tx; 

	p = (tcp_packet*)data; 
	if(p->eth.protLen == htons(ETH_PROTO_IP4)){
		if(p->ip.p == IP_PROT_TCP && 
		    p->tcp.dest == htons(80) && 
			ip_header_checksum(data + sizeof(eth_header)) ){
			//printf_str("got a TCP packet port 80");
			//printf_ip(" src ", htonl(p->ip.src)); 
			//printf_str("\n"); 
			//save it so we sent this guy data in the future.
			ARP_lut_add(p->ip.src, p->eth.src); 
			//check the checksum.
			rxlen = tcp_length(p); 
			printf_int(" client tcp len ",  rxlen); 
			printf_str("\n"); 
			if(tcp_checksum_check(data, rxlen)){
				//now, must decide what to do with this packet. 
				if(p->tcp.flags == TCP_FLAG_RST){
					printf_str("TCP RST\n"); 
					TcpState = TCP_LISTEN; 
					TcpSeqClient = htonl(p->tcp.seq); 
					g_httpRxed = 0; //reset the incoming buffer. 
					return 1; 
				}
				if( p->tcp.flags == TCP_FLAG_SYN ){
					printf_str("TCP got SYN"); 
					TcpSeqClient = htonl(p->tcp.seq); 
					TcpSeqClient += tcp_length(p); 
					TcpSeqClient++; //that's the arbitration protocol
					TcpClientPort = p->tcp.src;
					g_httpRxed = 0; //reset the incoming buffer. 
					//set up a response.
					NetDestIP = p->ip.src; 
					tcp_packet_setup(0, &result, NetDestIP, 
						TCP_FLAG_SYN | TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); 
					if(result > 0){
						TcpSeqHost++; 
						TcpState = TCP_SYN_RXED; 
						//checksum. 
						tcp_checksum_set(0); //no payload.
						bfin_EMAC_send_nocopy();
						return 1;
					}					
				}
				if(p->tcp.flags == TCP_FLAG_ACK && TcpState == TCP_SYN_RXED){
					if(htonl(p->tcp.ack) != TcpSeqHost){
						printf_ip("TCP got unexpected ack, ", htonl(p->tcp.ack)); 
						TcpState = TCP_LISTEN; 
						printf_str("\n"); 
						return 1; 
					}
					TcpState = TCP_CONNECTED; 
					TcpSeqClient = htonl(p->tcp.seq); 
					printf_str("TCP conneted\n"); 
					return 1; 
				}
				if(p->tcp.flags & TCP_FLAG_FIN ){
					printf_str("TCP got FIN\n"); 
					TcpSeqClient = htonl(p->tcp.seq); 
					NetDestIP = p->ip.src; 
					TcpSeqClient++; 
					if( TcpState == TCP_CONNECTED || TcpState == TCP_LISTEN ) {
						tcp_packet_setup(0, &result, NetDestIP,
							TCP_FLAG_FIN | TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); 
						if(result > 0){
							TcpState = TCP_CLOSING; 
							tcp_checksum_set(0); //no payload.
							bfin_EMAC_send_nocopy();
							return 1; 
						}
					}
					if( TcpState == TCP_CLOSING ) {
						g_httpRxed = 0; //reset the incoming buffer. 
						tcp_packet_setup(0, &result, NetDestIP,
							 TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); //final ack.
						if(result > 0){
							TcpState = TCP_CLOSE; 
							tcp_checksum_set(0); //no payload.
							bfin_EMAC_send_nocopy();
							return 1; 
						}
					}
				}
				if(p->tcp.flags & TCP_FLAG_ACK ){
					if(TcpState == TCP_CLOSE){
						printf_str("TCP got random ACK\n"); 
						//do nothing .. !
						return 1; 
					}
					if(TcpState == TCP_LISTEN){
						//oops, the other side thinks we have a connection 
						printf_str("TCP confused, sending RST\n"); //confused! 
						g_httpRxed = 0; //reset the incoming buffer. 
						TcpSeqClient = htonl(p->tcp.seq); 
						NetDestIP = p->ip.src; 
						TcpClientPort = p->tcp.src;
						//TcpSeqClient++; 
						tcp_packet_setup(0, &result, NetDestIP,
								TCP_FLAG_RST, TcpSeqClient, 0); 
						if(result > 0){
							TcpState = TCP_LISTEN; 
							tcp_checksum_set(0); //no payload.
							bfin_EMAC_send_nocopy();
							return 1; 
						}
					}
				}
				if(TcpState == TCP_CONNECTED){
					//they are requesting something? 
					payload = (char*)( &(p->tcp) ); 
					payload += (p->tcp.dataoff & 0xf0)/4; //divide by 4 b/c it is << 4 & specifies 32 bit words. 
					TcpSeqClient = htonl(p->tcp.seq); 
					TcpSeqClient += rxlen; 
					NetDestIP = p->ip.src; //wow what a stack!
					//start sending from whatever they acked last. 
					u32 offset = htonl(p->tcp.ack) - TcpSeqHttpStart; 
					//see if this was just an ack - if so, 
					//and we have more data to send, then send it. 
					if(p->tcp.flags & TCP_FLAG_ACK && rxlen == 0){
						//see if we have more data to send. 
						if(offset == g_httpHeaderLen + g_httpContentLen){
							//g_httpRxed = 0; //reset the input counter. 
							//don't reset the input counter until we handle it.
							return 1; //nothing to send, everything acked.
						} else {
							if(tcp_burst(1, offset)) {
								return 1; 
							} else {
								//nothing left - that was just an ack, wait for something else.
								//this is the keepalive mode of connection.
								// should check to see if that was a payload..
								/*if(httpResp((char*)HTTP_RX, g_httpRxed){ 
									TcpSeqHttpStart = TcpSeqHost; 
									printf_int("sending http data length ", g_httpHeaderLen + g_httpContentLen); 
									printf_str("\n"); 
									tcp_burst(1, 0); 
									g_httpRxed = 0; 
								}*/
								return 1; 
							}
						}
					}
					if(p->tcp.flags & TCP_FLAG_PSH){
						//they want us to send data to the 'client program'
						httpCollate(payload, rxlen); //add any payload from this pkt
						TcpSeqHost = offset + TcpSeqHttpStart; //our seq
						if(httpResp((char*)HTTP_RX, g_httpRxed)){
							TcpSeqHttpStart = TcpSeqHost; 
							printf_int("sending http data length ", g_httpHeaderLen + g_httpContentLen); 
							printf_str("\n"); 
							tcp_burst(1, 0); 
						}
						g_httpRxed = 0; 
						return 1; 
					}
					//save the data in the rx buffer then
					httpCollate(payload, rxlen); 
					//otherwise, couldn't do anything with that packet - ack it, maybe they'll send another.
					tx = tcp_packet_setup(0, &result, NetDestIP, TCP_FLAG_ACK,
						TcpSeqHost, TcpSeqClient); //keepalive function.
					if(result > 0){
						tcp_checksum_set(0); 
						bfin_EMAC_send_nocopy();
						return 1; 
					}
				}
			}
		}
	}	
	return 0; 
}
int tcp_burst(int iter, u32 offset){
	int i = 0; 
	int txlen;
	char result; 
	u8* tx; 
	int totalLen = g_httpHeaderLen + g_httpContentLen; 
	while( i < iter && offset < totalLen ){
		int remainingLen = totalLen - offset ; 
		int flag = TCP_FLAG_ACK; 
		//only push on the last transmission.
		if(remainingLen <= 1024) flag |= TCP_FLAG_PSH; 
		txlen = remainingLen > 1024 ? 1024 : remainingLen;
		TcpSeqHost = offset + TcpSeqHttpStart;
		tx = tcp_packet_setup(txlen, &result, NetDestIP,  
				flag, TcpSeqHost, TcpSeqClient); 
		if(result > 0){
			u8* src;
			int txhdrlen = 0; 
			if(offset < g_httpHeaderLen){
				src = (u8*)HTTP_HEADER; 
				src += offset; 
				txhdrlen = g_httpHeaderLen - offset; 
				memcpy_(src, tx, txhdrlen); 
				tx += txhdrlen ; 
				txlen -= txhdrlen; 
				offset += txhdrlen;  
			}
			src = (u8*)HTTP_CONTENT; 
			src += offset - g_httpHeaderLen; 
			memcpy_(src, tx, txlen); 
			offset += txlen; 
			TcpSeqHost = offset + TcpSeqHttpStart;
			tcp_checksum_set(txlen + txhdrlen); 
			bfin_EMAC_send_nocopy();
			i++; 
			if( (rxbuf[rxIdx]->StatusWord & RX_COMP) && (rxbuf[rxIdx]->StatusWord & RX_OK) ) {
				//we break out if another packet has been received -- so that we can take care of it.
				// (it may be an ack to our data).  
				i += iter; 
			}
		}
	}
	return i; 
}
