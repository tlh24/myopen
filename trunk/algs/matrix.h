#ifndef _MATRIX_H_
#define _MATRIX_H_

/* $Id$ */

#define warn(s)         print_err(s,0);
#define fatal(s)        print_err(s,1);
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
void copyMatrix(matrix * m, matrix * n);
void submatrix(matrix * m1, matrix * m2, int r1, int c1, int r2, int 
c2);
void multATA(matrix * A, matrix * C);
void multAB(matrix * A, matrix * B, matrix * C);
void multATB(matrix * A, matrix * B, matrix * C);
void colSum(matrix * m, matrix * msum);
void elemMult(matrix * m, float x);
void elemSquare(matrix * m);
void elemSqrt(matrix * m); 
void add(matrix * m, matrix * n);
void mean(matrix * m, matrix * _mean);
void std(matrix * m, matrix * _std);

#endif
