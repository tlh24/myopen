#ifndef __GTKCLIENT_H__
#define __GTKCLIENT_H__

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

//globals.  could make a class for these but .. eh
extern float	g_fbuf[NFBUF][NSAMP*3]; 
extern i64		g_fbufW; //where to write to (always increment)
extern i64		g_fbufR; //display thread reads from here - copies to mem
extern float	g_obuf[96][256];
extern i64		g_sample; 
extern unsigned int*	g_sendbuf;
extern i64		g_lastSpike[96][3]; 
extern unsigned int 	g_nsamp;

extern bool 	g_die ;
extern int 		g_channel[4];
extern double	g_minISI;
#endif