#include "memory.h"
#include "../common/packet.h"
#include "headstage.h"
#include "../common/nordic_regs.h"
#include "../common/spi.h"

//note!  cannot use macros within asm blocks - have to write the address offsets directly. 
#define ASM_FIO_SET(reg, flg) reg = flg;  asm volatile("w[p5 + 8] = %0": :"d"(reg)); 
#define ASM_FIO_CLEAR(reg, flg) reg = flg; asm volatile("w[p5 + 4] = %0": :"d"(reg));
#define ASM_FIO_TOGGLE(reg, flg) reg = flg; asm volatile("w[p5 + 12] = %0": :"d"(reg));

#define ASM_TDBR(reg, flg) reg = flg; asm volatile("w[p0] = %0": :"d"(reg)); 
#define ASM_TDBR_NC(reg) asm volatile("w[p0] = %0": :"d"(reg)); 
#define ASM_SHADOW(reg) asm volatile("%0 = w[p0 + 0xc]":"=d"(reg)); 
void radio_control(){
	u32 state; 
	u32 count;
	u32 unacked;
	u32 packets;
	u32 flags;
	u32 tmp, tmp2, tmp3, tmp4; 
	u32 timestamp;
	asm("%0 = [fp - RADIO_STATE];":"=d"(state):); 
	asm("%0 = [fp - RADIO_COUNT];":"=d"(count):); 
	asm("%0 = [fp - RADIO_UNACKED];":"=d"(unacked):);
	asm("%0 = [fp - RADIO_PACKETS];":"=d"(packets):);
	asm volatile("p0.h = HI(SPI_TDBR);"); 
	asm volatile("p0.l = LO(SPI_TDBR);"); 
	
	if( state & RS_WAITIRQ ){
		count++;
		asm volatile("%0 = w[p5];":"=d"(flags)); //p5 = FIO_D
		if( (flags & SPI_IRQ) == 0 ){
			asm ("bitclr(%0, RS_WAITIRQ_BIT)":"+d"(state)); 
			asm ("bitset(%0, RS_CLEARIRQ_BIT)":"+d"(state)); 
			count = 0; 
			goto radio_end; 
		}
		if( count > 1000 ){
			//erase history - we did not get the IRQ expected. 
			if(state & RS_SET_RX){
				//no response from Petrograd - 
				//be sure to put it back in TX mode. 
				state = RS_SET_TX; 
				count = 0; 
				goto radio_end; 
			}
			state = RS_SET_TX; //RS_WAIT
			count = 0; 
			goto radio_end; 
		}
		goto radio_end; 
	}
	if( state & RS_CLEARIRQ ){
		count++; 
		if(count == 1){
			ASM_FIO_CLEAR(flags, SPI_CSN); 
			ASM_TDBR(tmp, NOR_STATUS + 0x20); 
			goto radio_end; 
		}
		if(count == 2){
			ASM_TDBR(tmp, 0x70); 
			goto radio_end; 
		}
		if(count == 3){
			ASM_FIO_SET(flags, SPI_CSN); 
			unacked -= 1;
			goto radio_end; 
		}
		if(count == 4){
			count = 0; 
			//rule 1
			if(state & RS_SET_RX){
				//then we got a packet.
				state = RS_RX_CMD; 
				count = RS_PREAMBLE;
				goto radio_end; 
			}
			//rule 2
			if(unacked == 0 && (state & RS_TX_STATUS) ){
				state = RS_SET_RX; 
				goto radio_end; 
			}
			//rule 3
			if(packets > 0 ){
				state = RS_TX_DATA; 
				count = RS_PREAMBLE;
				goto radio_end; 
			}
			//rule 4
			if(packets == 0 && unacked > 0){
				asm("bitset(%0, RS_WAITIRQ_BIT)":"+d"(state)); 
				asm("bitclr(%0, RS_CLEARIRQ_BIT)":"+d"(state)); 
				goto radio_end; 
			}
			//rule 5
			state = RS_WAIT; 
			goto radio_end; 
		}
	}
	if(state & RS_TX_DATA){
		if(count & RS_PREAMBLE){
			ASM_FIO_CLEAR(flags, SPI_CSN); 
			ASM_TDBR(tmp, 0xa0); 
			count = 0; 
			asm ("%0 = [fp - TXRDPTR];":"=d"(tmp)); 
			tmp++; 
			asm ("[fp - TXRDPTR] = %0;": :"d"(tmp));  
			tmp--; 
			tmp = tmp & (TXBUF_LEN - 1); 
			tmp3 = TXPTRBUF; 
			tmp4 = *(u32*)(tmp3 + (tmp << 2)); 
			asm ("[fp - RADIO_WORKINPACKET] = %0;": :"d"(tmp4));
			asm ("[fp - RADIO_WORKINHDR] = %0;": :"d"(tmp4));
			tmp4 &= -512; //check this! --damn, GCC is clever!! did two shifts!! :)
			asm ("[fp - RADIO_WORKINBASE] = %0;": :"d"(tmp4)); 
			//asm ("[fp - RADIO_WORKINPACKET] = %0;": :"d"(tmp4));
			tmp3 += 0x200;
			tmp4 = *(u32*)(tmp3 + (tmp << 2)); 
			//asm ("[fp - RADIO_WORKINHDR] = %0;": :"d"(tmp4)); 
			goto radio_end; 
		}
		if(count < 4){
			asm volatile("%0 = [fp - RADIO_WORKINHDR];":"=d"(tmp):); 
			ASM_TDBR_NC(tmp);  
			tmp = tmp >> 8; 
			asm volatile("[fp - RADIO_WORKINHDR] = %0;": :"d"(tmp)); 
			count++; 
			goto radio_end; 
		}
		if(count < 32){
			//gcc must be smart enough to shift tmp from a pointer reg to data reg here.
			asm volatile("%0 = [fp - RADIO_WORKINPACKET];":"=a"(tmp));
			u8 c = *(u8*)(tmp); 
			ASM_TDBR_NC(c);  
			*(u8*)(tmp) = 0xa6;
			//ASM_TDBR(tmp, 0xa0); 
			tmp+=1; 
			asm volatile("%0 = [fp - RADIO_WORKINBASE];":"=d"(tmp2));
			tmp2 += 512; 
			if(tmp >= tmp2){
				tmp -= 512; 
			}
			asm volatile("[fp - RADIO_WORKINPACKET] = %0;": :"d"(tmp)); 
			count++; 
			goto radio_end; 
		}
		if(count == 32){
			ASM_FIO_SET(flags, SPI_CSN); 
			count = RS_SET_CE; 
			unacked += 1; 
			packets -= 1; 
			goto radio_end; 
		}
		if(count & RS_SET_CE){
			ASM_FIO_SET(flags, SPI_CE); 
			asm volatile("%0 = [fp - TIMESTAMP];":"=d"(timestamp):);
			asm volatile("[fp - RADIO_LASTTS] = %0;": :"d"(timestamp)); 
			if(unacked >= 2){
				state |= RS_WAITIRQ; 
				count = 0; 
				goto radio_end; 
			}
			asm volatile("%0 = [fp - RADIO_LASTSTATTS];":"=d"(tmp):);
			if(timestamp - tmp > STATUS_TIMEOUT && packets==0){
				state = RS_TX_STATUS; 
				count = RS_PREAMBLE;
				goto radio_end; 
			}
			if(packets == 0){
				state |= RS_WAITIRQ; 
				count = 0; 
				goto radio_end;
			}
			// send another.
			count = RS_PREAMBLE; 
			goto radio_end; 
		}
	}
	if(state & RS_TX_STATUS){
		if( count & RS_PREAMBLE ){
			ASM_FIO_CLEAR(flags, SPI_CSN); 
			ASM_TDBR(tmp, 0xa0); //command for writing the fifo. 
			count = 0; 
			goto radio_end; 
		}
		if(count < 32){
			u8* p = (u8*)(STATUSPKT); 
			p += count; 
			tmp = (u8)*p; 
			ASM_TDBR_NC(tmp);  
			count++; 
			goto radio_end; 
		}
		if(count == 32){
			ASM_FIO_SET(flags, SPI_CSN); 
			count = RS_SET_CE; 
			unacked += 1; 
			goto radio_end; 
		}
		if(count & RS_SET_CE ){
			ASM_FIO_SET(flags, SPI_CE); 
			asm ("%0 = [fp - TIMESTAMP];":"=d"(timestamp):);
			asm ("[fp - RADIO_LASTSTATTS] = %0;": :"d"(timestamp)); 
			state |= RS_WAITIRQ; 
			//state = RS_WAIT; 
			count = 0; 
			goto radio_end; 
		}
	}
	if( state & RS_SET_RX ){
		count++; 
		if(count == 1){
			ASM_FIO_CLEAR(flags, SPI_CE); 
			goto radio_end; 
		}
		if(count == 2){
			ASM_FIO_CLEAR(flags, SPI_CSN); 
			ASM_TDBR(tmp,  NOR_CONFIG + 0x20);
			goto radio_end; 
		}
		if(count == 3){
			ASM_TDBR(tmp,NOR_MASK_TX_DS | NOR_MASK_MAX_RT | NOR_EN_CRC | 
				NOR_CRC0 | NOR_PWR_UP | NOR_PRIM_RX); 
			goto radio_end; 
		}
		if(count == 4){
			ASM_FIO_SET(flags, SPI_CSN); 
			//don't need to ssync here - latency ok. 
			goto radio_end; 
		}
		if(count == 5){
			ASM_FIO_SET(flags, SPI_CE); 
			//we always go from here to waiting for an IRQ. 
			count = 0; 
			state |= RS_WAITIRQ; 
			goto radio_end; 
		}
	}
	if( state & RS_SET_TX){
		count++;
		if(count == 1){
			ASM_FIO_CLEAR(flags, SPI_CSN | SPI_CE); 
			//the latter is for exits from WAITIRQ state
			ASM_TDBR(tmp,  NOR_CONFIG + 0x20);
			goto radio_end; 
		}
		if(count == 2){
			ASM_TDBR(tmp,NOR_MASK_RX_DR | NOR_MASK_MAX_RT | NOR_EN_CRC | 
				NOR_CRC0 | NOR_PWR_UP | NOR_PRIM_TX); //0x5e
			goto radio_end; 
		}
		if(count == 3){
			ASM_FIO_SET(flags, SPI_CSN); 
			goto radio_end; 
		}
		if(count == 4){
			ASM_FIO_CLEAR(flags, SPI_CSN); 
			ASM_TDBR(tmp,NOR_FLUSH_TX); 
			goto radio_end; 
		}
		if(count == 5){
			ASM_FIO_SET(flags, SPI_CSN);
			count = 0; 
			state = RS_WAIT; 
			goto radio_end;
		}
	}
	if(state & RS_RX_CMD){
		if( count & RS_PREAMBLE){
			//then read it back in. 
			ASM_FIO_CLEAR(flags, SPI_CSN | SPI_CE); 
			ASM_TDBR(tmp,0x61); //command for reading the fifo. 
			count = 0; 
			goto radio_end; 
		}
		if(count < 32){
			ASM_TDBR(tmp,0x00); //doesn't matter - we are reading stuff in.
			if(count > 0){
				u8* p = (u8*)(RXPKT); 
				p += count-1; 
				ASM_SHADOW(tmp); 
				*p = (u8)(tmp); 
			}
			count++; 
			goto radio_end; 
		}
		if(count == 32){
			ASM_FIO_SET(flags, SPI_CSN); 
			u8* p = (u8*)(RXPKT); 
			p += count-1; 
			*p = (u8)(*pSPI_SHADOW); 
			state = RS_SET_TX; 
			count = 0; 
			goto radio_end; 
		}
	}
	if(state & RS_WAIT){
		ASM_FIO_CLEAR(flags, SPI_CE); 
		asm("%0 = [fp - TXWRPTR]":"=d"(tmp):);
		asm("%0 = [fp - TXRDPTR]":"=d"(tmp2):);
		int pcount = tmp - tmp2; 
		asm("%0 = [fp - TIMESTAMP]":"=d"(timestamp):);
		asm("%0 = [fp - RADIO_LASTTS]":"=d"(tmp):);
		int time = timestamp - tmp; 
		if( pcount > 8 || (time > DATA_TIMEOUT && pcount > 0) ){
			state = RS_TX_DATA; 
			count = RS_PREAMBLE; 
			if(pcount > 20) pcount = 20; 
			packets = pcount;
			goto radio_end; 
		}
		asm("%0 = [fp - RADIO_LASTSTATTS]":"=d"(tmp):);
		time = timestamp - tmp;  
		if(time > STATUS_TIMEOUT){
			state = RS_TX_STATUS; 
			count = RS_PREAMBLE; 
			goto radio_end; 
		}
		unacked = 0; //to clear any confusion..
	}
	radio_end: 
	asm volatile("[fp - RADIO_STATE] = %0 ;":"+d"(state)); 
	asm volatile("[fp - RADIO_COUNT] = %0 ;":"+d"(count)); 
	asm volatile("[fp - RADIO_UNACKED] = %0 ;":"+d"(unacked));
	asm volatile("[fp - RADIO_PACKETS] = %0 ;":"+d"(packets));
	
	return; 
}
