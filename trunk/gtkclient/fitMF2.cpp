#include <stdio.h>
#include <math.h>
// Includes for plplot
#include <plstream.h>
#include<iostream>

// compile with:
// gcc -g fitMF.cpp -lgsl -lgslcblas `pkg-config --cflags --libs plplotd-c++`


// file for calculating the best matched filter -- in C.
// translation from matlab.
// first need to emulate blackfin fixed-point fitering.

int g_ss[48]; //spikeshape.
int g_f[64];

void filter(int* b, int* a, int* out){
	//two cascaded biquads, coefficients specified in b (numerator, 6) and a (denom, 4).
	// coeficients should be base 16384 = 1, just as on the BF.
	long long c = 0;
	int x01, x02, x11, x12;
	int y01, y02, y11, y12;
	int x00 = 16384; //impulse input --
	int y00, y10;
	x01 = x02 = x11 = x12 = y01 = y02 = y11 = y12 = 0;
	// we want to match the fiter impulse response to the spikeshape.
	for(int i=0; i<64; i++){
		c = x00 * b[0];
		c+= x01 * b[1];
		c+= x02 * b[2];
		c+= y01 * a[0];
		c+= y02 * a[1];
		y00 = (int)(c >> 14); // equivalent to s2rnd.
		//do delays.
		x02 = x01;
		x01 = x00;
		y02 = y01;
		y01 = y00;
		//second biquad.
		c = y00 * b[3];
		c+= x11 * b[4];
		c+= x12 * b[5];
		c+= y11 * a[2];
		c+= y12 * a[3];
		y10 = (int)(c >> 14); // equivalent to s2rnd.
		//do delays.
		x12 = x11;
		x11 = y00;
		y12 = y11;
		y11 = y10;
		out[i] = y10;
		//reset pulse
		x00 = 0;
	}
}

#define clamp(A,B,C) (A < B ? B : (A > C ? C : A))

float match_spikeshape(float *x, void* params){
	/* format of parameter vector: 2 denominator zeros,
	 (real imaginary real imaginary)
	 constrained to be within the unit circle.
	 	(each biquad can implement one conjugate pair in the denominator)
	 numerator directly encodes b coefficients, 6 of them.
	 followed by offset.

	 seems like for a 4th order filter (which is what we're using),
	 you actually only need 5 parameters for the numerator -- the product of
	 (ax^2 + bx + c)*(dx^2 + ex + f) =
	 adx^4 + (ae + bd)x^3 + (af + be + cd)x^2 + (bf + ce)x + cf
	 which is only 5 terms.
	 I think I'll just leave it in expanded form.
	 http://linux.math.tifr.res.in/manuals/html/gsl-ref-html/gsl-ref_6.html
	 can also use GSL for the minimization steps.
	 http://www.gnu.org/software/gsl/manual/html_node/Multimin-Examples.html

	 now .. what format to use? I guess keep everything floating point.
	 the demonimator needs to be floating point, which can easily be converted to
	 fixed-point.
	 */
	int a[4];
	//limit the denominator to be within the unit circle.
	for(int i=0; i<4; i+=2){
		float len = sqrt(x[i+0]*x[i+0] + x[i+1]*x[i+1]);
		if(len >= 1.0){
			x[i+0] /= len *1.0002;
			x[i+1] /= len *1.0002;
		}
	}

	//determine denominator coef.
	// if the roots are (a + bi) and (a - bi),
	// then the eq is x^2 - 2ax + (a^2 + b^2) = 0.
	a[0] = (int)(16384.f * 2.f * x[0]);
	a[1] = (int)(-16384.f * (x[0]*x[0] + x[1]*x[1]));
	a[2] = (int)(16384.f * 2.f * x[2]);
	a[3] = (int)(-16384.f * (x[2]*x[2] + x[3]*x[3]));
	int b[6];
	for(int i=0; i<6; i++){
		b[i] = (int)(x[4+i] * 16384.f);
	}
	//restrict the coeficients to lie within -2^15 .. 2^15-1.
	for(int i=0; i<4; i++){
		a[i] = clamp(a[i], -32768, 32767);
	}
	for(int i=0; i<6; i++){
		b[i] = clamp(b[i], -32768, 32767);
	}
	filter(b, a, g_f);
	//measure the MSE. (to be minimized).
	float mse = 0.f;
	int off = (int)(x[10]);
	off = clamp(off, 0, 10);
	int* ss = (int*)params; //spike shape, the real parameters.
	for(int i=0; i<48; i++){
		float d = g_f[off + i] - ss[i];
		d /= 16384.0; //keep things from blowing up.
		mse += d*d;
	}
	return mse;
}

int plotmatch (int* s, int * h, int n)
{
	PLFLT xmin =0, ymin=-32768, xmax=47, ymax=32768;
	PLINT just=0, axis=0;
	plstream *pls;

	// plplot initialization

	pls = new plstream();  // declare plplot object

	//plsdev("wxwidgets"); // sets the plot device to WX Widget which
						// allows for viewing and saving the plot to a file
						// Note that saving postscript from within widgets is buggy.
						// other useful values in place of wxwidgets:
						// xwin - X-window display to screen
						// ps - postscript file
						// psc - color postscript file
						// Or just comment out line to get a list of choices
	//plsdev("ps");
	plsdev("svg"); //cairo uses the same color scheme as on screen - black on
								//red on black default
	char str[128];
	snprintf(str, 128, "mf%d.svg", n);
	plsfnam(str);// sets the names of the output file

	// Parse and process command line arguments.
	//pls->parseopts( &argc, argv, PL_PARSE_FULL ); // device and other options
						// can be set from the command-line:
						// -dev devname        sets the output device to "devname"
						// -o output_file      sets the output file name to output_file                // -h                  gives a list of all possible options


	pls->init();           // start plplot object
	pls->env(xmin, xmax, ymin, ymax, just, axis );
		//Setup window size
		// - just=0 sets axis so they scale indepedently
		// - axis=0 draw axis box, ticks, and numeric labels
		//   see "man plenv" for details
	pls->lab( "(x)", "(y)", "PlPlot example title");

	PLFLT x[48],ss[48],hh[48];
	for(int i=0; i<48; i++){
		x[i] = i;
		ss[i] = (PLFLT)s[i];
		hh[i] = (PLFLT)h[i];
	}
	pls->line(48, x, ss);
	pls->col0(3); //green.
	pls->line(48, x, hh);

	delete pls; // close plot

	return 0;
}

float g_normal;
bool g_normal_ok = false;

float uniform(){
	return (float)(rand()) / (float)RAND_MAX ;
}
float normal(){
	if(g_normal_ok){
		g_normal_ok = false;
		return g_normal;
	}else{
		//generate two normals via box-muller transform.
		float s = 3.0;
		float v1,v2;
		while(s >= 1.0){ //get a vector within the unit circle?
			float u1 = uniform();
			float u2 = uniform();
			v1 = 2*u1 - 1;
			v2 = 2*u2 - 1;
			s = v1*v1 + v2*v2;
		}
		float x = sqrt(-2*log(s)/s)*v1;
		float y = sqrt(-2*log(s)/s)*v2;
		g_normal_ok = true;
		g_normal = x;
		return y;
	}
}
#define NSOL 64

float g_solutions[NSOL][12]; //keep around the top 16 solutions found so far (?)
// last index is the value.

int main(void){
	//setup the spike shape.
	float spikeshape[32] = {1.5457,1.9232,2.1639,2.8021,5.2088,9.5837,8.3667,-15.2952,-65.9034,-110.7464,-123.2559,-102.1531,-41.9247,41.4448,108.6987,127.8526,122.7375,115.7513,103.3645,87.4556,68.8197,49.9576,33.1681,18.9129,6.3786,-4.967,-14.9929,-23.4813,-30.5448,-24.0000,-12.0000,0};
	for(int i=0; i<32; i++){
		g_ss[i] = (int)round(spikeshape[i]*256);
	}
	for(int i=32; i<48; i++){
		g_ss[i] = 0.f;
	}
	float par[11] = {0.8926,-0.3089,0.7180,-0.5615,\
	-0.1738,0.4264,-0.3924,-0.8734,0.4760,1.7370,0.3866};
	float std[11];
	for(int i=0; i<10; i++){
		std[i] = 0.5;
	}
	std[10] = 3;

	//gsl minimization does not seem to work;
	//try simulated anealing or particle filtering?
	for(int i=0; i<NSOL; i++){
		for(int j=0; j<11; j++){
			g_solutions[i][j] = par[j];
		}
		g_solutions[i][11] = 1e9;
	}
	float worst = 1e12;
	int wi = 0;
	int nn = 0;
	for(int i=0; i<10000000; i++){
		//select one of the 'best' solutions.
		//really need to weight this though -- with many possible solutions,
		//we get distracted. weight by difference from best?
		int indx = rand() % NSOL;
		for(int j=0; j<11; j++){
			par[j] = g_solutions[indx][j] + normal()*std[j];
		}
		par[10] = fabs(par[10]);
		float mse = match_spikeshape(par, g_ss);
		//replace the worst element

		if(mse < worst ){
			for(int j=0; j<11; j++)
				g_solutions[wi][j] = par[j];
			g_solutions[wi][11] = mse;
			//shrink solutions.
			if(nn > NSOL*5){
				for(int j=0; j<11; j++){
					std[j] *= (1 - (1.0/(8.0*NSOL))); //8.0 for N = 64 optimal.
				}
				//print.
				if(1){
					for(int j=0; j<11; j++){
						printf("%.4f ", par[j]);
					}
					printf("mse = %.3f, std = %.4f\n", mse, std[0]);
				}
				//only update the worst if we've added something.
				worst = 0;
				for(int j=0; j<NSOL; j++){
					if(g_solutions[j][11] > worst){
						worst = g_solutions[j][11];
						wi = j;
					}
				}
			}
			nn++;
		}
	}
	//print out everything.
	printf("g_solutions:\n");
	for(int i=0; i<NSOL; i++){
		printf("[ %d ] ", i);
		for(int j=0; j<11; j++){
			printf("%.4f ", g_solutions[i][j]);
		}
		printf("mse = %.3f\n", g_solutions[i][11]);
		fflush(stdout);
	}
	//select the best one.
	float min = 1e6;
	int mi = 0;
	for(int i=0; i<NSOL; i++){
		if(g_solutions[i][11] < min){
			mi = i;
			min = g_solutions[i][11];
		}
	}
	printf("best:\n");
	printf("[ %d ] ", mi);
	for(int j=0; j<11; j++){
		printf("%.4f ", g_solutions[mi][j]);
	}
	printf("mse = %.3f\n", g_solutions[mi][11]);
	fflush(stdout);
	for(int i=0; i<NSOL; i++){
		match_spikeshape(g_solutions[i], g_ss);
		//shift g_f as per offset.
		int off = (int)g_solutions[i][10];
		for(int m=0; m<31; m++){
			g_f[m] = g_f[m+off];
		}
		plotmatch(g_ss, g_f, i);
	}
	return 0;
}