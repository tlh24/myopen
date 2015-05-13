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

void Filter::Proc(float *in, float *out, unsigned int kpoints)
{
	// Direct Form II Transposed filter.
	// see the matlab help.
	double y;
	double x;
	for (unsigned int i=0; i<kpoints; i++) {
		x = in[i];
		y = (d[0] + B[0]*x);
		out[i] = (float)(y);
		unsigned int j;
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
// 300 Hz to 5 kHz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
hsr = sr/2; % half sample rate
Wn = [300/hsr 5000/hsr];
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
FilterButterBand_24k_300_5000::~FilterButterBand_24k_300_5000()
{
}



// 4th-order Butterworth bandpass
// 500 Hz to 3 kHz @ 24.4140625 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 24414.0625;
hsr = sr/2; % half sample rate
Wn = [500/hsr 3000/hsr];
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
FilterButterBand_24k_500_3000::~FilterButterBand_24k_500_3000()
{
}



// 4th-order Butterworth bandpass
// 300 Hz to 5 kHz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
hsr = sr/2; % half sample rate
Wn = [300/hsr 5000/hsr];
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
FilterButterBand_48k_300_5000::~FilterButterBand_48k_300_5000()
{
}



// 4th-order Butterworth bandpass
// 500 Hz to 3 kHz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 4; % filter order
sr = 48828.1250;
hsr = sr/2; % half sample rate
Wn = [500/hsr 3000/hsr];
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
FilterButterBand_48k_500_3000::~FilterButterBand_48k_500_3000()
{
}



// 2nd-order Butterworth lowpass
// 3 kHz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
hsr = sr/2; % half sample rate
Wn = [3000/hsr];
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
FilterButterLow_24k_3000::~FilterButterLow_24k_3000()
{
}



// 2nd-order Butterworth lowpass
// 5 kHz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
hsr = sr/2; % half sample rate
Wn = [5000/hsr];
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
FilterButterLow_24k_5000::~FilterButterLow_24k_5000()
{
}



// 2nd-order Butterworth lowpass
// 3 kHz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
hsr = sr/2; % half sample rate
Wn = [3000/hsr];
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
FilterButterLow_48k_3000::~FilterButterLow_48k_3000()
{
}




// 2nd-order Butterworth lowpass
// 5 kHz @ 48.8281250 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
hsr = sr/2; % half sample rate
Wn = [5000/hsr];
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
FilterButterLow_48k_5000::~FilterButterLow_48k_5000()
{
}



// 2nd-order Butterworth highpass
// 500 Hz @ 24.414 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 24414.0625;
hsr = sr/2; % half sample rate
Wn = [500/hsr];
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
FilterButterHigh_24k_500::~FilterButterHigh_24k_500()
{
}



// 2nd-order Butterworth highpass
// 500 Hz @ 48.828125 kHz
// Create with MATLAB like so:
/*
n = 2; % filter order
sr = 48828.1250;
hsr = sr/2; % half sample rate
Wn = [500/hsr];
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
FilterButterHigh_48k_500::~FilterButterHigh_48k_500()
{
}