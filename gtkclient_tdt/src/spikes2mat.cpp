// program to convert gtkclient's stream-saved output to matlab files.

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include <atomic>
#include <iostream>
#include "wfwriter.h"
#include <assert.h>
#include <zlib.h>

#define u64 unsigned long long
#define i64 long long
#define u32 unsigned int

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

int main(int argn, char **argc)
{
	if (argn != 3 && argn != 2) {
		printf("usage: spikes2mat infile.dat outfile.mat\n");
		printf(" or just: convert infile.dat\n");
		return EXIT_FAILURE;
	}

	FILE *in = fopen(argc[1], "r");
	if (!in) {
		printf("could not open %s\n", argc[1]);
		return EXIT_FAILURE;
	}
	int nn = strlen(argc[1]);
	if (nn < 5 || nn > 511) {
		printf(" infile not .bin?\n");
		fclose(in);
		return EXIT_FAILURE;
	}
	char s[512];
	if (argn == 2) {
		strncpy(s, argc[1], 512);
		s[nn-3] = 'm';
		s[nn-2] = 'a';
		s[nn-1] = 't';
	} else {
		strncpy(s, argc[2], 512);
	}
	mat_t *mat = Mat_CreateVer(s, NULL, MAT_FT_MAT73);
	if (!mat) {
		printf("could not open for writing %s\n", argc[2]);
		fclose(in);
		return EXIT_FAILURE;
	}

	//this is (for now) a two-stage process:
	//have to scan through the file,
	//determine what's there, allocate memory appropritately,
	//then fill those structures up and write *that* out.
	i64 pos = 0;
	i64 packets = 0;
	bool done = false;
	unsigned int v;
	while (!done) {
		fread((void *)&v,4,1,in);
		if (ferror(in) || feof(in)) done = true;
		else {
			if (v == 0xc0edfad0) {
				packets++;
				fseek(in, sizeof(wfpak), SEEK_CUR);
				pos += 4 + sizeof(wfpak);
			} else {
				printf("magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
				       v,pos,packets);
				fclose(in);
				return EXIT_FAILURE;
			}
			if (ferror(in) || feof(in)) done = true;
		}
	}
	printf("total %lld packets\n", packets);
	if (packets > 0x7fffffff) {
		printf("too big for matlab.\n");
	}
	fseeko(in, 0, SEEK_SET);

	//okay, allocate appropriate data structs:
	short *channel = (short *)malloc(packets * sizeof(short));
	short *unit = (short *)malloc(packets * sizeof(short));
	short *wf = (short *)malloc(NWFSAMP * packets * sizeof(short));
	double *time = (double *)malloc(packets * sizeof(double));
	i64 *ticks = (i64 *)malloc(packets * sizeof(i64));

	if (time == 0 || ticks == 0 || channel == 0 || unit == 0 || wf == 0) {
		printf("not enough memory to convert in-place. bummer.");
		fclose(in);
		return EXIT_FAILURE;
	}
	wfpak pak;
	done = false;
	i64 n = 0;
	while (!done) {
		fread((void *)&v,4,1,in);
		if (ferror(in) || feof(in)) done = true;
		else {
			if (v == 0xc0edfad0) {
				fread((void *)&pak, sizeof(pak), 1, in);
				time[n] = pak.time;
				ticks[n] = pak.ticks;
				channel[n] = pak.channel;
				unit[n] = pak.unit;
				for (int g=0; g<pak.len; g++) {
					wf[n*pak.len+g] = pak.wf[g];
				}
				n++;
				pos += 4 + sizeof(wfpak);
			} else {
				printf("second pass, magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
				       v,pos,n);
				fclose(in);
				return EXIT_FAILURE;
			}
			if (ferror(in) || feof(in)) done = true;
		}
	}
	fclose(in);

	// write out to matlab.
	// might as well coalesce here, since it's all in memory.

	// do it this way to minimize memory footprint.
	auto unitCount = [&](int ch, int un) -> i64 {
		i64 m = 0;
		for (i64 i=0; i<n; i++) {
			if (channel[i] == ch && unit[i] == un)
				m++;
		}
		return m;
	};

	int maxch = 0;
	int maxunit = 0;
	for (i64 i=0; i<n; i++) {
		maxch = channel[i] > maxch ? channel[i] : maxch;
		maxunit = unit[i] > maxunit ? unit[i] : maxunit;
	}
	printf("max channel %d max unit %d\n", maxch, maxunit);
	if (maxch > 1024 || maxunit > 100) {
		printf("these numbers seem crazy.  quitting. \n");
		return EXIT_FAILURE;
	}
	maxch++;  //zero-indexed.
	maxunit++;
	size_t dims[2], dims2[2];
	dims[0] = maxunit;
	dims[1] = maxch;

	// wf
	int index = 0;
	matvar_t **wf_cell = (matvar_t **)malloc(dims[0]*dims[1]*sizeof(matvar_t *));
	for (int c=0; c<maxch; c++) {
		for (int u=0; u<maxunit; u++) {
			i64 m = unitCount(c, u);
			short *w = (short *)malloc(NWFSAMP * m * sizeof(short));
			i64 m2 = 0;
			for (i64 i=0; i<n; i++) {
				if (channel[i] == c && unit[i] == u) {
					for (i64 g=0; g<NWFSAMP; g++) {
						w[m2*NWFSAMP + g] = wf[i*NWFSAMP+g];
					}
					m2++;
				}
			}
			dims2[0] = NWFSAMP;
			dims2[1] = m;
			wf_cell[index] = Mat_VarCreate
			                 (NULL, MAT_C_INT16, MAT_T_INT16, 2, dims2, w, 0);
			free(w);
			index++;
		}
	}
	matvar_t *cell_matvar = Mat_VarCreate
	                        ("wf", MAT_C_CELL, MAT_T_CELL, 2, dims, wf_cell, 0);
	Mat_VarWrite(mat, cell_matvar, MAT_COMPRESSION_NONE);
	Mat_VarFree(cell_matvar);
	free(wf_cell);
	free(wf);

	// time
	index = 0;
	matvar_t **time_cell = (matvar_t **)malloc(dims[0]*dims[1]*sizeof(matvar_t *));
	for (int c=0; c<maxch; c++) {
		for (int u=0; u<maxunit; u++) {
			i64 m = unitCount(c, u);
			double *w = (double *)malloc(m * sizeof(double));
			i64 m2 = 0;
			for (i64 i=0; i<n; i++) {
				if (channel[i] == c && unit[i] == u) {
					w[m2] = time[i];
					m2++;
				}
			}
			dims2[0] = m;
			dims2[1] = 1;
			time_cell[index] = Mat_VarCreate
			                   (NULL, MAT_C_DOUBLE, MAT_T_DOUBLE, 2, dims2, w, 0);
			free(w);
			index++;
		}
	}
	cell_matvar = Mat_VarCreate("time", MAT_C_CELL, MAT_T_CELL, 2, dims, time_cell, 0);
	Mat_VarWrite(mat, cell_matvar, MAT_COMPRESSION_NONE);
	Mat_VarFree(cell_matvar);
	free(time_cell);
	free(time);

	// ticks
	index = 0;
	matvar_t **ticks_cell = (matvar_t **)malloc(dims[0]*dims[1]*sizeof(matvar_t *));
	for (int c=0; c<maxch; c++) {
		for (int u=0; u<maxunit; u++) {
			i64 m = unitCount(c, u);
			i64 *w = (i64 *)malloc(m * sizeof(i64));
			i64 m2 = 0;
			for (i64 i=0; i<n; i++) {
				if (channel[i] == c && unit[i] == u) {
					w[m2] = ticks[i];
					m2++;
				}
			}
			dims2[0] = m;
			dims2[1] = 1;
			ticks_cell[index] = Mat_VarCreate(NULL, MAT_C_INT64, MAT_T_INT64, 2, dims2, w, 0);
			free(w);
			index++;
		}
	}
	cell_matvar = Mat_VarCreate("ticks", MAT_C_CELL, MAT_T_CELL, 2, dims, ticks_cell, 0);
	Mat_VarWrite(mat, cell_matvar, MAT_COMPRESSION_NONE);
	Mat_VarFree(cell_matvar);
	free(ticks_cell);
	free(ticks);

	free(channel);
	free(unit);

	Mat_Close(mat);
	return EXIT_SUCCESS;
}
