#include <cdefBF532.h>
#include "memory.h"
#include "nordic_regs.h"
#include "spi.h"


short g_chan = 0; 
u16 g_sample[4][8]; //circular buffer of samples. average 4 prior writing.
u32	g_ds = 0;//rotate through 4. write odds to below.
//ping-pong buffer of 2 packets. send these at 5ksps. 
u16 	g_data[2][8*2]; 
u32	g_dataN = 0; //offset into the p-p buf (0-15)
u32	g_pp = 0; //0 or 1. radio keeps track of this too.
u32	g_outpp = 0; 
u16	ramp = 0; 

void __attribute__((interrupt_handler)) emg_in(void)
{
	short a, s; 
	
	*pSPORT0_STAT = 0x30;  //clear the sticky statuses
	*((volatile short*)SPORT0_TX) = 
		(short)((0x2840<<2) + (((g_chan+7)&7) << 9));
		//note there is a two-pipeline delay in the ADC. 
		// hence, add 6 (-2). 
	a = *((volatile short*)SPORT0_STAT); 
	if(a & RXNE){
		a = *((volatile short*)SPORT0_RX); //this will be in signed twos-complement.
		s = (unsigned short)((int)a + 0x8000); //convert to unsigned.
		g_sample[g_ds][g_chan] = s; 
		if(g_ds & 1){
			u32 i = 0; 
			i += g_sample[0][g_chan];
			i += g_sample[1][g_chan]; 
			i += g_sample[2][g_chan]; 
			i += g_sample[3][g_chan]; 
			i >>= 2; 
			g_data[g_pp][g_dataN] = (u16)(i & 0xffff); //g_sample[g_ds][g_chan];// (u16)(i & 0xffff); 
			g_dataN++; 
			g_pp ^= g_dataN >> 4; //if there are 16 samples, switch the pp buffer.
			g_dataN &= 15; 
		}
		g_chan++; 
		g_ds += g_chan >> 3; //every time through the 8 channels.
		g_chan &= 7; 
		g_ds &= 3; 
	}
	if((*pSPORT1_STAT & TXF) == 0){
		s = g_sample[g_ds][g_outpp]; 
		*pSPORT1_TX = ((s & 0xffff) | (0x3 << 19) | (g_outpp << 16));
		g_outpp ^= 1; 
	}
}

int main()
{
	//make sure cache is off.
	*pIMEM_CONTROL = 1;  
	asm volatile("csync"); 
	*pDMEM_CONTROL = 1; 
	asm volatile("csync"); 
	
	*pFIO_INEN = 0x8; 
	*pFIO_DIR |= 0x01e7;
	*pFIO_FLAG_D = 0x0; 
	
	//this for audio-out DAC.
	*pSPORT1_TCLKDIV = 39 ; //80Mhz / 80 = 1M / 25 = 40k / 2 = 20 ksps/ch
	*pSPORT1_TFSDIV = 24 ; //25 clocks between assertions of the frame sync
	*pSPORT1_TCR2 = 23 ; //word length 24, secondary disabled. 
	
	*pSPORT1_TCR1 = 0x0e03 ; 
	
	int i, j, k, m, n, x, y, z, w, s, f, ff; 
	
	//test audio out port.
	if(1){
		*pSPORT1_TCLKDIV = 63 ; //128Mhz / 128 = 1M / 25 = 40k / 2 = 20 ksps/ch
		*pSPORT1_TFSDIV = 24 ; //25 clocks between assertions of the frame sync
		*pSPORT1_TCR2 = 23 ; //word length 24, secondary disabled. 
		*pSPORT1_TCR1 = 0x0e03 ; 
		
		i = j = k = m = n = x = y = z = 0; 
		int freqs[] = {240, 400, 300, 180};
		int freqs2[] = {540, 600, 360, 480};
		s = 120; 
		w = 1000; 
		f = 1; //volume
		ff = 1; 
		while(f > 0){
			while(*pSPORT1_STAT & TXF){
				asm volatile("nop; nop; nop; nop"); 
			}
			//channel 1 (stereo DAC)
			*pSPORT1_TX = ((((i+x+w)*f)>>6) | (0x3 << 19) | (0x0 << 16));
			while(*pSPORT1_STAT & TXF){
				asm volatile("nop; nop; nop; nop"); 
			}
			//channel 2
			*pSPORT1_TX = ((((j+y+w)*f)>>6) | (0x3 << 19) | (0x1 << 16));
			i += freqs[m]; 
			i &= 0xffff; 
			j += freqs[m]+1; 
			j &= 0xffff; 
			x += freqs2[n]+1; 
			x &= 0x7fff; 
			y += freqs2[n]; 
			y &= 0x7fff; 
			w += s; 
			if(w > 0x7fff){s = -120; w=0x7fff;}
			if(w < 0){s = 120; w=0;}
			k++; 
			if( k > 50000){
				k = 0; 
				m ++; 
				m &= 3;  
			}
			if(k == 25000){
				n ++; 
				n &= 3; //note: the modulus operator is broken on BF532!!
			}
			//fade
			z++; 
			f += (z >> (11 - 2*ff))*ff; 
			z &= 0xffff ^ (1 << (11 - 2*ff)); 
			if(f == 32) ff = -1; 
		}
	}
	*pEVT11 = emg_in; 
	*pSIC_IAR1 = 0x33322421; //default + mask SPORT0 TX irq to EVT11.
	*pSIC_IMASK |= 1 << 10; //page 190 of the hardware ref.
	*pIMASK |= 1 << 11; //page 195.
	radio_init(124); 
	//init 2 packets. 
	for(i=0; i<32; i++)
		g_data[0][i] = 0xa5a5; //yea, you can do this..
	
	//enable the SPORTS. 
	*pSPORT0_TCLKDIV = 24; //divide by 50 = 2.56MHz clock = 10 ksps /channel.
	*pSPORT0_TFSDIV = 15; //16 clocks between assertions of FS. 
	*pSPORT0_TCR2 = 15 | 0x200 ; //word length 16, use stereo mode.
	
	*pSPORT0_RCLKDIV = 24; 
	*pSPORT0_RFSDIV = 15; 
	*pSPORT0_RCR2 = 15 ;
	
	*pSPORT0_RCR1 = 0x7403; 
	// sample data on rising edge of clk, late frame syncs, active low RFS
	// RFS for every word, external RFS, external clk, enabled.
	//asm volatile("nop; nop; nop; nop;"); //put a delay in here. makes the clocks offset.
	*pSPORT0_TCR1 = 0x6603; 
	//drive data & TFS on falling edge of TSCLK, late FS, active high FS, 
	//data-dependent TFS, TFS for every word, internal TFS, 
	//internal clock, enabled.
	
	//NB!!! The TFS must be delayed into the ADC -- after OR ing -- so that it falls 
	// AFTER the clock falls.  Otherwise you miss the MSB of the data. 
	u32 pp = g_pp; 
	while(1){
		while(pp == g_pp){
			asm volatile("nop; nop; nop; nop;"); 
		}
		radio_set_tx();
		spi_write_packet((void*)&(g_data[pp][0]));
		pp = g_pp; 
		*FIO_SET = SPI_CE; 
		radio_wait_irq(10000);
	}
}



