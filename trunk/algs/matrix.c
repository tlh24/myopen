/* $Id$ */
  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <clapack.h>
#include "util.h"
#include "matrix.h"

#define warn(s)		print_err(s,0);
#define error(s)	print_err(s,1);

/**
 * Initializes a matrix of size zero,
 * allocates memory, and asigns a null pointer
 * Returns: pointer to a matrix
 */
matrix * newMatrix() {
    matrix * m;
    m = (matrix*)malloc(sizeof(matrix));
    m->r = 0;
    m->c = 0;
    m->d = NULL;
    return m;
}

/**
 * Allocates memory for a matrix,
 * realloc-ing if the pointer to the matrix is not NULL
 * @param[in,out] * m, pointer to matrix
 * @param[in] rows, number of rows
 * @param[in] cols, number of columns
 */
void allocMatrix(matrix * m, int rows, int cols) {
    m->r = rows;
    m->c = cols;
    if (m->d == NULL)
    	m->d = (float*)malloc(rows*cols*sizeof(float));
    else
	m->d = (float*)realloc(m->d,rows*cols*sizeof(float));
}

/**
 * Free memory for a matrix
 * @param[in,out] * m, pointer to a matrix
 */
void freeMatrix(matrix * m) {
    safe_free(m->d);
    safe_free(m);
}

/* copies matrix m -> n */
void copyMatrix(matrix * m, matrix * n) {
    allocMatrix(n, m->r, m->c);
    memcpy(n->d, m->d, m->r*m->c*sizeof(float));
}

void zeroMatrix(matrix * m) {
  int i, j;
  for(i=0;i<m->r;i++) {
    for(j=0;j<m->c;j++) {
      m->d[m->r*j+i] = 0.f;
    }
  }
}

/**
 * Print the contents of a matrix
 * mostly for debugging
 * @param[in] * m, pointer to a matrix
 */
void printMatrix(matrix * m) {
  int i,j;

  for(i=0;i<m->r;i++) {
    for(j=0;j<m->c;j++) {
      printf("%3d ", (int)m->d[m->r*j+i]);
      if(j+1==m->c)
	printf("\n\n");
    }
  }
}

/**
 * select a sub-matrix n from matrix m
 * original matrix, m, is unmolested
 * does some bounds-checking
 * i.e. r2 and c2 should be less than the size of the m
 */
void submatrix(matrix * m, matrix * n, int r1, int c1, int r2, int c2) {
    int x = 0;
    int i, j;

    /** check for argument errors */
    if (r1>r2 || c1>c2) 
        error("r1 and c1 should be less than r2 and c2."); 
    if (c2 >= m->c || r2 >= m->r)
        error("Submatrix bounds exceed larger matrix bounds.");

    allocMatrix(n,r2-r1+1,c2-c1+1);
  
    for(j=c1;j<=c2;j++) {
        for(i=r1;i<=r2;i++) {
            n->d[x] = m->d[m->r*j+i];
            x++;
        }
    }
}

/**
 *  A'A -> C
 * only upper triangle of C is referenced
 */
void multATA(matrix * A, matrix * C) {

    int order   = CblasColMajor;
    int uplo    = CblasUpper;
    int trans   = CblasTrans;

    float alpha = 1.0;
    float beta  = 0.0;
    
    allocMatrix(C,A->c,A->c);
    
    cblas_ssyrk(order,uplo,trans,A->c,A->r,alpha,A->d,A->r,beta,C->d,A->c);
}

/** A*B -> C */
void multAB(matrix * A, matrix * B, matrix * C) {
  
    int   order   = CblasColMajor;
    int   transA  = CblasNoTrans;
    int   transB  = CblasNoTrans;

    float alpha   = 1.0;
    float beta    = 0.0;

    allocMatrix(C,A->r,B->c);

    cblas_sgemm(order,transA,transB,A->r,B->c,A->c,alpha,
        A->d,A->r,B->d,B->r,beta,C->d,C->r);
}

/** A'*B -> C*/
void multATB(matrix * A, matrix * B, matrix * C) {
  
    int order     = CblasColMajor;
    int transA    = CblasTrans;
    int transB    = CblasNoTrans;

    float alpha   = 1.0;
    float beta    = 0.0;

    allocMatrix(C,A->c,B->c);

    cblas_sgemm(order,transA,transB,A->c,B->c,A->r,alpha,
        A->d,A->r,B->d,B->r,beta,C->d,C->r);
}

/* sum of each column of a matrix */
void colSum(matrix * m, matrix * msum) {
    int i, j;

    allocMatrix(msum,1,m->c);
    zeroMatrix(msum);

    for (i=0;i<m->r;i++)
	for (j=0;j<m->c;j++)
	    msum->d[j] += m->d[m->r*j+i];
}

/* in-place mult of each element */
void elemMult(matrix * m, float x) {
    int i;
    for (i=0;i<m->r*m->c;i++)
        m->d[i] *= x;
}

/* in-place square of each element */
void elemSquare(matrix * m) {
    int i;
    
    for (i=0;i<m->r*m->c;i++)
            m->d[i] *= m->d[i];
}

/* add matrices m + n, result goes in m */
void add(matrix * m, matrix * n) {
    /* handle case where size mismatch */
    int i;
    for (i=0;i<m->r*m->c;i++)
        m->d[i] += n->d[i];
}

/* take mean of each column of a matrix */
void mean(matrix * m, matrix * _mean) {
    colSum(m, _mean);
    elemMult(_mean,(float)m->r);
}

/* standard deviation of each column of a matrix */
void std(matrix * m, matrix * _std) {
    matrix * meansq;
    matrix * tmp;

    /* mean(x^2) */
    tmp = newMatrix();
    copyMatrix(m, tmp);
    elemSquare(tmp);
    mean(tmp,_std);
    freeMatrix(tmp);
    
    /* -(mean(x))^2 */
    meansq = newMatrix();
    colSum(m, meansq);
    elemSquare(meansq);
    elemMult(meansq,-1.f);

    /* subtract */
    add(_std,meansq);
    freeMatrix(meansq);

    /* xxx need sqrt here!! */

}
