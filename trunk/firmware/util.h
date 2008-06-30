#ifndef _UTIL_H_
#define _UTIL_H_

#define u8 unsigned char
#define u16 unsigned short
#define u32 unsigned int

#define PRINTF_BUFFER_SIZE 256
extern char printf_temp[PRINTF_BUFFER_SIZE];  
extern char printf_out[PRINTF_BUFFER_SIZE]; 

int div(int num, int denom); 
int mod(int num, int denom); 
void memcpy(u8* src, u8* dest, int len);
void memset(u8* dest, u8 fill, int len); 
int strlen(char* str); 
char* strcpy(char* dest, int* len, char* str); 
int strcmp(char* a, char* b); 
int sprintf_int(char* dest, int d);
void udelay(int us) ; 

#endif
