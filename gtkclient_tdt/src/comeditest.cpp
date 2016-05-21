// comedi test

#include <unistd.h>
#include <sys/types.h>
#include <time.h>
#include <comedilib.h>

int main()
{

	comedi_t *card = comedi_open("/dev/comedi0");
	if (card == NULL) {
		comedi_perror("comedi_open");
		return -1;
	}

	struct timespec ts;
	ts.tv_sec = 0; // 0 seconds
	ts.tv_nsec = 50000; // 50 micorseconds


	int nc = comedi_get_n_channels(card, 0);
	printf("num chans = %d\n", nc);

	for (int i=0; i<nc; i++) {
		comedi_dio_config(card, 0, i, COMEDI_OUTPUT);
	}

	while (true) {

		for (int i=0; i<nc; i++) {
			comedi_dio_write(card, 0, i, 1);
			nanosleep(&ts, NULL);
			comedi_dio_write(card, 0, i, 0);
		}

	}


	return 0;
}
