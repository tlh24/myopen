//simple timer class for general performance reporting.
#ifndef __PERFTIMER_H__
#define __PERFTIMER_H__

class PerfTimer
{
public:
	long double m_total;
	int			m_ncalls;
	long double m_lastStart;
	long double	m_lastCallTime;
	long double	m_smoothedCallTime;

	PerfTimer()
	{
		m_total = 0.0;
		m_ncalls = 0;
		m_lastStart = 0.0;
	}
	~PerfTimer() {}
	void enter()
	{
		m_lastStart = gettime();
	}
	void exit()
	{
		if (m_lastStart > 0.0) { //in case exit is called before enter.
			m_lastCallTime = gettime() - m_lastStart;
			m_total += m_lastCallTime;
			m_ncalls++;
		}
	}
	double totalTime()
	{
		return m_total;
	}
	double lastTime()
	{
		return m_lastCallTime;
	}
	double meanTime()
	{
		if (m_ncalls) return (m_total / (long double)m_ncalls);
		else return 0;
	}
	double smoothedCallTime()
	{
		m_smoothedCallTime *= 0.9;
		m_smoothedCallTime += 0.1 * m_lastCallTime;
		return m_smoothedCallTime;
	}
};

//keeps track of when vsyncs occur in order to predict the next one.
class VsyncTimer
{
public:
	long double		m_t[16]; //last 16 vsync times.
	int				m_ptr;

	VsyncTimer()
	{
		for (int i=0; i<16; i++)
			m_t[i] = 0.0;
	}
	~VsyncTimer() {}
	long double add(long double time)
	{
		m_t[m_ptr&15] = time;
		long double mean = time - m_t[(m_ptr+1)&15];
		mean /= 15.0; //mean intercall.
		//given this, average the expected time of the last 16 calls.
		long double avg = 0.0;
		for (int i=0; i<16; i++) {
			avg += m_t[(m_ptr+i)&15] + i*mean;
		}
		avg /= 16; //16 measurements.
		m_ptr++;
		long double ret = avg + mean;
		if (ret - time > 0.019) ret = time + 0.019;
		//printf("mean: %llf pred +%llf\n", mean, ret - time);
		return ret;
	}
};
#endif

