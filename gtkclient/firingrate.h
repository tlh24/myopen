//code to calculate the firing rate at any given time using
//convolution with a polynomial.

#define FR_LEN 256
class FiringRate{
private:
	//question: should we do linked list of times
	// or tight inner product?
	// inner product would need to do 1000 multiplies*# of neurons.
	// that's pretty expensive.
	// in comparison, linked list of times / circular buffer of times
	// would only do computation on say 100 spikes.
	//circular buffers sounds better.
	double	m_ts[FR_LEN]; //max firing rate 128 hz. before the estimate starts to degrade.
	unsigned int	m_w; //next timestamp to be added.
	unsigned int	m_r; //last valid timestamp; start reading from here.
	double	m_a;
	double	m_integral;
public:
	FiringRate(){
		m_w = m_r = 0;
		set_a(0.001);
	}
	~FiringRate(){
		//nothing allocated.
	}
	void set_a(double a_req){
		m_a = a_req;
		m_integral = 3.1415926/(4*sqrt(m_a));
	}
	void add(double time){
		//time is in seconds.
		m_ts[m_w & (FR_LEN-1)] = time;
		m_w++;
	}
	unsigned short get_rate(double time){
		//time is the current time.
		if(m_r==m_w) return 0.0;
		unsigned int w = m_w; //atomic. we do not modify here - just m_r.
		if((w - m_r) >= FR_LEN)
			m_r = w - FR_LEN;
		double y = 0.0;
		while(m_r < w && (time - m_ts[m_r & (FR_LEN-1)]) > 4.0)
			m_r++;
		for(unsigned int i=m_r; i<w; i++){
			double t = time - m_ts[i & (FR_LEN-1)];
			if(t > 0) //threading issue..
				y += t/(t*t*t*t + m_a);
		}
		y /= m_integral;
		unsigned short s = MIN((unsigned short)(y * 128.f), 0xffff);
				//don't let it wrap.
		//return a short as that's really all the resolution we need..
		//and we don't need to burn so much bandwidth sending doubles or floats.
		return s;
	}
};