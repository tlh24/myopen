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
	unsigned int channel;
	int thread;
	PACKET_TYPE packet_type;
	char buffer[1024+128+4]; //fits strobe and sock
	
	spkpak(){}

	spkpak(unsigned int word, unsigned int sz, char* buf, double time, 
			unsigned int chan, int tid = 0){
		
		channel = chan;
		thread = tid;
		
		if( size <= 1024){
			memcpy(buffer, buf, sz);
			size = sz;
			rxtime = time;
		}
		else{
			size = 1024; //and hope it doesn't break
			memcpy(buffer, buf, size);
			rxtime = time;
		}
		
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
		else {
			magic = 0xfa11c0d3;
			packet_type = NONE;
			}
	}
	
};
		
	
#define WFBUFSIZ (1024*512) //this is much larger than needed, but eh, insurance.
#define WFBUFMASK (WFBUFSIZ-1)

class SpkWriter {

private: 
	std::atomic<bool> m_enable; 
public:
	std::atomic<long> m_w; //this is great!
	long m_r; 
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
					
					fwrite((void*)pak->buffer, pak->size, 1, m_fid); //write ALL the buffer
				}
				else if(pak->packet_type == DATA){
					//not sure if I can do fwrite(&m_d[m_r & WFBUFMASK], 24, 1, m_fid), then write the buffer to the appropriate size....
					fwrite((void*)&pak->magic, 4, 1, m_fid); //fwrite is atomic in POSIX systems, still, sync
					fwrite((void*)&pak->channel, 2, 1, m_fid);
					fwrite((void*)&pak->thread, 2, 1, m_fid);
					fwrite((void*)&pak->size, 4, 1, m_fid);
					fwrite((void*)&pak->rxtime, 8, 1, m_fid);
					
					fwrite((void*)pak->buffer, pak->size, 1, m_fid); //write ALL the buffer
				}
				else if(pak->packet_type == MESSAGE || pak->packet_type == SEND){
					fwrite((void*)&pak->magic, 4, 1, m_fid); //fwrite is atomic in POSIX systems, still, sync
					fwrite((void*)&pak->channel, 2, 1, m_fid);
					fwrite((void*)&pak->thread, 2, 1, m_fid);
					fwrite((void*)&pak->size, 4, 1, m_fid);
					fwrite((void*)&pak->rxtime, 8, 1, m_fid);
					
					fwrite((void*)pak->buffer, pak->size, 1, m_fid); //write ALL the buffer
				}
				else if(pak->packet_type == NONE){
					fwrite((void*)&pak->magic, 4, 1, m_fid);}
				
			}
			return 1; 
		}
		return 0; 
	}
	long bytes(){
		return m_r * sizeof(spkpak); 
	}
	const std::atomic<bool> enable(){
		return m_enable;
		}
	//convert the file to matlab.
}; 
#endif

