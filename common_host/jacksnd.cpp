// this is adapted from jack's simple_client.c

#include "jacksnd.h"
#include <jack/jack.h>                  // for jack_port_name, etc
#include <jack/types.h>                 // for jack_default_audio_sample_t, etc
#include <math.h>                       // for sin, cos, M_PI, floor
#include <stdio.h>                      // for fprintf, stderr, NULL, etc
#include <stdlib.h>                     // for exit, rand, RAND_MAX
#include <unistd.h>                     // for sleep
#include <list>                         // for list, _List_iterator, etc
#include "random.h"


jack_port_t *output_port[2];
jack_client_t *client;

#ifndef M_PI
#define M_PI  (3.14159265)
#endif

//#define TESTSONG

using namespace std;

long g_jackSample;

typedef struct {
	float		sine[TABLE_SIZE+1];
	list<Tone *> tones;
} paTestData;

static paTestData g_data;
static paResample g_resample;

void jackClose(int sig)
{
	jack_client_close(client);
	fprintf(stderr, "signal %d received, exiting ...\n", sig);
#ifdef TESTSONG
	exit(0);
#endif
}

int process (jack_nframes_t nframes, void *arg)
{
	jack_default_audio_sample_t *out[2];
	paTestData *data = (paTestData *)arg;

	out[0] = (jack_default_audio_sample_t *)jack_port_get_buffer (output_port[0], nframes);
	out[1] = (jack_default_audio_sample_t *)jack_port_get_buffer (output_port[1], nframes);

	for (unsigned int i=0; i<nframes; i++) {
		out[0][i] = 0.f;
		out[1][i] = 0.f;
	}

	// try using c++ 11 semantics
	for (auto &tone : data->tones) {
		for (unsigned int i=0; i<nframes && !(tone->m_dead); i++) {
			tone->sample(g_jackSample + i, &(out[0][i]), &(out[1][i]), data->sine);
		}
	}

	//remove the 'dead' tones.
	list<Tone *>::iterator it = data->tones.begin();
	while (it != data->tones.end()) {
		if ((*it)->m_dead) {
			Tone *t = (*it);
			it = data->tones.erase(it);
			delete t;
		} else {
			++it;
		}
	}
	g_jackSample += nframes;
	return 0;
}

int process_resample(jack_nframes_t nframes, void *arg)
{
	paResample *r = (paResample *)arg;
	jack_default_audio_sample_t *out[2];
	out[0] = (jack_default_audio_sample_t *)jack_port_get_buffer (output_port[0], nframes);
	out[1] = (jack_default_audio_sample_t *)jack_port_get_buffer (output_port[1], nframes);

	for (unsigned int i=0; i<nframes; i++) {
		long dif = r->wrPtr - r->rdPtr;
		if (dif <= 0) { //probably pipe dried up.
			if (i==0) {
				// for the moment, let's comment this out to debug other problems
				//printf("ERROR: dif <= 0 dif %ld nframes %d rd %ld wr %ld\n", dif, nframes, r->rdPtr, r->wrPtr);
			}
			out[0][i] = 0.f;
			out[1][i] = 0.f;
		} else if (dif >= RESAMP_MASK) {
			//too much data too fast ..
			if (i==0) {
				printf("ERROR: dif >= %d dif %ld nframes %d rd %ld wr %ld\n", RESAMP_MASK, dif, nframes, r->rdPtr, r->wrPtr);
			}
			r->rdPtr = r->wrPtr - (RESAMP_SIZ/2); //this will keep zeros coming out.
			out[0][i] = 0.f;
			out[1][i] = 0.f;
		} else {
			float p = r->phase;
			float lerp = p - floor(p);
			float a1 = (1-lerp)*r->circBuf[0][r->rdPtr&RESAMP_MASK] +
			           (lerp)*r->circBuf[0][(r->rdPtr+1)&RESAMP_MASK];
			float a2 = (1-lerp)*r->circBuf[1][r->rdPtr&RESAMP_MASK] +
			           (lerp)*r->circBuf[1][(r->rdPtr+1)&RESAMP_MASK];
			out[0][i] = a1;
			out[1][i] = a2;
			//increment phase..
			r->phase += r->phaseIncr;
			while (r->phase > 1) {
				r->rdPtr++;
				r->phase -= 1.f;
			}
			//manage the rate.
			if (i == 0) {
				double q = (double)(dif - (RESAMP_SIZ/2));
				r->phaseIncr = r->phaseIncrNom + q*r->phaseIncrDelta
				               + 0.0 * r->integral*r->phaseIncrDelta / 200.0;
				r->integral = r->integral * 0.9999 + q;
				if (r->delay < 0) {
#ifdef DEBUG
					printf("phaseIncr %f q %f integral %f\n", r->phaseIncr, q, r->integral);
#endif
					r->delay = 200;
				}
				r->delay--;
			}
		}
	}
	return 0;
}

/**
 * JACK calls this shutdown_callback if the server ever shuts down or
 * decides to disconnect the client.
 */
void jack_shutdown (void *)
{
	exit (1);
}

/* song stuff. well, not really a song -- more of a set of noises. */
float uniformPan()
{
	return uniform()*2.f -1.f;
}

void addTones(paTestData *data, long offset)
{
	float u = 0.f;
	float ui = 0.25;
	float scl = offset / (SAMPFREQ*3*4);
	if (scl > 1) scl = 1;
	float scl2 = scl * 0.15;
	float mel = 0.165f;
	if (scl > 1.f) scl = 1.f;
	long bar = offset / (SAMPFREQ*3);
	Tone *t;
	t = new Tone(500.f, uniformPan(), mel*0.25, offset+u*SAMPFREQ, SAMPFREQ*scl);
	data->tones.push_back(t);
	u += ui;
	t = new Tone(600.f, uniformPan(), mel*0.15, offset+u*SAMPFREQ, SAMPFREQ*scl);
	data->tones.push_back(t);
	u += ui;
	t = new Tone(750.f, uniformPan(), mel*0.23, offset+u*SAMPFREQ, SAMPFREQ*scl);
	data->tones.push_back(t);
	u += ui;
	t = new Tone(300.f, uniformPan(), mel*0.2, offset+u*SAMPFREQ, SAMPFREQ*scl);
	data->tones.push_back(t);
	u += ui;
	t = new Tone(400.f, uniformPan(), mel*0.22, offset+u*SAMPFREQ, SAMPFREQ*1.3*scl);
	data->tones.push_back(t);
	u += ui;
	if ((bar&1) == 0)
		t = new Tone(700.f, uniformPan(), mel*scl2*0.5, offset+u*SAMPFREQ, SAMPFREQ*1.3*scl);
	else
		t = new Tone(800.f, uniformPan(), mel*scl2*0.5, offset+u*SAMPFREQ, SAMPFREQ*1.3*scl);
	data->tones.push_back(t);
	t = new Tone(300.f, uniformPan(), mel*0.29, offset+u*SAMPFREQ, SAMPFREQ*scl);
	data->tones.push_back(t);
	float distortion = (bar&15) - 4;
	if (bar < 4) bar = 0;
	float freqs[] = {150.f, 125.f, 100.f, 133.f};
	for (int i=0; i< 12; i++) {
		t = new Tone(freqs[bar&3], 0.0, scl*(0.22+0.08*sin(i/2)), offset+((float)i*ui+ui/2)*SAMPFREQ, SAMPFREQ*ui*0.8);
		t->m_distortion = distortion;
		data->tones.push_back(t);
	}
	float freqs2[] = {112.5f, 93.75f, 75.f, 100.f};
	if ((bar&31) > 15) {
		for (int i=0; i< 12; i++) {
			t = new Tone(freqs2[bar&3], 0.0, scl*(0.12+0.06*sin(i/2)), offset+((float)i*ui+ui)*SAMPFREQ, SAMPFREQ*ui*0.6);
			t->m_distortion = distortion;
			data->tones.push_back(t);
		}
		for (int i=0; i<6; i++) {
			t = new Tone(9000, 0.0, scl*(0.02+0.01*cos(i)), offset+((float)i*ui*2+ui)*SAMPFREQ, SAMPFREQ*ui*0.05);
			t->m_attack = 200;
			t->m_release = 2500;
			data->tones.push_back(t);
		}
	}
	for (int i=0; i<6; i++) {
		t = new Tone(8000, 0.0, scl*(0.04+0.02*cos(i)), offset+((float)i*ui*2)*SAMPFREQ, SAMPFREQ*ui*0.05);
		t->m_attack = 200;
		t->m_release = 2500;
		data->tones.push_back(t);
	}
	t = new Tone(8000, 0.0, scl*(0.05), offset+((float)2*ui*2+ui/2)*SAMPFREQ, SAMPFREQ*ui*0.08);
	t->m_attack = 200;
	t->m_release = 2500;
	data->tones.push_back(t);
	t = new Tone(8000, 0.0, scl*(0.05), offset+((float)5*ui*2+ui/2)*SAMPFREQ, SAMPFREQ*ui*0.08);
	t->m_attack = 200;
	t->m_release = 2500;
	data->tones.push_back(t);
	float fb = 50.f;
	if (bar & 1) fb = 66.f;
	t = new Tone(fb, uniformPan(), 0.2, offset+SAMPFREQ, SAMPFREQ*2);
	t->m_attack = SAMPFREQ;
	t->m_release = SAMPFREQ;
	t->m_distortion = 2 + bar/16;
	data->tones.push_back(t);
}

int jackInit(const char *clientname, int mode)
{
	const char *client_name;
	jack_status_t status;

	g_jackSample = 0;

	/* open a client connection to the JACK server */

	client = jack_client_open (clientname, JackNullOption, &status, NULL);
	if (client == NULL) {
		fprintf (stderr, "jack_client_open() failed, "
		         "status = 0x%2.0x\n", status);
		if (status & JackServerFailed) {
			fprintf (stderr, "Unable to connect to JACK server\n");
		}
		exit (1);
	}
	if (status & JackServerStarted) {
		fprintf (stderr, "JACK server started\n");
	}
	if (status & JackNameNotUnique) {
		client_name = jack_get_client_name(client);
		fprintf (stderr, "unique name `%s' assigned\n", client_name);
	}

	/* tell the JACK server to call `process()' whenever
	   there is work to be done.
	*/

	if (mode == JACKPROCESS_TONES)
		jack_set_process_callback (client, process, &g_data);
	if (mode == JACKPROCESS_RESAMPLE)
		jack_set_process_callback (client, process_resample, &g_resample);

	/* tell the JACK server to call `jack_shutdown()' if
	   it ever shuts down, either entirely, or if it
	   just decides to stop calling us.
	*/

	jack_on_shutdown (client, jack_shutdown, 0);

	/* create two ports */

	output_port[0] = jack_port_register (client, "output1",
	                                     JACK_DEFAULT_AUDIO_TYPE,
	                                     JackPortIsOutput, 0);

	output_port[1] = jack_port_register (client, "output2",
	                                     JACK_DEFAULT_AUDIO_TYPE,
	                                     JackPortIsOutput, 0);

	if ((output_port[0] == NULL) || (output_port[1] == NULL)) {
		fprintf(stderr, "no more JACK ports available\n");
		exit (1);
	}

	/* Tell the JACK server that we are ready to roll.  Our
	 * process() callback will start running now. */

	if (jack_activate (client)) {
		fprintf (stderr, "jack_activate cannot activate client");
		exit (1);
	}

	/* install a signal handler to properly quits jack client */
#ifdef TESTSONG
	signal(SIGQUIT, jackClose);
	signal(SIGTERM, jackClose);
	signal(SIGHUP,  jackClose);
	signal(SIGINT,  jackClose);
#endif

	return 0;
}
void jackDisconnectAllPorts()
{
	for (int j=0; j<2; j++) {
		const char **ports = jack_port_get_connections (output_port[j]);
		if (ports != NULL) {
			int i = 0;
			while (ports[i] != NULL) {
				if (jack_disconnect(client, jack_port_name(output_port[j]), ports[i]))
					fprintf (stderr, "JACK: cannot disconnect output port %d\n",i);
				i++;
			}
			jack_free(ports);
		}
	}
}
void jackConnectFront()
{
	const char **ports;
	int i = 0;

	/* Connect the ports.  You can't do this before the client is
	 * activated, because we can't make connections to clients
	 * that aren't running.  Note the confusing (but necessary)
	 * orientation of the driver backend ports: playback ports are
	 * "input" to the backend, and capture ports are "output" from
	 * it.
	 */

	ports = jack_get_ports (client, NULL, NULL,
	                        JackPortIsPhysical|JackPortIsInput);
	if (ports == NULL) {
		fprintf(stderr, "JACK: no physical playback ports\n");
		exit (1);
	}
	while (ports[i] != NULL)
		i++;
	if (i < 1)
		fprintf (stderr, "JACK: cannot connect front output port");
	if (jack_connect (client, jack_port_name (output_port[0]), ports[0]))
		fprintf (stderr, "JACK: cannot connect output ports\n");
	if (jack_connect (client, jack_port_name (output_port[1]), ports[1]))
		fprintf (stderr, "JACK: cannot connect output ports\n");
	jack_free(ports);
}
void jackConnectCenterSub()
{
	const char **ports;
	int i = 0;

	/* Connect the ports.  You can't do this before the client is
	 * activated, because we can't make connections to clients
	 * that aren't running.  Note the confusing (but necessary)
	 * orientation of the driver backend ports: playback ports are
	 * "input" to the backend, and capture ports are "output" from
	 * it.
	 */

	ports = jack_get_ports (client, NULL, NULL,
	                        JackPortIsPhysical|JackPortIsInput);
	if (ports == NULL) {
		fprintf(stderr, "JACK: no physical playback ports\n");
		exit (1);
	}
	while (ports[i] != NULL)
		i++;
	if (i < 5)
		fprintf (stderr, "JACK: cannot connect center/sub ports");
	if (jack_connect (client, jack_port_name (output_port[0]), ports[4]))	// center
		fprintf (stderr, "JACK: cannot connect output ports\n");
	if (jack_connect (client, jack_port_name (output_port[1]), ports[5]))	// sub
		fprintf (stderr, "JACK: cannot connect output ports\n");
	jack_free(ports);
}
void jackTest()
{
	// make sure it's working ..
	for (int i=0; i<TABLE_SIZE+1; i++) {
		g_data.sine[i] = 0.2 * (float) sin( ((double)i/(double)TABLE_SIZE) * M_PI * 2.0 );
	}
	addTones(&g_data, 20000);
}
void jackDemo()
{
	/* keep running until the Ctrl+C */
	addTones(&g_data, 0);
	long offset = 0;
	while (1) {
		sleep (3);
		offset += SAMPFREQ*3;
		addTones(&g_data, offset);
	}
	jack_client_close (client);
	exit (0);
}
void jackAddTone(Tone *t)
{
	g_data.tones.push_back(t);
}
void jackAddToneP(float freq, float pan, float scale, float duration)
{
	Tone *t = new Tone(freq, pan, scale, -1, duration * SAMPFREQ);
	g_data.tones.push_back(t);
}
void jackAddSamples(float *s1, float *s2, int num)
{
	long l = g_resample.wrPtr;
	for (int i=0; i<num; i++) {
		g_resample.circBuf[0][l&RESAMP_MASK] = s1[i];
		g_resample.circBuf[1][l&RESAMP_MASK] = s2[i];
		l++;
		g_resample.wrPtr = l;
	}
}
void jackSetResample(double rate)
{
	g_resample.wrPtr = g_resample.rdPtr = 0;
	g_resample.phase = 0.0;
	g_resample.phaseIncr = rate;
	g_resample.phaseIncrNom = rate;
	// 8 cents ~= minimum detectable interval.
	g_resample.phaseIncrDelta = rate * 0.004631674402 / 500;
	g_resample.integral = 0;
	g_resample.delay = 0;
}
#ifdef TESTSONG
int main()
{
	jackInit(JACKPROCESS_TONES);
	jackDemo();
	return 0;
}
#endif
