#include <thread>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <time.h>
#include <comedilib.h>
#include <zmq.hpp>
#include "util.h"
#include "lockfile.h"
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

u16 bit(int n)
{
	if (n < 0 || n > 15) {
		return 0;
	}
	return (1<<(n));

}

int g_nchan = 16;
double g_dpulset = 0.003; // seconds
int g_nsimultaneous = 3;

int main()
{
	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	lockfile lf("/tmp/pulser.lock");
	if (lf.lock()) {
		error("executable already running");
		return 1;
	}

	comedi_t *card = comedi_open("/dev/comedi0");
	if (card == NULL) {
		error("comedi_open");
		return 1;
	}

	int nc = comedi_get_n_channels(card, 0);
	printf("max dio chans = %d\n", nc);

	for (int i=0; i<nc; i++) {
		comedi_dio_config(card, 0, i, COMEDI_OUTPUT);
	}

	PulseQueue p(g_nchan);
	p.setPulseDT(g_dpulset);
	p.setNumSimultaneous(g_nsimultaneous);
	/*p.setPulseRate(1,   46);
	p.setPulseRate(2,   78);
	p.setPulseRate(3,  155);
	p.setPulseRate(4,  231);
	p.setPulseRate(5,  263);
	p.setPulseRate(6,  231);
	p.setPulseRate(7,  155);
	p.setPulseRate(8,   78);
	p.setPulseRate(9,  150);
	p.setPulseRate(10, 106);
	p.setPulseRate(11,   10);
	p.setPulseRate(12,   10);
	p.setPulseRate(13,   10);
	p.setPulseRate(14,   10);
	p.setPulseRate(15,   10);
	*/
	p.setPulseRate(16, 106);


	struct timespec ts;
	ts.tv_sec = 0; // 0 seconds
	ts.tv_nsec = 100000; // 100 micorseconds

	while (!s_interrupted) {
		std::vector<int> v = p.step();

		if (!v.empty()) {

			u32 bits = 0;
			for (int i=0; i<(int)v.size(); i++) {
				bits |= bit(v[i]);
			}

			comedi_dio_bitfield2(card, 0, 0xFFFF, &bits, 0);
			nanosleep(&ts, NULL);
			bits = 0;
			comedi_dio_bitfield2(card, 0, 0xFFFF, &bits, 0);
		}

	}

	comedi_close(card);

	lf.unlock();

}
