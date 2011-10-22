/*
 * ADI Blackfin 537 MAC Ethernet
 *
 * Copyright (c) 2005 Analog Devices, Inc.
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * along with this program; if not, write to the Free Software
 * You should have received a copy of the GNU General Public License
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 * MA 02111-1307 USA
 */
#include <cdefBF527.h>
#include "util.h"
#include "print.h"
#include "ethernet.h"
#include "http.h"

#define TOUT_LOOP		1000000

ADI_ETHER_BUFFER *txbuf[TX_BUF_CNT]; 
ADI_ETHER_BUFFER *rxbuf[RX_BUF_CNT];
u16 txIdx;		/* index of the current RX buffer */
u16 rxIdx;		/* index of the current TX buffer */
u16 NetIPID;		// identification # for IP header.
u32 NetOurIP;	//our IP address, in network byte-order 
					//here reversed, 192.168.1.200 = 0xC801A8C0
u32 NetDestIP; 	//destination IP address, as above. 
					// 192.168.1.149 = 0x9501A8C0
u32 NetDataDestIP; // network byte order. 
u32 NetDHCPserv; //same as above, network byte order.
u32 NetSubnetMask; //also should be supplied by the DHCP server.

u8 		NetOurMAC[6];
u16 PHYregs[NO_PHY_REGS];	/* u16 PHYADDR; */

/* DMAx_CONFIG values at DMA Restart */
const ADI_DMA_CONFIG_REG rxdmacfg = { 1, 1, 2, 0, 0, 0, 0, 5, 7 };

#if 0
	rxdmacfg.b_DMA_EN = 1;	/* enabled */
	rxdmacfg.b_WNR    = 1;	/* write to memory */
	rxdmacfg.b_WDSIZE = 2;	/* wordsize is 32 bits */
	rxdmacfg.b_DMA2D  = 0;	/* N/A */
	rxdmacfg.b_RESTART= 0;	/* N/A */
	rxdmacfg.b_DI_SEL = 0;	/* N/A */
	rxdmacfg.b_DI_EN  = 0;	/* no interrupt */
	rxdmacfg.b_NDSIZE = 5;	/* 5 half words is desc size. */
	rxdmacfg.b_FLOW   = 7;	/* large desc flow  */
#endif

const ADI_DMA_CONFIG_REG txdmacfg = { 1, 0, 2, 0, 0, 0, 0, 5, 7 };

#if 0
	txdmacfg.b_DMA_EN = 1;	/* enabled */
	txdmacfg.b_WNR    = 0;	/* read from memory */
	txdmacfg.b_WDSIZE = 2;	/* wordsize is 32 bits */
	txdmacfg.b_DMA2D  = 0;	/* N/A */
	txdmacfg.b_RESTART= 0;	/* N/A */
	txdmacfg.b_DI_SEL = 0;	/* N/A */
	txdmacfg.b_DI_EN  = 0;	/* no interrupt */
	txdmacfg.b_NDSIZE = 5;	/* 5 half words is desc size. */
	txdmacfg.b_FLOW   = 7;	/* large desc flow */
#endif

ADI_ETHER_BUFFER *SetupRxBuffer(int no);
ADI_ETHER_BUFFER *SetupTxBuffer(int no);

int bfin_EMAC_send( volatile void *packet, int length){
	int i;
	int result = 0;
	unsigned int *buf;
	buf = (unsigned int *)packet;

	if (length <= 0) {
		printf_int("Ethernet: bad packet size: ", length);
		goto out;
	}

	if ((*pDMA2_IRQ_STATUS & DMA_ERR) != 0) {
		printf_str("Ethernet: tx DMA error\n");
		goto out;
	}

	for (i = 0; (*pDMA2_IRQ_STATUS & DMA_RUN) != 0; i++) {
		if (i > TOUT_LOOP) {
			printf_str("Ethernet: tx time out");
			goto out;
		}
	}
	txbuf[txIdx]->FrmData->NoBytes = length;
	memcpy_((u8*)txbuf[txIdx]->FrmData->Dest, (u8*)packet, length);
	txbuf[txIdx]->Dma[0].START_ADDR = (u32) txbuf[txIdx]->FrmData;
	*pDMA2_NEXT_DESC_PTR = &txbuf[txIdx]->Dma[0];
	*pDMA2_CONFIG = *(u16 *) (void *)(&txdmacfg);
	*pEMAC_OPMODE |= TE;

	for (i = 0; (txbuf[txIdx]->StatusWord & TX_COMP) == 0; i++) {
		if (i > TOUT_LOOP) {
			printf_str("Ethernet: tx error\n");
			goto out;
		}
	}
	result = txbuf[txIdx]->StatusWord;
	txbuf[txIdx]->StatusWord = 0;
	if ((txIdx + 1) >= TX_BUF_CNT)
		txIdx = 0;
	else
		txIdx++;
      out:
	//DEBUGF("BFIN EMAC send: length = %d", length);
	return result;
}
int bfin_EMAC_send_check(){
	// return 1 if the previous DMA has finished & we can queue up another, 
	// 0 if it is not done and we should check back later. 
	if((*pDMA2_IRQ_STATUS & DMA_RUN) != 0) {
		return 0; 
	}
	return 1; 
}
int bfin_EMAC_send_nocopy(){
// packet and length are already in txbuf[txIdx]->NoBytes & txbuf[txIdx]->FrmData->Dest
	int i;
	int result = 0;
	*pPORTFIO_SET = 0x20; 
	if ((*pDMA2_IRQ_STATUS & DMA_ERR) != 0) {
		printf_str("Ethernet: tx DMA error\n");
		goto out;
	}
	//wait for the previous packet to be sent. 
	for (i = 0; (*pDMA2_IRQ_STATUS & DMA_RUN) != 0; i++) {
		if (i > TOUT_LOOP) {
			printf_str("Ethernet: tx time out\n");
			goto out;
		}
	}

	txbuf[txIdx]->Dma[0].START_ADDR = (u32) txbuf[txIdx]->FrmData;
	txbuf[txIdx]->StatusWord = 0;
	*pDMA2_NEXT_DESC_PTR = &txbuf[txIdx]->Dma[0];
	*pDMA2_CONFIG = *(u16 *) (void *)(&txdmacfg);
	*pEMAC_OPMODE |= TE;

	if ((txIdx + 1) >= TX_BUF_CNT)
		txIdx = 0;
	else
		txIdx++;
      out:
	//DEBUGF("BFIN EMAC send: length = %d", length);
	*pPORTFIO_CLEAR = 0x20; 
	return result;
}
int bfin_EMAC_recv(u8** data){
	int length = 0;
	
	for (;;) {
		if ((rxbuf[rxIdx]->StatusWord & RX_COMP) == 0) {
			length = -1;
			break;
		}
		if ((rxbuf[rxIdx]->StatusWord & RX_DMAO) != 0) {
			printf_str("Ethernet: rx dma overrun\n");
			break;
		}
		if ((rxbuf[rxIdx]->StatusWord & RX_OK) == 0) {
			printf_str("Ethernet: rx error\n");
			break;
		}
		length = rxbuf[rxIdx]->StatusWord & 0x000007FF;
		if (length <= 4) {
			printf_str("Ethernet: bad frame\n");
			break;
		}
		length -= 4; 
		//*pPORTFIO_SET = 0x4000; 
		//printf_int("got a packet! length: ", length); 
		//printf_str("\n"); 
		*data = (u8*)(rxbuf[rxIdx]->FrmData); 
		*pDMA1_IRQ_STATUS |= DMA_DONE | DMA_ERR;
		rxbuf[rxIdx]->StatusWord = 0x00000000;
		if ((rxIdx + 1) >= RX_BUF_CNT)
			rxIdx = 0;
		else
			rxIdx++;
		
		//note! might get overrun!! 
		if(ARP_rx(*data, length))
			length = -1; 
		else if(icmp_rx(*data, length))
			length = -1; 
		else if(tcp_rx(*data, length))
			length = -1; 
		
		/*
		NetRxPackets[rxIdx] =
		    (volatile u8 *)(rxbuf[rxIdx]->FrmData->Dest);
		NetReceive(NetRxPackets[rxIdx], length - 4);
		*/
		//*pPORTFIO_CLEAR = 0x4000; 
		if(length > 0) return length; //otherwise we loop.  can handle other packets on next pass.
	}
	return length;
}
int bfin_EMAC_recv_poll(u8** data){
	int i, value, length; 
	value = 0; 
	for (i = 0; i < 100; i++) {
		udelay(1000);
		if ((rxbuf[rxIdx]->StatusWord & RX_COMP) != 0) {
			value = 1;
			break;
		}
	}
	if (value == 0) {
		printf_str("eth rxed nada\n");
		//bfin_EMAC_halt();
		//eth_halt();
		return -1;
	}
	length = (rxbuf[rxIdx]->StatusWord & 0x000007FF) ;
	if (length <= 4) {
		return 0;
	}
	rxbuf[rxIdx]->StatusWord = 0;
	length -= 4;
	printf_int("eth rx len ", length); 
	*data = (u8*)(rxbuf[rxIdx]->FrmData); 

	//ARP fixme here!! 
	if(ARP_rx(*data, length))
		length = -1; 
	else if(icmp_rx(*data, length))
		length = -1; 
	
	rxbuf[rxIdx]->StatusWord = 0x00000000;
	if ((rxIdx + 1) >= RX_BUF_CNT)
		rxIdx = 0;
	else
		rxIdx++;
	return length; 
}
u32 FormatIPAddress(u8 a, u8 b, u8 c, u8 d){
	//simple utility routine for getting network-byte order for ip address.
	u32 out; 
	out = d & 0xff; 
	out = out << 8; 
	out = out | (c & 0xff); 
	out = out << 8; 
	out = out | (b & 0xff); 
	out = out << 8; 
	out = out | (a & 0xff); 
	return out; 
}
int bfin_EMAC_init( ){
	u32 opmode = 0;
	int dat;
	int i;
	printf_str("Eth_init...\n");

	txIdx = 0;
	rxIdx = 0;
	NetIPID = 0; //0 = unconfigured. 
	NetOurIP = 0; 
	NetSubnetMask = 0; 
	NetOurIP = FormatIPAddress(192, 168, 0, 9); //defaults, overwritten by dhcp
	NetDestIP = FormatIPAddress(192, 168, 0, 1); 
	NetDataDestIP = FormatIPAddress(152, 16, 229, 54); 
	TcpState = TCP_LISTEN; 
	TcpSeqClient = 0; 
	TcpSeqHost = 0x09da24b5; 
	TcpClientPort = 0; 
	
	ARP_init(); 
	
	*pEMAC_OPMODE = 0; // hw ref p 8-70, writes to the address reg must occur when rx & tx disabled.

	/* Initialize EMAC address */
	SetupMacAddr(NetOurMAC);
	
/* Initialize System Register */
	if (SetupSystemRegs(&dat) < 0)
		return -1;

/* Initialize TX and RX buffer */
	for (i = 0; i < RX_BUF_CNT; i++) {
		rxbuf[i] = SetupRxBuffer(i);
		if (i > 0) {
			rxbuf[i - 1]->Dma[1].NEXT_DESC_PTR =
			    &(rxbuf[i]->Dma[0]);
			if (i == (RX_BUF_CNT - 1))
				rxbuf[i]->Dma[1].NEXT_DESC_PTR =
				    &(rxbuf[0]->Dma[0]);
		}
	}
	for (i = 0; i < TX_BUF_CNT; i++) {
		txbuf[i] = SetupTxBuffer(i);
		if (i > 0) {
			txbuf[i - 1]->Dma[1].NEXT_DESC_PTR =
			    &(txbuf[i]->Dma[0]);
			if (i == (TX_BUF_CNT - 1))
				txbuf[i]->Dma[1].NEXT_DESC_PTR =
				    &(txbuf[0]->Dma[0]);
		}
	}

	/* Set RX DMA */
	*pDMA1_NEXT_DESC_PTR = &rxbuf[0]->Dma[0];
	*pDMA1_CONFIG = *((u16 *) (void *)&rxbuf[0]->Dma[0].CONFIG);

	/* Wait MII done */
	PollMdcDone();

	/* We enable only RX here */
	/* ASTP   : Enable Automatic Pad Stripping
	   PR     : Promiscuous Mode for test
	   PSF    : Receive frames with total length less than 64 bytes.
	   FDMODE : Full Duplex Mode
	   LB	  : Internal Loopback for test
	   RE     : Receiver Enable */
	if (dat == FDMODE)
		opmode = ASTP | FDMODE | PSF;
	else
		opmode = ASTP | PSF;
	opmode |= RE;
	/* Turn on the EMAC */
	*pEMAC_OPMODE = opmode;
	printf_hex("MAC_OPMODE ", opmode); 
	printf_str("\n"); 
	return 0;
}
void bfin_EMAC_halt(){
	//DEBUGF("Eth_halt: ......");
	/* Turn off the EMAC */
	*pEMAC_OPMODE = 0x00000000;
	/* Turn off the EMAC RX DMA */
	*pDMA1_CONFIG = 0x0000;
	*pDMA2_CONFIG = 0x0000;

}
void SetupMacAddr(u8 * MACaddr){
	MACaddr[0] = 0x00; //this is on a sticker on the bottom of the dev board I bought from digikey 
	MACaddr[1] = 0xe0; // will have to buy some ethernet addresses for meselves.
	MACaddr[2] = 0x22; 
	MACaddr[3] = 0xfe; 
	MACaddr[4] = 0x51; 
	MACaddr[5] = 0x08; 
	*pEMAC_ADDRLO = MACaddr[0] | MACaddr[1] << 8 |
		    MACaddr[2] << 16 | MACaddr[3] << 24;
	*pEMAC_ADDRHI = MACaddr[4] | MACaddr[5] << 8;
	
	printf_hex("MAC_ADDRLO ", *pEMAC_ADDRLO); 
	printf_str("\n"); 
	printf_hex("MAC_ADDRHI ", *pEMAC_ADDRHI); 
	printf_str("\n"); 
	
}
void PollMdcDone(void){
	/* poll the STABUSY bit */
	while (*pEMAC_STAADD & STABUSY){
		asm volatile("nop"); 
	}
}
void WrPHYReg(u16 PHYAddr, u16 RegAddr, u16 Data){
	//taken off the spec sheet.. 
	PollMdcDone();
	*pEMAC_STADAT = Data;
	*pEMAC_STAADD = SET_PHYAD(PHYAddr) | SET_REGAD(RegAddr) |
	    STAOP | STABUSY;
}
u16 RdPHYReg(u16 PHYAddr, u16 RegAddr){
	//Read an off-chip register in a PHY through the MDC/MDIO port    
	u16 Data;
	PollMdcDone();
	*pEMAC_STAADD = SET_PHYAD(PHYAddr) | SET_REGAD(RegAddr) | STABUSY;
	PollMdcDone();
	Data = (u16) * pEMAC_STADAT;
	PHYregs[RegAddr] = Data;	/* save shadow copy */
	return Data;
}
void SoftResetPHY(void){
	u16 phydat;
	/* set the reset bit */
	WrPHYReg(PHYADDR, PHY_MODECTL, PHY_RESET);
	/* and clear it again */
	WrPHYReg(PHYADDR, PHY_MODECTL, 0x0000);
	do {
		/* poll until reset is complete */
		phydat = RdPHYReg(PHYADDR, PHY_MODECTL);
	} while ((phydat & PHY_RESET) != 0);
}
int SetupSystemRegs(int *opmode){
	u16 sysctl, phydat;
	printf_str("setting up eth regs.\n"); 
	int count = 0;
	*pPORTG_MUX &= (0x3000 ^ 0xffff); 
	*pPORTG_MUX |= 0x1000; 
	*pPORTG_FER |= 0xc000; 
	*pPORTH_FER = 0xffff; 
	*pPORTH_MUX = 0x0015; 
	/* Enable PHY output */
	*pVR_CTL |= PHYCLKOE;
	/* MDC  = 2.5 MHz */
	sysctl = SET_MDCDIV(24); 
	//page 429 -- MDC clock is SCLK / [2*(MDCDIV + 1)]
	/* Odd word alignment for Receive Frame DMA word */
	/* Configure checksum support and recieve frame word alignment */
	sysctl |= RXDWA | RXCKS;
	*pEMAC_SYSCTL = sysctl;
	/* auto negotiation on  */
	/* full duplex */
	/* 100 Mbps */
	phydat = PHY_ANEG_EN | PHY_DUPLEX | PHY_SPD_SET;
	WrPHYReg(PHYADDR, PHY_MODECTL, phydat);
	do {
		//delay for 1 ms. 
		udelay(1000);
		phydat = RdPHYReg(PHYADDR, PHY_MODESTAT);
		if (count > 3000) {
			printf_str("Link is down, please check your network connection\n");
			return -1;
		}
		count++;
	} while (!(phydat & 0x0004));

	phydat = RdPHYReg(PHYADDR, PHY_ANLPAR);

	if ((phydat & 0x0100) || (phydat & 0x0040))
		*opmode = FDMODE;
	else
		*opmode = 0;

	*pEMAC_MMC_CTL = RSTC | CROLL;

	/* Initialize the TX DMA channel registers */
	*pDMA2_X_COUNT = 0;
	*pDMA2_X_MODIFY = 4;
	*pDMA2_Y_COUNT = 0;
	*pDMA2_Y_MODIFY = 0;

	/* Initialize the RX DMA channel registers */
	*pDMA1_X_COUNT = 0;
	*pDMA1_X_MODIFY = 4;
	*pDMA1_Y_COUNT = 0;
	*pDMA1_Y_MODIFY = 0;
	//printf_str("eth regs done.\n"); 
	return 0;
}

ADI_ETHER_BUFFER *SetupRxBuffer(int no){
	ADI_ETHER_FRAME_BUFFER *frmbuf;
	ADI_ETHER_BUFFER *buf;
	int nobytes_buffer = sizeof(ADI_ETHER_BUFFER[2]) / 2;	/* ensure a multi. of 4 */
	int total_size = nobytes_buffer + RECV_BUFSIZE;

	buf = (ADI_ETHER_BUFFER *) (RXBUF_BASE_ADDR + no * total_size);
	frmbuf =
	    (ADI_ETHER_FRAME_BUFFER *) (RXBUF_BASE_ADDR + no * total_size +
					nobytes_buffer);

	memset_((u8*)buf, 0x00, nobytes_buffer);
	buf->FrmData = frmbuf;
	memset_((u8*)frmbuf, 0xfe, RECV_BUFSIZE);

	/* set up first desc to point to receive frame buffer */
	buf->Dma[0].NEXT_DESC_PTR = &(buf->Dma[1]);
	buf->Dma[0].START_ADDR = (u32) buf->FrmData;
	buf->Dma[0].CONFIG.b_DMA_EN = 1;	/* enabled */
	buf->Dma[0].CONFIG.b_WNR = 1;	/* Write to memory */
	buf->Dma[0].CONFIG.b_WDSIZE = 2;	/* wordsize is 32 bits */
	buf->Dma[0].CONFIG.b_NDSIZE = 5;	/* 5 half words is desc size. */
	buf->Dma[0].CONFIG.b_FLOW = 7;	/* large desc flow */

	/* set up second desc to point to status word */
	buf->Dma[1].NEXT_DESC_PTR = &(buf->Dma[0]);
	buf->Dma[1].START_ADDR = (u32) & buf->IPHdrChksum;
	buf->Dma[1].CONFIG.b_DMA_EN = 1;	/* enabled */
	buf->Dma[1].CONFIG.b_WNR = 1;	/* Write to memory */
	buf->Dma[1].CONFIG.b_WDSIZE = 2;	/* wordsize is 32 bits */
	buf->Dma[1].CONFIG.b_DI_EN = 1;	/* enable interrupt */
	buf->Dma[1].CONFIG.b_NDSIZE = 5;	/* size of descriptor, half words */
	buf->Dma[1].CONFIG.b_FLOW = 7;	/* large desc flow */

	return buf;
}

ADI_ETHER_BUFFER *SetupTxBuffer(int no){
	ADI_ETHER_FRAME_BUFFER *frmbuf;
	ADI_ETHER_BUFFER *buf;
	int nobytes_buffer = sizeof(ADI_ETHER_BUFFER[2]) / 2;	/* ensure a multi. of 4 */
	int total_size = nobytes_buffer + RECV_BUFSIZE;

	buf = (ADI_ETHER_BUFFER *) (TXBUF_BASE_ADDR + no * total_size);
	frmbuf =
	    (ADI_ETHER_FRAME_BUFFER *) (TXBUF_BASE_ADDR + no * total_size +
					nobytes_buffer);

	memset_((u8*)buf, 0x00, nobytes_buffer);
	buf->FrmData = frmbuf;
	memset_((u8*)frmbuf, 0xaa, RECV_BUFSIZE);

	/* set up first desc to point to receive frame buffer */
	buf->Dma[0].NEXT_DESC_PTR = &(buf->Dma[1]);
	buf->Dma[0].START_ADDR = (u32) buf->FrmData;
	buf->Dma[0].CONFIG.b_DMA_EN = 1;	/* enabled */
	buf->Dma[0].CONFIG.b_WNR = 0;	/* Read to memory */
	buf->Dma[0].CONFIG.b_WDSIZE = 2;	/* wordsize is 32 bits */
	buf->Dma[0].CONFIG.b_NDSIZE = 5;	/* 5 half words is desc size. */
	buf->Dma[0].CONFIG.b_FLOW = 7;	/* large desc flow */

	/* set up second desc to point to status word */
	buf->Dma[1].NEXT_DESC_PTR = &(buf->Dma[0]); //this is changed above in bfin_EMAC_init.
	buf->Dma[1].START_ADDR = (u32) & buf->StatusWord;
	buf->Dma[1].CONFIG.b_DMA_EN = 1;	/* enabled */
	buf->Dma[1].CONFIG.b_WNR = 1;	/* Write to memory */
	buf->Dma[1].CONFIG.b_WDSIZE = 2;	/* wordsize is 32 bits */
	buf->Dma[1].CONFIG.b_DI_EN = 1;	/* enable interrupt */
	buf->Dma[1].CONFIG.b_NDSIZE = 0;	/* must be 0 when FLOW is 0 */
	buf->Dma[1].CONFIG.b_FLOW = 0;	/* stop */

	return buf;
}


unsigned NetCksum(u8 * ptr, int len){
	u32	xsum;
	u16 *p = (u16 *)ptr;

	xsum = 0;
	while (len-- > 0) {
		xsum += *p;
		p++; 
		//printf_int(" xsum:", xsum); 
	}
	xsum = (xsum & 0xffff) + (xsum >> 16);
	return (xsum & 0xffff);
}

u16 htons(u16 in){
	//just swap the upper and lower bytes. 
	u16 lo; 
	lo = in; 
	in = (in >> 8) & 0xff; 
	lo = lo << 8; 
	in = in | lo; 
	return in; 
}
u32 htonl(u32 in){
	u32 out; 
	out = 0; 
	out = in & 0xff; 
	out = out << 8; 
	in = in >> 8; 
	out = out | (in & 0xff); 
	out = out << 8; 
	in = in >> 8; 
	out = out | (in & 0xff); 
	out = out << 8; 
	in = in >> 8; 
	out = out | (in & 0xff); 
	return out;
}
u32 pack4chars(u8* a){
	//takes care of memory-aligned access by looking only at bytes.
	//mantains byte order - if it is stored little-endian, it remains that way.
	u32 out; 
	out = ((*a++)&0xff); 
	out += ((*a++)&0xff)<< 8; 
	out += ((*a++)&0xff)<< 16; 
	out += ((*a++)&0xff)<< 24; 
	return out; 
}

u8* eth_header_setup(int* length, char* result, u32 destIP){
	//length is the total number of bytes in the packet, including ethernet headers. 
	int i;
	eth_header* eth; 
	u8*	data; 
	
	eth =  (eth_header*)(txbuf[txIdx]->FrmData);
	
	eth->length = (*length) - 2;//-2 for the length short.
	*length -= sizeof(eth_header); //for passing to the next protocol layer.
	//need to get the MAC address of this destination.. 
	if((destIP & htonl(0xff)) == 0){ //is broadcast?
		eth->dest[0] = 0x01; //multicast ethernet MAC.
		eth->dest[1] = 0x00;
		eth->dest[2] = 0x5e; 
		eth->dest[3] = 0x00; 
		eth->dest[4] = 0x0d; 
		eth->dest[5] = 0xfb; 
	}else{
		if(ARP_req(destIP, &(eth->dest[0])) == 0){
			*result = -1; 
			return 0; 
		}
	}
	for(i=0; i<6; i++){
		eth->src[i] = NetOurMAC[i];
	}
	eth->protLen = htons(ETH_PROTO_IP4); 
	
	data = (u8*)eth; 
	data += sizeof(eth_header); 
	*result = 1; 
	return data;
}

u8* ip_header_setup(u8* data, int* length, u32 dest, u8 protocol){
	//length is the length of the IP payload, including this header. 
	//dest is assumed to be in network byte order already. 
	ip_header* ip;
	
	ip = (ip_header*)data; 
	
	ip->hl_v = 0x45; //IP4, 5 32 bit words. 
	ip->tos = 0; 
	ip->len = htons(*length); 
	*length -= sizeof(ip_header); 
	ip->id = htons(NetIPID++);
	ip->off   = htons(0x4000);	// no fragmentation
	ip->ttl   = ((dest&0xff000000) == 0) ? 1 : 64; //bcast have short ttl.
	ip->p    = protocol;
	ip->sum   = 0;
	ip->src = NetOurIP; 
	ip->dest = dest; 
	ip->sum  = ~ NetCksum((u8 *)ip, IP_HDR_SIZE_NO_UDP / 2);
	
	data += sizeof(ip_header); 
	return data; 
}

u8 ip_header_checksum(u8* data){
	//check the checksum in the IPv4 header. 
	//data must point to this header. 
	ip_header* ip;
	ip = (ip_header*)data; 
	if(NetCksum(data, IP_HDR_SIZE_NO_UDP)){
		//printf_str("IP header checksum correct\n"); 
		return 1; //success!
	}else{
		//printf_str("IP header checksum incorrect\n"); 
		return 0; //fail!
	}
}
u8* icmp_header_setup(u8* data, int* length, u8 type, u16 id, u16 seq){
	//length, as before, includes this header and the payload.
	
	icmp_header* icmp; 
	
	icmp = (icmp_header*)data; 
	
	icmp->type = type;
	icmp->code = 0;
	icmp->xsum = 0;
	icmp->id = id;
	icmp->seq = seq;
	
	//do the checksum manually. 
	u32 sum = 0; 
	int i; 
	u16* ptr = (u16*)icmp; 
	for(i=0; i<4; i++){
		sum += *ptr++; 
	}
	sum = (sum & 0xffff) + (sum >> 16); 
	icmp->xsum  = ~ sum;
	
	data += sizeof(icmp_header); 
	*length -=  sizeof(icmp_header); 
	return data; 
	
}

u8* udp_header_setup(u8* data, int* length, u16 sport, u16 dport){
	//length is the length of the payload + this header. 
	udp_header* udp; 
	
	udp = (udp_header*)data; 
	
	udp->src = htons(sport); 
	udp->dest = htons(dport); 
	udp->len = htons(*length); //used to be 8 + length. 8 bytes in UDP header.
	*length -= sizeof(udp_header); 
	udp->xsum = 0; //zero indicates unused checksum. 
	
	data += sizeof(udp_header); 
	return data;
}

u8* tcp_header_setup(u8* data, int* length, u8 flags, u32 seq, u32 ack){
	//for now, this assumes that we only listen to one client on 
	//port 80. not an unreasonable assumption?
	tcp_header* tcp; 
	
	tcp = (tcp_header*)data; 
	
	tcp->src = htons(80); 
	tcp->dest = TcpClientPort; 
	tcp->seq = htonl(seq); 
	tcp->ack = htonl(ack); 
	tcp->dataoff = 0x50; //in 32-bit words -  20 bytes. (no options)
	tcp->flags = flags; 
	tcp->window = htons(1024);
	tcp->xsum = 0; //update later. 
	tcp->urgent = 0;
	
	data += sizeof(tcp_header); 
	*length -= sizeof(tcp_header); 
	return data; 
}

int ether_testUDP(u32 destIP){
	int i; 
	udp_packet * p;
	u8*	data; 
	
	p = (udp_packet*)(txbuf[txIdx]->FrmData); 
	p->eth.length = sizeof(udp_packet) + 22;
	
	if(ARP_req(destIP, &(p->eth.dest[0])) == 0){
		return -1; 
	}

	for(i=0; i<6; i++){
		p->eth.src[i] = NetOurMAC[i];
	}
	p->eth.protLen = htons(ETH_PROTO_IP4); 
	
	p->ip.hl_v = 0x45; //IP4, 5 32 bit words. 
	p->ip.tos = 0; 
	p->ip.len = htons(20 + 8 + 22); //14 eth + 20 ip + 8 UDP + 22 data = 64 bytes. 
	p->ip.id = htons(NetIPID++);
	p->ip.off   = htons(0x4000);	// no fragmentation
	p->ip.ttl   = 255;
	p->ip.p     = IP_PROT_UDP;		
	p->ip.sum   = 0;
	p->ip.src = NetOurIP; 
	p->ip.dest = NetDestIP; 
	p->ip.sum  = ~ NetCksum((u8 *)(&(p->ip)), IP_HDR_SIZE_NO_UDP / 2);
	p->udp.src = htons(4341); 
	p->udp.dest = htons(2404); 
	p->udp.len = htons( 8 + 22); 
	p->udp.xsum = 0; //zero indicates unused checksum. 
	
	data = (u8*)p; 
	data += sizeof(udp_packet); 
	for(i=0; i<22; i++){
		data[i] = (u8)i; 
	}
	printf_str("Send 22 bytes udp.....");
	bfin_EMAC_send_nocopy();
	
	return 0; 
}

u8* udp_packet_setup(int len, char* result){
	//returns a pointer which the caller can fill. 
	//len is the size of the data to be transmitted.
	//after filling it with data, caller must call 
	// bfin_EMAC_send_nocopy();
	
	int	length; 
	u8*	data; 
	
	length = sizeof(udp_packet) + len; 
	data = eth_header_setup(&length, result, NetDataDestIP);
	if(*result < 0) return 0; 
	data = ip_header_setup(data, &length, NetDataDestIP, IP_PROT_UDP); 
	data = udp_header_setup(data, &length, 4341, 4340); 
	
	return data; 
}

u8* icmp_packet_setup(int len, char* result, u32 dest, u8 type, u16 id, u16 seq){
	//returns a pointer which the caller can fill. 
	//len is the size of the data to be transmitted.
	//after filling it with data, caller must call 
	// bfin_EMAC_send_nocopy();
	
	int length; 
	u8* data; 
	
	length = sizeof(icmp_packet) + len; 
	data = eth_header_setup(&length, result, dest); 
	if(*result < 0) return 0; 
	data = ip_header_setup(data, &length, dest, IP_PROT_ICMP); 
	data = icmp_header_setup(data, &length, type, id, seq); 
	
	return data;
}
int icmp_rx(u8* data, int length){
	char result; 
	icmp_packet* p; 
	
	p = (icmp_packet*)data; 
	if( p->eth.protLen == htons(ETH_PROTO_IP4) && 
		length >= sizeof(icmp_packet) ){
		if( ( p->ip.p == IP_PROT_ICMP ) && 
		       p->ip.dest == NetOurIP ){
			if(p->icmp.type == ICMP_UNREACHABLE && p->icmp.code == ICMP_PORT_CLOSED){
				//printf_str("got an ICMP unreachable, turning off UDP stream\n"); 
				//probably we should stop sending data then!! 
				g_streamEnabled = 0; 
				return 1; 
			}
			if(p->icmp.type == ICMP_ECHO_REQUEST ){
				printf_ip("got an ICMP ping req from ", p->ip.src);
				NetDestIP = p->ip.src; 
				
				//should copy this MAC address over, since we'll have to reply anyway. 
				ARP_lut_add(p->ip.src, p->eth.src); 
				
				printf_str("\n"); 
				//well then, reply to it! 
				//note who is sending it. 
				u32 src = p->ip.src; 
				//have to copy the extra payload data over, as per wikipedia.
				data += sizeof(icmp_packet); 
				length -= sizeof(icmp_packet) - 2; //-2 b/c of the length short @ the beginning of the ethernet hdr.
				//printf_int(" d.len ", length ); 
				u8* out = icmp_packet_setup(length, &result, src, ICMP_ECHO_REPLY,
					p->icmp.id, p->icmp.seq);
				if(result > 0){
					memcpy_(data, out, length); 
					bfin_EMAC_send_nocopy();
					return 1;
				}
			}
		}
	}
	return 0;
}

void DHCP_tx(int olen, u8* opt, u32 dest){
	dhcp_packet * p; 
	int length, i; 
	u8* data; 
	
	length = sizeof(dhcp_packet) - 2 + olen;//subtract 2 for the length field.
	p = (dhcp_packet*)(txbuf[txIdx]->FrmData); 
	p->eth.length = length; //also see NoBytes.
	
	//fill out the data structures. 
	for(i=0; i<6; i++){
		p->eth.dest[i] = 0xff; //broadcast.
	}
	for(i=0; i<6; i++){
		p->eth.src[i] = NetOurMAC[i];
	}
	p->eth.protLen = htons(ETH_PROTO_IP4); 
	
	p->ip.hl_v = 0x45; //IP4, 5 32 bit words. 
	p->ip.tos = 0; 
	p->ip.len = htons(sizeof(ip_header) +
		sizeof(udp_header) + sizeof(dhcp_header) + olen); 
	p->ip.id = htons(NetIPID++);
	p->ip.off   = htons(0x4000);	// no fragmentation
	p->ip.ttl   = 255;
	p->ip.p     = IP_PROT_UDP;
	p->ip.sum   = 0;
	p->ip.src = 0; //we don't know the IP yet.
	p->ip.dest = dest; //0xffffffff = broadcast.
	p->ip.sum  = ~ NetCksum((u8 *)&(p->ip), IP_HDR_SIZE_NO_UDP / 2);
	p->udp.src = htons(68); 
	p->udp.dest = htons(67); 
	p->udp.len = htons( 8 + sizeof(dhcp_header) + olen); 
	p->udp.xsum = 0; //zero indicates unused checksum. 
	
	p->dhcp.op = 0x01; //request
	p->dhcp.htype = 0x01; //ethernet-type
	p->dhcp.hlen = 6; //length of the MAC address
	p->dhcp.hops = 0; 
	p->dhcp.xid = *pEMAC_ADDRLO; //unique, i guess. 
	p->dhcp.secs = 0;
	p->dhcp.flags = 0; //no broadcast. 
	p->dhcp.ciaddr = 0;
	p->dhcp.yiaddr = 0;
	p->dhcp.siaddr = 0;
	p->dhcp.giaddr = 0;
	p->dhcp.cookie = htonl(DHCP_COOKIE); 
	for(i=0; i<6; i++){
		p->dhcp.chaddr[i] = NetOurMAC[i]; 
	}
	for(; i < 16; i++){
		p->dhcp.chaddr[i] = 0; 
	}
	for(i=0; i<16; i++){
		p->dhcp.sname[i] = 0; 
	}
	for(i=0; i<32; i++){
		p->dhcp.file[i] = 0; 
	}
	data = (u8*)p; 
	data += sizeof(dhcp_packet); 
	memcpy_(opt, data, olen); 
	
	bfin_EMAC_send_nocopy();
}
void DHCP_tx_discover(){
	u8 options [4]; 
	NetDHCPserv = 0xffffffff; //broadcast
	options[0] = DHCP_MESSAGE; 
	options[1] = 1; //length
	options[2] = DHCPDISCOVER; 
	options[3] = DHCP_END;
	
	printf_str("Send DHCPDISCOVER\n");
	DHCP_tx(4, &options[0], NetDHCPserv); 
}
int DHCP_rx(){
	int length;
	dhcp_packet * p; 
	u8* data;
	int gotit = 0; 
	int non_dhcp = 0; 
	
	while(gotit == 0){
		//now, listen for a response. 
		length = bfin_EMAC_recv_poll( &data ); 
		printf_int("options length: ", length - sizeof(dhcp_packet) ); 
		p = (dhcp_packet*)data; 
		if( length > 0 && length >= sizeof(dhcp_packet) 
				  && htons(p->eth.protLen) == ETH_PROTO_IP4){
			if( p->udp.src == htons(67) &&
				p->udp.dest == htons(68) && 
				p->dhcp.xid == *pEMAC_ADDRLO && 
				p->dhcp.cookie == htonl(DHCP_COOKIE) )
			{
				data = (u8*)p; 
				data += sizeof(dhcp_packet); 
				//try to parse the options .. 
				DHCP_parse( data, length - sizeof(dhcp_packet)); 
				
				if(p->dhcp.yiaddr != 0){
					NetOurIP = p->dhcp.yiaddr; 
					printf_ip("got ip address ", NetOurIP); 
					printf_str("\n"); 
				}
				/*this, for some reason, does not work -- ?
				lptr = (u32*)data;
				printf_hex("dhcp options @ ", (u32)lptr); 
				for(i=0; i < ( length - sizeof(dhcp_packet) )/4; i++){
					printf_hex(": ", htonl(*lptr)); 
					lptr++; 
				}
				*/
				return 1; 
				gotit = 1; 
			}
		}else{
			printf_str("not an ip packet try again\n");
			non_dhcp++; 
		}
		if(non_dhcp > 12){
			non_dhcp = 0; 
			DHCP_tx_discover(); 
		}
	}
	return 0;
}
int DHCP_req(){
	u8 options [10]; 
	
	DHCP_tx_discover(); 
	
	DHCP_rx(); 
	
	if(NetDHCPserv == 0xffffffff){
		printf_str("no DHCP server responded\n");
		return -1; 
	}
	//send out another packet, this time a request. 
	options[0] = DHCP_MESSAGE; 
	options[1] = 1; 
	options[2] = DHCPREQUEST;
	options[3] = DHCP_SERVERID;
	options[4] = 4;
	options[5] = NetDHCPserv & 0xff; //stored network order (big endian)
	options[6] = (NetDHCPserv>>8) & 0xff;
	options[7] = (NetDHCPserv>>16) & 0xff;
	options[8] = (NetDHCPserv>>24) & 0xff;
	options[9] = DHCP_END;
	
	//here we should see if we should expect another packet... 
	if(NetOurIP != 0 && NetDHCPserv != 0xffffffff && NetSubnetMask != 0)
		return 0; 
	//otherwise, try again. 
	printf_str("Send DHCPREQUEST\n");
	DHCP_tx(10, &options[0], NetDHCPserv); 
	
	DHCP_rx(); 
	//hopefully, this will grant us an IP address.
	
	return 0; 
}

void DHCP_parse(u8* ptr, int length){
	u8 	option; 
	u8 	olen; 
	int i = length; 
	
	while( i >= 2 ){
		option = *ptr++;
		i--; 
		if(option != 0){ //not a pad
			olen = *ptr++; 
			if( option == 255 )
				break; 
			switch(option){
				case 1: 
					NetSubnetMask = pack4chars(ptr); 
					printf_ip("subnet mask: ", NetSubnetMask); 
					break; 
				case 3: 
					printf_ip("router addr: ", pack4chars(ptr) ); 
					break; 
				case 6: 
					printf_ip("DNS server: ", pack4chars(ptr) ); 
					break; 
				case 28: 
					printf_ip("bcast addr: ", pack4chars(ptr) ); 
					break; 				
				case 51: 
					printf_int("DHCP lease time: ", htonl(pack4chars(ptr)) ); 
					break; 	
				case 53: 
					printf_int("DHCP message type ", *ptr); 
					break; 
				case 54: 
					NetDHCPserv = pack4chars(ptr); 
					printf_ip("DHCP server id: ", NetDHCPserv); 
					break; 
				case 58: 
					printf_int("DHCP renewal time: ", htonl(pack4chars(ptr)) ); 
					break; 	
				case 59: 
					printf_int("DHCP rebinding time: ", htonl(pack4chars(ptr)) ); 
					break; 	
				default: 
					printf_int("unkown DHCP opt.", option); 
					printf_int(" len: ", olen); 
					
			}
			printf_str("\n"); 
			ptr += olen; 
			i -= 1 + olen; 
		}
	}
}

u8 bridge_publish(){	
	int length, i; 
	char result = 1; 
	u8* data; 
	udp_packet* p;
	
	NetDataDestIP = FormatIPAddress(239,0,200,0); 
	while(1){
		length = sizeof(udp_packet) + 10; 
		data = eth_header_setup(&length, &result, NetDataDestIP);
		if(result < 0) return 0; 
		data = ip_header_setup(data, &length, NetDataDestIP, IP_PROT_UDP); 
		data = udp_header_setup(data, &length, 4341, 4340); 
		memcpy_((u8*)"neurobrdg", data, 10); 
		printf_str("send publish packet\n"); 
		bfin_EMAC_send_nocopy();
		for(i=0; i<10; i++){ //if there is no network data
			length = bfin_EMAC_recv_poll( &data ); //this function falls through.
			p = (udp_packet*)data; 
			if( length > 0 && length >= sizeof(udp_packet) 
				&& htons(p->eth.protLen) == ETH_PROTO_IP4){
				if( p->udp.src == htons(4340) &&
					p->udp.dest == htons(4341)){
					NetDataDestIP = p->ip.src; 
					printf_ip("got client ", NetDataDestIP); 
					data += sizeof(udp_packet); 
					printf_hex_byte("radio channel:", data[0]); 
					printf_str("\n"); 
					g_streamEnabled = 1; 
					return data[0]; 
				}
			}
		}
		//sleep about 2 sec @ 600Mhz clock. don't be flooding the network.
		for(i=0; i<0x2000000;i++){ 
			asm volatile("nop; nop; nop; nop"); 
		}
	}
}
