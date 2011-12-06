#include <stdlib.h>
#include <stdio.h>
#include "matrix.h"

/* error / warning function */
void print_err(char * s, int quit) {
   if (quit == 1) fprintf(stderr,"* Fatal:\t");
   else fprintf(stderr,"* Warning:\t");
   fprintf(stderr,"%s\n",s);
   if (quit == 1) exit(EXIT_FAILURE);
}

matrix * readMatrixFromBinaryFile(char * f) {
    FILE * fh;
    int rows, cols, n;
    matrix * m;

    fh = fopen(f,"rb");
    if (!fh) fatal("Cannot open file.");

    n = fread(&rows, sizeof(int), 1, fh);
    if (!n) fatal("File corruption.");

    n = fread(&cols, sizeof(int), 1, fh);
    if (!n) fatal("File corruption.");

    m = newMatrix();
    allocMatrix(m, rows, cols);

    n = fread(m->d, sizeof(float), rows*cols, fh);
    if (n!=rows*cols) fatal("File corruption.");

    fclose(fh);

    return m;

}
