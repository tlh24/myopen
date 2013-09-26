#ifndef __SPKWRITER_H__
#define __SPKWRITER_H__

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

enum PACKET_TYPE{
	STROBE,
	DATA,
	MESSAGE,
	SEND,
	NONE
	};
	

class spkpak{
public:
	//needs a bit more functionality than a struct
	unsigned int magic;
	unsigned int size;
	double rxtime;
	unsigned int radio; //radiochannel
	int thread;
	PACKET_TYPE packet_type;
	char* buffer; //fits strobe and sock
	
	spkpak(){	  
	}
	
	~spkpak(){
	  delete [] buffer;
	}
	
	spkpak(unsigned int word, unsigned int sz, char* buf, double time, 
			unsigned int rchan, int tid = 0){
		
		radio = rchan;
		thread = tid;
		buffer = new char[sz];
		//printf("sz:%d\n", sz);
		
		memcpy(buffer, buf, sz);
		size = sz;
		rxtime = time;
		
		if( word == 0x1eafbabe ){
			magic = word;
			packet_type = STROBE;
		}
		else if( word == 0xdecafbad){
			magic = word;
			packet_type = DATA;
		}
		else if ( word == 0xb00a5c11){
			magic = word;
			packet_type = MESSAGE;
		}
		else if ( word == 0xc0edfad0){
			magic = word;
			packet_type = SEND;
			}
	}
	
};
		
	
#define WFBUFSIZ ((1024+128+4)*512) //this is much larger than needed, but eh, insurance.
#define WFBUFMASK (WFBUFSIZ-1)

class SpkWriter {

private: 
	std::atomic<bool> m_enable; 
	std::atomic<long> m_w; //this is great!
public:
	long m_r;
	long m_bytes;
	spkpak m_d[WFBUFSIZ];
	FILE* m_fid; 
	
	SpkWriter(){
		m_w = m_r = 0; 
		m_enable = false; 
		m_fid = 0; 
	}
	~SpkWriter(){}
	
	FILE* open(char* name){
		m_fid = fopen(name, "w"); 
		if(m_fid == 0)
			std::cout << "could not open " << name << std::endl; 
		else
			m_enable = true; 
		return m_fid; 
	}
	
	void close(){
		if(m_enable){ 
			write(); 
			fclose(m_fid);
			m_enable = false; 
			m_w = m_r = 0; 
			m_bytes = 0;
		}
	}
	
	void add(spkpak * spk){ //non-blocking. call from client thread
		if(m_enable){
			long w = m_w++; //must be atomic. 
			memcpy(&(m_d[w & WFBUFMASK]), spk, sizeof(spkpak)); 
		}
	}

	int write(){ //call from another thread. 
		if(m_enable){
			long w = m_w; 
			for(; m_r<w; m_r++){
				spkpak* pak = &m_d[m_r & WFBUFMASK];
				if(pak->packet_type == STROBE){
					fwrite((void*)&pak->magic, 4, 1, m_fid); //fwrite is atomic in POSIX systems, still, sync
					
					fwrite((void*)&pak->size, 4, 1, m_fid);
					fwrite((void*)&pak->rxtime, 8, 1, m_fid);
					
					fwrite((void*)pak->buffer, 1, pak->size, m_fid); //write ALL the buffer
					
					m_bytes += 16 + pak->size;
				}
				else if(pak->packet_type == DATA || pak->packet_type == MESSAGE || pak->packet_type == SEND){
					fwrite((void*)&pak->magic, 4, 1, m_fid); //fwrite is atomic in POSIX systems, still, sync
					fwrite((void*)&pak->radio, 2, 1, m_fid);
					fwrite((void*)&pak->thread, 2, 1, m_fid);
					fwrite((void*)&pak->size, 4, 1, m_fid);
					fwrite((void*)&pak->rxtime, 8, 1, m_fid);
					
					fwrite((void*)pak->buffer, 1, pak->size, m_fid); //write ALL the buffer
					m_bytes +=  20 + pak->size;
				}
				else{
					//printf("unknown packet type\n");
				}
				
			}
			return 1; 
		}
		return 0; 
	}
	long bytes(){
		//return m_r * sizeof(spkpak);
		return m_bytes;
	}
	bool enable(){
		return m_enable.load();
		}
	//convert the file to matlab.
}; 
#endif

