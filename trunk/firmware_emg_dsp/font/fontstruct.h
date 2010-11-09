#ifndef _FONTSTRUCT_H_
#define _FONTSTRUCT_H_
typedef struct {
    unsigned char phony_name[16];
    unsigned char height;
    unsigned char base_line;
    struct {
       unsigned char width;
       unsigned char offset_msb;
       unsigned char offset_lsb;
    } per_char[256];   
    unsigned char data[1];
} picoFont;
#endif
