#ifndef __GTKCLIENT_H__
#define __GTKCLIENT_H__

#define i64 long long
#define u32 unsigned int

enum MODES {
	MODE_RASTERS,
	MODE_SPIKES,
	MODE_SORT,
	MODE_ICMS,
	MODE_SAVE,
	MODE_NUM
};

#define SRATE_HZ	(24414.0625)
#define SRATE_KHZ	(24.4140625)
//#define SRATE_HZ	(48828.1250)
//#define SRATE_KHZ	(48.8281250)

#define NSAMP 		(64*1024) 	// about 2.6 seconds.
#define NSAMPWF		256			// number of samples to track for spike sorting (MUST BE POWER OF 2!)
#define NFBUF 		4 		  	// number of continuous channels to draw	
#define NSBUF		1024 		// number of recent spikes to track

#define STIMCHAN 	8
#define RECCHAN 	96
#define NCHAN		96
#define NUNIT		3	// including unsorted
#define NSORT		2

#define NWFSAMP		32	// number of wf samples at SRATE_HZ (nb compare with NSAMPWF, above)
#define NWFSAMPUP	128	// upsampled for alignment / sorting


//globals.  could make a class for these but .. eh
// XXX why NSAMP*3 ???
extern float	g_fbuf[NFBUF][NSAMP*3]; //continuous waveform. range [-1 .. 1]. For drawing.
extern i64		g_fbufW; //where to write to (always increment)
extern i64		g_fbufR; //display thread reads from here - copies to mem
extern i64		g_lastSpike[NCHAN][NUNIT];
extern unsigned int 	g_nsamp; //given the current level of zoom (1 = 4096 samples), how many samples to update?

extern bool 	g_die ;
extern int 		g_channel[4];
extern double	g_minISI;
#endif