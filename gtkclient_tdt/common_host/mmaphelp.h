// file for common mmap code.
#ifndef __MMAPHELP_H__
#define __MMAPHELP_H__

#include <cstring>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>

class mmapHelp
{
public:
	int 	m_fd;
	int		m_length;
	void 	*m_addr;
	char 	*m_fname;

	mmapHelp(int length, const char *fname, bool fill = true)
	{
		m_fd = 0;
		m_addr = 0;
		m_length = 0;

		int sl = strlen(fname);
		m_fname = (char *)malloc(sl+1);
		memcpy(m_fname, fname, sl);
		m_fname[sl] = 0;

		// shm method.  seem to be few advantages.
		/*
		m_fd = shm_open(fname, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
		if (m_fd == -1) {
			printf("%s : ", fname);
			perror("could not open");
			return;
		}
		if (fill) {
			ftruncate(m_fd, 0);
			ftruncate(m_fd, length);
		}
		*/

		m_fd = open(fname, O_RDWR | O_CREAT, S_IRWXU | S_IRWXG); //user and group permissions.
		if (m_fd <= 0) {
			printf("%s : ", fname);
			perror("could not open");
			return;
		}

		if (fill) {
			//off_t size = lseek(m_fd, 0, SEEK_END);
			ftruncate(m_fd, 0);
			ftruncate(m_fd, length);
		}

		m_addr = mmap(NULL, length, PROT_READ | PROT_WRITE,
		              MAP_SHARED, m_fd, 0);
		if (m_addr == MAP_FAILED) {
			close(m_fd);
			m_fd = 0;
			m_addr = 0;
			printf("%s : ", fname);
			perror("Error mmapping the file");
			return;
		}
		m_length = length;
	}
	~mmapHelp()
	{
		if (m_addr) {
			munmap(m_addr, m_length);
			m_addr = 0;
		}
		if (m_fd) {
			close(m_fd);
			m_fd = 0;
		}
		free(m_fname);
	}
	void prinfo()
	{
		if (m_fd && m_addr)
			printf("mmap: %s addr: %lx\n", m_fname, (long unsigned int)m_addr);
	}
};
#endif
