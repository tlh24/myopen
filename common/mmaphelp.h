// file for common mmap code. 
#ifndef __MMAPHELP_H__
#define __MMAPHELP_H__

class mmapHelp{
public:
	int 	m_fd; 
	int	m_length; 
	void* m_addr; 
	char* m_fname; 
	
	mmapHelp(int length, const char* fname, bool fill = true){
		m_length = 0; m_addr = 0; m_fd = 0; 
		int sl = strlen(fname); 
		m_fname = (char*)malloc(sl+1); 
		memcpy(m_fname, fname, sl); 
		m_fname[sl] = 0; 
		if(0){
			// shm method.  seem to be few advantages. 
			m_fd = shm_open(fname, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
			if (m_fd == -1){
				printf("%s : ", fname); 
				perror("could not open"); 
				return; 
			}
			if(fill) ftruncate(m_fd, length); 
		}else{
			m_fd = open(fname, O_RDWR | O_CREAT); 
			if (m_fd == -1){
				printf("%s : ", fname); 
				perror("could not open"); 
				return; 
			}
			if(fill){
				int* s = (int*)malloc(length); 
				write(m_fd, s, length); //not buffered, I think. fill the file out.
				free(s); 
			}
		}
		m_addr = mmap(NULL, length, /*PROT_READ |*/ PROT_WRITE, 
								MAP_SHARED, m_fd, 0); 
		if (m_addr == MAP_FAILED){
			close(m_fd);
			printf("%s : ", fname); 
			perror("Error mmapping the file");
		} else {
			m_length = length; 
		}
	}
	~mmapHelp(){
		if(m_addr) munmap(m_addr, m_length); 
		if(m_fd) close(m_fd); 
		free(m_fname); 
	}
	void prinfo(){
		printf("%s mmap address: %lx\n", m_fname, (long unsigned int)m_addr); 
	}
}; 
#endif