#ifndef __ETHER_BF527__
#define __ETHER_BF527__

#define PHYADDR			0x00
#define NO_PHY_REGS		0x20

#define DEFAULT_PHY_PHYID1	0x0007
#define DEFAULT_PHY_PHYID2	0xC0A3
#define PHY_MODECTL		0x00
#define PHY_MODESTAT		0x01
#define PHY_PHYID1		0x02
#define PHY_PHYID2		0x03
#define PHY_ANAR			0x04
#define PHY_ANLPAR		0x05
#define PHY_ANER			0x06

#define PHY_RESET			0x8000
#define PHY_ANEG_EN		0x1000
#define PHY_DUPLEX		0x0100
#define PHY_SPD_SET		0x2000

#define RECV_BUFSIZE		(0x610) 	//1552, slightly smaller than spec sheet. 
#define TX_BUF_CNT		4
#define RX_BUF_CNT		4
extern u8* rxbuf_base_addr; 
extern u8* txbuf_base_addr;

#define HTTP_BUFFER_SIZE (1280) // (0x500)

typedef volatile u32 reg32;
typedef volatile u16 reg16;

typedef struct ADI_DMA_CONFIG_REG {
	u16 b_DMA_EN:1;		/* 0	Enabled				*/
	u16 b_WNR:1;		/* 1	Direction			*/
	u16 b_WDSIZE:2;		/* 2:3	Transfer word size		*/
	u16 b_DMA2D:1;		/* 4	DMA mode			*/
	u16 b_RESTART:1;	/* 5	Retain FIFO			*/
	u16 b_DI_SEL:1;		/* 6	Data interrupt timing select	*/
	u16 b_DI_EN:1;		/* 7	Data interrupt enabled		*/
	u16 b_NDSIZE:4;		/* 8:11	Flex descriptor size		*/
	u16 b_FLOW:3;		/* 12:14Flow				*/
} ADI_DMA_CONFIG_REG;

typedef struct adi_ether_frame_buffer {
	u16 NoBytes;		/* the no. of following bytes	*/
	u8 Dest[6];		/* destination MAC address	*/
	u8 Srce[6];		/* source MAC address		*/
	u16 LTfield;		/* length/type field		*/
	u8 Data[0];		/* payload bytes		*/
} ADI_ETHER_FRAME_BUFFER;
/* 16 bytes/struct	*/

typedef struct dma_descriptor {
	struct dma_descriptor *NEXT_DESC_PTR;
	u32 START_ADDR;
	ADI_DMA_CONFIG_REG CONFIG;
} DMA_DESCRIPTOR;
/* 10 bytes/struct in 12 bytes */

typedef struct adi_ether_buffer {
	DMA_DESCRIPTOR Dma[2];		/* first for the frame, second for the status */
	ADI_ETHER_FRAME_BUFFER *FrmData;/* pointer to data */
	struct adi_ether_buffer *pNext;	/* next buffer */
	struct adi_ether_buffer *pPrev;	/* prev buffer */
	u16 IPHdrChksum;		/* the IP header checksum */
	u16 IPPayloadChksum;		/* the IP header and payload checksum */
	volatile u32 StatusWord;	/* the frame status word */
} ADI_ETHER_BUFFER;
/* 40 bytes/struct in 44 bytes */

//eth_header is functionally the same as ad_ether_frame_buffer.
typedef struct eth_header {
	u16			length; //or padding for alignment, in the case of rx packets.  
	u8			dest[6]; 
	u8			src[6]; 
	u16			protLen; //protocol or length. 
}eth_header; //length : 16 (rx aligned by the RXDWA bit)

#define ETH_PROTO_IP4	0x0800
#define ETH_PROTO_ARP	0x0806

typedef struct arp_header {
	u16		htype; //hardware type
	u16		ptype; //protocol type
	u8		hlen; //hardware length
	u8		plen; //protocol length
	u16		operation; 
	u8		sha[6]; //sender hardware address (ethernet)
	u8		spa[4]; //sender protocol address (IP). bytes o/w get misaligned mem
	u8		tha[6]; //target hardware address (eth)
	u32		tpa; //target protocol address
} arp_header;
#define ARP_HTYPE_ETH	1
#define ARP_PTYPE_IPV4	0x0800
#define ARP_OP_REQ	1
#define ARP_OP_REPLY	2
#define ARP_LUT_N		10
#define ARP_LUT_VALID 	1
#define ARP_LUT_WAIT 	2
typedef struct arp_lut{
	u32	ip; 
	u8	mac[6]; 
	u16	age; //for ordering when it was entered into the db. 
	u32	timeout; //when we should send another ARP request.
	u32	flags; //has to be this big to mantain alignment. 
} arp_lut; 

typedef struct ip_header {
	u8		hl_v;	/* header length and version	*/
	u8		tos;		/* type of service		*/
	u16		len;		/* total length			*/
	u16		id;		/* identification		*/
	u16		off;		/* fragment offset field	*/
	u8		ttl;		/* time to live			*/
	u8		p;		/* protocol			*/
	u16		sum;		/* checksum			*/
	u32		src;		/* Source IP address		*/
	u32		dest;		/* Destination IP address	*/
} ip_header ;
#define IP_HDR_SIZE_NO_UDP	(sizeof (ip_header) ) //20
#define IP_HDR_SIZE		(sizeof (ip_header + 8))//28
#define IP_PROT_ICMP		1
#define IP_PROT_TCP		6
#define IP_PROT_UDP		17

typedef struct icmp_header {
	u8		type; 
	u8		code; 
	u16		xsum; 
	u16		id; 
	u16		seq; 
} icmp_header; 
#define ICMP_ECHO_REPLY	0
#define ICMP_UNREACHABLE	3
#define ICMP_PORT_CLOSED	3
#define ICMP_ECHO_REQUEST	8

typedef struct udp_header {
	u16		src;	/* UDP source port		*/
	u16		dest;	/* UDP destination port		*/
	u16		len;	/* Length of UDP packet		*/
	u16		xsum;	/* Checksum			*/
} udp_header; 
typedef struct tcp_header {
	u16		src;		// source port
	u16		dest;	// destination port
	u32		seq; 
	u32		ack; 
	u8		dataoff; 	//data offset
	u8		flags; 
	u16		window; 
	u16		xsum; 
	u16		urgent; 
} tcp_header ; //20 bytes.
#define TCP_FLAG_FIN	0x01
#define TCP_FLAG_SYN	0x02
#define TCP_FLAG_RST	0x04
#define TCP_FLAG_PSH	0x08
#define TCP_FLAG_ACK	0x10
#define TCP_FLAG_URG	0x20
#define TCP_FLAG_ECE	0x40
#define TCP_FLAG_CWR	0x80

enum{
	TCP_LISTEN = 0, 
	TCP_SYN_RXED, 
	TCP_CONNECTED, 
	TCP_CLOSING, //sent out a FIN.
	TCP_CLOSE, 
	TCP_ACKWAIT
}; 

typedef struct dhcp_header {
	u8		op; 
	u8		htype;
	u8		hlen;
	u8		hops; 
	u32		xid; 
	u16		secs;
	u16		flags; 
	u32		ciaddr; 
	u32		yiaddr; 
	u32		siaddr; 
	u32		giaddr; 
	u8		chaddr[16]; //client hardware address.
	u32		sname[16]; //set to zero
	u32		file[32]; //set to zero
	u32		cookie; //i like cookies!
	//remainder: options.
}dhcp_header; 
#define DHCP_COOKIE	0x63825363
#define DHCP_PAD		0
#define DHCP_MESSAGE	53
#define DHCP_SERVERID	54
#define DHCP_END		255  //last option.
#define DHCPDISCOVER	1
#define DHCPOFFER	2
#define DHCPREQUEST	3
#define DHCPDECLINE	4
#define DHCPACK		5
#define DHCPNAK		6
#define DHCPRELEASE	7
#define DHCPINFORM	8

typedef struct arp_packet {
	eth_header	eth; 
	arp_header	arp; 
}arp_packet; 

typedef struct dhcp_packet{
	eth_header	eth; 
	ip_header	ip; 
	udp_header	udp; 
	dhcp_header	dhcp; 
}dhcp_packet; 

typedef struct icmp_packet{
	eth_header	eth; 
	ip_header	ip; 
	icmp_header	icmp; 
}icmp_packet; 

typedef struct udp_packet{
	eth_header	eth; 
	ip_header	ip; 
	udp_header	udp; 
}udp_packet; 

typedef struct tcp_packet{
	eth_header	eth; 
	ip_header	ip; 
	tcp_header	tcp; 
}tcp_packet; 

int bfin_EMAC_init( );
void bfin_EMAC_halt();
int bfin_EMAC_send(volatile void *packet,int length);
int bfin_EMAC_send_check();
int bfin_EMAC_send_nocopy();
int bfin_EMAC_recv(u8** data);
int bfin_EMAC_recv_poll(u8** data);

u32 FormatIPAddress(u8 a, u8 b, u8 c, u8 d); 
void SetupMacAddr();

void PollMdcDone(void);
void WrPHYReg(u16 PHYAddr, u16 RegAddr, u16 Data);
u16 RdPHYReg(u16 PHYAddr, u16 RegAddr);
void SoftResetPHY(void);
void DumpPHYRegs(void);

int SetupSystemRegs(int *opmode);

unsigned NetCksum(u8 * ptr, int len);
u16 htons(u16 in);
u32 htonl(u32 in);
u32 pack4chars(u8* a);

int ether_testUDP(); 
void ARP_init(); 
void ARP_tx(u32 who);
int ARP_rx(u8* data, int length);
int ARP_lut_find();
void ARP_lut_add(u32 who, u8* mac); 
int ARP_lu(u32 who, u8* mac_dest);
int ARP_req(u32 who, u8* mac_dest);

u8* eth_header_setup(int* length,  char* result, u32 destIP);
u8* ip_header_setup(u8* data, int* length, u32 dest, u8 protocol);
u8 ip_header_checksum(u8* data); 
u8* icmp_header_setup(u8* data, int* length, u8 type, u16 id, u16 seq);
u8* udp_header_setup(u8* data, int* length, u16 sport, u16 dport);
u8* tcp_header_setup(u8* data, int* length, u8 flags, u32 seq, u32 ack);

u8* icmp_packet_setup(int len, char* result, u32 dest, u8 type, u16 id, u16 seq);
u8* udp_packet_setup(int len, char* result, u16 dport);
u8* tcp_packet_setup(int len, char* result, u32 dest, u8 flags, u32 seq, u32 ack);
u16 tcp_checksum_calc(u8* data, int length);
void tcp_checksum_set(int length);
u8 tcp_checksum_check(u8* data, int length);
int tcp_rx(u8* data, int length);
int tcp_burst(int iter, u32 offset); 
int icmp_rx(u8* data, int length);
void DHCP_tx(int olen, u8* opt, u32 dest);
int DHCP_rx();
int DHCP_req(); 
void DHCP_parse(u8* ptr, int length);
int ether_post_test();
u8 bridge_publish(); 

extern ADI_ETHER_BUFFER *txbuf[TX_BUF_CNT]; 
extern ADI_ETHER_BUFFER *rxbuf[RX_BUF_CNT];
extern u16 txIdx;		/* index of the current RX buffer */
extern u16 rxIdx;		/* index of the current TX buffer */

extern arp_lut		NetArpLut[ARP_LUT_N]; 
extern u16		NetArpLut_count; 

extern u32 TcpState; 
extern u32 TcpSeqClient; //the last Syn packet recieved. host order.
extern u32 TcpSeqHost; 		// our counter. host byte order.
extern u16 TcpClientPort; //from which port a client is querying us. 
					// IN NETWORK ORDER

extern u16 txIdx;		/* index of the current RX buffer */
extern u16 rxIdx;		/* index of the current TX buffer */
extern u16 NetIPID;		// identification # for IP header.
extern u8   NetOurMAC[6];
extern u32 NetOurIP;	//our IP address, in network byte-order 
					//here reversed, 192.168.1.200 = 0xC801A8C0
extern u32 NetDestIP; 	//destination IP address, as above. 
					// 192.168.1.149 = 0x9501A8C0
extern u32 NetDataDestIP; //where to actually send the UDP data too! 
extern u32 NetDHCPserv; //same as above, network byte order.
extern u8	NetDestMAC[6]; //where to send data to on the local network.

extern u32	g_httpRxed;  //number of bytes received in a multi-packet transfer.

/**
 * is_zero_ether_addr - Determine if give Ethernet address is all zeros.
 * @addr: Pointer to a six-byte array containing the Ethernet address
 *
 * Return true if the address is all zeroes.
 */
/*
static inline int is_zero_ether_addr(const u8 * addr)
{
	return !(addr[0] | addr[1] | addr[2] | addr[3] | addr[4] | addr[5]);
}
*/

/**
 * is_multicast_ether_addr - Determine if the Ethernet address is a multicast.
 * @addr: Pointer to a six-byte array containing the Ethernet address
 *
 * Return true if the address is a multicast address.
 * By definition the broadcast address is also a multicast address.
 */
 /*
static inline int is_multicast_ether_addr(const u8 * addr)
{
	return (0x01 & addr[0]);
}
*/
/**
 * is_valid_ether_addr - Determine if the given Ethernet address is valid
 * @addr: Pointer to a six-byte array containing the Ethernet address
 *
 * Check that the Ethernet address (MAC) is not 00:00:00:00:00:00, is not
 * a multicast address, and is not FF:FF:FF:FF:FF:FF.
 *
 * Return true if the address is valid.
 */
 
static inline int is_valid_ether_addr(const u8 * addr)
{
	//FF:FF:FF:FF:FF:FF is a multicast address so we don't need to
	//explicitly check for it here. 
	if(0x01 & addr[0]) //is multicast
		return 0; 
	if( !(addr[0] | addr[1] | addr[2] | addr[3] | addr[4] | addr[5]) ) //is zero
		return 0; 
	return 1;
}
#endif
