//program to convert gtkclient's stream-saved output to matlab files.

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include <atomic>
#include <iostream>
#include "icmswriter.h"
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
		printf("usage: convert2icms infile outfile\n");
		printf(" or just: convert2icms infile\n");
		exit(0);
	} else {
		FILE *in = fopen(argc[1], "r");
		if (!in) {
			printf("could not open %s\n", argc[1]);
			exit(0);
		}
		mat_t *mat;
		int nn = strlen(argc[1]);
		if (nn < 5 || nn > 511) {
			printf(" infile not .bin?\n");
			exit(0);
		}
		char s[512];
		strncpy(s, argc[1], 512);
		s[nn-3] = 'm';
		s[nn-2] = 'a';
		s[nn-1] = 't';
		if (argn == 2) {
			mat = Mat_CreateVer(s, NULL,MAT_FT_MAT73);
		} else {
			mat = Mat_CreateVer(argc[2], NULL,MAT_FT_MAT73);
		}
		if (!mat) {
			printf("could not open for writing %s\n", argc[2]);
			exit(0);
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
				if (v == 0xdeadbabe) {
					packets++;
					fseek(in, sizeof(icmspak), SEEK_CUR);
					pos += 4 + sizeof(icmspak);
				} else {
					printf("magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
					       v,pos,packets);
					exit(0);
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
		double *time;
		i64 *ticks;
		short *id;

		time = (double *)malloc(packets * sizeof(double));
		ticks = (i64 *)malloc(packets * sizeof(i64));
		id = (short *)malloc(packets * sizeof(short));

		if (time == 0 || ticks == 0 || id == 0) {
			printf("not enough memory to convert in-place. bummer.");
			exit(0);
		}
		i64 n = 0;
		icmspak pak;
		done = false;
		while (!done) {
			fread((void *)&v,4,1,in);
			if (ferror(in) || feof(in)) done = true;
			else {
				if (v == 0xdeadbabe) {
					fread((void *)&pak, sizeof(pak), 1, in);
					time[n] = pak.time;
					ticks[n] = pak.ticks;
					id[n] = pak.id;
					n++;
					pos += 4 + sizeof(icmspak);
				} else {
					printf("second pass, magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
					       v,pos,n);
					exit(0);
				}
				if (ferror(in) || feof(in)) done = true;
			}
		}
		//write out to matlab.
		//might as well coalesce here, since it's all in memory.
		int maxid = 0;
		for (i64 i=0; i<n; i++) {
			maxid = id[i] > maxid ? id[i] : maxid;
		}
		printf("max id %d\n", maxid);
		if (maxid > 100) {
			printf("these numbers seem crazy.  quitting. \n");
			exit(0);
		}
		//maxid++;  //zero-indexed.

		size_t dims[2], dims2[2];
		dims[0] = maxid;
		dims[1] = 1;

		//do it this way to minimize memory footprint.
		auto idCount = [&](int thisid) -> i64 {
			i64 m = 0;
			for (i64 i=0; i<n; i++) {
				if (id[i] == thisid)
					m++;
			}
			return m;
		};

		matvar_t **time_cell = (matvar_t **)malloc(dims[0]*dims[1]*sizeof(matvar_t *));
		matvar_t **ticks_cell = (matvar_t **)malloc(dims[0]*dims[1]*sizeof(matvar_t *));
		for (int i=0; i<maxid; i++) {
			i64 m = idCount(i+1); // 1-indexed
			double *w = (double *)malloc(m*sizeof(double));
			i64 *x = (i64 *)malloc(m*sizeof(i64));
			i64 m2 = 0;
			for (i64 j=0; j<n; j++) {
				if (id[j] == i+1) {	// 1-indexed
					w[m2] = time[j];
					x[m2] = ticks[j];
					m2++;
				}
			}
			dims2[0] = m;
			dims2[1] = 1;
			time_cell[i] = Mat_VarCreate
			               (NULL, MAT_C_DOUBLE, MAT_T_DOUBLE, 2, dims2, w, 0);
			ticks_cell[i] = Mat_VarCreate
			                (NULL, MAT_C_INT64, MAT_T_INT64, 2, dims2, x, 0);
			free(w);
			free(x);
		}

		matvar_t *cell_matvar;

		cell_matvar = Mat_VarCreate("time", MAT_C_CELL, MAT_T_CELL, 2, dims, time_cell, 0);
		Mat_VarWrite(mat, cell_matvar, MAT_COMPRESSION_NONE);
		Mat_VarFree(cell_matvar);
		free(time_cell);

		cell_matvar = Mat_VarCreate("ticks", MAT_C_CELL, MAT_T_CELL, 2, dims, ticks_cell, 0);
		Mat_VarWrite(mat, cell_matvar, MAT_COMPRESSION_NONE);
		Mat_VarFree(cell_matvar);
		free(ticks_cell);

		Mat_Close(mat);
	}
}