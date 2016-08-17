#ifndef __JACKSND_H__
#define __JACKSND_H__

#include <math.h>                       // for atan, floor

#define TABLE_SIZE 	(200)
#define SAMPFREQ 	(48000.0)

extern long g_jackSample;

enum TONE_TYPE {
	TONE_SINE,
	TONE_SAWUP,
	TONE_SAWDOWN,
	TONE_TRIANGLE,
	TONE_SQUARE,
	TONE_NUM
};

enum JACKPROCESS_TYPE {
	JACKPROCESS_TONES,
	JACKPROCESS_RESAMPLE,
	JACKPROCESS_NUM
};
#define RESAMP_SIZ 4096
#define RESAMP_MASK (RESAMP_SIZ-1)
typedef struct {
	float	circBuf[2][RESAMP_SIZ];
	long	wrPtr;
	long	rdPtr;
	double	phase;
	double	phaseIncr;
	double	phaseIncrNom;
	double	phaseIncrDelta;
	double	integral; //PI controller.
	int		delay;
} paResample;

class Tone
{
public:
	float	m_s1;
	float	m_s2;
	double	m_phase;
	double	m_pincr;
	double	m_poff;
	long	m_start; //in samples
	long	m_duration; // in samples;
	long	m_attack;
	long	m_release;
	float	m_distortion;
	bool	m_dead;
	int		m_type;

	Tone(float freq, float pan, float scale, long start, long duration)
	{
		pan = pan > 1.f ? 1.f : pan;
		pan = pan < -1.f ? -1.f : pan;
		m_s1 = 1.f - pan;
		m_s2 = pan + 1;
		if (m_s1 > 1.f) m_s1 = 1.f;
		if (m_s2 > 1.f) m_s2 = 1.f;
		m_s1 *= scale;
		m_s2 *= scale;
		m_phase = 0.0;
		m_pincr = (double)freq / SAMPFREQ;
		m_dead = false;
		m_start = start;
		m_duration = duration;
		m_attack = 1000;
		m_release = 1000;
		m_distortion = 0.f;
		m_poff = 0.0;
		m_type = TONE_SINE;
	}
	~Tone() {}

	void sample(long s, float *d1, float *d2, float *sine)
	{
		if (m_start == -1) m_start = s;
		if (m_dead || s > m_start + m_duration + m_release) {
			m_dead = true;
		} else {
			if (m_start <= s) {
				float env = 1.f;
				if (s-m_start < m_attack)
					env = (float)(s-m_start) / (float)m_attack;
				else if (s-m_start >= m_duration)
					env = 1.f - (float)(s-m_start-m_duration) / (float)m_release;
				env = env < 0.f ? 0.f : env;
				env = env > 1.f ? 1.f : env;
				if (m_type == TONE_SINE) {
					double phase = m_phase * TABLE_SIZE;
					int bot = (int)floor(phase);
					if (bot > TABLE_SIZE-1) bot = TABLE_SIZE-1;
					int top = bot+1;
					double lerp = phase - floor(phase);
					float a = (1-lerp)*sine[bot] + lerp*sine[top];
					if (m_distortion > 0.f)
						a = atan(a * (1 + m_distortion)) / atan(1+m_distortion);
					*d1 += a * m_s1 * env;
					*d2 += a * m_s2 * env;
				} else if (m_type == TONE_SAWUP) {
					// phase goes from 0 to 1 -- subtract 0.5 and *2.
					float phase = m_phase - 0.5f;
					phase *= 2.f;
					*d1 += phase * m_s1 * env;
					*d2 += phase * m_s2 * env;
				} else if (m_type == TONE_SAWDOWN) {
					float phase = 0.5f - m_phase;
					phase *= 2.f;
					*d1 += phase * m_s1 * env;
					*d2 += phase * m_s2 * env;
				} else if (m_type == TONE_TRIANGLE) {
					float phase = 2.f * m_phase;
					if (phase > 1.f) phase = 2.f - phase;
					*d1 += phase * m_s1 * env;
					*d2 += phase * m_s2 * env;
				} else if (m_type == TONE_SQUARE) {
					float phase = -1.f;
					if (m_phase > 0.5f + m_distortion) phase = 1.f; //can change pulsewidth.
					*d1 += phase * m_s1 * env;
					*d2 += phase * m_s2 * env;
				}
				m_phase += m_pincr;
				if (m_phase > 1.0) m_phase -= 1.0;
			}
		}
	}
};

void jackClose(int sig);
int  jackInit(const char *name, int mode);
void jackTest();
void jackDemo();
void jackAddTone(Tone *t);
void jackAddToneP(float freq, float pan, float scale, float duration);
void jackAddSamples(float *s1, float *s2, int num);
void jackSetResample(double rate);
void jackDisconnectAllPorts();
void jackConnectFront();
void jackConnectCenterSub();
#endif
