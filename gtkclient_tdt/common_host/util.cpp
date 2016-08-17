#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <errno.h>
#include <cstring>
#include "util.h"

void warn(const char *s, ...)
{
	va_list v;
	va_start(v, s);
	fprintf(stderr, YELLOW "[WARNING] " RESET BOLD);
	vfprintf(stderr, s, v);
	fprintf(stderr, RESET "\n");
	va_end(v);
}

void error(const char *s, ...)
{
	va_list v;
	va_start(v, s);
	fprintf(stderr, RED "[ERROR] " RESET BOLD);
	vfprintf(stderr, s, v);
	fprintf(stderr, "\n" RESET);
	va_end(v);
	if (errno != 0) {
		perror(RED "[ERROR] " RESET BOLD);
	}
	fprintf(stderr, RESET);
}

void debug(const char *s, ...)
{
	va_list v;
	va_start(v, s);
#ifdef DEBUG
	fprintf(stderr, GREEN "[DEBUG] " RESET BOLD);
	vfprintf(stderr, s, v);
	fprintf(stderr, RESET "\n");
#endif
	va_end(v);
}
