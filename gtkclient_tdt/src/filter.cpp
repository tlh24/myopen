#include <math.h>
#include "filter.h"

// eventually should make them variable, ala:
// http://www-ccrma.stanford.edu/~jos/filters/Butterworth_Lowpass_Poles_Zeros.html
// or
// http://www.phon.ucl.ac.uk/courses/spsci/dsp/filter.html

using namespace std;

Filter::Filter()
{
}

Filter::~Filter()
{
	B.clear();
	A.clear();
	d.clear();
}

void Filter::Proc(float *in, float *out, u32 kpoints)
{
	// Direct Form II Transposed filter.
	// see the matlab help.
	for (u32 i=0; i<kpoints; i++) {
		double x = in[i];
		double y = (d[0] + B[0]*x);
		out[i] = (float)(y);
		u32 j;
		for (j=0; j<B.size()-2; j++) {
			d[j] = d[j+1] + B[j+1]*x - A[j+1]*y;
			if (isnan(d[j]) || !isfinite(d[j]))
				d[j] = 0;
		}
		d[j] = B[j+1]*x - A[j+1]*y; // last delay has no delays before it.
		if (isnan(d[j]) || !isfinite(d[j]))
			d[j] = 0;
	}
}

// 4th-order Butterworth bandpass
// 300 Hz to 3000 Hz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
Wn = [300 3000] * 2 / sr;
[B,A] = butter(n/2, Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_24k_300_3000::FilterButterBand_24k_300_3000()
{
	B.push_back(7.980142011325120e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-1.596028402265024e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(7.980142011325120e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-2.962985985422413e+00);
	A.push_back(3.343529346636551e+00);
	A.push_back(-1.754916733002277e+00);
	A.push_back(3.766990822219589e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}




// 4th-order Butterworth bandpass
// 300 Hz to 5000 Hz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
Wn = [300 5000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_24k_300_5000::FilterButterBand_24k_300_5000()
{
	B.push_back(1.945845265269372e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(-3.891690530538743e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(1.945845265269372e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-2.288878682068155e+00);
	A.push_back(1.876312692632475e+00);
	A.push_back(-7.860193211575039e-01);
	A.push_back(2.037477522664089e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 4th-order Butterworth bandpass
// 500 Hz to 3000 Hz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
Wn = [500 3000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_24k_500_3000::FilterButterBand_24k_500_3000()
{
	B.push_back(7.019288884370775e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-1.403857776874155e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(7.019288884370775e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-2.964109741329699e+00);
	A.push_back(3.399899301982100e+00);
	A.push_back(-1.833496984438643e+00);
	A.push_back(4.042913923177344e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}


// 4th-order Butterworth bandpass
// 500 Hz to 5000 Hz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
Wn = [500 5000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_24k_500_5000::FilterButterBand_24k_500_5000()
{
	B.push_back(1.817437373698117e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(-3.634874747396234e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(1.817437373698117e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-2.257597497976864e+00);
	A.push_back(1.888353169572497e+00);
	A.push_back(-8.300890337275101e-01);
	A.push_back(2.137802273649247e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 4th-order Butterworth bandpass
// 300 Hz to 3000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
Wn = [300 3000] * 2 / sr;
[B,A] = butter(n/2, Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_48k_300_3000::FilterButterBand_48k_300_3000()
{
	B.push_back(2.407831141866356e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-4.815662283732711e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(2.407831141866356e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-3.489171356605181e+00);
	A.push_back(4.596268806387709e+00);
	A.push_back(-2.718834913978086e+00);
	A.push_back(6.119142234464546e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 4th-order Butterworth bandpass
// 300 Hz to 5000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
Wn = [300 5000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_48k_300_5000::FilterButterBand_48k_300_5000()
{
	B.push_back(6.325743528801947e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-1.265148705760389e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(6.325743528801947e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-3.132874105110674e+00);
	A.push_back(3.707314974017143e+00);
	A.push_back(-2.000492567522976e+00);
	A.push_back(4.264766788841259e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 4th-order Butterworth bandpass
// 500 Hz to 3000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
Wn = [500 3000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_48k_500_3000::FilterButterBand_48k_500_3000()
{
	B.push_back(2.096338286120706e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-4.192676572241413e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(2.096338286120706e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-3.506316855705519e+00);
	A.push_back(4.656826478135855e+00);
	A.push_back(-2.784569962264977e+00);
	A.push_back(6.345581252925552e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 4th-order Butterworth bandpass
// 500 Hz to 5000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
Wn = [500 5000] * 2 / sr;
[B,A] = butter(n/2,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterBand_48k_500_5000::FilterButterBand_48k_500_5000()
{
	B.push_back(5.876966400429181e-02);
	B.push_back(0.000000000000000e+00);
	B.push_back(-1.175393280085836e-01);
	B.push_back(0.000000000000000e+00);
	B.push_back(5.876966400429181e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-3.138870161443355e+00);
	A.push_back(3.744626154668228e+00);
	A.push_back(-2.046571462396309e+00);
	A.push_back(4.420085600892946e-01);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth lowpass
// 3000 Hz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
Wn = [3000] * 2 / sr;
[B,A] = butter(n,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterLow_24k_3000::FilterButterLow_24k_3000()
{
	B.push_back(9.493676409363708e-02);
	B.push_back(1.898735281872742e-01);
	B.push_back(9.493676409363708e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-9.595724429334236e-01);
	A.push_back(3.393194993079719e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth lowpass
// 5000 Hz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
Wn = [5000] * 2 / sr;
[B,A] = butter(n,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterLow_24k_5000::FilterButterLow_24k_5000()
{
	B.push_back(2.143823578956666e-01);
	B.push_back(4.287647157913333e-01);
	B.push_back(2.143823578956666e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-3.338106676530923e-01);
	A.push_back(1.913400992357589e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth lowpass
// 3000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
Wn = [3000] * 2 / sr;
[B,A] = butter(n,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterLow_48k_3000::FilterButterLow_48k_3000()
{
	B.push_back(2.905933046935266e-02);
	B.push_back(5.811866093870532e-02);
	B.push_back(2.905933046935266e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.463240696192855e+00);
	A.push_back(5.794780180702659e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth lowpass
// 5000 Hz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
Wn = [5000] * 2 / sr;
[B,A] = butter(n,Wn);
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterLow_48k_5000::FilterButterLow_48k_5000()
{
	B.push_back(7.019288884370953e-02);
	B.push_back(1.403857776874191e-01);
	B.push_back(7.019288884370953e-02);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.123519836942896e+00);
	A.push_back(4.042913923177339e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth highpass
// 300 Hz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
Wn = [300] * 2 / sr;
[B,A] = butter(n,Wn,'high');
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterHigh_24k_300::FilterButterHigh_24k_300()
{
	B.push_back(9.468683535874048e-01);
	B.push_back(-1.893736707174810e+00);
	B.push_back(9.468683535874048e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.890911740214715e+00);
	A.push_back(8.965616741349042e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth highpass
// 500 Hz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
Wn = [500] * 2 / sr;
[B,A] = butter(n,Wn,'high');
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterHigh_24k_500::FilterButterHigh_24k_500()
{
	B.push_back(9.130193251118750e-01);
	B.push_back(-1.826038650223750e+00);
	B.push_back(9.130193251118750e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.818458648312513e+00);
	A.push_back(8.336186521349873e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth highpass
// 300 Hz @ 48.828125 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
Wn = [300] * 2 / sr;
[B,A] = butter(n,Wn,'high');
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterHigh_48k_300::FilterButterHigh_48k_300()
{
	B.push_back(9.730720592567442e-01);
	B.push_back(-1.946144118513488e+00);
	B.push_back(9.730720592567442e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.945418873025562e+00);
	A.push_back(9.468693640014152e-01);
	d.push_back(0);
	d.push_back(0);
}



// 2nd-order Butterworth highpass
// 500 Hz @ 48.828125 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
Wn = [500] * 2 / sr;
[B,A] = butter(n,Wn,'high');
sprintf('B.push_back(%0.15e);\n',B)
sprintf('A.push_back(%0.15e);\n',A)
sprintf('d.push_back(%d);\n', zeros(n,1))
*/
FilterButterHigh_48k_500::FilterButterHigh_48k_500()
{
	B.push_back(9.555237705303598e-01);
	B.push_back(-1.911047541060720e+00);
	B.push_back(9.555237705303598e-01);
	A.push_back(1.000000000000000e+00);
	A.push_back(-1.909068426849618e+00);
	A.push_back(9.130266552718208e-01);
	d.push_back(0);
	d.push_back(0);
}
