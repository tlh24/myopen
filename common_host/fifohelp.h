// file for common fifo code
#ifndef __FIFOHELP_H__
#define __FIFOHELP_H__

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stropts.h>
#include <poll.h>

class fifoHelp
{
public:
	int 	m_fd;
	struct  pollfd m_pollfd;
	char 	*m_fname;

	fifoHelp(const char *fname)
	{
		m_fd = 0;
		int sl = strlen(fname);
		m_fname = (char *)malloc(sl+1);
		memcpy(m_fname, fname, sl);
		m_fname[sl] = 0;

		struct stat sb;

		int fret = mkfifo(fname, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP); // rw, usr & grp
		if (fret == -1) {
			if (errno == EEXIST) {
				stat(fname, &sb);
				if ((sb.st_mode &S_IFMT) != S_IFIFO) {
					printf("%s : ", fname);
					perror("is not a fifo");
					return;
				}
			} else {
				printf("%s : ", fname);
				perror("could not create fifo");
				return;
			}
		}

		m_fd = open(fname, O_RDWR);
		if (m_fd <=0) {
			printf("%s :", fname);
			perror("could not open");
			return;
		}
		m_pollfd.fd = m_fd;
	}
	~fifoHelp()
	{
		if (m_fd) {
			close(m_fd);
			m_fd = 0;
			m_pollfd.fd = 0;
		}
		free(m_fname);
	}
	void prinfo()
	{
		if (m_fd) {
			printf("fifo: %s\n", m_fname);
		}
	}
	void setR()
	{
		m_pollfd.events = POLLIN;
	}
	void setW()
	{
		m_pollfd.events = POLLOUT;
	}
	void setRW()
	{
		m_pollfd.events = POLLIN | POLLOUT;
	}
	bool Poll(int timeout) // follows poll() semantics
	{
		return poll(&m_pollfd, 1, timeout) > 0;
	}
};
#endif
