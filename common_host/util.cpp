#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <cstring>
//#include <proc/readproc.h>	// for proc_t, openproc, readproc, etc
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
	fprintf(stderr, RESET "\n");
	va_end(v);
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

// checks if another executable with the same name is running
// ie are we running already
/*bool check_running(const char *program_name)
{
	pid_t mypid = getpid();
	PROCTAB *pr = openproc(PROC_FILLSTAT);
	proc_t pr_info;
	memset(&pr_info, 0, sizeof(pr_info));
	bool running = false;
	while (readproc(pr, &pr_info) != NULL) {
		if (!strcmp(pr_info.cmd, program_name) &&
		    pr_info.tgid != mypid) {
			running = true;
			break;
		}
	}
	closeproc(pr);
	return running;
}
*/
