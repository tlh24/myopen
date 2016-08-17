#ifndef __LOCKFILE_H__
#define __LOCKFILE_H__

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string>

// see: http://episteme.arstechnica.com/eve/forums/a/tpc/f/6330927813/m/149009042041
// and: http://beej.us/guide/bgipc/output/html/multipage/flocking.html
// and: http://www.opengroup.org/onlinepubs/009695399/functions/fcntl.html

class lockfile
{
public:
	int m_fd;
	struct flock m_fl;
	std::string m_fn;
	bool m_locked;

	lockfile(const char *fname) : m_fn(fname)
	{
		m_locked = false;
		m_fd = 0;
	}

	~lockfile()
	{
	}

	// returns false on success and true on error
	bool lock()
	{

		if (m_locked) {
			printf("%s : already locked\n", m_fn.c_str());
			return true;
		}

		m_fl.l_type   = F_WRLCK;  /* F_RDLCK, F_WRLCK, F_UNLCK    */
		m_fl.l_whence = SEEK_SET; /* SEEK_SET, SEEK_CUR, SEEK_END */
		m_fl.l_start  = 0;        /* Offset from l_whence         */
		m_fl.l_len    = 0;        /* length, 0 = to EOF           */
		m_fl.l_pid    = getpid(); /* our PID                      */

		// open file
		m_fd = open(m_fn.c_str(), O_RDWR | O_CREAT, S_IRWXU);
		if (m_fd == -1) {
			printf("%s : could not open lockfile\n", m_fn.c_str());
			return true;
		}

		// get lock
		if (fcntl(m_fd, F_SETLK, &m_fl) == -1) {
			if (errno == EACCES || errno == EAGAIN) {
				printf("%s : another instance is running\n", m_fn.c_str());
				return true;
			} else {
				printf("%s : unexpected lockfile error\n", m_fn.c_str());
				return true;
			}
		}

		// lockfile granted
		printf("%s: acquired lockfile\n", m_fn.c_str());
		m_locked = true;
		return false;
	}

	// returns false on success and true on error
	bool unlock()
	{

		if (!m_locked) {
			printf("%s : not locked\n", m_fn.c_str());
			return true;
		}

		m_fl.l_type = F_UNLCK;

		if (fcntl(m_fd, F_SETLK, &m_fl) == -1) {
			printf("%s : unexpected error releasing lockfile\n", m_fn.c_str());
			return true;
		}
		if (close(m_fd) == -1) {
			printf("%s : could not close lockfile\n", m_fn.c_str());
			return true;
		}
		m_fd = 0;
		if (remove(m_fn.c_str()) == -1) {
			printf("%s : could not remove lockfile\n", m_fn.c_str());
			return true;
		}

		// lockfile released
		printf("%s: released lockfile\n", m_fn.c_str());
		m_locked = false;
		return false;
	}
};
#endif
