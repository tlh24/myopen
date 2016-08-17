//code to calculate the firing rate at any given time using
//convolution with a polynomial.

#define FR_LEN 2048 //must be a power of 2.
//with lags, need up to a second of firing times.
class FiringRate
{
private:
	//question: should we do linked list of times
	// or tight inner product?
	// inner product would need to do 1000 multiplies*# of neurons.
	// that's pretty expensive.
	// in comparison, linked list of times / circular buffer of times
	// would only do computation on say 100 spikes.
	//circular buffers sounds better.
	double	m_ts[FR_LEN];
	unsigned int	m_w; //write to here.
	unsigned int	m_l; //last valid timestamp; start reading from here.
	double 	m_duration;
	int 		m_lags;
	double	m_xfade;
	double	m_a;
	double	m_integral;
public:
	FiringRate()
	{
		m_w = m_l = 0;
		set_a(0.001);
		m_duration = 1.0;
		m_lags = 10;
		m_xfade = 0.3; //fractional cross-fade between bins (trapezoidal bins).
		for (int i=0; i<FR_LEN; i++)
			m_ts[i] = -1e10;
	}
	~FiringRate()
	{
		//nothing allocated.
	}
	void set_a(double a_req)
	{
		m_a = a_req;
		m_integral = 3.1415926/(4*sqrt(m_a));
	}
	void set_bin_params(unsigned int lags, double duration)
	{
		m_lags = lags;
		m_duration = duration;
	}
	int get_lags()
	{
		return m_lags;
	}
	double get_duration()
	{
		return m_duration;
	}
	void add(double time)   //time is in seconds.
	{
		m_ts[m_w & (FR_LEN-1)] = time;
		m_w++;
	}
	void update_ml(double time, unsigned int w)
	{
		while (m_l < w && (time - m_ts[m_l & (FR_LEN-1)]) > m_duration)
			m_l++;
	}
	unsigned short get_rate(double time)   //time is the current time.
	{
		unsigned int w = m_w; //atomic.
		update_ml(time, w);
		double y = 0.0;
		for (unsigned int i=m_l; i<w; i++) {
			double t = time - m_ts[i & (FR_LEN-1)];
			if (t > 0) //threading issue..
				y += t/(t*t*t*t + m_a);
		}
		y /= m_integral;
		unsigned short s = MIN((unsigned short)(y * 128.f), 0xffff);
		//don't let it wrap.
		//return a short as that's really all the resolution we need..
		//and we don't need to burn so much bandwidth sending doubles or floats.
		return s;
	}
	/** bmi3  / skunkape interface **/
	unsigned short get_count(double starttime, double endtime)
	{
		//gets count of spikes in time range (starttime, endtime]
		m_l=m_w;//this will mark all spikes "read", this affects get_coutn_since
		unsigned short count=0;
		for (unsigned int i=0; i<FR_LEN; i++) {
			if (m_ts[i] > starttime && m_ts[i]<=endtime)
				count++;
		}
		return count;
	}
	unsigned short get_count_since()
	{
		//gets count of spikes since last check
		//by doing math on m_w and m_l, which is fast
		unsigned int local_ml=m_l;
		unsigned int local_mw=m_w;
		m_l=m_w;
		if (local_ml<=local_mw) return (local_mw-local_ml); //simple case
		//wrap around  case
		// (local_mr>local_mw)
		return ((FR_LEN-local_ml ) + local_mw);
	}
	/** lagged bin interface (bmi5 & matlab) **/
	void get_bins(double time, unsigned short *out)
	{
		int w = m_w - 1; //atomic.
		int i = 0;
		double lw = m_duration / (double)m_lags;
		//lags go from most recent to least recent.
		double t = 0;
		double xf = lw*m_xfade;
		time -= xf/2; //delay everything by xf/2, so all bins are equal.
		for (int l=0; l<m_lags; l++) out[l] = 0;
		while (w > 0 && i < FR_LEN && t < xf/-2.0) {
			w--;
			i++;
			t = time - m_ts[w & (FR_LEN-1)];
		}
		for (int l=0; l<m_lags+1; l++) {
			double lag = l * lw;
			t = time - m_ts[w & (FR_LEN-1)];
			while (w >= 0 && i < FR_LEN && t < lag + lw - xf/2) {
				double lerp = 0.5 + (t-lag)/xf;
				lerp = lerp > 1.0 ? 1.0 : lerp;
				lerp = lerp < 0.0 ? 0.0 : lerp;
				if (l>0) out[l-1] += (unsigned short)round((1-lerp) * 128.0);
				if (l<m_lags) out[l] += (unsigned short)round(lerp * 128.0);
				w--;
				i++;
				t = time - m_ts[w & (FR_LEN-1)];
			}
		}
	}
	void get_bins_test()   //matt was complaining that nobody does unit tests.  so here.
	{
		//spikes must be added temporal order!
		add(1-0.4); //0.5 bin[3] 0.5 bin[4]
		add(1-0.35); //bin[3]
		add(1-0.2);  //0.5 bin[1] 0.5 bin[2]
		add(1-0.05); //bin [0]
		unsigned short *bins;
		bins = (unsigned short *)malloc(m_lags * sizeof(unsigned short));
		//adjust start to compensate for trapezoidal first bin.
		double xfdelay = (m_duration * m_xfade) / (2.0 * m_lags);
		get_bins(1.0 + xfdelay, bins);
		printf("test vals: ");
		for (int i=0; i<m_lags; i++)
			printf("%0.1f ", bins[i]/128.0);
		printf("\n");
		printf("should be: 1.0 0.5 0.5 1.5 0.5 0.0 0.0 0.0 0.0 0.0\n");
		free(bins);
	}
};
