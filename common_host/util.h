#ifndef __UTIL_H__
#define __UTIL_H__

#define RED		"\x1b[31m"
#define GREEN	"\x1b[32m"
#define YELLOW 	"\x1b[33m"
#define BLUE 	"\x1b[34m"
#define BOLD 	"\x1b[1m"
#define RESET	"\x1b[0m"

void warn(const char *s, ...);
void error(const char *s, ...);
void debug(const char *s, ...);

#endif