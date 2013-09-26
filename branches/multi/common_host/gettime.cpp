#include "gettime.h"
#include <time.h>

long double g_startTime = 0.0;

long double gettime(){ /*in seconds!*/
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC_RAW, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret - g_startTime;
}
