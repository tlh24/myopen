/*
 *  alg.c
 *  the wiener algorithm
 *  see: Simon Haykin "Adaptive Fileter Theory" (4th edition, Prentice Hall)
 *
 * $Id: alg.c 131 2006-08-11 23:07:07Z joey $
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "wiener.h"
#include "matrix.h"
#include <dposv.h>
#include "print.h"
#include "timer.h"

extern config * opt;

/* method used below is linear least squares */
void get_weights(matrix *X, matrix *Y, matrix *B) 
{
    matrix * A;
    char uplo;
    int info;
    
    A = initMatrix();
    allocMatrix(A,X->cols,X->cols);

    /*      X'*X -> A       */
    multATA(X,A);
    /*      X'*Y -> B       */
    multATB(X,Y,B);
    
    /*      Solve Ax = B    */
    uplo = 'u';
    dposv_(&uplo,&A->cols,&B->cols,A->data,&A->rows,B->data,&A->rows,&info);
    if (info != 0)
        printError(1,__FILE__,__LINE__,"dposv returned non-zero info");
  
    freeMatrix(A);
}

void applyWeights(matrix * X, matrix * w, matrix * yhat)
{
    /* X*w -> yhat */
    int last = getTimer();
    
    multAB(X,w,yhat);
    
    if(opt->verbose==3 || opt->verbose==7)
        print("applyWeights TIME: %i SECONDS\n\n",getTimer()-last); 
}

void correlate(matrix * y_truth, matrix * y_hat, matrix * r2)
{
    int i,j, x;
    double mean1,mean2,sumx,sumy,sumxx,sumyy,sumxy;

    if(y_truth->cols != y_hat->cols || y_truth->rows != y_hat->rows)
        printError(1,__FILE__,__LINE__,"y_truth and y_hat differ in size");
  
    allocMatrix(r2,y_truth->cols,1);
  
    mean1 = 0;
    mean2 = 0;
    sumx  = 0;
    sumy  = 0;
    sumxx = 0;
    sumyy = 0;
    sumxy = 0;
    x     = 0;

    for(j=0;j<y_truth->cols;j++)
    {
      for(i=0;i<y_truth->rows;i++)
      {
        mean1 += (double)y_truth->data[y_truth->rows*j+i];
        mean2 += (double)y_hat->data[y_truth->rows*j+i];
      }
      mean1 /= y_truth->rows;
      mean2 /= y_truth->rows;
      for(i=0;i<y_truth->rows; i++)
      {
        sumx += (y_truth->data[y_truth->rows*j+i] - mean1);
        sumy += (y_hat->data[y_hat->rows*j+i] - mean2);
        sumxx += ((y_truth->data[y_truth->rows*j+i]-mean1) * (y_truth->data[y_truth->rows*j+i]-mean1));
        sumyy += ((y_hat->data[y_hat->rows*j+i]-mean2) * (y_hat->data[y_hat->rows*j+i]-mean2));
        sumxy += ((y_truth->data[y_truth->rows*j+i]-mean1) * (y_hat->data[y_hat->rows*j+i]-mean2));
      }
      r2->data[x] = pow((sumxy-(sumx*sumy/y_hat->rows))/sqrt((sumxx-(sumx*sumx/y_hat->rows))*(sumyy-(sumy*sumy/y_hat->rows))),2);
      x++;
      print("R^2[%d] = %f\n",j,r2->data[x-1]);
    }
}
