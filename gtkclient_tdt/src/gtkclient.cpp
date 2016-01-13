// in order to get function prototypes from glext.h,
// define GL_GLEXT_PROTOTYPES before including glext.h
#define GL_GLEXT_PROTOTYPES

#include <gtk/gtk.h>
#include <gtk/gtkgl.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include <GL/gl.h>	// Header File For The OpenGL32 Library
#include <GL/glu.h>	// Header File For The GLu32 Library
#include <GL/glx.h>     // Header file for the glx libraries.
#include "../common_host/glext.h"
#include "../common_host/glInfo.h"

#include <Cg/cg.h>    /* included in Cg toolkit for nvidia */
#include <Cg/cgGL.h>

#include <stdio.h>
#include <float.h>
#include <sys/types.h>
#include <unistd.h>
#include <proc/readproc.h>
#include <inttypes.h>
#include <sys/time.h>
#include <thread>
#include <algorithm>
#include <vector>
#include <sched.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <arpa/inet.h>
#include <matio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_fit.h>
#include <boost/multi_array.hpp>
#include <map>
#include <string>
#include <iostream>
#include <iomanip>
#include <atomic>

#include <libgen.h>

#include "readerwriterqueue.h"

#include "PO8e.h"
#include "po8e_conf.h"

#include "gettime.h"
#include "cgVertexShader.h"
#include "vbo.h"
#include "vbo_raster.h"
#include "vbo_timeseries.h"
#include "firingrate.h"
#include "gtkclient.h"
#include "mmaphelp.h"
#include "fifohelp.h"
#include "channel.h"
#include "artifact.h"
#include "timesync.h"
#include "matStor.h"
#include "wfwriter.h"
#include "jacksnd.h"
#include "filter.h"
#include "medfilt.h"
#include "spikebuffer.h"
#include "rls.h"
#include "nlms.h"
#include "util.h"

#include "analog.pb.h"
#include "icms.pb.h"

#include "datawriter.h"
#include "analogwriter.h"
#include "icmswriter.h"

#include "fenv.h" // for debugging nan problems

//CG stuff. for the vertex shaders.
CGcontext   myCgContext;
CGprofile   myCgVertexProfile;
cgVertexShader		*g_vsFadeColor;
cgVertexShader		*g_vsThreshold;

using namespace std;
using namespace moodycamel; // for lockfree queues

char	g_prefstr[256];

float	g_cursPos[2];
float	g_viewportSize[2] = {640, 480}; //width, height.

class Channel;
class Artifact;

vector <VboTimeseries *> g_timeseries;
vector <VboRaster *> g_spikeraster;
// can do another raster vector for other types of rasters (icms ticks, etc)

ReaderWriterQueue<gsl_vector *> g_filterbuf(NSAMP); // for nlms filtering

vector <pair<ReaderWriterQueue<PO8Data>*, po8e::card *>> g_dataqueues;

float g_zoomSpan = 1.0;

bool g_vboInit = false;
float	g_rasterSpan = 10.f; // %seconds.

vector <Channel *> g_c;
FiringRate	g_fr[RECCHAN][NSORT];
TimeSync 	g_ts(SRATE_HZ); //keeps track of ticks (TDT time)
WfWriter	g_wfwriter;
GLuint 		g_base;            // base display list for the font set.

AnalogWriter g_analogwriter;
AnalogWriter g_analogwriter_prefilter;

vector <Artifact *> g_artifact;
ICMSWriter g_icmswriter;

gboolean g_lopassNeurons = false;
gboolean g_hipassNeurons = false;

#if defined KHZ_24
vector <FilterButterBand_24k_500_3000> g_bandpass;
vector <FilterButterLow_24k_3000> g_lopass;
vector <FilterButterHigh_24k_500> g_hipass;
#elif defined KHZ_48
vector <FilterButterBand_48k_500_3000> g_bandpass;
vector <FilterButterLow_48k_3000> g_lopass;
vector <FilterButterHigh_48k_500> g_hipass;
#else
#error Bad sampling rate!
#endif

int g_whichMedianFilter = 0;
vector <MedFilt3> g_medfilt3;
vector <MedFilt5> g_medfilt5;

int g_whichAnalogSave = 0;

bool g_die = false;
double g_pause_time = -1.0;
gboolean g_pause = false;
gboolean g_showPca = false;
gboolean g_autoChOffset = false;
gboolean g_showWFVgrid = true;
gboolean g_showContGrid = false;
gboolean g_showContThresh = true;
gboolean g_showISIhist = true;
gboolean g_showWFstd = true;
bool g_rtMouseBtn = false;
gboolean g_saveUnsorted = true;
gboolean g_saveSpikeWF = true;
gboolean g_saveICMSWF = true;

// for drawing circles around pca points
int 	g_polyChan = 0;
bool 	g_addPoly = false;

vector<int> g_channel {0,32,64,95};

long double g_lastPo8eTime = 0.0;
long double g_po8ePollInterval = 0.0;
long double g_po8eAvgInterval = 0.0;

int g_whichSpikePreEmphasis = 0;
enum EMPHASIS {
	EMPHASIS_NONE = 0,
	EMPHASIS_ABS,
	EMPHASIS_NEO
};

int g_whichAlignment = 0;
enum ALIGN {
	ALIGN_CROSSING = 0,
	ALIGN_MIN,
	ALIGN_MAX,
	ALIGN_ABS,
	ALIGN_SLOPE,
	ALIGN_NEO
};

float g_minISI = 1.3; //ms
float g_autoThreshold = -3.5; //standard deviations. default negative, w/e.
float g_neoThreshold = 8;
int g_spikesCols = 16;

//gboolean g_enableArtifactRLS = false;
//RLS g_rls(95,0.999,1e-16);

gboolean g_trainArtifactNLMS = true;
gboolean g_filterArtifactNLMS = false;
vector <ArtifactNLMS *> g_nlms;

gboolean g_enableArtifactSubtr = true;
gboolean g_trainArtifactTempl = false;
int g_numArtifactSamps = 1e4; 	// number of artifacts to use to build template
int g_stimChanDisp = 0;	// number of artifact channels
float g_artifactDispAtten = 0.1f;

gboolean g_enableArtifactBlanking = true;
int g_artifactBlankingSamps = 48;
int g_artifactBlankingPreSamps = 24;

gboolean g_enableStimClockBlanking = false;

int g_mode = MODE_RASTERS;
int g_drawmode[2] = {GL_POINTS, GL_LINE_STRIP};
int	g_drawmodep = 1;
int	g_blendmode[2] = {GL_ONE_MINUS_SRC_ALPHA, GL_ONE};
int g_blendmodep = 0;

//global labels..
GtkWidget *g_infoLabel;
GtkWidget *g_channelSpin[4] = {nullptr,nullptr,nullptr,nullptr};
GtkWidget *g_gainSpin[4] = {nullptr,nullptr,nullptr,nullptr};
GtkWidget *g_apertureSpin[8] = {nullptr,nullptr,nullptr,nullptr};
GtkWidget *g_enabledChkBx[4] = {nullptr,nullptr,nullptr,nullptr};
GtkWidget *g_spikeFileSizeLabel;
GtkWidget *g_notebook;
int g_uiRecursion = 0; //prevents programmatic changes to the UI
// from causing commands to be sent to the headstage.

void saveState()
{
	printf("Saving Preferences to %s\n", g_prefstr);
	MatStor ms(g_prefstr); 	// no need to load before saving here
	for (auto &c : g_c)
		c->save(&ms);
	for (auto &x : g_nlms)
		x->save(&ms);
	for (auto &a : g_artifact)
		a->save(&ms);
	ms.setInt("channel", g_channel);

	ms.setStructValue("gui","draw_mode",0,(float)g_drawmodep);
	ms.setStructValue("gui","blend_mode",0,(float)g_blendmodep);

	ms.setStructValue("raster","show_grid",0,(float)g_showContGrid);
	ms.setStructValue("raster","show_threshold",0,(float)g_showContThresh);
	ms.setStructValue("raster","span",0,g_rasterSpan);

	ms.setStructValue("spike","pre_emphasis",0,(float)g_whichSpikePreEmphasis);
	ms.setStructValue("spike","alignment_mode",0,(float)g_whichAlignment);
	ms.setStructValue("spike","min_isi",0,g_minISI);
	ms.setStructValue("spike","auto_threshold",0,g_autoThreshold);
	ms.setStructValue("spike","neo_threshold",0,g_neoThreshold);
	ms.setStructValue("spike","cols",0,(float)g_spikesCols);

	ms.setStructValue("wf","show_pca",0,(float)g_showPca);
	ms.setStructValue("wf","show_grid",0,(float)g_showWFVgrid);
	ms.setStructValue("wf","show_isi",0,(float)g_showISIhist);
	ms.setStructValue("wf","show_std",0,(float)g_showWFstd);
	ms.setStructValue("wf","span",0,g_zoomSpan);

	ms.setStructValue("filter","lopass",0,(float)g_lopassNeurons);
	ms.setStructValue("filter","hipass",0,(float)g_hipassNeurons);
	ms.setStructValue("filter","median",0,(float)g_whichMedianFilter);

	ms.setStructValue("icms","lms_train",0,(float)g_trainArtifactNLMS);
	ms.setStructValue("icms","lms_filter",0,(float)g_filterArtifactNLMS);

	ms.setStructValue("icms","template_train",0,(float)g_trainArtifactTempl);
	ms.setStructValue("icms","template_subtract",0,(float)g_enableArtifactSubtr);
	ms.setStructValue("icms","template_numsamples",0,(float)g_numArtifactSamps);
	ms.setStructValue("icms","template_chan_disp",0,(float)g_stimChanDisp);
	ms.setStructValue("icms","template_chan_atten",0,g_artifactDispAtten);

	ms.setStructValue("icms","blank_enable",0,(float)g_enableArtifactBlanking);
	ms.setStructValue("icms","blank_samples",0,(float)g_artifactBlankingSamps);
	ms.setStructValue("icms","blank_pre_samples",0,(float)g_artifactBlankingPreSamps);
	ms.setStructValue("icms","blank_clock_enable",0,(float)g_enableStimClockBlanking);

	ms.save();
}
void destroy(int)
{
	saveState(); 		// save the old values (do this first)
	g_die = true;		// tell threads to finish
	sleep(1);			// sleep a bit
	gtk_main_quit();	// tell gui thread to finish
	// now the rest of cleanup happens in main
}
void BuildFont(void)
{
	Display *dpy;
	XFontStruct *fontInfo;  // storage for our font.

	g_base = glGenLists(96);                      // storage for 96 characters.

	// load the font.  what fonts any of you have is going
	// to be system dependent, but on my system they are
	// in /usr/X11R6/lib/X11/fonts/*, with fonts.alias and
	// fonts.dir explaining what fonts the .pcf.gz files
	// are.  in any case, one of these 2 fonts should be
	// on your system...or you won't see any text.

	// get the current display.  This opens a second
	// connection to the display in the DISPLAY environment
	// value, and will be around only long enough to load
	// the font.
	dpy = XOpenDisplay(nullptr); // default to DISPLAY env.
	fontInfo = XLoadQueryFont(dpy, "-adobe-helvetica-medium-r-normal--14-*-*-*-p-*-iso8859-1");
	if (fontInfo == nullptr) {
		fontInfo = XLoadQueryFont(dpy, "fixed");
		if (fontInfo == nullptr) {
			warn("no X font available?");
		}
	}
	// after loading this font info, this would probably be the time
	// to rotate, scale, or otherwise twink your fonts.

	// start at character 32 (space), get 96 characters
	// (a few characters past z), and store them starting at base.
	glXUseXFont(fontInfo->fid, 32, 96, g_base);

	// free that font's info now that we've got the display lists.
	XFreeFont(dpy, fontInfo);

	// close down the 2nd display connection.
	XCloseDisplay(dpy);
}
void KillFont(void)
{
	glDeleteLists(g_base, 96);  // delete all 96 characters.
}
void glPrint(char *text) // custom gl print routine.
{
	if (text == nullptr) { // if there's no text, do nothing.
		return;
	}
	glPushAttrib(GL_LIST_BIT);  // alert that we're about to offset the display lists with glListBase
	glListBase(g_base - 32);    // sets the base character to 32.

	// draws the display list text.
	glCallLists(strlen(text), GL_UNSIGNED_BYTE, text);
	glPopAttrib();  // undoes the glPushAttrib(GL_LIST_BIT);
}
//GLvoid printGLf(const char *fmt, ...)
//{
//	va_list ap;     /* our argument pointer */
//	char text[256];
//	if (fmt == NULL)    /* if there is no string to draw do nothing */
//		return;
//	va_start(ap, fmt);  /* make ap point to first unnamed arg */
//	/* FIXME: we *should* do boundschecking or something to prevent buffer
//	 * overflows/segmentations faults
//	 */
//	vsprintf(text, fmt, ap);
//	va_end(ap);
//	glPushAttrib(GL_LIST_BIT);
//	glListBase(g_base - 32);
//	glCallLists(strlen(text), GL_UNSIGNED_BYTE, text);
//	glPopAttrib();
//}
void updateCursPos(float x, float y)
{
	g_cursPos[0] = x/g_viewportSize[0];
	g_cursPos[1] = y/g_viewportSize[1];
	//convert to -1 to +1
	for (auto &g_cursPo : g_cursPos) {
		g_cursPo -= 0.5f;
		g_cursPo *= 2.f;
	}
	g_cursPos[1] *= -1; //zero at the top for gtk; bottom for opengl.
}
static gint motion_notify_event( GtkWidget *,
                                 GdkEventMotion *event )
{
	float x, y;
	int ix, iy;
	GdkModifierType state;
	if (event->is_hint) {
		gdk_window_get_pointer (event->window, &ix, &iy, &state);
		x = ix;
		y = iy;
	} else {
		x = event->x;
		y = event->y;
		state = (GdkModifierType)(event->state);
	}
	updateCursPos(x,y);
	if ((state & GDK_BUTTON1_MASK) && (g_mode == MODE_SORT)) {
		if (g_addPoly) {
			g_c[g_channel[g_polyChan]]->addPoly(g_cursPos);
			for (int i=1; i<4; i++) {
				int sames = 0;
				for (int j=1; j<4; j++) {
					if (g_channel[(g_polyChan+i)&3] == g_channel[(g_polyChan+i+j)&3])
						sames = 1;
				}
				if (!sames)
					g_c[g_channel[(g_polyChan+i)&3]]->resetPoly();
			}
		} else {
			g_c[g_channel[g_polyChan]]->mouse(g_cursPos);
		}
	}
	if ((state & GDK_BUTTON1_MASK) && (g_mode == MODE_SPIKES)) {
		warn("TODO: interact with channel");
	}
	if (state & GDK_BUTTON3_MASK)
		g_rtMouseBtn = true;
	else
		g_rtMouseBtn = false;
	return TRUE;
}
//forward declaration.
static void templatePopupMenu (GdkEventButton *event, gpointer userdata);
void updateChannelUI(int k);

static gint button_press_event( GtkWidget *,
                                GdkEventButton *event )
{
	updateCursPos(event->x,event->y);
	if (g_mode == MODE_SORT) {
		int u = 0;
		if (g_cursPos[0] > 0.0f)
			u += 1;
		if (g_cursPos[1] < 0.0f)
			u += 2;

		if (event->button == 1) { // left click
			g_polyChan = u;
			g_addPoly = false;
			if (event->type==GDK_2BUTTON_PRESS) {
				g_c[g_channel[u]]->computePca();
			} else if (event->type==GDK_3BUTTON_PRESS) {
				g_c[g_channel[u]]->resetPca();
			} else {
				if (!g_c[g_channel[u]]->mouse(g_cursPos)) {
					g_c[g_channel[u]]->resetPoly();
					g_c[g_channel[u]]->addPoly(g_cursPos);
					g_addPoly = true;
				}
			}
		}
		if (event->button == 3) { // right click
			if (g_c[g_channel[u]]->m_pcaVbo->m_polyW > 10 && g_mode == MODE_SORT)
				templatePopupMenu(event, (gpointer)u);
		}
	}
	if (g_mode == MODE_SPIKES) {
		int nc = (int)g_c.size();
		int spikesRows = nc / g_spikesCols;
		if (nc % g_spikesCols) spikesRows++;
		float xf = g_spikesCols;
		float yf = spikesRows;
		float x = (g_cursPos[0] + 1.f)/ 2.f;
		float y = (g_cursPos[1]*-1.f + 1.f)/2.f; //0,0 = upper left hand corner.
		int sc = (int)floor(x*xf);
		int sr = (int)floor(y*yf);
		if (event->button==1 && event->type==GDK_2BUTTON_PRESS) { // double (left) click
			int h =  sr*g_spikesCols + sc;
			if (h >= 0 && h < nc) {
				//shift channels down, like a priority queue.
				for (int i=g_channel.size()-1; i>0; i--) {
					g_channel[i] = g_channel[i-1];
				}
				g_channel[0] = h;
				debug("channel switched to %d", g_channel[0]+1);
				g_mode = MODE_SORT;
				gtk_notebook_set_current_page(GTK_NOTEBOOK(g_notebook), MODE_SORT);
			}
			//update the UI elements.
			for (size_t i=0; i<g_channel.size(); i++) {
				gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_channelSpin[i]), g_channel[i]+1);
				updateChannelUI(i);
			}
		}
		if (event->button==3) { // (right click)
			int h =  sr*g_spikesCols + sc;
			if (h >= 0 && h < nc) {
				g_c[h]->toggleEnabled();
				for (int i=0; i<4; i++) {
					if (g_channel[i] == h) {
						updateChannelUI(i);
					}
				}
			}
		}
	}
	return TRUE;
}
static gboolean
expose1 (GtkWidget *da, GdkEventExpose *, gpointer )
{
	if (g_die) {
		return false;
	}

	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
		g_assert_not_reached ();

	//copy over any new data.
	if (!g_pause) {

		for (auto &x : g_timeseries) {
			x->copy();
		}

		for (auto &x : g_spikeraster) {
			x->copy();
		}

		//and the waveform buffers.
		for (auto &c : g_c)
			c->copy();
	}

	/* draw in here */
	glMatrixMode(GL_MODELVIEW);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_FLAT);
	glBlendFunc(GL_SRC_ALPHA, g_blendmode[g_blendmodep]);
	//draw the cursor no matter what?
	if (0) {
		float x = g_cursPos[0] + 1.f/g_viewportSize[0];
		float y = g_cursPos[1] + 1.f/g_viewportSize[1];
		glBegin(GL_LINES);
		glColor4f(1.f, 1.f, 1.f, 0.75);
		glVertex3f( x-0.1, y, 0.f);
		glVertex3f( x+0.1, y, 0.f);
		glVertex3f( x, y-0.1, 0.f);
		glVertex3f( x, y+0.1, 0.f);
		glEnd();
	}

	float time = g_pause ? g_pause_time : (float)gettime();

	if (g_mode == MODE_RASTERS) {

		//glPushMatrix();
		//glScalef(1.f, 0.5f, 1.f); //don't think this does anythaaang.
		//glTranslatef(0.f,0.5f, 0.f);

		//draw zero lines for the 4 continuous channels.
		for (int k=0; k<NFBUF; k++) {
			glLineWidth(1.f);
			glBegin(GL_LINES);
			glColor4f(0.f, 0.5, 1.f, 0.75); //blue, center line
			glVertex3f( -1.f, (float)((3-k)*2+1)/8.f, 0.f);
			glVertex3f( 1.f, (float)((3-k)*2+1)/8.f, 0.f);
			if (g_showContGrid) {
				glColor4f(0.f, 0.8f, 0.75f, 0.5);//green, edge lines
				glVertex3f( -1.f, (float)((3-k)*2)/8.f, 0.f);
				glVertex3f( 1.f, (float)((3-k)*2)/8.f, 0.f);
			}
#ifndef EMG
			//draw threshold.
			if (g_showContThresh) {
				float th = g_c[g_channel[k]]->getThreshold();
				float gn = g_c[g_channel[k]]->getGain();
				glColor4f (1., 0.0f, 0.0f, 0.35);
				float y = (float)((3-k)*2+1)/8.f +
				          (th*gn)/(8.f);
				glVertex3f(-1.f, y, 0.f);
				glVertex3f( 1.f, y, 0.f);
			}
#endif
			glEnd();
		}

		int n = g_timeseries.size();
		for (int k=0; k<n; k++) {
			float yoffset = (n-k-1)/((float)n);
			g_timeseries[k]->draw(g_drawmode[g_drawmodep], yoffset);

			//labels.
			glColor4f(1.f, 1.f, 1.f, 0.5);
			glRasterPos2f(-1.f, yoffset +
			              2.f*2.f/g_viewportSize[1]); // 2px vertical offset
			//kearning is from the lower right hand corner.
			char buf[128];
			if (g_c[g_channel[k]]->m_chanName.length() > 0) {
				snprintf(buf, 128, "%c: %s", 'A'+k, g_c[g_channel[k]]->m_chanName.c_str());
			} else {
				snprintf(buf, 128, "%c: %d", 'A'+k, g_channel[k]+1);
			}
			glPrint(buf);
		}

		u32 nplot = g_timeseries[0]->m_nplot;

		//draw seconds / ms label here.
		for (u32 i=0; i<nplot; i+=SRATE_HZ/5) {
			float x = 2.f*i/nplot-1.f + 2.f/g_viewportSize[0];
			float y = 1.f - 13.f*2.f/g_viewportSize[1];
			glRasterPos2f(x,y);
			char buf[64];
			snprintf(buf, 64, "%3.2f", i/SRATE_HZ);
			glPrint(buf);
		}

		if (g_showContGrid) {
			glColor4f(0.f, 0.8f, 0.75f, 0.35);
			glBegin(GL_LINES);
			for (u32 i=0; i<nplot; i+=SRATE_HZ/10) {
				float x = 2.f*i/nplot-1.f;
				glVertex2f(x, 0.f);
				glVertex2f(x, 1.f);
			}
			glEnd();
		}

		//rasters
#ifndef EMG

		glShadeModel(GL_FLAT);
		float vscale = g_c.size() + 1;
		glPushMatrix();
		glScalef(1.f/g_rasterSpan, -1.f/vscale, 1.f);
		int lt = (int)time / (int)g_rasterSpan; // why these two lines, not:
		lt *= (int)g_rasterSpan;				// lt = (int)time ???
		float x = time - (float)lt;
		float adj = 0.f;
		float movtime = 0.25 + log10(g_rasterSpan);
		if (x < movtime) {
			x /= movtime;
			adj = 2.f*x*x*x -3.f*x*x + 1;
			adj *= g_rasterSpan;
		}
		glTranslatef((0 - (float)lt + adj), 1.f, 0.f);

		for (auto &o : g_spikeraster)
			o->draw();

		//draw current time.
		glColor4f (1., 0., 0., 0.5);
		glBegin(GL_LINES);
		glVertex3f( time, 0, 0.f);
		glVertex3f( time, vscale, 0.f);
		glColor4f (0.5, 0.5, 0.5, 0.5);
		//draw old times, every second.
		for (int t=(int)time; t > time-g_rasterSpan*2; t--) {
			glVertex3f( (float)t, 0, 0.f);
			glVertex3f( (float)t, vscale, 0.f);
		}
		glEnd();
		//glEnable(GL_LINE_SMOOTH);
		glPopMatrix (); //so we don't have to worry about time.
		//draw current channel
		for (int k=0; k<4; k++) {
			glBegin(GL_LINE_STRIP);
			glColor4f (1., 0., 0., 0.5);
			float y = (float)(1.f+g_channel[k])/(-1.f*vscale);
			glVertex3f( -1.f, y, 0.f);
			glVertex3f( 1.f, y, 0.f);
			glEnd();
			//labels.
			glRasterPos2f(1.f - 2.f*35.f/g_viewportSize[1],
			              y+ 2.f*2.f/g_viewportSize[1]); //2 pixels vertical offset.
			//kearning is from the lower right hand corner.
			char buf[128] = {0,0,0,0};
			snprintf(buf, 128, "%c %d", 'A'+k, g_channel[k]);
			glPrint(buf);
		}
#endif
		//end VBO
	}

	if (g_mode == MODE_SORT || g_mode == MODE_SPIKES) {
		glPushMatrix();
		glEnableClientState(GL_VERTEX_ARRAY);
		float xo, yo, xz, yz;
		cgGLEnableProfile(myCgVertexProfile);
		if (g_blendmode[g_blendmodep] == GL_ONE)
			g_vsFadeColor->setParam(2,"ascale", 0.2f);
		else
			g_vsFadeColor->setParam(2,"ascale", 1.f);
		cgGLDisableProfile(myCgVertexProfile);
		if (g_mode == MODE_SORT) {
			for (int k=0; k<4; k++) {
				//2x2 array.
				xo = (k%2)-1.f;
				yo = 0.f-(k/2);
				xz = 1.f;
				yz = 1.f;
				g_c[g_channel[k]]->setLoc(xo, yo, xz, yz);
				g_c[g_channel[k]]->draw(g_drawmode[g_drawmodep], time, g_cursPos,
				                        g_showPca, g_rtMouseBtn, true, g_showWFVgrid);
			}
		}
		if (g_mode == MODE_SPIKES) {
			int nc = (int)g_c.size();
			int spikesRows = nc / g_spikesCols;
			if (nc % g_spikesCols) spikesRows++;
			float xf = g_spikesCols;
			float yf = spikesRows;
			xz = 2.f/xf;
			yz = 2.f/yf;
			for (int k=0; k<nc; k++) {
				xo = (k%g_spikesCols)/xf;
				yo = ((k/g_spikesCols)+1)/yf;
				g_c[k]->setLoc(xo*2.f-1.f, 1.f-yo*2.f, xz*2.f, yz);
				g_c[k]->draw(g_drawmode[g_drawmodep], time, g_cursPos,
				             g_showPca, g_rtMouseBtn, false, g_showWFVgrid);
			}
			//draw some lines.
			glBegin(GL_LINES);
			glColor4f(1.f, 1.f, 1.f, 0.4);
			for (int c=1; c<g_spikesCols; c++) {
				float cf = (float)c / g_spikesCols;
				glVertex2f(cf*2.f-1.f, -1.f);
				glVertex2f(cf*2.f-1.f, 1.f);
			}
			for (int r=1; r<spikesRows; r++) {
				float rf = (float)r / spikesRows;
				glVertex2f(-1.f, rf*2.f-1.f);
				glVertex2f( 1.f, rf*2.f-1.f);
			}
			glEnd();

			// label the current audio channel (A) red
			// and the other 3 channels (B-D) yellow
			// reverse typical loop order to draw ch A on top
			for (int k=3; k>=0; k--) {
				glLineWidth(2.f);
				glBegin(GL_LINE_STRIP);
				if (k==0)
					//glColor4f(1.f, 0.f, 0.f, 1.f);
					glColor4ub(239,59,44,255);
				else
					glColor4ub(255,237,160,255);
				//glColor4f(1.f, 1.f, 0.f, 1.f);
				int h = g_channel[k];
				xo = (h%g_spikesCols)/xf;
				xo *= 2.f;
				xo -= 1.f;
				yo = ((h/g_spikesCols)+1)/yf;
				yo *= -2.f;
				yo += 1.f;
				float xa, ya;
				xa = ya = 0.f;
				if (xo <= -1.f) xa = 2.0/g_viewportSize[0]; //one pixel.
				if (yo <= -1.f) ya = 2.0/g_viewportSize[1];
				glVertex2f(xo+xa, yo+ya);
				glVertex2f(xo+xa, yo+yz);
				glVertex2f(xo+xz, yo+yz);
				glVertex2f(xo+xz, yo+ya);
				glVertex2f(xo+xa, yo+ya);
				glEnd();
			}
		}
		glPopMatrix();
	}
	if (g_mode == MODE_ICMS) {
		g_artifact[g_stimChanDisp]->draw();
	}
	glDisableClientState(GL_VERTEX_ARRAY);

	if (gdk_gl_drawable_is_double_buffered (gldrawable))
		gdk_gl_drawable_swap_buffers (gldrawable);
	else
		glFlush ();

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean
configure1 (GtkWidget *da, GdkEventConfigure *, gpointer)
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
		g_assert_not_reached ();

	glLoadIdentity();
	glViewport (0, 0, da->allocation.width, da->allocation.height);
	g_viewportSize[0] = (float)da->allocation.width;
	g_viewportSize[1] = (float)da->allocation.height;
	/*printf("allocation.width %d allocation_height %d\n",
		da->allocation.width, da->allocation.height); */
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glOrtho (-1,1,-1,1,0,1);
	glEnable(GL_BLEND);
	//glEnable(GL_LINE_SMOOTH);
	//glEnable(GL_DEPTH_TEST);
	//glDepthMask(GL_TRUE);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	if (!g_vboInit) { //start it up!
		//start up Cg first.(glInfo seems to trample some structures)
		myCgContext = cgCreateContext();
		checkForCgError("creating Cg context\n");
		cgGLSetDebugMode(CG_FALSE);
		cgSetParameterSettingMode(myCgContext, CG_DEFERRED_PARAMETER_SETTING);
		checkForCgError("Cg parameter setting\n");

		myCgVertexProfile = cgGLGetLatestProfile(CG_GL_VERTEX);
		cgGLSetOptimalOptions(myCgVertexProfile);
		checkForCgError("selecting vertex profile");

		char linkname[4096];
		char *dname;
		// get directory of current exe
		ssize_t r = readlink("/proc/self/exe", linkname, 4096);
		if (r < 0) {
			perror("/proc/self/exe");
			exit(EXIT_FAILURE);
		}
		dname = dirname(linkname);
		string d(dname);

		string cgfile;

		cgfile = d + "/cg/" + "fadeColor.cg";
		g_vsFadeColor = new cgVertexShader(cgfile.c_str(),"fadeColor");
		g_vsFadeColor->addParams(5,"time","fade","col","off","ascale");

		cgfile = d + "/cg/" + "threshold.cg";
		g_vsThreshold = new cgVertexShader(cgfile.c_str(),"threshold");
		g_vsThreshold->addParams(2,"xzoom","yoffset");

		//now the vertex buffers.
		glInfo glInfo;
		glInfo.getInfo();
		printf("OpenGL (%s) version: %s\n",
		       glInfo.vendor.c_str(),
		       glInfo.version.c_str());
		printf("GLSL version: %s\n", glInfo.glslVersion.c_str());
		printf("Renderer: %s\n", glInfo.renderer.c_str());
		if (glInfo.isExtensionSupported("GL_ARB_vertex_buffer_object")) {
			printf("Video card supports GL_ARB_vertex_buffer_object.\n");
		} else {
			error("Video card does NOT support GL_ARB_vertex_buffer_object");
			exit(1);
		}

		for (auto &x : g_timeseries) {
			x->configure();
			x->setVertexShader(g_vsThreshold);
			x->setCGProfile(myCgVertexProfile);
			x->setNPlot(g_zoomSpan * SRATE_HZ);
		}

		for (auto &x : g_spikeraster) {
			x->configure();
		}

		for (auto &x : g_c) {
			x->configure(g_vsFadeColor);
		}

		g_vboInit = true;

	}
	BuildFont(); //so we're in the right context?

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean rotate(gpointer user_data)
{
	GtkWidget *da = GTK_WIDGET (user_data);

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);

	string s = g_ts.getInfo();
	char str[256];
	snprintf(str, 256, "\npo8e poll (avg): %.4Lf (ms)\n", g_po8eAvgInterval);
	s += string(str);
	gtk_label_set_text(GTK_LABEL(g_infoLabel), s.c_str());

	if (g_wfwriter.enabled()) {
		size_t n = g_wfwriter.filename().find_last_of("/");

		snprintf(str, 256, "%s: %.2f MB",
		         g_wfwriter.filename().substr(n+1).c_str(),
		         (double)g_wfwriter.bytes()/1e6);
		gtk_label_set_text(GTK_LABEL(g_spikeFileSizeLabel), str);
	}

	g_icmswriter.draw();
	g_analogwriter.draw();
	g_analogwriter_prefilter.draw();

	return TRUE;
}
void destroyGUI(GtkWidget *, gpointer)
{
	destroy(SIGINT);
}
void nlms_train()
{
	gsl_vector *xvec;
	while (!g_die) {
		int succeeded = 0;
		do {
			succeeded = g_filterbuf.try_dequeue(xvec);
			if (!succeeded)
				usleep(1e3);
		} while (!succeeded && !g_die);

		if (!succeeded)
			continue;

		for (auto &x : g_nlms) {
			auto ch = x->ch();
			double d = gsl_vector_get(xvec, ch);
			gsl_vector_set(xvec, ch, 0.0);
			x->train(xvec, d);
			gsl_vector_set(xvec, ch, d);
		}
		gsl_vector_free(xvec); // free memory allocated in other thread
	}
}
void sorter(int ch)
{
	float 	wf_sp[2*NWFSAMP];
	float 	neo_sp[2*NWFSAMP];
	u32 	tk_sp[2*NWFSAMP];

	float threshold;
	if (g_whichSpikePreEmphasis == 2) {
		threshold = g_neoThreshold;
	} else {
		threshold = g_c[ch]->getThreshold(); // 1 -> 10mV.
	}

	while (g_c[ch]->m_spkbuf.getSpike(tk_sp, wf_sp, neo_sp, 2*NWFSAMP, threshold, NWFSAMP, g_whichSpikePreEmphasis)) {
		// ask for twice the width of a spike waveform so that we may align

		int a = floor(NWFSAMP/2);
		int b = floor(NWFSAMP/2)+NWFSAMP;

		int centering = a;
		float v;

		switch (g_whichAlignment) {
		case ALIGN_CROSSING:
			//centering = (float)NWFSAMP - g_c[ch]->getCentering();
			centering = g_c[ch]->getCentering() + a;
			break;
		case ALIGN_MIN:
			v = FLT_MAX;
			for (int i=a; i<b; i++) {
				if (v > wf_sp[i]) {
					v = wf_sp[i];
					centering = i;
				}
			}
			break;
		case ALIGN_MAX:
			v = FLT_MIN;
			for (int i=a; i<b; i++) {
				if (v < wf_sp[i]) {
					v = wf_sp[i];
					centering = i;
				}
			}

			break;
		case ALIGN_ABS:
			v = FLT_MIN;
			for (int i=a; i<b; i++) {
				if (v < fabs(wf_sp[i])) {
					v = fabs(wf_sp[i]);
					centering = i;
				}
			}

			break;
		case ALIGN_SLOPE:
			v = FLT_MIN;
			for (int i=a; i<b; i++) {
				if (v < wf_sp[i+1]-wf_sp[i]) {
					v = wf_sp[i+1]-wf_sp[i];
					centering = i;
				}
			}

			break;
		case ALIGN_NEO: {
			v = FLT_MIN;
			for (int i=a; i<b; i++) {
				if (v < neo_sp[i]) {
					v = neo_sp[i];
					centering = i;
				}
			}
		}
		break;
		default:
			error("bad alignment type. exiting");
			exit(1);
		}

		size_t idx = centering-(int)floor(NWFSAMP/2);

		u32 tk = tk_sp[centering]; // alignment time

		int unit = 0; //unsorted.
		for (int u=1; u>=0; u--) { // compare to template.
			float sum = 0;
			for (int j=0; j<NWFSAMP; j++) {
				float r = wf_sp[idx+j] - g_c[ch]->m_template[u][j];
				sum += r*r;
			}
			sum /= NWFSAMP;
			if (sum < g_c[ch]->getAperture(u))
				unit = u+1;
		}

		// check if this exceeds minimum ISI.
		// wftick is indexed to the start of the waveform.
		bool passed = true;
		if (unit > 0) { // sorted
			passed = (tk - g_c[ch]->m_lastSpike[unit-1]) > g_minISI*SRATE_KHZ;
		}

		if (passed) {
			long double the_time = g_ts.getTime(tk);
			g_c[ch]->addWf(&wf_sp[idx], unit, the_time, true);
			g_c[ch]->updateISI(unit, tk); // does nothing for unit==0
			if (g_wfwriter.enabled() && (unit > 0 || g_saveUnsorted)) {
				wfpak pak;
				pak.time = the_time;
				pak.ticks = tk;
				pak.channel = ch;
				pak.unit = unit;
				pak.len = NWFSAMP;
				float gain2 = 2 * 32767.f / 1e4; // XXX is this set to proper per-chan gain?
				for (int g=0; g<NWFSAMP; g++) {
					pak.wf[g] = (i16)(wf_sp[idx+g]*gain2); //should be in original units.
				}
				g_wfwriter.add(&pak);
			}
			if (unit > 0 && unit < NUNIT) {
				int uu = unit-1;
				// g_fr[ch][uu].add(the_time); // TODO fix this
				g_spikeraster[uu]->addEvent((float)the_time, (float)ch); // for drawing
			}
		}
	}
}
void wfwrite()
{
	while (!g_die) {
		if (g_wfwriter.write()) //if it can write, it will.
			usleep(1e4); //poll qicker.
		else
			usleep(1e5);
	}
}
void icmswrite()
{
	while (!g_die) {
		if (g_icmswriter.write()) //if it can write, it will.
			usleep(1e4); // poll quicker
		else
			usleep(1e5);
	}
}
void analogwrite()
{
	while (!g_die) {
		if (g_analogwriter.write()) // if it can write, it will
			usleep(1e4); // poll quicker
		else
			usleep(1e5);
	}
}
void analogwrite_prefilter()
{
	while (!g_die) {
		if (g_analogwriter_prefilter.write()) // if it can write, it will
			usleep(1e4); // poll quicker
		else
			usleep(1e5);
	}
}
void po8e_fun(PO8e *p, ReaderWriterQueue<PO8Data> *q)
{
	size_t bufmax = 10000;	// must be >= 10000

	// TODO: this actually should depend on the sampling rate.
	// also, perhaps it would be better to grab as many samples as possible
	// that are available on each card, like, query each and take the minimum
	size_t read_size = 32; // samples

	printf("Waiting for the stream to start ...\n");
	//p->waitForDataReady(1);
	while (p->samplesReady() == 0 && !g_die) {
		usleep(5000);
	}

	if (p == nullptr || g_die) {
		return; /// xxx how to recover?
	}

	auto nchan = p->numChannels();
	auto bps = p->dataSampleSize(); // bytes/sample
	printf("Card %p: %d channels @ %d bytes/sample\n", (void *)p, nchan, bps);

	// 10000 samples * 2 bytes/sample * nChannels
	auto buff = new i16[bufmax*(nchan)];
	auto tick = new i64[bufmax];

	// get the initial tick value. hopefully a small number
	p->readBlock(buff, 1, tick);
	int64_t last_tick = tick[0] - 1;

	while (!g_die) {

		bool stopped = false;
		size_t numSamples = p->samplesReady(&stopped);
		if (stopped) {
			break; // xxx how to recover?
		}

		if (numSamples >= read_size) {
			if (numSamples > bufmax) {
				warn("samplesReady() returned too many samples (buffer wrap?): %zu",
				     numSamples);
				numSamples = bufmax;
			}

			size_t numRead = p->readBlock(buff, read_size, tick);
			p->flushBufferedData(numRead);

			if (tick[0] != last_tick + 1) {
				warn("%p: PO8e tick glitch between blocks. Expected %zu got %zu",
				     p, last_tick+1, tick[0]);
				g_ts.m_dropped++;
				// xxx how to recover?
			}
			for (size_t i=0; i<numRead-1; i++) {
				if (tick[i+1] != tick[i] + 1) {
					warn("%p: PO8e tick glitch within block. Expected %zu got %zu",
					     p, tick[i]+1, tick[i+1]);
					g_ts.m_dropped++;
					// xxx how to recover?
				}
			}
			last_tick = tick[numRead-1];

			PO8Data o;
			o.data = (i16 *)malloc(nchan*numRead*sizeof(i16));
			memcpy(o.data, buff, nchan*numRead*sizeof(i16));
			o.numChannels = nchan;
			o.numSamples = numRead;
			o.tick = tick[0];
			q->enqueue(o);
			// NB the other thread frees the memory allocated to p.data
		} else {
			usleep(1e3);
		}
	}

	// delete buffers since we have dynamically allocated;
	delete[] buff;
	delete[] tick;

	printf("  stopped collecting data\n");
	p->stopCollecting();
	printf("  releasing card %p\n", (void *)p);
	PO8e::releaseCard(p);

	printf("\n");
	sleep(1);
}

void worker()
{
	gsl_vector *xvec = gsl_vector_alloc(g_c.size());

	vector<PO8Data> p;
	vector<po8e::card *> c;

	while (!g_die) {

		auto n = g_dataqueues.size();

		p.clear();
		c.clear();

		for (size_t i=0; i<n; i++) {
			auto q = g_dataqueues[i].first;
			c.push_back(g_dataqueues[i].second);
			int succeeded;
			do {
				PO8Data x;
				succeeded = q->try_dequeue(x);
				if (succeeded)
					p.push_back(x);
				else
					usleep(1e3);
			} while (!succeeded && !g_die);
		}

		if (g_die)
			break;

		auto mismatch = false;
		for (size_t i=0; i<n; i++) {
			if (p[i].numSamples != p[0].numSamples) {
				warn("po8e card sample mismatch");
				mismatch = true;
				break;
			}
			if (p[i].numChannels != p[0].numChannels) {
				warn("po8e card channel mismatch");
				mismatch = true;
				break;
			}
			if (p[i].numChannels != (size_t)c[i]->channel_size()) {
				warn("po8e card %d: configured for %d channels (%d received in po8e packet)",
				     c[i]->id(), c[i]->channel_size(), p[i].numChannels);
				mismatch = true;
				break;
			}
			if (p[i].tick != p[0].tick) {
				warn("p08e ticks misaligned between cards");
				mismatch = true;
				break;
			}
		}

		if (mismatch) // exit the worker; no data will be processed
			break;

		long double time = gettime();
		g_po8ePollInterval = (time - g_lastPo8eTime)*1000.0;
		g_po8eAvgInterval = g_po8eAvgInterval * 0.99 + g_po8ePollInterval * 0.01;
		g_lastPo8eTime = time;

		// also -- only accept stort-interval responses (ignore outliers..)
		if (g_po8ePollInterval < g_po8eAvgInterval*1.5) {
			g_ts.update(time, p[0].tick); //also updates the mmap file.
		}

		auto ns = p[0].numSamples;

		auto tk 	= new u32[ns];
		tk[0] = p[0].tick;
		for (size_t i=1; i < ns; i++) {
			tk[i] = tk[i-1] + 1;
		}

		size_t nnc = 0; // num neural channels
		for (auto &card : c) {
			for (int j=0; j<card->channel_size(); j++) {
				if (card->channel(j).data_type() == po8e::channel::NEURAL) {
					nnc++;
				}
			}
		}
		auto f = new float[nnc * ns];
		size_t nc_i = 0;
		for (size_t i=0; i<c.size(); i++) {
			for (int j=0; j<c[i]->channel_size(); j++) {
				if (c[i]->channel(j).data_type() == po8e::channel::NEURAL) {
					float scale_factor = (float)c[i]->channel(j).scale_factor();
					scale_factor /= 1e6; // to get uV
					for (size_t k=0; k<ns; k++) {
						f[nc_i*ns+k] = (float)p[i].data[j*ns+k]/scale_factor;
					}
					nc_i++;
				}
			}
		}

		auto audio 	= new float[ns];

		// TODO: these two need to be set. Keep empty for now
		auto stim 	= new u32[ns];
		auto blank 	= new bool[ns];
		//stim[k]  = (u16)(p[1].data[8*ns + k]);
		//stim[k] += (u16)(p[1].data[9*ns + k]) << 16;
		//blank[k] = p[1].data[10*ns + k] > 0;

		// free the po8e data packet
		for (auto &x : p) {
			free(x.data);
		}

		// write (pre-filtered) broadband signal to disk
		if (g_analogwriter_prefilter.enabled()) {
			Analog *ac;

			ac = new Analog; // deleted by other thread
			ac->set_chan(g_channel[0]+1);	// 1-indexed
			for (size_t k=0; k<ns; k++) {
				ac->add_sample(f[g_channel[0]*ns+k]); // no need to gain it
				ac->add_tick(tk[k]);
				ac->add_ts(g_ts.getTime(tk[k]));
			}
			g_analogwriter_prefilter.add(ac);

			if (g_whichAnalogSave == 1) { // save all channels
				for (int ch=0; ch<(int)nnc; ch++) {
					if (ch == g_channel[0])
						continue;
					ac = new Analog; // deleted by other thread
					ac->set_chan(ch+1);	// 1-indexed
					for (size_t k=0; k<ns; k++) {
						ac->add_sample(f[ch*ns+k]); // no need to gain it
						ac->add_tick(tk[k]);
						ac->add_ts(g_ts.getTime(tk[k]));
					}
					g_analogwriter_prefilter.add(ac);
				}
			}
		}

		// fill artifact filtering buffers (for other thread)
		// we do both training and filtering before filtering
		// on the intuition that it will work better this way
		for (size_t k=0; k<ns; k++) {
			if (g_trainArtifactNLMS || g_filterArtifactNLMS) {
				for (int ch=0; ch<(int)nnc; ch++) {
					gsl_vector_set(xvec, ch, (double)f[ch*ns+k]);
				}
			}

			// populate the entire xvec (96 channels)
			// we zero out the current (desired) element on the fly
			// so it doesn't predict itself
			// this is faster than the alternative
			if (g_trainArtifactNLMS) {
				gsl_vector *yvec = gsl_vector_alloc(nnc);
				gsl_vector_memcpy (yvec, xvec);
				g_filterbuf.enqueue(yvec); // free on the other thread
			}

			// filter online here
			if (g_filterArtifactNLMS) {
				for (int ch=0; ch<(int)nnc; ch++) {
					double d = gsl_vector_get(xvec, ch);
					gsl_vector_set(xvec, ch, 0.0);
					f[ch*ns+k] -= (float)g_nlms[ch]->filter(xvec);
					gsl_vector_set(xvec, ch, d);
				}
			}
		}

		// big loop through samples
		for (size_t k=0; k<ns; k++) {

			//if (stim[k] != 0) {
			//	printf("icms pulse %d\n", stim[k]);
			//}

			for (auto &a : g_artifact) {

				// identify stim pulses
				i32 sc = a->m_stimchan;
				u32 id = (uint) (1 << sc); // 2^x
				if (stim[k] & id) {
					int z = 0;
					for (int y=0; y<NARTPTR; y++) {
						if (a->m_windex[y] == -1) {
							a->m_windex[y] = 0;
							a->m_rindex[y] = 0;
							z++;
							break;
						}
					}
					if (z == NARTPTR) {
						warn("STIM ARTIFACTS OVERLAP");
					}
				}

				// update artifact-subtraction buffers
				for (int z=0; z<NARTPTR; z++) {
					i64 idx = a->m_windex[z]; // write pointer
					if (idx != -1) {
						for (int ch=0; ch<(int)nnc; ch++) {
							a->m_now[ch*ARTBUF+idx] = f[ch*ns+k];
						}
						a->m_windex[z]++;
						if (a->m_windex[z] >= ARTBUF) {
							if (g_icmswriter.enabled()) {
								auto o = new ICMS; // deleted by other thread
								o->set_ts(g_ts.getTime(tk[k]-ARTBUF));
								o->set_tick(tk[k]-ARTBUF);
								o->set_stim_chan(sc+1); // 1-indexed

								if (g_saveICMSWF) {
									for (int ch=0; ch<(int)nnc; ch++) {
										ICMS_artifact *art = o->add_artifact();
										art->set_rec_chan(ch+1); //1-indexed
										for (int x=0; x<ARTBUF; x++) {
											art->add_sample(a->m_now[ch*ARTBUF+x]);
										}
									}
								}
								g_icmswriter.add(o);
							}
							a->m_windex[z] = -1;

							if ((g_trainArtifactTempl) &&
							    (a->m_nsamples < g_numArtifactSamps)) {
								a->m_nsamples++;

								// for iterative update of average
								float alpha = 1.f/a->m_nsamples;

								for (int ch=0; ch<(int)nnc; ch++) {
									for (int x=0; x<ARTBUF; x++) {
										float cur = a->m_wav[ch*ARTBUF+x];
										float now = a->m_now[ch*ARTBUF+x];
										float nex = cur + alpha*(now-cur);
										a->m_wav[ch*ARTBUF+x] = nex;
									}
								}
							}
						}
					}

					i64 ridx = a->m_rindex[z]; // read pointer

					if (ridx == -1)
						continue; // try next z-pointer

					if (g_enableArtifactSubtr) {
						for (int ch=0; ch<(int)nnc; ch++) {
							f[ch*ns+k] -= a->m_wav[ch*ARTBUF+ridx];
						}
					}
					// nb. updating the read pointer happens below,
					// in the per-artifact blanking code block
				}
			}

			// post-artifact-removal filtering
			for (int ch=0; ch<(int)nnc; ch++) {
				if ( g_hipassNeurons &&  g_lopassNeurons)
					g_bandpass[ch].Proc(&f[ch*ns+k], &f[ch*ns+k], 1);

				if ( g_hipassNeurons && !g_lopassNeurons)
					g_hipass[ch].Proc(&f[ch*ns+k], &f[ch*ns+k], 1);

				if (!g_hipassNeurons &&  g_lopassNeurons)
					g_lopass[ch].Proc(&f[ch*ns+k], &f[ch*ns+k], 1);

				if (g_whichMedianFilter == 1)
					f[ch*ns+k] = g_medfilt3[ch].proc(f[ch*ns+k]);
				else if (g_whichMedianFilter == 2)
					f[ch*ns+k] = g_medfilt5[ch].proc(f[ch*ns+k]);
			}

			// blank based on artifact (must happen after filtering
			for (auto &elem : g_artifact) {
				for (int z=0; z<NARTPTR; z++) {
					i64 ridx = elem->m_rindex[z]; // read pointer

					if (ridx == -1)
						break;

					if (g_enableArtifactBlanking &&
					    ridx >= g_artifactBlankingPreSamps &&
					    ridx <  g_artifactBlankingPreSamps+g_artifactBlankingSamps) {
						for (int ch=0; ch<(int)nnc; ch++) {
							f[ch*ns+k] = 0.f;
						}
					}
					elem->m_rindex[z]++;
					if (elem->m_rindex[z] >= ARTBUF)
						elem->m_rindex[z] = -1;
				}
			}

			// blank based on the stim clock (must happen last)
			if (g_enableStimClockBlanking && blank[k]) {
				for (int ch=0; ch<(int)nnc; ch++) {
					// note that if we keep track of the last value from the
					// previous loop through, we could do sample-and-hold
					// rather than zero-out. which is better?
					// nan-ing is also a good idea but poisons further
					// computations
					//f[ch*ns+k] = nanf("");
					f[ch*ns+k] = 0.f;
				}
			}
		}

		// input data is scaled from TDT so that 32767 = 10mV.
		// send the data for one channel to jack
		for (int h=0; h<NFBUF; h++) {
			int ch = g_channel[h];
			float gain = g_c[ch]->getGain();
			for (size_t k=0; k<ns; k++) {
				// scale into a reasonable range for audio
				// and timeseries display
				float fg = f[ch*ns+k] * gain / 1e4;
				g_timeseries[h]->addData(&fg, 1); // timeseries trace
				if (h==0) {
					audio[k] = fg;
				}
			}
		}
#ifdef JACK
		jackAddSamples(audio, audio, ns);
#endif

		// package data for sorting / saving

		for (auto &ch : g_c) {
			double m = ch->m_mean;
			for (size_t k=0; k<ns; k++) {
				auto x = f[ch->m_ch*ns+k] / 1e4; // scale so 1 = +10 mV
				// 1 = +10mV; range = [-1 1] here.
				ch->m_spkbuf.addSample(tk[k], x);

				//update the channel standard deviations, too.
				ch->m_var *= 0.999998;
				ch->m_var += 0.000002*(x-m)*(x-m);
				m *= 0.999997;
				m += 0.000003*x;
			}
			ch->m_mean = m;
		}

		// write broadband signal to disk
		if (g_analogwriter.enabled()) {
			Analog *ac;

			ac = new Analog; // deleted by other thread
			ac->set_chan(g_channel[0]+1);	// 1-indexed
			for (size_t k=0; k<ns; k++) {
				ac->add_sample(f[g_channel[0]*ns+k]); // no need to gain it
				ac->add_tick(tk[k]);
				ac->add_ts(g_ts.getTime(tk[k]));
			}
			g_analogwriter.add(ac);

			if (g_whichAnalogSave == 1) {
				for (int ch=0; ch<(int)nnc; ch++) {
					if (ch == g_channel[0])
						continue;
					ac = new Analog; // deleted by other thread
					ac->set_chan(ch+1);	// 1-indexed
					for (size_t k=0; k<ns; k++) {
						ac->add_sample(f[ch*ns+k]); // no need to gain it
						ac->add_tick(tk[k]);
						ac->add_ts(g_ts.getTime(tk[k]));
					}
					g_analogwriter.add(ac);
				}
			}
		}

		// sort -- see if samples pass threshold. if so, copy.
		for (int ch=0; ch<(int)nnc; ch++) {
			if (g_c[ch]->getEnabled()) { //XXX put this into channel class?
				sorter(ch);
			}
		}

		delete[] f;
		delete[] tk;
		delete[] stim;
		delete[] blank;
		delete[] audio;
	}

	gsl_vector_free(xvec);
}

void flush_pipe(int fid)
{
	fcntl(fid, F_SETFL, O_NONBLOCK);
	char *d = (char *)malloc(1024*8);
	int r = read(fid, d, 1024*8);
	printf("flushed %d bytes\n", r);
	free(d);
	int opts = fcntl(fid,F_GETFL);
	opts ^= O_NONBLOCK;
	fcntl(fid, F_SETFL, opts);
}
void mmap_fun()
{
	// sockets are too slow -- we need to memmap a file(s).
	/* matlab can do this -- very well, too! e.g:
	 * m = memmapfile('/tmp/binned.mmap', 'Format', {'uint16' [194 10] 'x'})
	 * A = m.Data(1).x;
	 * */
	// XXX we make an assumption here that the number of lags is
	// the same for all neurons.
	//auto nc = g_c.size();
	int nlags = g_fr[0][0].get_lags();
	size_t length = (RECCHAN+1)*NSORT*nlags*2; // (chans+time)*(2 units)*lags*sizeof(short)
	auto mmh = new mmapHelp(length, "/tmp/binned.mmap");
	volatile u16 *bin = (u16 *)mmh->m_addr;
	mmh->prinfo();

	auto pipe_out = new fifoHelp("/tmp/gtkclient_out.fifo");
	pipe_out->prinfo();

	auto pipe_in = new fifoHelp("/tmp/gtkclient_in.fifo");
	pipe_in->setR(); // so we can poll
	pipe_in->prinfo();

	int frame = 0;
	bin[RECCHAN*2*nlags] = 0;
	bin[RECCHAN*2*nlags+1] = 0;
	flush_pipe(pipe_out->m_fd);

	while (!g_die) {
		//printf("%d waiting for matlab...\n", frame);
		if (pipe_in->Poll(1000)) {
			double reqTime = 0.0;
			int r = read(pipe_in->m_fd, &reqTime, 8); // send it the time you want to sample,
			double end = (reqTime > 0) ? reqTime : (double)gettime(); // < 0 to bin 'now'
			if (r >= 3) {
				for (int i=0; i<RECCHAN; i++) {
					for (int j=0; j<2; j++) {
						g_fr[i][j].get_bins(end, (u16 *)&(bin[(i*2+j)*nlags]));
					}
				}
				bin[RECCHAN*2*nlags]++; //counter.
				// N.B. seems we need to touch all memory to update the first page.
				//msync(addr, length, MS_SYNC);
				//  if made with shm_open, msync is ok -- no writes to disk.
				usleep(100); //seems reliable with this in place.
				write(pipe_out->m_fd, "go\n", 3);
				//printf("sent pipe_out 'go'\n");
			} else
				usleep(100000); //does not seem to limit the frame rate, just the startup sync.
			frame++;
		}
	}
	delete mmh;
	delete pipe_in;
	delete pipe_out;
}
void updateChannelUI(int k)
{
	//called when a channel changes -- update the UI elements accordingly.
	g_uiRecursion++;
	int ch = g_channel[k];
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_gainSpin[k]), g_c[ch]->getGain());
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_apertureSpin[k*2+0]), g_c[ch]->getApertureUv(0));
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_apertureSpin[k*2+1]), g_c[ch]->getApertureUv(1));
	gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(g_enabledChkBx[k]), g_c[ch]->getEnabled());
	g_uiRecursion--;
}
static void channelSpinCB(GtkWidget *spinner, gpointer p)
{
	int k = (int)((i64)p & 0xf);
	int ch = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(spinner));
	ch--; // make zero indexed
	int nc = (int)g_c.size();
	debug("channelSpinCB: %d", ch+1);
	if (ch < nc && ch >= 0 && ch != g_channel[k]) {
		g_channel[k] = ch;
		updateChannelUI(k); //update the UI too.
	}
	//if we are in sort mode, and k == 0, move the other channels ahead of us.
	//this allows more PCA points for sorting!
	if (k == 0 && g_autoChOffset) {
		for (size_t j=1; j<g_channel.size(); j++) {
			g_channel[j] = (g_channel[0] + j) % nc;
			//this does not recurse -- have to set the other stuff manually.
			g_uiRecursion++;
			gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_channelSpin[j]), (double)g_channel[j]+1);
			g_uiRecursion--;
		}
		//loop over & update the UI afterward, so we don't have a race-case.
		for (int j=1; j<4; j++) {
			updateChannelUI(j);
		}
	}
}
static void gainSpinCB(GtkWidget *spinner, gpointer p)
{
	int x = (int)((i64)p & 0xf);
	if (!g_uiRecursion) {
		float gain = gtk_spin_button_get_value(GTK_SPIN_BUTTON(spinner));
		debug("ch %d (%d) gainSpinCB: %f", g_channel[x], x, gain);
		g_c[g_channel[x]]->setGain(gain);
		g_c[g_channel[x]]->resetPca();
	}
}
static void basic_checkbox_cb(GtkWidget *button, gpointer p)
{
	gboolean *b = (gboolean *)p;
	*b = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button)) ?
	     true :
	     false;
}
static void basic_spinfloat_cb(GtkWidget *spinner, gpointer p)
{
	float *f = (float *)p;
	*f = (float)gtk_spin_button_get_value(GTK_SPIN_BUTTON(spinner));
}
static void basic_spinint_cb(GtkWidget *spinner, gpointer p)
{
	int *x = (int *)p;
	*x = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(spinner));
}
static void notebookPageChangedCB(GtkWidget *,
                                  gpointer, int page, gpointer)
{
	// special-case the save tab (don't change the view)
	g_mode = (page != 4) ? page : g_mode;
}
static GtkWidget *mk_spinner(const char *txt, GtkWidget *container,
                             float start, float min, float max, float step,
                             GtkCallback cb, gpointer data)
{
	GtkWidget *spinner, *label;
	GtkAdjustment *adj;
	GtkWidget *bx = gtk_hbox_new (FALSE, 1);

	label = gtk_label_new (txt);
	gtk_box_pack_start (GTK_BOX (bx), label, TRUE, TRUE, 2);
	gtk_widget_show(label);
	adj = (GtkAdjustment *)gtk_adjustment_new(
	          start, min, max, step, step, 0.0);
	float climb = 0.0;
	int digits = 0;
	if (step <= 0.001) {
		climb = 0.0001;
		digits = 4;
	} else if (step <= 0.01) {
		climb = 0.001;
		digits = 3;
	} else if (step <= 0.1) {
		climb = 0.01;
		digits = 2;
	} else if (step <= 0.99) {
		climb = 0.1;
		digits = 1;
	}
	spinner = gtk_spin_button_new (adj, climb, digits);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), FALSE);
	gtk_box_pack_start (GTK_BOX (bx), spinner, TRUE, TRUE, 2);
	g_signal_connect(spinner, "value-changed", G_CALLBACK(cb), data);
	gtk_widget_show(spinner);

	gtk_box_pack_start (GTK_BOX (container), bx, TRUE, TRUE, 2);
	return spinner;
}
static void mk_radio(const char *txt, int ntxt,
                     GtkWidget *container, bool vertical,
                     const char *frameTxt, int radio_state, GtkCallback cb)
{
	GtkWidget *frame, *button, *modebox;
	GSList *group;

	frame = gtk_frame_new (frameTxt);
	gtk_box_pack_start (GTK_BOX (container), frame, FALSE, FALSE, 0);
	modebox = vertical ? gtk_vbox_new(FALSE, 2) : gtk_hbox_new(FALSE, 2);
	gtk_container_add (GTK_CONTAINER (frame), modebox);
	gtk_container_set_border_width (GTK_CONTAINER (modebox), 2);
	gtk_widget_show(modebox);

	char buf[256];
	strncpy(buf, txt, 256);
	char *a = strtok(buf, ",");

	button = gtk_radio_button_new_with_label (nullptr, (const char *)a );
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
	                    GTK_SIGNAL_FUNC (cb), GINT_TO_POINTER(0));

	for (int i=1; i<ntxt; i++) {
		group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (button));
		a = strtok(nullptr, ",");
		button = gtk_radio_button_new_with_label (group, (const char *)a );
		gtk_toggle_button_set_active(
		    GTK_TOGGLE_BUTTON(button),
		    i == radio_state);
		gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
		gtk_widget_show (button);
		gtk_signal_connect (GTK_OBJECT (button), "clicked",
		                    GTK_SIGNAL_FUNC (cb), GINT_TO_POINTER(i));
	}
}
static void mk_checkbox(const char *label, GtkWidget *container,
                        gboolean *checkstate, GtkCallback cb)
{
	GtkWidget *button = gtk_check_button_new_with_label(label);
	gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(button), *checkstate);
	g_signal_connect (button, "toggled", G_CALLBACK (cb), checkstate);
	gtk_box_pack_start (GTK_BOX(container), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
}
static GtkWidget *mk_checkbox2(const char *label, GtkWidget *container,
                               bool initial_state, GtkCallback cb, gpointer data)
{
	GtkWidget *button = gtk_check_button_new_with_label(label);
	gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(button), initial_state);
	g_signal_connect (button, "toggled", G_CALLBACK (cb), data);
	gtk_box_pack_start (GTK_BOX(container), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
	return button;
}
static GtkWidget *mk_button(const char *label, GtkWidget *container,
                            GtkCallback cb, gpointer data)
{
	GtkWidget *button = gtk_button_new_with_label(label);
	g_signal_connect(button, "clicked", G_CALLBACK(cb), data);
	gtk_box_pack_start(GTK_BOX(container), button, FALSE, FALSE, 1);
	return button;
}
auto get_cwd = []()
{
	char buf[512];
	return ( getcwd(buf, sizeof(buf)) ? string(buf) : string("") );
};
auto mk_legal_filename = [](string basedir, string prefix, string ext)
{
	string f;
	int count = 0;
	int res = -1;
	do {
		stringstream s;
		count++;
		s.str("");
		s << prefix << setfill('0') << setw(2) << count << ext;
		f = s.str();
		s.str("");
		s << basedir << "/" << f;
		string fn = s.str();
		res = access(fn.c_str(), F_OK);
	} while (!res);	// returns zero on success
	return f;
};
static void openSaveSpikesFile(GtkWidget *, gpointer parent_window)
{
	string d = get_cwd();
	string f = mk_legal_filename(d, "spikes_", ".dat");

	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save Spikes File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	    GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (dialog),d.c_str());
	gtk_file_chooser_set_current_name (GTK_FILE_CHOOSER (dialog),f.c_str());
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_wfwriter.open(filename);
		g_free (filename);
	}
	gtk_widget_destroy (dialog);
}
static void openSaveICMSFile(GtkWidget *, gpointer parent_window)
{
	string d = get_cwd();
	string f = mk_legal_filename(d, "icms_", ".pbd");

	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save ICMS File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	    GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (dialog),d.c_str());
	gtk_file_chooser_set_current_name (GTK_FILE_CHOOSER (dialog),f.c_str());
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_icmswriter.open(filename);
		g_free(filename);
	}
	gtk_widget_destroy (dialog);
}
static void openSaveAnalogFile(GtkWidget *, gpointer parent_window)
{
	string d = get_cwd();
	string f = mk_legal_filename(d, "analog_", ".pbd");

	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save Analog File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	    GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (dialog),d.c_str());
	gtk_file_chooser_set_current_name (GTK_FILE_CHOOSER (dialog),f.c_str());
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_analogwriter.open(filename);
		g_free(filename);
	}
	gtk_widget_destroy (dialog);
}
static void openSaveAnalogPrefilterFile(GtkWidget *, gpointer parent_window)
{
	string d = get_cwd();
	string f = mk_legal_filename(d, "analog_pre_", ".pbd");

	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save Analog (pre-filter) File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	    GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (dialog),d.c_str());
	gtk_file_chooser_set_current_name (GTK_FILE_CHOOSER (dialog),f.c_str());
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_analogwriter_prefilter.open(filename);
		g_free(filename);
	}
	gtk_widget_destroy (dialog);
}
/*
void saveMatrix(const char *fname, gsl_matrix *v)
{
	FILE *fid = fopen(fname, "w");
	int m = v->size1;
	int n = v->size2;
	for (int i=0; i<m; i++) {
		for (int j=0; j<n; j++) {
			fprintf(fid,"%f ", v->data[i*n + j]);
		}
		fprintf(fid,"\n");
	}
	fclose(fid);
}
*/
static void getTemplateCB(GtkWidget *, gpointer p)
{
	int aB = (int)((i64)p & 0x1);
	int j = (int)((i64)p >> 1);
	if (j < 4) {
		g_c[g_channel[j]]->updateTemplate(aB+1);
		//update the UI.
		gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_apertureSpin[j*2+aB]),
		                          g_c[g_channel[j]]->getApertureUv(aB));
		//remove the old poly, now that we've used it.
		g_c[g_channel[j]]->resetPoly();
	}
}
static void setWidgetColor(GtkWidget *widget, unsigned char red, unsigned char green, unsigned char blue)
{
	GdkColor color;
	color.red = red*256;
	color.green = green*256;
	color.blue = blue*256;
	gtk_widget_modify_bg(widget, GTK_STATE_NORMAL, &color);
}
static void templatePopupMenu (GdkEventButton *event, gpointer p)
{
	GtkWidget *menu, *menuitem;
	int s = (int)((i64)p & 0xff);

	menu = gtk_menu_new();

	menuitem = gtk_menu_item_new_with_label("set template 1 (cyan)");
	setWidgetColor(menuitem, 128, 255, 255);
	g_signal_connect(menuitem, "activate",
	                 G_CALLBACK(getTemplateCB), (gpointer)(s*2+0));
	gtk_menu_shell_append(GTK_MENU_SHELL(menu), menuitem);

	menuitem = gtk_menu_item_new_with_label("set template 2 (red)");
	setWidgetColor(menuitem, 255, 130, 130);
	//setWidgetColor(menuitem, 128, 255, 255);
	g_signal_connect(menuitem, "activate",
	                 G_CALLBACK(getTemplateCB), (gpointer)(s*2+1));
	gtk_menu_shell_append(GTK_MENU_SHELL(menu), menuitem);

	gtk_widget_show_all(menu);

	/* Note: event can be NULL here when called from view_onPopupMenu;
	 *  gdk_event_get_time() accepts a NULL argument */
	gtk_menu_popup(GTK_MENU(menu), nullptr, nullptr, nullptr, nullptr,
	               (event != nullptr) ? event->button : 0,
	               gdk_event_get_time((GdkEvent *)event));
}
int main(int argc, char **argv)
{
	using namespace gtkclient;

	(void) signal(SIGINT, destroy);

	pid_t mypid = getpid();

	PROCTAB *pr = openproc(PROC_FILLSTAT);
	proc_t pr_info;
	memset(&pr_info, 0, sizeof(pr_info));
	while (readproc(pr, &pr_info) != nullptr) {
		if ((!strcmp(pr_info.cmd, "gtkclient")   ||
		     !strcmp(pr_info.cmd, "timesync")) &&
		    pr_info.tgid != mypid) {
			error("already running with pid: %d", pr_info.tgid);
			return 1;
		}
	}

	string titlestr = "gtkclient (TDT) v1.91";

#ifdef DEBUG
	feenableexcept(FE_DIVBYZERO|FE_INVALID|FE_OVERFLOW);  // Enable (some) floating point exceptions
	titlestr += " *** DEBUG ***";
#endif

	GtkWidget *window;
	GtkWidget *da1;
	GdkGLConfig *glconfig;
	GtkWidget *box1, *bx, *v1, *label;
	GtkWidget *paned;
	GtkWidget *frame;

	string s;

	// Verify that the version of the library that we linked against is
	// compatible with the version of the headers we compiled against.
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	for (auto &elem : g_fr) {
		elem[0].set_bin_params(15, 1.0);	// nlags, duration (sec)
		elem[1].set_bin_params(15, 1.0);	// nlags, duration (sec)
	}

	FiringRate test_fr;
	test_fr.set_bin_params(15,1.0);
	test_fr.get_bins_test();

	// load matlab preferences
	if (argc > 1)
		strcpy(g_prefstr, argv[1]);
	else
		strcpy(g_prefstr, "preferences.mat");
	printf("using %s for settings\n", g_prefstr);

	MatStor ms(g_prefstr);
	ms.load();

	// load the lua-based po8e config
	po8eConf pc;
	pc.loadConf("gtkclient.rc"); // TODO read from proper place

	auto nc = pc.numNeuralChannels();
	printf("%zu neural channels\n", nc);


	size_t nc_i = 0;
	for (size_t i=0; i<pc.cards.size(); i++) {
		for (int j=0; j<pc.cards[i]->channel_size(); j++) {
			if (pc.cards[i]->channel(j).data_type() == po8e::channel::NEURAL) {
				auto o = new Channel(nc_i, &ms);
				o->m_chanName = pc.cards[i]->channel(j).name();
				g_c.push_back(o);
				nc_i++;
			}
		}
	}

	for (size_t i=0; i<nc; i++) {
		g_nlms.push_back(new ArtifactNLMS(nc, 1e-5, i, &ms)); // 1e-5 good mu?
		g_medfilt3.push_back(MedFilt3());
		g_medfilt5.push_back(MedFilt5());
#if defined KHZ_24
		g_bandpass.push_back(FilterButterBand_24k_500_3000());
		g_lopass.push_back(FilterButterLow_24k_3000());
		g_hipass.push_back(FilterButterHigh_24k_500());
#elif defined KHZ_48
		g_bandpass.push_back(FilterButterBand_48k_500_3000());
		g_lopass.push_back(FilterButterLow_48k_3000());
		g_hipass.push_back(FilterButterHigh_48k_500());
#else
#error Bad sampling rate!
#endif
	}
	for (size_t i=0; i<g_channel.size(); i++) {
		g_channel[i] = ms.getInt(i, "channel", i*16);
		if (g_channel[i] < 0) g_channel[i] = 0;
		if (g_channel[i] >= (int)nc) g_channel[i] = (int)nc-1;
	}
	for (int i=0; i<STIMCHAN; i++)
		g_artifact.push_back(new Artifact(i, &ms));

	for (int i=0; i<NFBUF; i++) {
		g_timeseries.push_back(new VboTimeseries(NSAMP));
	}

	for (int i=0; i<NSORT; i++) {
		VboRaster *o = new VboRaster(nc, NSBUF);
		if (i==0)
			o->setColor(0.0, 1.0, 1.0, 0.3); //cyan
		else
			o->setColor(1.0, 0.0, 0.0, 0.3); //red
		g_spikeraster.push_back(o);
	}

	g_drawmodep = (int) ms.getStructValue("gui", "draw_mode", 0, (float)g_drawmodep);
	g_blendmodep = (int) ms.getStructValue("gui", "blend_mode", 0, (float)g_blendmodep);

	g_showContGrid = (bool) ms.getStructValue("raster", "show_grid", 0, (float)g_showContGrid);
	g_showContThresh = (bool) ms.getStructValue("raster","show_threshold", 0, (float)g_showContThresh);
	g_rasterSpan = ms.getStructValue("raster", "span", 0, g_rasterSpan);

	g_whichSpikePreEmphasis = ms.getStructValue("spike", "pre_emphasis", 0, g_whichSpikePreEmphasis);
	g_whichAlignment = ms.getStructValue("spike", "alignment_mode", 0, g_whichAlignment);
	g_minISI = ms.getStructValue("spike", "min_isi", 0, g_minISI);
	g_autoThreshold = ms.getStructValue("spike", "auto_threshold", 0, g_autoThreshold);
	g_neoThreshold = ms.getStructValue("spike", "neo_threshold", 0, g_neoThreshold);
	g_spikesCols = (int)ms.getStructValue("spike", "cols", 0, (float)g_spikesCols);

	g_showPca = (bool)ms.getStructValue("wf", "show_pca", 0, (float)g_showPca);
	g_showWFVgrid = (bool)ms.getStructValue("wf", "show_grid", 0, (float)g_showWFVgrid);
	g_showISIhist = (bool)ms.getStructValue("wf", "show_isi", 0, (float)g_showISIhist);
	g_showWFstd = (bool)ms.getStructValue("wf", "show_std", 0, (float)g_showWFstd);
	g_zoomSpan = ms.getStructValue("wf", "span", 0, g_zoomSpan);

	g_lopassNeurons = (bool)ms.getStructValue("filter", "lopass", 0, (float)g_lopassNeurons);
	g_hipassNeurons = (bool)ms.getStructValue("filter", "hipass", 0, (float)g_hipassNeurons);
	g_whichMedianFilter = (int)ms.getStructValue("filter", "median", 0, (float)g_whichMedianFilter);

	g_trainArtifactNLMS = (bool)ms.getStructValue("icms", "lms_train", 0, (float)g_trainArtifactNLMS);
	g_filterArtifactNLMS = (bool)ms.getStructValue("icms", "lms_filter", 0, (float)g_filterArtifactNLMS);

	g_trainArtifactTempl = (bool)ms.getStructValue("icms", "template_train", 0, (float)g_trainArtifactTempl);
	g_enableArtifactSubtr = (bool)ms.getStructValue("icms", "template_subtract", 0, (float)g_enableArtifactSubtr);
	g_numArtifactSamps = (int)ms.getStructValue("icms", "template_numsamples", 0, (float)g_numArtifactSamps);
	g_stimChanDisp = (int)ms.getStructValue("icms", "template_chan_disp", 0, (float)g_stimChanDisp);
	g_artifactDispAtten = ms.getStructValue("icms", "template_chan_atten", 0, g_artifactDispAtten);

	g_enableArtifactBlanking = (bool)ms.getStructValue("icms", "blank_enable", 0, (float)g_enableArtifactBlanking);
	g_artifactBlankingSamps = (int)ms.getStructValue("icms", "blank_samples", 0, (float)g_artifactBlankingSamps);
	g_artifactBlankingPreSamps = (int)ms.getStructValue("icms", "blank_pre_samples", 0, (float)g_artifactBlankingPreSamps);
	g_enableStimClockBlanking = (bool)ms.getStructValue("icms", "blank_clock_enable", 0, (float)g_enableStimClockBlanking);

	//g_dropped = 0;

	gtk_init (&argc, &argv);
	gtk_gl_init (&argc, &argv);

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title (GTK_WINDOW (window), titlestr.c_str());
	gtk_window_set_default_size (GTK_WINDOW (window), 850, 800);
	da1 = gtk_drawing_area_new ();
	gtk_widget_set_size_request(GTK_WIDGET(da1), 640, 650);

	paned = gtk_hpaned_new();
	gtk_container_add (GTK_CONTAINER (window), paned);

	v1 = gtk_vbox_new (FALSE, 0);
	gtk_widget_set_size_request(GTK_WIDGET(v1), 220, 650);

	bx = gtk_vbox_new (FALSE, 2);

	//add in a headstage channel # label
	g_infoLabel = gtk_label_new ("info: 0");
	gtk_misc_set_alignment (GTK_MISC (g_infoLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_infoLabel, TRUE, TRUE, 0);
	gtk_widget_show(g_infoLabel);

	gtk_box_pack_start (GTK_BOX (v1), bx, FALSE, FALSE, 0);

	//4-channel control blocks.
	for (int i=0; i<4; i++) {
		char buf[128];
		snprintf(buf, 128, "%c", 'A'+i+1);
		frame = gtk_frame_new (buf);
		//gtk_frame_set_shadow_type(GTK_FRAME(frame),  GTK_SHADOW_ETCHED_IN);
		gtk_box_pack_start (GTK_BOX (v1), frame, FALSE, FALSE, 0);

		GtkWidget *bx2 = gtk_vbox_new (FALSE, 1);
		gtk_container_add (GTK_CONTAINER (frame), bx2);
		GtkWidget *bx3 = gtk_hbox_new (FALSE, 1);
		gtk_box_pack_start (GTK_BOX (bx2), bx3, FALSE, FALSE, 0);

		//channel spinner.
		g_channelSpin[i] = mk_spinner("ch", bx3,
		                              g_channel[i]+1, 1, g_c.size(), 1,
		                              channelSpinCB, GINT_TO_POINTER(i));

		//right of that, a gain spinner. (need to update depending on ch)
		g_gainSpin[i] = mk_spinner("gain", bx3,
		                           g_c[g_channel[i]]->getGain(),
		                           -128.0, 128.0, 0.1,
		                           gainSpinCB, GINT_TO_POINTER(i));

		bx3 = gtk_hbox_new (FALSE, 1);
		g_enabledChkBx[i] = mk_checkbox2("enabled", bx3, g_c[g_channel[i]]->getEnabled(),
		[](GtkWidget *_button, gpointer _p) {
			int x = (int)((i64)_p & 0xf);
			bool b = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button));
			g_c[g_channel[x]]->setEnabled(b);
		}, GINT_TO_POINTER(i));

		if (i==0) {
			mk_checkbox("offset B,C,D", bx3,
			            &g_autoChOffset, basic_checkbox_cb);
		}
		gtk_box_pack_start (GTK_BOX (bx2), bx3, FALSE, FALSE, 0);
	}
	//notebook region!
	g_notebook = gtk_notebook_new();
	gtk_notebook_set_tab_pos (GTK_NOTEBOOK (g_notebook), GTK_POS_LEFT);
	g_signal_connect(g_notebook, "switch-page",
	                 G_CALLBACK(notebookPageChangedCB), 0);
	//g_signal_connect(notebook, "select-page",
	//				 G_CALLBACK(notebookPageChangedCB), 0);
	gtk_box_pack_start(GTK_BOX(v1), g_notebook, TRUE, TRUE, 1);
	gtk_widget_show(g_notebook);

	// [ rasters | spikes | sort | icms | save ]

	// add a page for rasters
	box1 = gtk_vbox_new(FALSE, 2);

	//add a gain set-all button.
	mk_button("Set all gains from A", box1,
	[](GtkWidget *, gpointer) {
		float g = gtk_spin_button_get_value(GTK_SPIN_BUTTON(g_gainSpin[0]));
		for (auto &c : g_c) {
			c->setGain(g);
			c->resetPca();
		}
		for (int i=1; i<4; i++) { // 0 is what we are reading from
			gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_gainSpin[i]), g);
		}
	}, nullptr);

	mk_checkbox("show grid", box1, &g_showContGrid, basic_checkbox_cb);

	mk_checkbox("show threshold", box1, &g_showContThresh, basic_checkbox_cb);

	//add in a zoom spinner.
	mk_spinner("Waveform Span", box1, g_zoomSpan, 0.1, 2.7, 0.05,
	[](GtkWidget *_spin, gpointer) {
		// should be in seconds.
		float f = (float) gtk_spin_button_get_value(GTK_SPIN_BUTTON(_spin));
		g_zoomSpan = f;
		for (auto &x : g_timeseries)
			x->setNPlot(f * SRATE_HZ);
	}, nullptr);

	mk_spinner("Raster span", box1,
	           g_rasterSpan, 1.0, 100.0, 1.0,
	           basic_spinfloat_cb, (gpointer)&g_rasterSpan);

	mk_checkbox("lowpass filter", box1, &g_lopassNeurons, basic_checkbox_cb);
	mk_checkbox("highpass filter", box1, &g_hipassNeurons, basic_checkbox_cb);

	mk_radio("none,3-pt,5-pt", 3,
	         box1, true, "median filter", g_whichMedianFilter,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_whichMedianFilter = (int)((i64)_p & 0xf);
		}
	});

	gtk_widget_show (box1);
	label = gtk_label_new("rasters");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 0);
	// this concludes the rasters page.

	//add page for sorting. (4 units .. for now .. such is the legacy. )
	box1 = gtk_vbox_new (FALSE, 0);
	//4-channel control blocks.
	for (int i=0; i<4; i++) {
		char buf[128];
		snprintf(buf, 128, "%c template aperture", 'A'+i);
		frame = gtk_frame_new (buf);
		gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);

		GtkWidget *bx2 = gtk_vbox_new (FALSE, 2);
		gtk_container_add (GTK_CONTAINER (frame), bx2);

		for (int j=0; j<NSORT; j++) {
			GtkWidget *bx3 = gtk_hbox_new (FALSE, 2);
			gtk_container_add (GTK_CONTAINER (bx2), bx3);
			gpointer gp = GINT_TO_POINTER(i*NSORT+j);

			g_apertureSpin[i*NSORT+j] = mk_spinner("", bx3,
               g_c[g_channel[i]]->getApertureUv(j), 0, 100, 0.1,
			[](GtkWidget *_spin, gpointer _p) {
				int h = (int)((i64)_p & 0xf);
				if (h >= 0 && h < 8 && !g_uiRecursion) {
					float a = gtk_spin_button_get_value(GTK_SPIN_BUTTON(_spin));
					int k = g_channel[h/2];
					//gtk likes to call this frequently -- only update when
					//the value has actually changed.
					if (g_c[k]->getApertureUv(h%2) != a) {
						if (a >= 0 && a < 2000) {
							g_c[k]->setApertureUv(h%2, a);
							//setAperture(j);
						}
						//printf("apertureSpinCB: %f ch %d\n", a, j);
					}
				}
			}, gp);
			label = gtk_label_new("uV");
			gtk_box_pack_start (GTK_BOX (bx3), label, TRUE, TRUE, 1);

			//a button for disable.
			GtkWidget *button = mk_button("off", bx3,
			[](GtkWidget *, gpointer _p) {
				int h = (int)((i64)_p & 0xf);
				if (h >= 0 && h < 8 && !g_uiRecursion) {
					int k = g_channel[h/2];
					gtk_spin_button_set_value(GTK_SPIN_BUTTON(g_apertureSpin[h]), 0);
					g_c[k]->setApertureLocal(h%2, 0);
				}
			}, gp);

			if (j == 0)
				setWidgetColor(button, 160, 255, 255);
			else
				setWidgetColor(button, 255, 155, 155);
		}
	}

	GtkWidget *box2 = gtk_hbox_new (FALSE, 0);
	gtk_widget_show(box2);

	GtkWidget *box3 = gtk_vbox_new (FALSE, 0);
	gtk_widget_show(box3);
	mk_checkbox("show PCA", box3, &g_showPca, basic_checkbox_cb);
	mk_checkbox("show grid", box3, &g_showWFVgrid, basic_checkbox_cb);
	gtk_box_pack_start (GTK_BOX (box2), box3, TRUE, TRUE, 0);

	GtkWidget *box4 = gtk_vbox_new (FALSE, 0);
	gtk_widget_show(box4);
	mk_checkbox("show ISI", box4, &g_showISIhist, basic_checkbox_cb);
	mk_checkbox("show std", box4, &g_showWFstd, basic_checkbox_cb);
	gtk_box_pack_start (GTK_BOX (box2), box4, TRUE, TRUE, 0);

	gtk_box_pack_start (GTK_BOX (box1), box2, TRUE, TRUE, 0);

	mk_button("calc PCA", box1,
	[](GtkWidget *, gpointer) {
		for (auto &x : g_channel)
			g_c[x]->computePca();
	}, nullptr);

//this concludes sort page.
	gtk_widget_show (box1);
	label = gtk_label_new("sort");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 1);
	// insert sort out of order

//add page for sorting a single unit.
	//box1 = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);


//add a page for viewing all the spikes.
	box1 = gtk_vbox_new(FALSE, 0);

	mk_radio("none,abs,NEO", 3,
	         box1, true, "Spike Pre-emphasis", g_whichSpikePreEmphasis,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_whichSpikePreEmphasis = (int)((i64)_p & 0xf);
		}
	});

	mk_radio("crossing,min,max,abs,slope,neo", 6,
	         box1, true, "Spike Alignment", g_whichAlignment,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_whichAlignment = (int)((i64)_p & 0xf);
		}
	});

	// for the sorting, we show all waveforms (up to a point..)
	//these should have a minimum enforced ISI.
	mk_spinner("min ISI, ms", box1, g_minISI,
	           0.2, 3.0, 0.01, basic_spinfloat_cb, (gpointer)&g_minISI);

	mk_spinner("auto thresh, std", box1, g_autoThreshold,
	           -10.0, 10.0, 0.05, basic_spinfloat_cb, (gpointer)&g_autoThreshold);

	mk_spinner("NEO thresh, a.u.", box1, g_neoThreshold,
	           0, 100, 1, basic_spinfloat_cb, (gpointer)&g_neoThreshold);

	GtkWidget *bx3 = gtk_hbox_new (FALSE, 1);
	gtk_box_pack_start (GTK_BOX (box1), bx3, FALSE, FALSE, 0);
	mk_button("set selected", bx3,
	[](GtkWidget *, gpointer) {
		g_c[g_channel[0]]->autoThreshold(g_autoThreshold);
	}, nullptr);
	mk_button("set all", bx3,
	[](GtkWidget *, gpointer) {
		for (auto &c : g_c) {
			c->autoThreshold(g_autoThreshold);
		}
	}, nullptr);

	mk_spinner("Columns", box1, g_spikesCols, 3, 32, 1,
	           basic_spinint_cb, (gpointer)&g_spikesCols);

// end spikes page.
	gtk_widget_show (box1);
	label = gtk_label_new("spikes");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 1);


	// add a page for icms
	box1 = gtk_vbox_new(FALSE, 0);

	s = "Artifact LMS Filtering";
	frame = gtk_frame_new (s.c_str());
	gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);

	box2 = gtk_vbox_new(FALSE, 0);
	gtk_container_add (GTK_CONTAINER (frame), box2);

	box3 = gtk_hbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box2), box3, TRUE, TRUE, 0);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_checkbox("train", box4,
	            &g_trainArtifactNLMS, basic_checkbox_cb);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_checkbox("filter", box4,
	            &g_filterArtifactNLMS, basic_checkbox_cb);

	box3 = gtk_hbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box2), box3, TRUE, TRUE, 0);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_button("clear lms weights", box4,
	[](GtkWidget *, gpointer) {
		for (auto &o : g_nlms) {
			o->clearWeights();
		}
	}, nullptr);

	s = "Artifact Subtraction";
	frame = gtk_frame_new (s.c_str());
	gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);

	box2 = gtk_vbox_new(FALSE, 0);
	gtk_container_add (GTK_CONTAINER (frame), box2);

	box3 = gtk_hbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box2), box3, TRUE, TRUE, 0);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_checkbox("train", box4,
	            &g_trainArtifactTempl, basic_checkbox_cb);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_checkbox("enable", box4,
	            &g_enableArtifactSubtr, basic_checkbox_cb);

	mk_spinner("num\ntemplate\nsamples", box2, g_numArtifactSamps,
	           1e2, 1e5, 1, basic_spinint_cb, (gpointer)&g_numArtifactSamps);

	box3 = gtk_hbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box2), box3, TRUE, TRUE, 0);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_button("clear all", box4,
	[](GtkWidget *, gpointer) {
		for (auto &a : g_artifact)
			a->clearArtifacts();
	}, nullptr);

	box4 = gtk_vbox_new(FALSE, 0);
	gtk_box_pack_start (GTK_BOX (box3), box4, TRUE, TRUE, 0);
	mk_button("clear this", box4,
	[](GtkWidget *, gpointer) {
		g_artifact[g_stimChanDisp]->clearArtifacts();
	}, nullptr);

	mk_spinner("stim chan", box2, g_stimChanDisp,
	           0, g_artifact.size()-1, 1, basic_spinint_cb, (gpointer)&g_stimChanDisp);
	mk_spinner("attenuation", box2,
	           g_artifactDispAtten, 0.1, 10, 0.1, basic_spinfloat_cb, (gpointer)&g_artifactDispAtten);

	s = "Artifact Blanking";
	frame = gtk_frame_new (s.c_str());
	gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);

	box2 = gtk_vbox_new(FALSE, 0);
	gtk_container_add (GTK_CONTAINER (frame), box2);

	mk_checkbox("enable", box2,
	            &g_enableArtifactBlanking, basic_checkbox_cb);

	mk_spinner("pre-blanking\nsamples", box2, g_artifactBlankingPreSamps, 0, 128, 1,
	[](GtkWidget *_spin, gpointer) {
		int x = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(_spin));
		g_artifactBlankingPreSamps = (x + g_artifactBlankingSamps > ARTBUF)
		                             ? ARTBUF - g_artifactBlankingSamps : x;
		gtk_spin_button_set_value(GTK_SPIN_BUTTON(_spin), g_artifactBlankingPreSamps);
	}, nullptr);

	mk_spinner("blanking\nsamples", box2, g_artifactBlankingSamps, 0, 128, 1,
	[](GtkWidget *_spin, gpointer) {
		int x = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(_spin));
		g_artifactBlankingSamps = (x + g_artifactBlankingPreSamps > ARTBUF)
		                          ? ARTBUF - g_artifactBlankingPreSamps : x;
		gtk_spin_button_set_value(GTK_SPIN_BUTTON(_spin), g_artifactBlankingSamps);
	}, nullptr);

	mk_checkbox("enable stim clock blanking", box1,
	            &g_enableStimClockBlanking, basic_checkbox_cb);

	// end icms page
	gtk_widget_show(box1);
	label = gtk_label_new("icms");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 3);


	// add page for saving
	box1 = gtk_vbox_new(FALSE, 3);

	GtkWidget *bxx1, *bxx2;

	s = "Save Spikes";
	frame = gtk_frame_new (s.c_str());
	gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);
	bxx1 = gtk_hbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (frame), bxx1);

	bxx2 = gtk_vbox_new(TRUE, 0);
	gtk_container_add(GTK_CONTAINER (bxx1), bxx2);
	mk_button("Start", bxx2, openSaveSpikesFile, nullptr);
	mk_checkbox("WF? (xxx)", bxx2, &g_saveSpikeWF, basic_checkbox_cb);

	bxx2 = gtk_vbox_new(FALSE, 0);
	gtk_container_add(GTK_CONTAINER (bxx1), bxx2);
	mk_button("Stop", bxx2,
	[](GtkWidget *, gpointer) {
		g_wfwriter.close();
	}, nullptr);

	mk_checkbox("Unsorted?", bxx2, &g_saveUnsorted,	basic_checkbox_cb);


	s = "Save ICMS";
	frame = gtk_frame_new(s.c_str());
	gtk_box_pack_start(GTK_BOX (box1), frame, FALSE, FALSE, 1);

	bxx1 = gtk_hbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (frame), bxx1);

	bxx2 = gtk_vbox_new(TRUE, 0);
	gtk_container_add(GTK_CONTAINER (bxx1), bxx2);
	mk_button("Start", bxx2, openSaveICMSFile, nullptr);
	mk_checkbox("WF?", bxx2, &g_saveICMSWF, basic_checkbox_cb);

	bxx2 = gtk_vbox_new(FALSE, 0);
	gtk_container_add(GTK_CONTAINER (bxx1), bxx2);
	mk_button("Stop", bxx2,
	[](GtkWidget *, gpointer) {
		g_icmswriter.close();
	}, nullptr);

	s = "Save Analog";
	frame = gtk_frame_new(s.c_str());
	gtk_box_pack_start(GTK_BOX (box1), frame, FALSE, FALSE, 1);

	bxx1 = gtk_hbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (frame), bxx1);

	bxx2 = gtk_vbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (bxx1), bxx2);
	mk_button("Start", bxx2, openSaveAnalogFile, nullptr);

	bxx2 = gtk_vbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (bxx1), bxx2);
	mk_button("Stop", bxx2,
	[](GtkWidget *, gpointer) {
		g_analogwriter.close();
	}, nullptr);

	s = "Save Analog (pre-filter)";
	frame = gtk_frame_new(s.c_str());
	gtk_box_pack_start(GTK_BOX (box1), frame, FALSE, FALSE, 1);

	bxx1 = gtk_hbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (frame), bxx1);

	bxx2 = gtk_vbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (bxx1), bxx2);
	mk_button("Start", bxx2, openSaveAnalogPrefilterFile, nullptr);

	bxx2 = gtk_vbox_new (TRUE, 0);
	gtk_container_add (GTK_CONTAINER (bxx1), bxx2);
	mk_button("Stop", bxx2,
	[](GtkWidget *, gpointer) {
		g_analogwriter_prefilter.close();
	}, nullptr);

	mk_radio("active,all", 2, box1, false, "analog channel(s)?", g_whichAnalogSave,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_whichAnalogSave = (int)((i64)_p & 0xf);
		}
	}
	        );

	mk_button("Stop All", box1,
	[](GtkWidget *, gpointer) {
		// TODO: signal to the other thread, let them close it.
		g_wfwriter.close();
		g_icmswriter.close();
		g_analogwriter.close();
		g_analogwriter_prefilter.close();
	}, nullptr);

	mk_button("Save Preferences", box1,
	[](GtkWidget *, gpointer) {
		saveState();
	}, nullptr);


	// end save page
	gtk_widget_show(box1);
	label = gtk_label_new("save");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 4);

	// bottom section, visible on all screens
	bx = gtk_hbox_new (FALSE, 3);

	//add a pause / go button (applicable to all)
	mk_checkbox("pause", bx, &g_pause,
	[](GtkWidget *_button, gpointer) {
		g_pause = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button));
		g_pause_time = g_pause ? gettime() : -1.0;
	}
	           );

	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	//add draw mode (applicable to all)
	bx = gtk_hbox_new(FALSE, 0);
	mk_radio("points,lines", 2, bx, true, "draw mode", g_drawmodep,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_drawmodep = (int)((i64)_p & 0xf);
		}
	}
	        );

	mk_radio("normal,accum", 2, bx, true, "blend mode", g_blendmodep,
	[](GtkWidget *_button, gpointer _p) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(_button))) {
			g_blendmodep = (int)((i64)_p & 0xf);
		}
	}
	        );

	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	bx = gtk_hbox_new (FALSE, 3);
	g_spikeFileSizeLabel = gtk_label_new ("");
	gtk_misc_set_alignment (GTK_MISC (g_spikeFileSizeLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_spikeFileSizeLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_spikeFileSizeLabel);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("");
	gtk_misc_set_alignment (GTK_MISC (label), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);
	g_icmswriter.registerWidget(label);

	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("");
	gtk_misc_set_alignment (GTK_MISC (label), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);
	g_analogwriter.registerWidget(label);

	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("");
	gtk_misc_set_alignment (GTK_MISC (label), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);
	g_analogwriter_prefilter.registerWidget(label);

	gtk_paned_add1(GTK_PANED(paned), v1);
	gtk_paned_add2(GTK_PANED(paned), da1);

	gtk_widget_show (paned);

	g_signal_connect_swapped (window, "destroy",
	                          G_CALLBACK (destroyGUI), NULL);
	gtk_widget_set_events (da1, GDK_EXPOSURE_MASK);

	gtk_widget_show (window);

	/* prepare GL */
	glconfig = gdk_gl_config_new_by_mode (GdkGLConfigMode(
	        GDK_GL_MODE_RGB |
	        GDK_GL_MODE_DEPTH |
	        GDK_GL_MODE_DOUBLE));

	if (!glconfig)
		g_assert_not_reached ();

	if (!gtk_widget_set_gl_capability (da1, glconfig, nullptr, TRUE,
	                                   GDK_GL_RGBA_TYPE)) {
		g_assert_not_reached ();
	}

	g_signal_connect (da1, "configure-event",
	                  G_CALLBACK (configure1), NULL);
	g_signal_connect (da1, "expose-event",
	                  G_CALLBACK (expose1), NULL);
	g_signal_connect (G_OBJECT (da1), "motion_notify_event",
	                  G_CALLBACK (motion_notify_event), NULL);
	g_signal_connect (G_OBJECT (da1), "button_press_event",
	                  G_CALLBACK (button_press_event), NULL);

	gtk_widget_set_events (da1, GDK_EXPOSURE_MASK
	                       | GDK_LEAVE_NOTIFY_MASK
	                       | GDK_BUTTON_PRESS_MASK
	                       | GDK_POINTER_MOTION_MASK
	                       | GDK_POINTER_MOTION_HINT_MASK);

	//in order to receive keypresses, must be focusable!
	// http://forums.fedoraforum.org/archive/index.php/t-242963.html
	GTK_WIDGET_SET_FLAGS(da1, GTK_CAN_FOCUS );

	string asciiart = "\033[1m";
	asciiart += "\n";
	asciiart += "           _        _ \033[31m_\033[0m\033[1m\n";
	asciiart += "       _  | |      | \033[31m(_)\033[0m\033[1m           _ \n";
	asciiart += "  __ _| |_| | _____| |_  ___ _ __ | |_\n";
	asciiart += " / _` | __| |/ / __| | |/ _ \\ '_ \\| __|\n";
	asciiart += "| (_| | |_|   < (__| | |  __/ | | | |_\n";
	asciiart += " \\__, |\\__|_|\\_\\___|_|_|\\___|_| |_|\\__|\n";
	asciiart += " |___/      ";
	asciiart += titlestr;
	asciiart += "\033[0m";
	printf("%s\n\n",asciiart.c_str());

	printf("sampling rate: %f kHz\n", SRATE_KHZ);

	printf("artifact buffer: %d samples\n",ARTBUF);

	g_startTime = gettime();

	vector <thread> threads;

	printf("PO8e API Version %s\n", revisionString());
	int totalcards = PO8e::cardCount();
	printf("Found %d PO8e card(s) in the system.\n", totalcards);
	if (totalcards < 1) {
		error("Quitting");
		return 1;
	}

	if (totalcards < (int)pc.cards.size()) {
		error("config describes more po8e cards than detected");
		return 1;
	}

	if (totalcards > (int)pc.cards.size()) {
		totalcards = (int)pc.cards.size();
	}

	auto configureCard = [&](PO8e* p) -> bool {
		// return true on success
		// return false on failure
		if (!p->startCollecting())
		{
			warn("startCollecting() failed with: %d", p->getLastError());
			p->flushBufferedData();
			p->stopCollecting();
			printf(" -> Releasing card %p\n", p);
			PO8e::releaseCard(p);
			return false;
		}
		printf(" -> Card %p is collecting incoming data.\n", p);
		return true;
	};

	for (int i=0; i<totalcards; i++) {
		if (pc.cards[i]->enabled()) {
			int id = (int)pc.cards[i]->id();
			PO8e *p = PO8e::connectToCard(id-1); // 0-indexed
			if (p == nullptr) {
				break;
			}
			printf("Connection established to card %d at %p\n", id, (void *)p);
			if (configureCard(p)) {
				ReaderWriterQueue<PO8Data> *q = new ReaderWriterQueue<PO8Data>(512);
				threads.push_back(thread(po8e_fun, p, q));
				g_dataqueues.push_back(pair<ReaderWriterQueue<PO8Data>*, po8e::card *>(q, pc.cards[i]));
			}
		}
	}

	if (g_dataqueues.size() < 1) {
		error("Connected to zero po8e cards");
		return 1;
	}

	threads.push_back(thread(worker));
	threads.push_back(thread(wfwrite));
	threads.push_back(thread(icmswrite));
	threads.push_back(thread(analogwrite));
	threads.push_back(thread(analogwrite_prefilter));
	threads.push_back(thread(mmap_fun));
	threads.push_back(thread(nlms_train));

	gtk_widget_show_all(window);

	g_timeout_add(1000 / 30, rotate, da1);

	//jack.
#ifdef JACK
	jackInit("gtkclient", JACKPROCESS_RESAMPLE);
	jackConnectFront();
	jackSetResample(SRATE_HZ/SAMPFREQ);
#endif

	gtk_main(); // gtk itself uses three threads, it seems

#ifdef JACK
	jackClose(0);
#endif

	KillFont();
	// Optional:  Delete all global objects allocated by libprotobuf.
	google::protobuf::ShutdownProtobufLibrary();

	for (auto &thread : threads) {
		thread.join();
	}

	// these should automatically be closed when their destructor is called
	// however it should be safe to manually close after their thread is
	// joined and finished
	g_wfwriter.close();
	g_icmswriter.close();
	g_analogwriter.close();
	g_analogwriter_prefilter.close();

	for (auto &q : g_dataqueues) {
		delete q.first;
		// q.second is deleted when the po8e_conf object is destructed
	}

	if (g_vsFadeColor)
		delete g_vsFadeColor;
	if (g_vsThreshold)
		delete g_vsThreshold;
	cgDestroyContext(myCgContext);
}
