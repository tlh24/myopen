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
	//printf_hex("memcpy from ", src); 
	//printf_hex(" to ", dest); 
	//printf_str("\n"); 
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
	for(i=0; i<1280; i++){
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
//same as strcpy, but it puts it on the *beginning* of the buffer. 
//have to make sure there is space, of course!!
char* strprepend(char* dest, int *len, char * str){
	int l = strlen(str); 
	char* s = dest - *len; 
	int i; 
	for(i=0; i<l ; i++){
		*s++ = *str++; 
	}
	return dest - *len; 
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
int substr(char*a, char*b, int blen){
	//see if 'a' is a substring of (contained within) 'b'. 
	// 'a' and 'b' must be at least 2 characters! 
	char* aa, *bb; 
	int i = 0; 
	int j = 0;  //this is the return value - 
		//points to the character after the last character matched in b.
	while(*a && *b && i < blen){
		if(*a == *b){ //first character matches!
			aa = a+1; 
			bb = b+1; 
			j = i + 1; 
			while(*aa == *bb && *bb){
				aa++; 
				bb++; 
				j++; 
				if(*aa == 0){
					return j; //found!! 
				}
			}
		}
		b++; 
		i++; 
	}
	return 0; 
}
int sprintf_int(char* dest, int d){
	int i, m, j, k;
	//print the integer & figure out how long the string will be. 
	//note: the integer will be printed backwards!
	i = 0; 
	if(d == 0){
		printf_temp[0] = '0'; 
		i = 1; 
	}else if(d > 0){
		i = 0; 
		while(d > 0 && i < 11){
			k = d/10; 
			m = d-k*10; 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = k; 
		}
	}else if(d < 0){
		//convert to positive.
		d = 0x80000000 - (0x7fffffff & d);
		i = 0; 
		while(d > 0 && i < 11){
			k = d/10; 
			m = d-k*10; 
			printf_temp[i] = (char)m + 48; 
			i++; 
			d = k; 
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
int sprintf_hex(char* dest, int d){
	//we already know the length of the hex number will be 10 chars. (0x then 8 digits)
	// so no need to reverse it.
	int len, i, j, out; 
	short s;
	j = 0; 
	dest[j] = '0'; j++; 
	dest[j] = 'x'; j++; 
	for(i=0; i< 8; i++){
		out = d >> ((7-i)*4); 
		s = out & 0x0f; 
		if(s > 9){
			s += 55; 
		}else{
			s += 48;
		}
		dest[j + i] = (char)s;
	}
	return 10;
}
//this works the same way as strcpy : 
char* strprintf_int(char* dest, int* len, int d){
	int n = sprintf_int(dest, d); 
	*len += n; 
	dest += n; 
	return dest; 
}
char* strprintf_hex(char* dest, int* len, int d){
	int n = sprintf_hex(dest, d); 
	*len += n; 
	dest += n; 
	return dest; 
}
int atoi(char* c, int maxlen){
	int i = 0; 
	int r = 0; 
	int mply = 1; 
	if(*c == '-'){
		mply = -1; 
		c++; 
		i++; 
	}
	while( *c >= '0' && *c <= '9' && i < maxlen ){
		r += (int)((*c) - '0'); 
		c++; 
		i++; 
		if(*c >= '0' && *c <= '9')
			r *= 10; 
	}
	return r * mply; 
}
void udelay(int us){
	//not super-well calibrated, but eh well. 
	int i, j; 
	for(i=0; i < us; i++){
		for(j=0; j<160; j++)
			asm volatile("nop"); 
	}
}
