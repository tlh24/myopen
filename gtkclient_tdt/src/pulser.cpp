#include <thread>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <time.h>
#include <comedilib.h>
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

u16 bit(int n)
{
	if (n < 0 || n > 15) {
		return 0;
	}
	return (1<<(n));

}

int g_nchan = 16;
double g_dpulset = 0.001; // seconds
int g_nsimultaneous = 2;

int main()
{
	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	if (check_running("pulser")) {
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

}
