#ifndef __GTKCLIENT_H__
#define __GTKCLIENT_H__

#define i64 long long
#define u32 unsigned int

enum MODES {
	MODE_RASTERS,
	MODE_SORT,
	MODE_SPIKES,
	MODE_NUM
};

#define NSAMP (64*1024) //about 2.6 seconds.
#define NDISPW 256
#ifdef EMG
#define NFBUF 8 //for EMG
#else
#define NFBUF 4
#endif
#define NSBUF		1024

#define STIMCHAN 	16
#define RECCHAN 	96
#define NCHAN		96
#define NUNIT		3	// including unsorted
#define NSORT		2

//globals.  could make a class for these but .. eh
// XXX why NSAMP*3 ???
extern float	g_fbuf[NFBUF][NSAMP*3]; //continuous waveform. range [-1 .. 1]. For drawing.
extern i64		g_fbufW; //where to write to (always increment)
extern i64		g_fbufR; //display thread reads from here - copies to mem
extern float	g_obuf[NCHAN][256]; //looping samples of the waveform.  for sorting. [-1 .. 1]
extern i64		g_sample;
//extern unsigned int*	g_sendbuf;
extern i64		g_lastSpike[NCHAN][NUNIT];
extern unsigned int 	g_nsamp; //given the current level of zoom (1 = 4096 samples), how many samples to update?

extern bool 	g_die ;
extern int 		g_channel[4];
extern double	g_minISI;
#endif