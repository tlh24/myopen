#ifndef _MATRIX_H_
#define _MATRIX_H_

/* $Id$ */

#define safe_free(p) { if (p) free(p); p = NULL; }

/* r and c are rows and cols
 * d is the data */
typedef struct {
    int r, c;
    float * d;
} matrix;

void printMatrix(matrix * m);
matrix * newMatrix();
void allocMatrix(matrix * m, int r, int c);
void freeMatrix(matrix * m);
void zeroMatrix(matrix * m);
void submatrix(matrix * m1, matrix * m2, int r1, int c1, int r2, int 
c2);
void multATA(matrix * A, matrix * C);
void multAB(matrix * A, matrix * B, matrix * C);
void multATB(matrix * A, matrix * B, matrix * C);
void mean(matrix * m, matrix * mean);

#endif
