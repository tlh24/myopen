#ifndef __GTKGLOBALS_H__
#define __GTKGLOBALS_H__

#define NSCALE 2

#define i64 long long
#define u32 unsigned int

#define NSAMP (24*1024)
#define NDISPW 256
#ifdef EMG
#define NFBUF 8 //for EMG
#else
#define NFBUF 4
#endif
#define NSBUF	1024


#endif