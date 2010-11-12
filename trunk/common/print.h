#ifndef __PRINT_H__
#define __PRINT_H__
int uart_str(char* str);
int printf_str(char* str);
int printf_int(char* str, int d);
int printf_hex(char* str, int d);
int printf_hex_byte(char* str, u8 d); 
int printf_ip(char* str, u32 addr);
#endif
