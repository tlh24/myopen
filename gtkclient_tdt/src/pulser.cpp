#include <thread>
#include <signal.h>
#include <zmq.hpp>
#include "util.h"
#include "pulse_queue.h"

// pulser - a pulse generator / scheduler

bool s_interrupted = false;

static void s_signal_handler(int)
{
	s_interrupted = true;
}

static void s_catch_signals(void)
{
	struct sigaction action;
	action.sa_handler = s_signal_handler;
	action.sa_flags = 0;
	sigemptyset(&action.sa_mask);
	sigaction(SIGINT, &action, nullptr);
	sigaction(SIGQUIT, &action, nullptr);
	sigaction(SIGTERM, &action, nullptr);
}

int g_nchan = 16;
double g_dpulset = 1; // msec
int g_nsimultaneous = 1;

void worker(zmq::context_t &ctx)
{
	zmq::socket_t sock(ctx, ZMQ_REP);
	sock.bind("ipc:///tmp/pulser");
}

int main()
{

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	if (check_running("pulser")) {
		error("executable already running");
		return 1;
	}

	PulseQueue p(16);
	p.setPulseDT(0);
	p.setNumSimultaneous(16);
	p.setPulseRate(1, 20);
	p.setPulseRate(2, 40);
	p.setPulseRate(3, 55);
	p.setPulseRate(4, 70);
	p.setPulseRate(5, 90);
	p.setPulseRate(6, 105);
	p.setPulseRate(7, 125);
	p.setPulseRate(8, 140);
	p.setPulseRate(9, 160);
	p.setPulseRate(10, 175);
	p.setPulseRate(11, 195);
	p.setPulseRate(12, 210);
	p.setPulseRate(13, 230);
	p.setPulseRate(14, 245);
	p.setPulseRate(15, 260);
	p.setPulseRate(16, 280);


	//std::thread t1(worker, std::ref(zcontext) );

	while (!s_interrupted) {
		p.step();
	}

	//t1.join();

}