//code to calculate the firing rate at any given time using
//convolution with a polynomial.

#define FR_LEN 512 //must be a power of 2.
//with lags, need up to a second of firing times.
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
	unsigned int	m_w; //write to here.
	unsigned int	m_l; //last valid timestamp (within 1 second). 
	double 	m_duration; 
	unsigned int m_lags; 
	double	m_xfade; 
	double	m_a;
	double	m_integral;
public:
	FiringRate(){
		m_w = 0;
		set_a(0.001);
		m_duration = 1.0; 
		m_lags = 10; 
		m_xfade = 0.2; //fractional cross-fade between bins (trapezoidal bins). 
		for(int i=0; i<FR_LEN; i++)
			m_ts[i] = 1e-10; 
	}
	~FiringRate(){
		//nothing allocated.
	}
	void set_a(double a_req){
		m_a = a_req;
		m_integral = 3.1415926/(4*sqrt(m_a));
	}
	void set_bin_params(unsigned int lags, double duration){
		m_lags = lags; m_duration = duration; 
	}
	void add(double time){ //time is in seconds.
		m_ts[m_w & (FR_LEN-1)] = time;
		m_w++;
	}
	void update_ml(double time, unsigned int w){
		while(m_l < w && (time - m_ts[m_l & (FR_LEN-1)]) > m_duration)
			m_l++;
	}
	unsigned short get_rate(double time){ //time is the current time.
		unsigned int w = m_w; //atomic.
		update_ml(time, w); 
		double y = 0.0;
		for(unsigned int i=m_l; i<w; i++){
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
	void get_bins(double time, unsigned short* out){
		int w = m_w - 1; //atomic.
		double lw = m_duration / (double)m_lags; 
		//lags go from most recent to least recent.
		double t = 0; 
		double xf = lw*m_xfade; 
		for(int l=0; l<m_lags; l++) out[l] = 0; 
		for(int l=0; l<m_lags; l++){
			double lag = (l+1) * lw; 
			t = time - m_ts[w & (FR_LEN-1)];
			while(w >= 0 && t-lag-xf < 0){
				double lerp = (-1.0/(2*m_xfade*lw))*(t-lag)+0.5; 
				lerp = lerp > 1.0 ? 1.0 : lerp; 
				out[l] += (unsigned short)round(lerp * 128.0); 
				if(l<m_lags-1) out[l+1] += (unsigned short)round((1-lerp)*128.0); 
				w--;  t = time - m_ts[w & (FR_LEN-1)];
			}
		}
	}
	void get_bins_test(){ //matt was complaining that nobody does unit tests.  so here.
		//spikes must be added temporal order!
		add(1-0.4); //0.5 bin[3] 0.5 bin[4] 
		add(1-0.35); //bin[3]
		add(1-0.2);  //0.5 bin[1] 0.5 bin[2]
		add(1-0.05); //bin [0]
		unsigned short bins[10]; 
		get_bins(1.0, bins); 
		for(int i=0; i<10; i++)
			printf("%f ", bins[i]/128.0); 
		printf("\n"); 
		printf("should be: 1 0.5 0.5 1.5 0.5 0 0 0 0 0]\n"); 
	}
};