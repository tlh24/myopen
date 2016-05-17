// ks: the kernel smoother
// for now i am just going to implement a gaussian kernel smoother
// but boxcars, triangles, etc are very easy

#define FR_LEN 1024 //must be a power of 2.

// base kernel smoother
class KernelSmoother
{
protected:
	double	m_ts[FR_LEN];
	unsigned int	m_w; // write to here. (what happens when wraps?)
public:
	KernelSmoother()
	{
		m_w = 0;
		for (int i=0; i<FR_LEN; i++) {
			m_ts[i] = -1e10;	// why?
		}
	}
	~KernelSmoother()
	{
		//nothing allocated.
	}
	void add(double time)   // n.b. time is in seconds.
	{
		m_ts[m_w & (FR_LEN-1)] = time;
		m_w++;
	}
};

class GaussianKernelSmoother : public KernelSmoother
{
public:
	double get_rate(double time, double sigma)
	{
		// time is the time to evaluate the rate (seconds)
		// sigma is the width of the gaussian kernel (seconds)
		// return a short as that's really all the resolution we need...

		double A =  1/(sqrt(2*3.1415926)*sigma);
		double B = -1/(2*sigma*sigma);

		double y = 0.0;
		for (int i=0 ; i < FR_LEN ; i++) {
			double t = time - m_ts[i];
			//if (t > 0) {
			y += A*exp(B*t*t);
			//}
		}
		unsigned short s = MIN((unsigned short)(y * 128.f), 0xffff);
		return s;
	}
};