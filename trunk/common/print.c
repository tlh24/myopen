#include <cdefBF527.h>
#include "util.h"
#include "print.h"

int uart_str(char* str){
	int i =0; 
	if(*pUART0_GCTL == 1){//if it is enabled. 
		while(*str && i < PRINTF_BUFFER_SIZE){
			char c = *str; 
			if(c == '\n' ) {
				*pUART0_THR = 10; //line feed
				while( (*pUART0_LSR & 0x0020) == 0 )
					asm volatile("nop;"); 
				*pUART0_THR = 13; //carrige return
				while( (*pUART0_LSR & 0x0020) == 0 )
					asm volatile("nop;"); 
			} else {
				*pUART0_THR = c; 
				while( (*pUART0_LSR & 0x0020) == 0 )
					asm volatile("nop;"); 
			}
			str++; 
			i++; 
		}
	}
	return i; 
}
int printf_str(char* str){return uart_str(str); }

int printf_int(char* str, int d){
	int len, i, m, j;
	//print the integer & figure out how long the string will be. 
	//note: the integer will be printed backwards at first! 
	i = 0; 
	if(d == 0){
		printf_temp[0] = '0'; 
		i = 1; 
	}else if(d > 0){
		i = 0; 
		while(d > 0 && i < 128){
			m = mod(d, 10); 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = div(d, 10);  
		}
	}else if(d < 0){
		//convert to positive.
		d = 0x80000000 - (0x7fffffff & d);
		i = 0; 
		while(d > 0 && i < 128){
			m = mod(d, 10); 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = div(d, 10);  
		}
		printf_temp[i] = '-'; 
		i++; 
	}
	len = strlen_(str); 
	if(len + i +1 <= PRINTF_BUFFER_SIZE){
		int n; 
		for(n=0; n<len; n++){
			printf_out[n] = *str++; 
		}
		for(j = 0; j < i; j++){
			printf_out[len + j] = printf_temp[i-j-1]; 
		}
		printf_out[len+i] = 0; 
		uart_str(printf_out); 
		return 0; 
	}
	return -1;
}

int printf_hex(char* str, int d){
	int len, i, j, out; 
	short s;
	//we already know the length of the hex number will be 10 chars.
	len = strlen_(str); 
	if(len + 11 <= PRINTF_BUFFER_SIZE){
		int n; 
		for(n=0; n<len; n++){
			printf_out[n] = *str++; 
		}
		j = len; 
		printf_out[j] = '0'; j++; 
		printf_out[j] = 'x'; j++; 
		for(i=0; i< 8; i++){
			out = d >> ((7-i)*4); 
			s = out & 0x0f; 
			if(s > 9){
				s += 55; 
			}else{
				s += 48;
			}
			printf_out[j + i] = (char)s;
		}
		j += i; 
		printf_out[j] = '\n'; 
		printf_out[j+1] = 0; 
		uart_str(printf_out); 
		return 0; 
	}
	return -1;
}

int printf_hex_byte(char* str, u8 d){
	int len, i, j, out; 
	short s;
	//we already know the length of the hex number will be 2 chars.
	len = strlen_(str); 
	if(len + 4 + 1 <= PRINTF_BUFFER_SIZE){
		int n; 
		for(n=0; n<len; n++){
			printf_out[n] = *str++; 
		}
		j = len; 
		printf_out[j] = '0'; j++; 
		printf_out[j] = 'x'; j++; 
		for(i=0; i< 2; i++){
			out = d >> ((1-i)*4); 
			s = out & 0x0f; 
			if(s > 9){
				s += 55; 
			}else{
				s += 48;
			}
			printf_out[j + i] = (char)s;
		}
		j += i; 
		printf_out[j] = 0; 
		uart_str(printf_out); 
		return 0; 
	}
	return -1;
}
int printf_ip(char* str, u32 addr){ //all IPs should be stored in network byte order. 
	printf_int( str, (addr)& 0xff); 
	printf_int( ".", (addr>>8)& 0xff); 
	printf_int( ".", (addr>>16)& 0xff); 
	printf_int( ".", (addr>>24)& 0xff); 
	printf_str(" "); 
	return 0; 
}
void printf_newline(){ uart_str("\n"); }
