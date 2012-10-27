#ifndef __TIMESYNC_H__
#define __TIMESYNC_H__

class GainController{
public: 
	long double m_avg; 
	long double m_absavg; 
	long double m_alpha; 
	long double m_gain;
	long double m_gainIncr;
	long double m_gainDecr; 
	
	GainController(double initialGain){
		m_alpha = 0.95; 
		m_avg = 0.0; m_absavg = 1.0; 
		m_gain = initialGain; 
		m_gainIncr = initialGain / 1509.47;
		m_gainDecr = initialGain / 2896.12; 
	}
	~GainController(){}
 	void update(long double u){
		m_avg = m_alpha * m_avg + (1.0-m_alpha)*u;
		m_absavg = m_alpha * m_absavg + (1.0-m_alpha)*fabs(u); 
		if(m_absavg > 0.0){
			if(fabs(m_avg) / m_absavg > 0.3) m_gain += m_gainIncr; 
			else m_gain -= m_gainIncr; 
			if(m_gain < 0.0) m_gain *= -1.0; 
		}
	}
	void prinfo(){
		printf("gain controller: ratio %.4Lf, gain %.7Lf avg %.4Lf absavg %.4Lf\n", 
				fabs(m_avg) / m_absavg, m_gain, m_avg, m_absavg); 
	}
};
struct syncSharedData{
	long double startTime; //subtract from CLOCK_MONOTONIC. sum of g_startTime and m_timeOffset.
	long double slope; // e.g. 24414.0625
	long double offset; // ticks offset.
	bool valid; //here to preserve alignment.
};
class TimeSync{
	//take performance counter time, produce ticks. 
public:
	long double m_slope; 
	long double m_offset; 
	long double m_timeOffset; 
	long double m_update; 
	mmapHelp*	mmh; 
	syncSharedData* m_ssd; 
	int			m_ssdn; 
	//updated periodically to prevent precision issues.
	
	GainController* slopeGC; 
	GainController* offsetGC; 
	
	TimeSync(){
		m_slope = 24414.0625; 
		m_offset = 0.0; 
		m_timeOffset = 0.0; 
		slopeGC = new GainController(1.2e-3); 
		offsetGC = new GainController(3e-3); 
		mmh = new mmapHelp(2*sizeof(syncSharedData), "/home/tlh24/timeSync.mmap"); //in cwd
		m_ssd = (syncSharedData*)mmh->m_addr; 
		if(m_ssd){
			m_ssd[0].valid = false; 
			m_ssd[1].valid = false; 
		}
		m_ssdn = 0; 
	}
	~TimeSync(){
		delete slopeGC; 
		delete offsetGC; 
		delete mmh; 
	}
	void prinfo(){
		printf("sync offset %Lf slope %.4Lf update %.4Lf\n", 
					m_offset, m_slope, m_update); 	
		printf("offset "); offsetGC->prinfo();
		printf("slope "); slopeGC->prinfo(); 
	}
	void update(long double time, int ticks, int frame){
		long double pred = (time-m_timeOffset) * m_slope + m_offset; 
		m_update = ticks - pred; 
		m_offset += m_update * offsetGC->m_gain;
		offsetGC->update(m_update); 
		if(frame > 2000){
			m_slope += m_update * slopeGC->m_gain; 
			slopeGC->update(m_update); 
		}
		if(time - m_timeOffset > 10){
			m_offset += m_slope * (time - m_timeOffset); 
			m_timeOffset = time; 
		}
		//also update the mmaped data.
		if(m_ssd){
			m_ssd[m_ssdn].valid = false; 
			m_ssd[m_ssdn].startTime = g_startTime + m_timeOffset; 
			m_ssd[m_ssdn].slope = m_slope; 
			m_ssd[m_ssdn].offset = m_offset; 
			m_ssd[m_ssdn].valid = true;
			m_ssdn ^= 1; 
		}
	}
	double getTicks(long double time){ //estimated ticks, of course.
		return (time - m_timeOffset) * m_slope + m_offset;
	}
}; 
class TimeSyncClient {
public:
	mmapHelp*	mmh; 
	syncSharedData* m_ssd; 
	
	TimeSyncClient(){
		mmh = new mmapHelp(2*sizeof(syncSharedData), "/home/tlh24/timeSync.mmap", false);
		m_ssd = (syncSharedData*)mmh->m_addr; 
	}
	~TimeSyncClient(){
		delete m_ssd; 
	}
	double getTicks(){
		int n = 0; 
		if(m_ssd[n].valid == false) n++; 
		if(m_ssd[n].valid){
			long double time = gettime(); 
			return (time - m_ssd[n].startTime) * m_ssd[n].slope + m_ssd[n].offset; 
		} else return 0.0; 
		//time must be passed from gettime(); 
	}
}; 
#endif