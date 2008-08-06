#include <cdefBF537.h>
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "ethernet.h"
#include "http.h"

u32 TcpState; 
u32 TcpSeqClient; //the last Syn packet recieved. host order.
u32 TcpSeqHost; 		// our counter. host byte order.
u16 TcpClientPort; //from which port a client is querying us. 
					// IN NETWORK ORDER

u8* tcp_packet_setup(int len, u32 dest, u8 flags, u32 seq, u32 ack){
	//setup a tcp packet, caller sends it. 
	//len is the payload length.
	
	int length; 
	u8* data; 
	
	length = sizeof(tcp_packet) + len; 
	data = eth_header_setup(&length); 
	//printf_int("tcp packet setup: ip packet length: ", length); 
	//printf_str("\n"); 
	data = ip_header_setup(data, &length, dest, IP_PROT_TCP); 
	data = tcp_header_setup(data, &length, flags, seq, ack); 
	
	return data; 
}

void tcp_checksum(int length){
	//assumes that we are working on a packet in outgoing dma buffer.
	//length is the payload length.
	// http://mathforum.org/library/drmath/view/54379.html
	int i; 
	tcp_packet* p; 
	p = (tcp_packet*)(txbuf[txIdx]->FrmData);
	
	u32 sum = 0;
	u16* ptr; 	
	//first, add up the IP pseudo-header. 
	u32* pp = &(p->ip.src) ; 
	ptr = (u16*)( pp ); 
	for(i=0; i<4; i++){
		sum += *ptr++; 
	}
	sum += ((p->ip.p) << 8) & 0xffff; 
	sum += htons(length + sizeof(tcp_header)); 
	
	if(length & 0x1){
		u8* c = (u8*)(txbuf[txIdx]->FrmData);
		c += sizeof(tcp_packet) + length; 
		*c = 0; 
		length++; 
	}
	
	ptr = (u16*)( &(p->tcp) ); 
	for(i=0; i < length/2 + sizeof(tcp_header)/2; i++){
		sum += *ptr++;
	}
	//manage the carries
	sum = (sum & 0xffff) + (sum >> 16);
	//sum = (sum & 0xffff) + (sum >> 16);
	p->tcp.xsum= ~( sum & 0xffff ); //don't think we need to change the byte-order, as we are 
		//operating on stuff that is network-byte order, ready to transmit.
}

int tcp_length(tcp_packet* p){
	//calculate the payload length & return it. 
	
	int length = htons(p->ip.len);
	length -= (p->ip.hl_v & 0x0f) << 2; // specifies 32 bit words, so only shift 2.
	length -= (p->tcp.dataoff & 0xf0)  >> 2; //same here, 'cept the other direction.
	return length; 
}

//need to keep track of the bytes that were acknowleged. 


int tcp_rx(u8* data, int length){
	tcp_packet* p; 
	int txlen, rxlen; 
	char* payload;
	u8* tx; 
	u32 src; 
	int i; 

	p = (tcp_packet*)data; 
	if(p->eth.protLen == htons(ETH_PROTO_IP4)){
		if(p->ip.p == IP_PROT_TCP && 
		    p->tcp.dest == htons(80) ){
			//printf_str("got a TCP packet port 80");
			//printf_ip(" src ", htonl(p->ip.src)); 
			//printf_str("\n"); 
			NetDestIP = p->ip.src; //save it so we sent this guy data in the future.
			for(i=0; i<6; i++){
				NetDestMAC[i] = p->eth.src[i]; 
			}
			src = p->ip.src; 
			//now, must decide what to do with this packet. 
			if(p->tcp.flags == TCP_FLAG_RST){
				printf_str("TCP RST\n"); 
				TcpState = TCP_LISTEN; 
				TcpSeqClient = htonl(p->tcp.seq); 
				return 1; 
			}
			if( p->tcp.flags == TCP_FLAG_SYN ){
				printf_str("TCP got SYN"); 
				TcpSeqClient = htonl(p->tcp.seq); 
				printf_int("client tcp len ",  tcp_length(p)); 
				printf_str("\n"); 
				TcpSeqClient += tcp_length(p); 
				TcpSeqClient++; //that's the arbitration protocol
				TcpClientPort = p->tcp.src;
				//set up a response.
				tcp_packet_setup(0, src, 
					TCP_FLAG_SYN | TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); 
				TcpSeqHost++; 
				TcpState = TCP_SYN_RXED; 
				//checksum. 
				tcp_checksum(0); //no payload.
				bfin_EMAC_send_nocopy();
				return 1; 
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
				TcpSeqClient++; 
				if( TcpState == TCP_CONNECTED ) {
					tcp_packet_setup(0, src,
						TCP_FLAG_FIN | TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); 
					TcpState = TCP_CLOSE; 
					tcp_checksum(0); //no payload.
					bfin_EMAC_send_nocopy();
					return 1; 
				}
				if( TcpState == TCP_CLOSING ) {
					tcp_packet_setup(0, src,
						 TCP_FLAG_ACK, TcpSeqHost, TcpSeqClient); //final ack.
					TcpState = TCP_CLOSE; 
					tcp_checksum(0); //no payload.
					bfin_EMAC_send_nocopy();
					return 1; 
				}
			}
			if(p->tcp.flags & TCP_FLAG_ACK && TcpState == TCP_CLOSE){
				printf_str("TCP got random ACK\n"); 
				return 1; 
			}
			if(TcpState == TCP_CONNECTED){
				//they are requesting something? 
				rxlen = tcp_length(p); 
				payload = (char*)( &(p->tcp) ); 
				payload += (p->tcp.dataoff & 0xf0)/4; //divide by 4 b/c it is << 4 & specifies 32 bit words. 
				TcpSeqClient = htonl(p->tcp.seq); 
				TcpSeqClient += rxlen; 
				//see if this was just an ack - if so, and we have more data to send, then send it. 
				if(p->tcp.flags & TCP_FLAG_ACK && rxlen == 0){
					//see if we have more data to send. 
					if(g_httpRemainingLen > 0 ){
						txlen = g_httpRemainingLen > 1024 ? 1024 : g_httpRemainingLen;
						g_httpRemainingLen -= txlen; 
						tx = tcp_packet_setup(txlen, src,  
								TCP_FLAG_ACK | TCP_FLAG_PSH, //don't close the connection.
								TcpSeqHost, TcpSeqClient); 
						TcpSeqHost+= txlen; 
						memcpy(g_httpSendPtr, tx, txlen); 
						g_httpSendPtr += txlen; 
						tcp_checksum(txlen); 
						bfin_EMAC_send_nocopy();
						return 1; 
					} else {
						//nothing left - that was just an ack, wait for something else.
						//this is the keepalive mode of connection.
						return 1; 
					}
				}
				if( httpCollate(payload, rxlen) ){
					//ok, we have assembled a response - send or start sending it. 
					//need to figure out if we have to break it up into multiple packets. 
					if(g_httpHeaderLen + g_httpContentLen + sizeof(tcp_packet) > 1024){
						g_httpSendPtr = ((u8*)HTTP_CONTENT); 
						txlen = 1024 - sizeof(tcp_packet); 
						g_httpSendPtr += (txlen - g_httpHeaderLen); 
						g_httpRemainingLen = g_httpHeaderLen + g_httpContentLen - txlen; 
						tx = tcp_packet_setup(txlen, src,  
							TCP_FLAG_ACK | TCP_FLAG_PSH, //don't close connection (of course!)
							TcpSeqHost, TcpSeqClient); 
					}else{
						txlen = g_httpHeaderLen + g_httpContentLen; 
						g_httpSendPtr = 0; 
						g_httpRemainingLen = 0; 
						tx = tcp_packet_setup(txlen, src,  
							TCP_FLAG_ACK | TCP_FLAG_PSH | TCP_FLAG_FIN, //close connection after this.
							TcpSeqHost, TcpSeqClient); 
					}
					printf_int("sending length: ", txlen); 
					printf_str("\n"); 
					TcpSeqHost+= txlen; //this is after the packet has been set up. 
					memcpy( (u8*)HTTP_HEADER, tx, g_httpHeaderLen); 
					tx += g_httpHeaderLen; 
					memcpy( (u8*)HTTP_CONTENT, tx, txlen - g_httpHeaderLen); 
					tcp_checksum(txlen); 
					bfin_EMAC_send_nocopy();
					return 1; 
				} else {
					//well, couldn't do anything with that packet - ack it, maybe they'll send another.
					if(TcpState == TCP_CLOSING ){
						tx = tcp_packet_setup(0, src, TCP_FLAG_ACK | TCP_FLAG_FIN,
							TcpSeqHost, TcpSeqClient); 
					} else {
						tx = tcp_packet_setup(0, src, TCP_FLAG_ACK ,
							TcpSeqHost, TcpSeqClient); //keepalive function.
					}
					tcp_checksum(0); 
					bfin_EMAC_send_nocopy();
					return 1; 
				}
			}
		}
	}
	return 0; 
}
