#ifndef _UTIL_H_
#define _UTIL_H_

#define u8 unsigned char
#define u16 unsigned short
#define u32 unsigned int

extern char* printf_temp;  
extern char* printf_out; 

extern u8 g_mouseXpos; 
extern u8 g_mouseXneg; 
extern u8 g_mouseYpos; 
extern u8 g_mouseYneg; 
extern u32 g_mouseShift; 
extern u8   g_streamEnabled; 

//in test.asm..
void delay(int); 
extern unsigned int ustimer(); 

//in main.c
int PhysicalToLogicalChan(int c); 
int LogicalToPhysicalChan(int c); 

int div_(int num, int denom); 
int mod(int num, int denom); 
void memcpy_(u8* src, u8* dest, int len);
void memset_(u8* dest, u8 fill, int len); 
int strlen_(char* str); 
char* strcpy_(char* dest, int* len, char* str); 
int strcmp(char* a, char* b); 
int substr(char*a, char*b, int blen); 
int sprintf_int(char* dest, int d);
int sprintf_hex(char* dest, int d);
char* strprintf_int(char* dest, int* len, int d); 
char* strprintf_hex(char* dest, int* len, int d); 
int atoi_(char* c, int maxlen);
void udelay(int us) ; 
void spi_delay(); 
#endif
