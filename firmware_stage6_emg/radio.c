// try another radio protocol...
#include <cdefBF532.h>
#include "memory.h"
#include "../common/packet.h"
#include "headstage.h"
#include "../common/nordic_regs.h"
#include "../common/spi.h"

#define TX_TIMEOUT 4000
#define RX_TIMEOUT 18000
#define STATUS_TIMEOUT 4*500
#define DATA_TIMEOUT 4*500


void radio_send_status(char pipelined){
	u32* lptr;
	status_packet* stat = (status_packet*)STATUSPKT; 
	//other feilds should be filled in memory.
	lptr = (unsigned long*)CONTMASK; 
	stat->contmask = *lptr;
	lptr = (unsigned long*)DROPCOUNT; 
	stat->dropcount = *lptr; 
	lptr = (unsigned long*)TIMESTAMP; 
	stat->timestamp = *lptr; 
	lptr = (unsigned long*)TXEDPACKETS; 
	stat->txedpackets = *lptr; 
	lptr = (unsigned long*)RXEDPACKETS; 
	stat->rxedpackets = *lptr; 
	
	lptr = (unsigned long*)TXEDSTATPACKETS; 
	(*lptr) +=1; 
	stat->txedstatpackets = *lptr; 
	
	spi_write_packet((void*)stat); 
	*FIO_SET = SPI_CE; //justincase we are called from a routine 
	radio_wait_irq(TX_TIMEOUT); //wait for status packet to be sent.
	// or, in the case of pipelined op, for the preceding packet to be sent.
	if(pipelined){
		radio_wait_irq(TX_TIMEOUT);
	}
	radio_set_rx(); //this clears and sets SPI_CE. 
	if(radio_wait_irq(RX_TIMEOUT) < RX_TIMEOUT){
		rx_packet* rxpacket = (rx_packet*)( RXPKT ); 
		spi_read_packet_nocheck((void*)rxpacket);
		if(rxpacket->code == 0x3333){
			//lptr = (unsigned long*)CONTMASK; 
			//*lptr = rxpacket->contmask; 
			lptr = (unsigned long*)DROPCOUNT; 
			*lptr = rxpacket->dropcount;
			lptr = (unsigned long*)TIMESTAMP; 
			*lptr = rxpacket->timestamp; 
			stat->flags = rxpacket->nada0;
			lptr = (unsigned long*)RXEDPACKETS; 
			(*lptr) += 1; 	
		}
	}
	*FIO_CLEAR = SPI_CE; 
	asm volatile("ssync;"); 
	//delay here at least 62us. 500khz core clock has a period of 2us.
	delay(8000);
	delay(8000);
	 //delay BEFORE setting tx is essential - even though, after transmitting a packet, 
	// the receiver goes back into RX mode, we cannot send another packet
	// immediately; we must wait a bit, as the reciever takes a bit longer than us to
	// transition to RX mode from TX than we do from RX to TX.  these transitions are 
	// synchronized, as the bridge waits for the TX_DS IRQ before shifting to RX & we wait for 
	// RX_DR...
	//the turn-around time is 36us or so here (and no delay on the other side). 
	
	radio_set_tx(); 
}

void radio_send_532(status_packet* stat){
	radio_set_tx(); 
	u32* txedptr = (u32*)TXEDPACKETS;  
	u32* wrptr = (u32*)TXWRPTR; 
	u32* rdptr = (u32*)TXRDPTR; 
	u32* tsptr = (u32*)TIMESTAMP; 
	u32 lastTimestamp = *tsptr; 
	u32 lastStatTimestamp = *tsptr; 
	u32 i; 
	*FIO_CLEAR = SPI_CE; 
	asm volatile("ssync"); 
	spi_write_register(NOR_STATUS, 0x70); 
	while(1){
		/*idea: 
		wait until there are either 
			> 8 packets in the queue
			> 3ms or so between transmissions (that's 1500 ticks @ 500khz)
		send a burst group of whatever we have 
			if there is no data, just send the status packet
			send a maximum of 20 packets continuously
		if there is > 10ms since the last status packet, 
			also send status packet. 
		always listen for response after status packet. 
		*/
		//note: 500khz clock will roll over every 143 minutes. 
		if( *tsptr < lastTimestamp || *tsptr < lastStatTimestamp ){
			lastTimestamp = *tsptr; 
			lastStatTimestamp = *tsptr; 
		}
		int count = (*wrptr) - (*rdptr); 
		//things that could cause us to send a packet: 
		// * > 8 packets in queue
		// * data pipe timeout
		if( count > 8 || ( (*tsptr) - lastTimestamp > DATA_TIMEOUT  && count > 0 ) ){
			if(count > 20) count = 20; 
			spi_write_packet((void*)(TXBUF + ( (*rdptr) & 0x7ff) ) );
			(*txedptr) +=1; 
			(*rdptr) += 1;
			*FIO_SET = SPI_CE; 
			for(i=1; i < count; i++){ 
				//write another packet while this is being sent over-the-air. 
				spi_write_packet((void*)(TXBUF + ( (*rdptr) & 0x7ff) ) );
				(*txedptr) +=1; 
				(*rdptr) += 1;
				radio_wait_irq(TX_TIMEOUT); 
			}
			if( (*tsptr) - lastStatTimestamp > STATUS_TIMEOUT ){
				//passing pipelined = 1 makes the routined wait for 2 
				// TX_DS IRQs before transitioning to RX mode.
				radio_send_status(1); 
				lastStatTimestamp = *tsptr; 
			}else{
				radio_wait_irq(TX_TIMEOUT); //last data packet.
			}
			lastTimestamp = *tsptr; 
			*FIO_CLEAR = SPI_CE; 
		}
		//status pipe timeout
		else if(  (*tsptr) - lastStatTimestamp > STATUS_TIMEOUT && count == 0){
			radio_send_status(0); 
			lastStatTimestamp = *tsptr; 
		}
	}
}
