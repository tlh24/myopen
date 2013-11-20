#ifndef __GTKCLIENT_H__
#define __GTKCLIENT_H__

#define NSCALE 4

#define NSAMP (24*1024)
#define NDISPW 256
#ifdef EMG
#define NFBUF 8 //for EMG
#else
#define NFBUF 4
#endif
#define NSBUF	1024

#include "cgVertexShader.h"
#include "vbo.h"

#endif
