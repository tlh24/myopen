#include "util.h"
#include "print.h"

#ifdef __ADSPBF532__
#include <cdefBF532.h>
#define pUART0_GCTL pUART_GCTL
#define pUART0_THR pUART_THR
#define pUART0_LSR pUART_LSR
#endif

#ifdef __ADSPBF527__
#include <cdefBF527.h>
u8 g_oled_line = 0; 
u8 oled_write(u16); 
#endif

int uart_str(char* str){
	int i =0; 
	char* strcpy = str; 
	if(*pUART0_GCTL == 1){//if it is enabled. 
		if(*str == '!') str++; //skip the oled command.
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
	str = strcpy; 
	i = 0; 
	//also output to the OLED? 
#ifdef __ADSPBF527__
	if(*str == '!'){
		str++; 
		while(*str && i < PRINTF_BUFFER_SIZE){
			char c = *str; 
			u16 out; 
			if(c == '\n' ) {
				//move to another line.
				if(g_oled_line & 0x40) g_oled_line = 0; 
				else g_oled_line = 0x40; 
				oled_write(0x80 | g_oled_line); 
			} else if(c == '\r'){
				//move to the start of the line.
				oled_write(0x80 | g_oled_line); 
			} else {
				out = 0x20; // space
				if(c >= 'A' && c <= 'Z') out = c - 'A' + 0x41;
				if(c >= 'a' && c <= 'z') out = c - 'a' + 0x61; 
				if(c >= '0' && c <= '9') out = c - '0' + 0x30; 
				if(c == ',') out = 0x2c; 
				if(c == '!') out = 0x21; 
				if(c == '?') out = 0x3f;
				if(c == ':') out = 0x3a;
				if(c == '.') out = 0x2e; 
				oled_write(0x0200 + out); //write character data.
			}
			str++; 
			i++; 
		}
	}
#endif
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
