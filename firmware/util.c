#include <cdefBF537.h>
#include "util.h" 

int div(int num, int denom){
	//see page 15-23 in the prog. ref. 
	//the assembly this produces is much simpler than the c code :)
	int i; 
	num = num << 1; 
	asm volatile("divs (%0, %1)":"+d"(num),"+d"(denom)); 
	for(i=0; i<15; i++){
		asm volatile("divq (%0, %1)":"+d"(num),"+d"(denom)); 
	}
	asm volatile("%0 = %0.l (x);":"+d"(num));
	return num;
}
int mod(int num, int denom){
	int b; 
	b = div(num, denom); 
	return num - b*denom;
}
void memcpy(u8* src, u8* dest, int len){
	int i; 
	//do it the simple way -- see http://docs.blackfin.uclinux.org/doku.php?id=memcpy
	//the only thing that really beats this is DMA. (provided data cache is enabled). 
	for(i=0; i<len; i++){
		*dest++ = *src++; 
	}
}
void memset(u8* dest, u8 fill, int len){
	int i; 
	for(i=0; i<len; i++){
		*dest++ = fill; 
	}
}
int strlen(char* str){
	int i; 
	for(i=0; i<1024; i++){
		if(str[i] == 0)
			return i; 
	}
	return 0; 
}
char* strcpy(char* dest, int* len, char* str){
	int i = 0; 
	while(*str && i < 1280 ){
		*dest++ = *str++; 
		i++; 
	}
	*len += i; 
	return dest; 
}
int strcmp(char* a, char* b){
	int i=0; 
	while(*a && *b&& i < 1280 ){
		if(*a++ != *b++)
			return 0; 
		i++; 
	}
	return 1; 
}
int sprintf_int(char* dest, int d){
	int i, m, j;
	
	//print the integer & figure out how long the string will be. 
	//note: the integer will be printed backwards!
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
	//reverse-print it.
	for(j = 0; j < i; j++){
		dest[j] = printf_temp[i-j-1]; 
	}
	return i; //the length of the resulting string.
}
void udelay(int us){
	//not super-well calibrated, but eh well. 
	int i, j; 
	for(i=0; i < us; i++){
		for(j=0; j<160; j++)
			asm volatile("nop"); 
	}
}
