
/*
 * The following routines have been built from knowledge gathered
 * around the Web. I am not aware of any copyright problem with
 * them, so use it as you want.
 * N. Devillard - 1998
 */
#include <math.h>

//typedef unsigned short datavalue ;
typedef float datavalue ;

//result has a <= b
//#define PIX_SORT(a,b) { if ((a)>(b)) PIX_SWAP((a),(b)); }
//#define PIX_SWAP(a,b) { datavalue temp=(a);(a)=(b);(b)=temp; }

#define PIX_SORT(a,b) {datavalue temp=min((a),(b));(b)=max((a),(b));(a)=temp;}
#define SWAP(a,b) { PIX_SORT(p[a],p[b]) }

/* trivial case
 */
datavalue opt_med2(datavalue *p)
{
	return (datavalue)((p[0] + p[1]) *0.5);
}
/*----------------------------------------------------------------------------
   Function :   opt_med3()
   In       :   pointer to array of 3 datavalues
   Out      :   a datavalue
   Job      :   optimized search of the median of 3 datavalues
   Notice   :   found on sci.image.processing
                cannot go faster unless assumptions are made
                on the nature of the input signal.
 ---------------------------------------------------------------------------*/

datavalue opt_med3(datavalue *p)
{
	PIX_SORT(p[0],p[1]) ;
	PIX_SORT(p[1],p[2]) ;
	PIX_SORT(p[0],p[1]) ;
	return(p[1]) ;
}



/* based on optimal Batcher's sort for 4 elements, using 5 swaps
 * Edited by dropping compares not needed for median at the end, leaving 4
 * compare swaps
 * Note: I don't know the optimality status of this method
 */
datavalue opt_med4(datavalue *p)
{
	SWAP(0, 2);
	SWAP(1, 3);
	SWAP(0, 1);
	SWAP(2, 3);
	//SWAP(1, 2);
	return (datavalue)((p[1] + p[2])*0.5);
}


/*----------------------------------------------------------------------------
   Function :   opt_med5()
   In       :   pointer to array of 5 data values
   Out      :   a datavalue
   Job      :   optimized search of the median of 5 data values
   Notice   :   found on sci.image.processing
                cannot go faster unless assumptions are made
                on the nature of the input signal.
 ---------------------------------------------------------------------------*/

datavalue opt_med5(datavalue *p)
{
	PIX_SORT(p[0],p[1]) ;
	PIX_SORT(p[3],p[4]) ;
	PIX_SORT(p[0],p[3]) ;
	PIX_SORT(p[1],p[4]) ;
	PIX_SORT(p[1],p[2]) ;
	PIX_SORT(p[2],p[3]) ;
	PIX_SORT(p[1],p[2]) ;
	return(p[2]) ;
}

/*----------------------------------------------------------------------------
   Function :   opt_med6()
   In       :   pointer to array of 6 data values
   Out      :   a datavalue
   Job      :   optimized search of the median of 6 data values
   Notice   :   from Christoph_John@gmx.de
                based on a selection network which was proposed in
                "FAST, EFFICIENT MEDIAN FILTERS WITH EVEN LENGTH WINDOWS"
                J.P. HAVLICEK, K.A. SAKADY, G.R.KATZ
                If you need larger even length kernels check the paper
 ---------------------------------------------------------------------------*/

datavalue opt_med6(datavalue *p)
{
	PIX_SORT(p[1], p[2]);
	PIX_SORT(p[3],p[4]);
	PIX_SORT(p[0], p[1]);
	PIX_SORT(p[2],p[3]);
	PIX_SORT(p[4],p[5]);
	PIX_SORT(p[1], p[2]);
	PIX_SORT(p[3],p[4]);
	PIX_SORT(p[0], p[1]);
	PIX_SORT(p[2],p[3]);
	PIX_SORT(p[4],p[5]);
	PIX_SORT(p[1], p[2]);
	PIX_SORT(p[3],p[4]);
	return (datavalue)(( p[2] + p[3] ) * 0.5);
	/* PIX_SORT(p[2], p[3]) results in lower median in p[2] and upper median in p[3] */
}


/*----------------------------------------------------------------------------
   Function :   opt_med7()
   In       :   pointer to array of 7 data values
   Out      :   a datavalue
   Job      :   optimized search of the median of 7 data values
   Notice   :   found on sci.image.processing
                cannot go faster unless assumptions are made
                on the nature of the input signal.
 ---------------------------------------------------------------------------*/

datavalue opt_med7(datavalue *p)
{
	PIX_SORT(p[0], p[5]) ;
	PIX_SORT(p[0], p[3]) ;
	PIX_SORT(p[1], p[6]) ;
	PIX_SORT(p[2], p[4]) ;
	PIX_SORT(p[0], p[1]) ;
	PIX_SORT(p[3], p[5]) ;
	PIX_SORT(p[2], p[6]) ;
	PIX_SORT(p[2], p[3]) ;
	PIX_SORT(p[3], p[6]) ;
	PIX_SORT(p[4], p[5]) ;
	PIX_SORT(p[1], p[4]) ;
	PIX_SORT(p[1], p[3]) ;
	PIX_SORT(p[3], p[4]) ;
	return (p[3]) ;
}

/* based on optimal Batcher's sort for 8 elements, using 19 swaps
 * Edited by dropping compares not needed for median at the end, leaving 16
 * compare-swaps (incidentally, half way between opt_med7 and opt_med9)
 * Note: I don't know the optimality status of this method
 * Correctness verified in matlab
 */
datavalue opt_med8(datavalue *p)
{
	SWAP(0, 4);
	SWAP(1, 5);
	SWAP(2, 6);
	SWAP(3, 7);
	SWAP(0, 2);
	SWAP(1, 3);
	SWAP(4, 6);
	SWAP(5, 7);
	SWAP(2, 4);
	SWAP(3, 5);
	SWAP(0, 1);
	SWAP(2, 3);
	SWAP(4, 5);
	SWAP(6, 7);
	SWAP(1, 4);
	SWAP(3, 6);
	//SWAP(1, 2);
	//SWAP(3, 4);
	//SWAP(5, 6);
	return (datavalue)(( p[3] + p[4] ) * 0.5);
}
/*----------------------------------------------------------------------------
   Function :   opt_med9()
   In       :   pointer to an array of 9 datavalues
   Out      :   a datavalue
   Job      :   optimized search of the median of 9 datavalues
   Notice   :   in theory, cannot go faster without assumptions on the
                signal.
                Formula from:
                XILINX XCELL magazine, vol. 23 by John L. Smith

                The input array is modified in the process
                The result array is guaranteed to contain the median
                value
                in middle position, but other elements are NOT sorted.
 ---------------------------------------------------------------------------*/

datavalue opt_med9(datavalue *p)
{
	PIX_SORT(p[1], p[2]) ;
	PIX_SORT(p[4], p[5]) ;
	PIX_SORT(p[7], p[8]) ;
	PIX_SORT(p[0], p[1]) ;
	PIX_SORT(p[3], p[4]) ;
	PIX_SORT(p[6], p[7]) ;
	PIX_SORT(p[1], p[2]) ;
	PIX_SORT(p[4], p[5]) ;
	PIX_SORT(p[7], p[8]) ;
	PIX_SORT(p[0], p[3]) ;
	PIX_SORT(p[5], p[8]) ;
	PIX_SORT(p[4], p[7]) ;
	PIX_SORT(p[3], p[6]) ;
	PIX_SORT(p[1], p[4]) ;
	PIX_SORT(p[2], p[5]) ;
	PIX_SORT(p[4], p[7]) ;
	PIX_SORT(p[4], p[2]) ;
	PIX_SORT(p[6], p[4]) ;
	PIX_SORT(p[4], p[2]) ;
	return(p[4]) ;
}

/* based on optimal Batcher's sort for 16 elements, using 63 swaps
 * Edited by dropping compares not needed for median at the end, leaving 52
 * compare-swaps
 * Note: I don't know the optimality status of this method
 * correctness verified in matlab
 */
datavalue opt_med16(datavalue *p)
{
	SWAP(0, 8);
	SWAP(1, 9);
	SWAP(2, 10);
	SWAP(3, 11);
	SWAP(4, 12);
	SWAP(5, 13);
	SWAP(6, 14);
	SWAP(7, 15);
	SWAP(0, 4);
	SWAP(1, 5);
	SWAP(2, 6);
	SWAP(3, 7);
	SWAP(8, 12);
	SWAP(9, 13);
	SWAP(10, 14);
	SWAP(11, 15);
	SWAP(4, 8);
	SWAP(5, 9);
	SWAP(6, 10);
	SWAP(7, 11);
	SWAP(0, 2);
	SWAP(1, 3);
	SWAP(4, 6);
	SWAP(5, 7);
	SWAP(8, 10);
	SWAP(9, 11);
	SWAP(12, 14);
	SWAP(13, 15);
	SWAP(2, 8);
	SWAP(3, 9);
	SWAP(6, 12);
	SWAP(7, 13);
	SWAP(2, 4);
	SWAP(3, 5);
	SWAP(6, 8);
	SWAP(7, 9);
	SWAP(10, 12);
	SWAP(11, 13);
	SWAP(0, 1);
	SWAP(2, 3);
	SWAP(4, 5);
	SWAP(6, 7);
	SWAP(8, 9);
	SWAP(10, 11);
	SWAP(12, 13);
	SWAP(14, 15);
	SWAP(1, 8);
	SWAP(3, 10);
	SWAP(5, 12);
	SWAP(7, 14);
	//SWAP(1, 4);
	//SWAP(3, 6);
	SWAP(5, 8);
	SWAP(7, 10);
	//SWAP(9, 12);
	//SWAP(11, 14);
	//SWAP(1, 2);
	//SWAP(3, 4);
	//SWAP(5, 6);
	//SWAP(7, 8);
	//SWAP(9, 10);
	//SWAP(11, 12);
	//SWAP(13, 14);
	return (datavalue)(( p[7] + p[8] ) * 0.5);

}

/*----------------------------------------------------------------------------
   Function :   opt_med25()
   In       :   pointer to an array of 25 datavalues
   Out      :   a datavalue
   Job      :   optimized search of the median of 25 datavalues
   Notice   :   in theory, cannot go faster without assumptions on the
                signal.
  				Code taken from Graphic Gems.
 ---------------------------------------------------------------------------*/

datavalue opt_med25(datavalue *p)
{


	PIX_SORT(p[0], p[1]) ;
	PIX_SORT(p[3], p[4]) ;
	PIX_SORT(p[2], p[4]) ;
	PIX_SORT(p[2], p[3]) ;
	PIX_SORT(p[6], p[7]) ;
	PIX_SORT(p[5], p[7]) ;
	PIX_SORT(p[5], p[6]) ;
	PIX_SORT(p[9], p[10]) ;
	PIX_SORT(p[8], p[10]) ;
	PIX_SORT(p[8], p[9]) ;
	PIX_SORT(p[12], p[13]) ;
	PIX_SORT(p[11], p[13]) ;
	PIX_SORT(p[11], p[12]) ;
	PIX_SORT(p[15], p[16]) ;
	PIX_SORT(p[14], p[16]) ;
	PIX_SORT(p[14], p[15]) ;
	PIX_SORT(p[18], p[19]) ;
	PIX_SORT(p[17], p[19]) ;
	PIX_SORT(p[17], p[18]) ;
	PIX_SORT(p[21], p[22]) ;
	PIX_SORT(p[20], p[22]) ;
	PIX_SORT(p[20], p[21]) ;
	PIX_SORT(p[23], p[24]) ;
	PIX_SORT(p[2], p[5]) ;
	PIX_SORT(p[3], p[6]) ;
	PIX_SORT(p[0], p[6]) ;
	PIX_SORT(p[0], p[3]) ;
	PIX_SORT(p[4], p[7]) ;
	PIX_SORT(p[1], p[7]) ;
	PIX_SORT(p[1], p[4]) ;
	PIX_SORT(p[11], p[14]) ;
	PIX_SORT(p[8], p[14]) ;
	PIX_SORT(p[8], p[11]) ;
	PIX_SORT(p[12], p[15]) ;
	PIX_SORT(p[9], p[15]) ;
	PIX_SORT(p[9], p[12]) ;
	PIX_SORT(p[13], p[16]) ;
	PIX_SORT(p[10], p[16]) ;
	PIX_SORT(p[10], p[13]) ;
	PIX_SORT(p[20], p[23]) ;
	PIX_SORT(p[17], p[23]) ;
	PIX_SORT(p[17], p[20]) ;
	PIX_SORT(p[21], p[24]) ;
	PIX_SORT(p[18], p[24]) ;
	PIX_SORT(p[18], p[21]) ;
	PIX_SORT(p[19], p[22]) ;
	PIX_SORT(p[8], p[17]) ;
	PIX_SORT(p[9], p[18]) ;
	PIX_SORT(p[0], p[18]) ;
	PIX_SORT(p[0], p[9]) ;
	PIX_SORT(p[10], p[19]) ;
	PIX_SORT(p[1], p[19]) ;
	PIX_SORT(p[1], p[10]) ;
	PIX_SORT(p[11], p[20]) ;
	PIX_SORT(p[2], p[20]) ;
	PIX_SORT(p[2], p[11]) ;
	PIX_SORT(p[12], p[21]) ;
	PIX_SORT(p[3], p[21]) ;
	PIX_SORT(p[3], p[12]) ;
	PIX_SORT(p[13], p[22]) ;
	PIX_SORT(p[4], p[22]) ;
	PIX_SORT(p[4], p[13]) ;
	PIX_SORT(p[14], p[23]) ;
	PIX_SORT(p[5], p[23]) ;
	PIX_SORT(p[5], p[14]) ;
	PIX_SORT(p[15], p[24]) ;
	PIX_SORT(p[6], p[24]) ;
	PIX_SORT(p[6], p[15]) ;
	PIX_SORT(p[7], p[16]) ;
	PIX_SORT(p[7], p[19]) ;
	PIX_SORT(p[13], p[21]) ;
	PIX_SORT(p[15], p[23]) ;
	PIX_SORT(p[7], p[13]) ;
	PIX_SORT(p[7], p[15]) ;
	PIX_SORT(p[1], p[9]) ;
	PIX_SORT(p[3], p[11]) ;
	PIX_SORT(p[5], p[17]) ;
	PIX_SORT(p[11], p[17]) ;
	PIX_SORT(p[9], p[17]) ;
	PIX_SORT(p[4], p[10]) ;
	PIX_SORT(p[6], p[12]) ;
	PIX_SORT(p[7], p[14]) ;
	PIX_SORT(p[4], p[6]) ;
	PIX_SORT(p[4], p[7]) ;
	PIX_SORT(p[12], p[14]) ;
	PIX_SORT(p[10], p[14]) ;
	PIX_SORT(p[6], p[7]) ;
	PIX_SORT(p[10], p[12]) ;
	PIX_SORT(p[6], p[10]) ;
	PIX_SORT(p[6], p[17]) ;
	PIX_SORT(p[12], p[17]) ;
	PIX_SORT(p[7], p[17]) ;
	PIX_SORT(p[7], p[10]) ;
	PIX_SORT(p[12], p[18]) ;
	PIX_SORT(p[7], p[12]) ;
	PIX_SORT(p[10], p[18]) ;
	PIX_SORT(p[12], p[20]) ;
	PIX_SORT(p[10], p[20]) ;
	PIX_SORT(p[10], p[12]) ;

	return (p[12]);
}



#undef PIX_SORT
#undef PIX_SWAP
#undef SWAP

