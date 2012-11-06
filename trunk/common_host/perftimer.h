//simple timer class for general performance reporting. 
#ifndef __PERFTIMER_H__
#define __PERFTIMER_H__

class PerfTimer{
public:
	long double m_total; 
	int			m_ncalls; 
	long double m_lastStart; 
	long double	m_lastCallTime; 
	
	PerfTimer(){
		m_total = 0.0; 
		m_ncalls = 0; 
		m_lastStart = 0.0; 
	}
	~PerfTimer(){}
	void enter(){
		m_lastStart = gettime(); 
	}
	void exit(){
		if(m_lastStart > 0.0){ //in case exit is called before enter.
			m_lastCallTime = gettime() - m_lastStart; 
			m_total += m_lastCallTime; 
			m_ncalls++; 
		}
	}
	double totalTime(){
		return m_total; 
	}
	double lastTime(){
		return m_lastCallTime; 
	}
	double meanTime(){
		return (m_total / (long double)m_ncalls); 
	}
}; 

#endif