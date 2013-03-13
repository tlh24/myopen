// file for common fifo code
#ifndef __FIFOHELP_H__
#define __FIFOHELP_H__

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

class fifoHelp {
public:
	int 	m_fd;
	char* 	m_fname;

	fifoHelp(const char* fname) {
		m_fd = 0;
		int sl = strlen(fname);
		m_fname = (char*)malloc(sl+1);
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
			}
			else {
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
	}
	~fifoHelp() {
		if (m_fd) {
			close(m_fd);
		}
		free(m_fname);
	}
	void prinfo() {
		if (m_fd) {
			printf("%s\n", m_fname);
		}
	}
};
#endif

