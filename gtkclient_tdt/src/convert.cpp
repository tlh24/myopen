//program to convert gtkclient's stream-saved output to matlab files.

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include "wfwriter.h"
#include <assert.h>
#include <zlib.h>

#define u64 unsigned long long
#define i64 long long
#define u32 unsigned int

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

#define CHUNK 16384
int gzipp(unsigned char* data, u64 len, FILE *dest, int level)
{
        int ret, flush;
        unsigned have;
        z_stream strm;
        unsigned char out[CHUNK];

        /* allocate deflate state */
        strm.zalloc = Z_NULL;
        strm.zfree = Z_NULL;
        strm.opaque = Z_NULL;
        ret = deflateInit2(&strm, level, Z_DEFLATED, 30, 8, Z_DEFAULT_STRATEGY);
        if (ret != Z_OK)
                return ret;

        for(u64 k = 0; k <= len/CHUNK; k++) {
                strm.next_in = &(data[k*CHUNK]);
                strm.avail_in = CHUNK;
                if(k == len/CHUNK) {
                        strm.avail_in = len - k*CHUNK;
                        flush = Z_FINISH;
                } else
                        flush =  Z_NO_FLUSH;
                do {
                        strm.avail_out = CHUNK;
                        strm.next_out = out;
                        ret = deflate(&strm, flush);    /* no bad return value */
                        assert(ret != Z_STREAM_ERROR);  /* state not clobbered */
                        have = CHUNK - strm.avail_out;
                        if (fwrite(out, 1, have, dest) != have || ferror(dest)) {
                                (void)deflateEnd(&strm);
                                return Z_ERRNO;
                        }
                } while (strm.avail_out == 0);
                assert(strm.avail_in == 0);     /* all input will be used */
        }
        assert(ret == Z_STREAM_END);        /* stream will be complete */

        /* clean up and return */
        (void)deflateEnd(&strm);
        return Z_OK;
}


int main(int argn, char **argc)
{
        if(argn != 3 && argn != 2) {
                printf("usage: convert infile.bin outfile.mat\n");
                printf(" or just: convert infile.bin\n");
                exit(0);
        } else {
                FILE* in = fopen(argc[1], "r");
                if(!in) {
                        printf("could not open %s\n", argc[1]);
                        exit(0);
                }
                mat_t *mat;
                int n = strlen(argc[1]);
                if(n < 5 || n > 511) {
                        printf(" infile not .bin?\n");
                        exit(0);
                }
                char s[512];
                strncpy(s, argc[1], 512);
                s[n-3] = 'm';
                s[n-2] = 'a';
                s[n-1] = 't';
                if(argn == 2) {
                        mat = Mat_Create(s,NULL);
                } else {
                        mat = Mat_Create(argc[2],NULL);
                }
                if(!mat) {
                        printf("could not open for writing %s\n", argc[2]);
                        exit(0);
                }
                //this is (for now) a two-stage process:
                //have to scan through the file,
                //determine what's there, allocate memory appropritately,
                //then fill those structures up and write *that* out.
                long pos = 0;
                long packets = 0;
                bool done = false;
                while(!done) {
                        fread((void*)&u,4,1,in);
                        if(ferror(in) || feof(in)) done = true;
                        else {
                                if(u == 0xc0edfad0) {
                                        packets++;
                                        fseek(in, sizeof(wfpak), SEEK_CUR);
                                        pos += 4 + sizeof(wfpak);
                                } else {
                                        printf("magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
                                               u,pos,packets);
                                        exit(0);
                                }
                                if(ferror(in) || feof(in)) done = true;
                        }
                }
                printf("total %lld packets\n", packets);
                if(packets > 0x7fffffff) {
                        printf("too big for matlab.\n");
                }
                fseeko(in, 0, SEEK_SET);
                //okay, allocate appropriate data structs:
                // time (double), analog(i8), channel (i8),
                // spike_time (double), spikes(i32)
                double* time;
                long* ticks;
                short* channel;
                short* unit;
                short* wf;

                time = (double*)malloc(packets * sizeof(double));
                ticks = (long*)malloc(packets * sizeof(long));
                channel = (short*)malloc(packets * sizeof(short));
                unit = (short*)malloc(packets * sizeof(short));
                wf = (short*)malloc(32 * packets * sizeof(short));

                if(time == 0 || ticks == 0 || channel == 0 || unit == 0 || wf == 0) {
                        printf("not enough memory to convert in-place. bummer.");
                        exit(0);
                }
                long n = 0;
                while(!done) {
                        fread((void*)&u,4,1,in);
                        if(ferror(in) || feof(in)) done = true;
                        else {
                                if(u == 0xc0edfad0) {
                                        fread((void*)pak, sizeof(pak), 1, in);
                                        time[n] = pak.time;
                                        ticks[n] = pak.ticks;
                                        channel[n] = pak.channel;
                                        unit[n] = pak.unit;
                                        for(int g=0; g<32; g++) {
                                                wf[n*32+g] = pak.wf[g];
                                        }
                                        n++;
                                        pos += 4 + sizeof(wfpak);
                                } else {
                                        printf("second pass, magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
                                               u,pos,n);
                                        exit(0);
                                }
                                if(ferror(in) || feof(in)) done = true;
                        }
                }
                //write out to matlab.
                //might as well coalesce here, since it's all in memory.
                int maxch = 0;
                int maxunit = 0;
                for(long i=0; i<n; i++) {
                        maxch = channel[i] > maxch ? channel[i] : maxch;
                        maxunit = unit[i] > maxunit ? unit[i] : maxch;
                }
                printf("max channel %d max unit %d\n", maxch, maxunit);
                if(maxch > 1024 || maxunit > 100) {
                        printf("these numbers seem crazy.  quitting. \n");
                        exit(0);
                }
                size_t dims[2], dims2[2];
                dims[0] = maxunit;
                dims[1] = maxch;
                //do it this way to minimize memory footprint.
                long unitCount = [&](int ch, int un) {
                        long m = 0;
                        for(long i=0; i<n; i++) {
                                if(channel[i] == ch && unit[i] == un)
                                        m++;
                        }
                        return m;
                }

                matvar_t* wf_cell = Mat_VarCreate("wf", MAT_C_CELL, MAT_T_CELL, 2, dims);
                for(int c=0; c<maxch; c++) {
                        for(int u=0; u<maxun; u++) {
                                long m = unitCount(c, u);
                                short* w = (short*)malloc(32 * m * sizeof(short));
                                long m2 = 0;
                                for(long i=0; i<n; i++) {
                                        if(channel[i] == c && unit[i] == u) {
                                                for(long g=0; g<32; g++) {
                                                        w[m2*32 + g] = wf[i*32+g];
                                                }
                                                m2++;
                                        }
                                }
                                dims2[0] = 32;
                                dims2[1] = m;
                                matvar_t* elem = Mat_VarCreate(NULL, MAT_C_INT16, MAT_T_INT16, 2, dims2, w, 0);
                                Mat_VarSetCell(wf_cell, 0, elem);
                                free(w);
                        }
                }
                Mat_VarWrite(mat, wf_cell, MAT_COMPRESSION_NONE);
                Mat_VarFree(wf_cell);

                matvar_t* time_cell = Mat_VarCreate("time", MAT_C_CELL, MAT_T_CELL, 2, dims);
                for(int c=0; c<maxch; c++) {
                        for(int u=0; u<maxun; u++) {
                                long m = unitCount(c, u);
                                double* w = (double*)malloc(m * sizeof(double));
                                long m2 = 0;
                                for(long i=0; i<n; i++) {
                                        if(channel[i] == c && unit[i] == u) {
                                                w[m2] = time[i];
                                        }
                                }
                                dims2[0] = m;
                                dims2[1] = 1;
                                matvar_t* elem = Mat_VarCreate(NULL, MAT_C_DOUBLE, MAT_T_DOUBLE, 2, dims2, w, 0);
                                Mat_VarSetCell(time_cell, 0, elem);
                                free(w);
                        }
                }
                Mat_VarWrite(mat, time_cell, MAT_COMPRESSION_NONE);
                Mat_VarFree(time_cell);

                matvar_t* ticks_cell = Mat_VarCreate("ticks", MAT_C_CELL, MAT_T_CELL, 2, dims);
                for(int c=0; c<maxch; c++) {
                        for(int u=0; u<maxun; u++) {
                                long m = unitCount(c, u);
                                long* w = (long*)malloc(m * sizeof(long));
                                long m2 = 0;
                                for(long i=0; i<n; i++) {
                                        if(channel[i] == c && unit[i] == u) {
                                                w[m2] = ticks[i];
                                        }
                                }
                                dims2[0] = m;
                                dims2[1] = 1;
                                matvar_t* elem = Mat_VarCreate(NULL, MAT_C_INT64, MAT_T_INT64, 2, dims2, w, 0);
                                Mat_VarSetCell(time_cell, 0, elem);
                                free(w);
                        }
                }
                Mat_VarWrite(mat, ticks_cell, MAT_COMPRESSION_NONE);
                Mat_VarFree(ticks_cell);

                Mat_Close(mat);
        }
}