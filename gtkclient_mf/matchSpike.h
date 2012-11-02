#ifndef __MATCHSPIKE_H__
#define __MATCHSPIKE_H__

#include <stdio.h>
#include <math.h>
// Includes for plplot
#include <plstream.h>
#include<iostream>

#define clamp(A,B,C) (A < B ? B : (A > C ? C : A))
#define NSOL 64

class matchSpike{
private:
	int m_f[64]; //filtered response.
	float m_solutions[NSOL][12]; //keep around the top solutions found so far (?)
							// last index is the MSE.
	float m_std[11]; // for simulated annealing.
	float m_normal;
	bool 	m_normal_ok;
public:
	int 	m_ss[48]; //spikeshape, local coordinates.
	int	m_ssFit[32]; //fit spike shape (IIR impulse response)
	int 	m_nn; // turn off annealing for the first pass.
					// if < 0, then annealing is disabled.
	int 	m_coefs[10]; //for external reading, in headstage order:
		// b0 b1 b2 a0 a1 b3 b4 b5 a2 a3
	int 	m_nsol;  //total # solutions arrived at so far..

matchSpike(){
	for(int i=0; i<48; i++){
		m_ss[i] = 0;
	}
	for(int i=0; i<64; i++){
		m_f[i] = 0;
	}
	for(int i=0; i<32; i++){
		m_ssFit[i] = 0;
	}
	m_nn = -1;
	m_normal_ok = false;
	m_nsol = 0;
}
~matchSpike(){
	//nothing allocated!
}

//normal generator (used elsewhere but w/e).

float uniform(){
	return (float)(rand()) / (float)RAND_MAX ;
}
float normal(){
	if(m_normal_ok){
		m_normal_ok = false;
		return m_normal;
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
		m_normal_ok = true;
		m_normal = x;
		return y;
	}
}

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

void filterCoefs(float* x, int* b, int* a){
	// first, limit the denominator to be within the unit circle.
	for(int i=0; i<4; i+=2){
		float len = sqrt(x[i+0]*x[i+0] + x[i+1]*x[i+1]);
		if(len >= 1.0){
			x[i+0] /= len * 1.0002;
			x[i+1] /= len * 1.0002;
		}
	}
	// now convert the pole/zero to poly coef.
	// if the roots are (a + bi) and (a - bi),
	// then the eq is x^2 - 2ax + (a^2 + b^2) = 0.
	a[0] = (int)(16384.f * 2.f * x[0]);
	a[1] = (int)(-16384.f * (x[0]*x[0] + x[1]*x[1]));
	a[2] = (int)(16384.f * 2.f * x[2]);
	a[3] = (int)(-16384.f * (x[2]*x[2] + x[3]*x[3]));

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
}

float filterMSE(float *x){
	/* calculate the MSE of the specificed filter specified in x.
	 format of parameter vector: 2 denominator zeros,
	 (real imaginary real imaginary)
	 constrained to be within the unit circle.
	 	(each biquad can implement one conjugate pair in the denominator)
	 numerator directly encodes b coefficients, 6 of them.
	 followed by offset.

	 seems like for a 4th order filter (which is what we're using),
	 you actually only need 5 parameters for the numerator -- the product of
	 (ax^2 + bx + c)*(dx^2 + ex + f) =0
	 now .. what format to use? I guess keep everything floating point.
	 the demonimator needs to be floating point, which can easily be converted to
	 fixed-point.
	 */
	int a[4];
	int b[6];
	filterCoefs(x, b, a);

	filter(b, a, m_f);
	//measure the MSE. (to be minimized).
	float mse = 0.f;
	int off = (int)(x[10]);
	off = clamp(off, 0, 10);
	for(int i=0; i<48; i++){
		float d = m_f[off + i] - m_ss[i];
		d /= 16384.0; //keep things from blowing up.
		mse += d*d;
	}
	return mse;
}

void init(float* ic, float* ss){
	//ic are initial conditions, null if you want to accept the defaults.
	//ss is the spike shape, range 1 mean 0, null to accept default.
	float par[11] = {0.8926,-0.3089,0.7180,-0.5615,\
	-0.1738,0.4264,-0.3924,-0.8734,0.4760,1.7370,0.3866};
	if(ic){
		for(int i=0; i<11; i++){
			par[i] = ic[i];
		}
	}
	float spikeshape[32] = {1.5457,1.9232,2.1639,2.8021,5.2088,9.5837,8.3667,-15.2952,-65.9034,-110.7464,-123.2559,-102.1531,-41.9247,41.4448,108.6987,127.8526,122.7375,115.7513,103.3645,87.4556,68.8197,49.9576,33.1681,18.9129,6.3786,-4.967,-14.9929,-23.4813,-30.5448,-24.0000,-12.0000,0};
	if(ss){
		for(int i=0; i<32; i++){
			m_ss[i] = (int)round(ss[i]*32768);
		}
	}else{
		for(int i=0; i<32; i++){
			m_ss[i] = (int)round(spikeshape[i]*256);
		}
	}

	for(int i=0; i<10; i++){
		m_std[i] = 1.f;
	}
	m_std[10] = 3;

	for(int i=0; i<NSOL; i++){
		for(int j=0; j<11; j++){
			m_solutions[i][j] = par[j];
		}
		m_solutions[i][11] = 1e9;
	}
	m_nn = 0;
}


void fit(int n){
	// match spikeShape using a two-biquad fixed-point IIR filter,
	// based on (possibly continuing) information in the class.
	// starting with par, iterating n times, with gstd standard deviation.
	// a and b are return parameters -- the actual filter parameters
	// to be written to the headstage.
	// new pass, keep track of the worst (local variable is fine).
	int wi = 0;
	float worst = 0;
	for(int j=0; j<NSOL; j++){
		if(m_solutions[j][11] > worst){
			worst = m_solutions[j][11];
			wi = j;
		}
	}
	float par[11];
	for(int i=0; i<n; i++){
		// select one of the 'best' solutions
		// we do not need to weight individual 'bests':
		// as we converge upon a good solution, this will come to dominate
		// the 'best' database.
		int indx = rand() % NSOL;
		//modulate the std by a sinusoid, pop between local minima.
		float scl = 0.001f + 0.499f*sinf(m_nn/25e4) + 0.5f;
		for(int j=0; j<11; j++){
			par[j] = m_solutions[indx][j] + 2.f*(uniform()-0.5f)*m_std[j]*scl;
		}
		par[10] = fabs(par[10]); //only positive shifts.
		float mse = filterMSE(par);
		//replace the worst element

		if(mse < worst){
			for(int j=0; j<11; j++)
				m_solutions[wi][j] = par[j];
			m_solutions[wi][11] = mse;
			//shrink solutions.
			if(m_nsol > NSOL*5){
				//print.
				if(1){
					for(int j=0; j<11; j++){
						printf("%.4f ", par[j]);
					}
					printf("mse = %.3f, std = %.4f\n", mse, m_std[0]);
				}
				//only update the worst if we've added something.
				worst = 0;
				for(int j=0; j<NSOL; j++){
					if(m_solutions[j][11] > worst){
						worst = m_solutions[j][11];
						wi = j;
					}
				}
			}
			m_nsol++;
		}
	}
	m_nn += n;
	//update the best coefs cache.
	//select the best, output the parameters.
	// b[6], a[4], arranged in biquads.
	int best = 0;
	float wm = 1e12;
	for(int i=0; i<NSOL; i++){
		if(m_solutions[i][11] < wm){
			wm = m_solutions[i][11];
			best = i;
		}
	}
	int b[6], a[4];
	filterCoefs(m_solutions[best], b, a);
	for(int i=0; i<2; i++){
		m_coefs[0+i*5] = b[0+i*3];
		m_coefs[1+i*5] = b[1+i*3];
		m_coefs[2+i*5] = b[2+i*3];
		m_coefs[3+i*5] = a[0+i*2];
		m_coefs[4+i*5] = a[1+i*2];
	}
	//also update the filter reseponse.
	filterMSE(m_solutions[best]); //this sets m_f.
	//shift m_f as per offset.
	int off = (int)m_solutions[best][10];
	for(int m=0; m<32; m++){
		m_ssFit[m] = m_f[m+off];
	}
}

int plotmatch (int* s, int * h, int n)
{
	//this plots the output as SVG files in the CWD.
	PLFLT xmin =0, ymin=-32768, xmax=47, ymax=32768;
	PLINT just=0, axis=0;
	plstream *pls;

	// plplot initialization

	pls = new plstream();  // declare plplot object

	plsdev("svg");

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
	pls->lab( "(x)", "(y)", "red = spike, green = matched filter.");

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

void plotAll(){
	//print out everything.
	printf("m_solutions:\n");
	for(int i=0; i<NSOL; i++){
		printf("[ %d ] ", i);
		for(int j=0; j<11; j++){
			printf("%.4f ", m_solutions[i][j]);
		}
		printf("mse = %.3f\n", m_solutions[i][11]);
		fflush(stdout);
	}
	//select the best one.
	float min = 1e6;
	int mi = 0;
	for(int i=0; i<NSOL; i++){
		if(m_solutions[i][11] < min){
			mi = i;
			min = m_solutions[i][11];
		}
	}
	printf("best:\n");
	printf("[ %d ] ", mi);
	for(int j=0; j<11; j++){
		printf("%.4f ", m_solutions[mi][j]);
	}
	printf("mse = %.3f\n", m_solutions[mi][11]);
	fflush(stdout);
	for(int i=0; i<NSOL; i++){
		filterMSE(m_solutions[i]); //this sets m_f.
		//shift m_f as per offset.
		int off = (int)m_solutions[i][10];
		for(int m=0; m<31; m++){
			m_f[m] = m_f[m+off];
		}
		plotmatch(m_ss, m_f, i);
	}
}

float getImpulse(int n, float* out){
	// get the impulse response of a given solution,
	// e.g. for user feedback in the GUI.
	// output is mean 0 range 1, length 32.
	filterMSE(m_solutions[n]); //this sets m_f.
	//shift m_f as per offset.
	int off = (int)m_solutions[n][10];
	for(int m=0; m<32; m++){
		out[m] = (float)(m_f[m+off]) / 32768.f;
	}
	//return the scaled mse, 0 (best) 1 (worst).
	float max, min;
	max = min = m_solutions[0][11];
	for(int i=0; i<NSOL; i++){
		float mse = m_solutions[i][11];
		if(mse < min) min = mse;
		if(mse > max) max = mse;
	}
	float mse = m_solutions[n][11];
	mse -= min;
	if(max - min < 1) max = min + 1;
	mse /= (max - min);
	return mse;
}

};
#endif
