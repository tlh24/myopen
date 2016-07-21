#ifndef __UTIL_H__
#define __UTIL_H__

#include <stdint.h>

#define i8 	int8_t
#define u8 	uint8_t
#define i16 int16_t
#define u16 uint16_t
#define i32 int32_t
#define u32 uint32_t
#define i64 int64_t
#define u64 uint64_t

#define RED		"\x1b[31m"
#define GREEN	"\x1b[32m"
#define YELLOW 	"\x1b[33m"
#define BLUE 	"\x1b[34m"
#define BOLD 	"\x1b[1m"
#define RESET	"\x1b[0m"

void warn(const char *s, ...);
void error(const char *s, ...);
void debug(const char *s, ...);
//bool check_running(const char *program_name);

#endif