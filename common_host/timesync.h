#ifndef __TIMESYNC_H__
#define __TIMESYNC_H__

#define TIMESYNC_MMAP	"/tmp/timesync.mmap"

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
	unsigned int magic; 
	long double startTime; //subtract from CLOCK_MONOTONIC_RAW. 
	long double timeOffset; 
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
	int 			m_ticks; 
	int			m_dropped; 
	//updated periodically to prevent precision issues.
	
	GainController* slopeGC; 
	GainController* offsetGC; 
	
	TimeSync(){
		m_slope = 24414.0625; 
		m_offset = 0.0; 
		m_timeOffset = 0.0; 
		slopeGC = new GainController(3e-5); 
		offsetGC = new GainController(1e-4); 
		mmh = new mmapHelp(2*sizeof(syncSharedData), TIMESYNC_MMAP); 
		m_ssd = (syncSharedData*)mmh->m_addr; 
		if(m_ssd){
			m_ssd[0].magic = m_ssd[1].magic = 0x134fbab3; 
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
	std::string getInfo(){
		std::stringstream oss; 
		long double off = m_offset - m_slope * m_timeOffset; 
		double t = (double)gettime(); 
		double hours = floor(t / 3600.0); 
		double minutes = floor((t - hours * 3600.0)/60.0); 
		double seconds = t - hours*3600.0 - minutes*60.0; 
		char buf[256]; 
		snprintf(buf, 256, "%02d:%02d:%2.2f", (int)hours, (int)minutes, seconds); 
		oss << "time "<< buf << std::endl; 
		oss << "ticks "<< m_ticks <<" dropped "<< m_dropped << std::endl; 
		oss << "sync offset:"<< off << " (ticks)"<< std::endl; 
		oss << " slope:"<< m_slope << " (ticks/s)"<< std::endl; 
		oss << " update:"<< m_update;
		return oss.str(); 
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
			m_ssd[m_ssdn].startTime = g_startTime;
			m_ssd[m_ssdn].timeOffset = m_timeOffset; 
			m_ssd[m_ssdn].slope = m_slope; 
			m_ssd[m_ssdn].offset = m_offset; 
			m_ssd[m_ssdn].magic = 0x134fbab3; 
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
		mmh = new mmapHelp(2*sizeof(syncSharedData), TIMESYNC_MMAP);
		if(mmh->m_fd > 0){
			m_ssd = (syncSharedData*)mmh->m_addr; 
			m_ssd[0].magic = m_ssd[1].magic = 0; 
		} else
			printf("Error: could not open %s\n",TIMESYNC_MMAP); 
	}
	~TimeSyncClient(){
		delete mmh; 
	}
	double getTicks(){
		int n = 0; 
		if(m_ssd[n].valid == false) n++; 
		if(m_ssd[n].valid && m_ssd[n].magic == 0x134fbab3){
			g_startTime = m_ssd[n].startTime; //so the two programs are synced.
			long double time = gettime(); 
			return (time - m_ssd[n].timeOffset) * m_ssd[n].slope + m_ssd[n].offset; 
		} else return 0.0; 
		//time must be passed from gettime(); 
	}
	std::string getInfo(){
		std::stringstream oss; 
		double t = (double)gettime(); 
		double hours = floor(t / 3600.0); 
		double minutes = floor((t - hours * 3600.0)/60.0); 
		double seconds = t - hours*3600.0 - minutes*60.0; 
		char buf[256]; 
		snprintf(buf, 256, "%02d:%02d:%2.2f", (int)hours, (int)minutes, seconds); 
		oss << "time "<< buf << std::endl; 
		return oss.str(); 
	}
}; 
#endif