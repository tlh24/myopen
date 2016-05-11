#include <proc/readproc.h>		// for proc_t, openproc, readproc, etc
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "artifact_filter.h"

// af - the Artifact Filter

bool g_die = false;

void destroy(int)
{
	g_die = true;
}

int main(void)
{

	zmq::context_t zcontext(1);	// single zmq thread

	ArtifactNLMS3 *filter;

	pid_t mypid = getpid();
	PROCTAB *pr = openproc(PROC_FILLSTAT);
	proc_t pr_info;
	memset(&pr_info, 0, sizeof(pr_info));
	while (readproc(pr, &pr_info) != NULL) {
		if (!strcmp(pr_info.cmd, "af") &&
		    pr_info.tgid != mypid) {
			error("already running with pid: %d", pr_info.tgid);
			return 1;
		}
	}

	// xxx need to ask po8e for how many channels there are here, i guess

	// xxx also need to load config from luaconf

	//  Prepare our socket
	zmq::socket_t socket(zcontext, ZMQ_SUB);
	socket.bind("tcp://127.0.0.1:1337"); // XXX hardcoded!!!

	// ok so here is what we will do:
	// subscribe to messages from po8e
	// route them to the training thread (inproc)
	// route them to the filter thread (also inproc)
	// the filter thread then publishes the result

	// pass each thread a std::ref(zcontext)

	// see: http://thisthread.blogspot.com/2011/08/multithreading-with-zeromq.html


}