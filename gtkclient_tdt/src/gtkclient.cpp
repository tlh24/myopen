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
#include <sys/types.h>
#include <inttypes.h>
#include <sys/time.h>
#include <pthread.h>
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
#include <boost/multi_array.hpp>
#include <map>
#include <string>
#include <iostream>
#include <atomic>

#include <libgen.h>

#include "PO8e.h"
#include "../firmware_stage9_mf/memory.h"

#include "gettime.h"
#include "cgVertexShader.h"
#include "vbo.h"
#include "firingrate.h"
#include "gtkclient.h"
#include "mmaphelp.h"
#include "fifohelp.h"
#include "channel.h"
#include "artifact.h"
#include "timesync.h"
#include "matStor.h"
#include "wfwriter.h"
#include "icmswriter.h"
#include "jacksnd.h"

#include "fenv.h" // for debugging nan problems

//CG stuff. for the vertex shaders.
CGcontext   myCgContext;
CGprofile   myCgVertexProfile;
cgVertexShader		*g_vsFadeColor;
cgVertexShader		*g_vsThreshold;

using namespace std;

char	g_prefstr[256];

float	g_cursPos[2];
float	g_viewportSize[2] = {640, 480}; //width, height.

class Channel;
class Artifact;

float	g_fbuf[NFBUF][NSAMP*3]; //continuous waveform. range [-1 .. 1]. For drawing.
i64		g_fbufW; //where to write to (always increment)
i64		g_fbufR; //display thread reads from here - copies to mem
float	g_obuf[NCHAN][256]; //looping samples of the waveform.  for sorting. [-1 .. 1]
i64		g_sample = 0;
i64		g_lastSpike[NCHAN][NUNIT];
unsigned int 	g_nsamp = 4096*6; //given the current level of zoom (1 = 4096 samples), how many samples to update?
float 	g_sbuf[NSORT][NCHAN *NSBUF*2]; //2 units, 96 channels, 1024 spikes, 2 floats / spike.
float	g_rasterSpan = 10.f; // %seconds.
i64	g_sbufW[NSORT];
i64	g_sbufR[NSORT];
Channel 	*g_c[NCHAN];
FiringRate	g_fr[NCHAN][NSORT];
TimeSync 	g_ts; //keeps track of ticks (TDT time)
WfWriter	g_wfwriter;
GLuint 		g_base;            // base display list for the font set.

Artifact 	*g_artifact[STIMCHAN];
ICMSWriter	g_icmswriter;

bool g_die = false;
double g_pause = -1.0;
gboolean g_cycle = false;
gboolean g_showPca = false;
gboolean g_autoChOffset = false;
gboolean g_showWFVgrid = true;
gboolean g_showContGrid = false;
gboolean g_showContThresh = true;
bool g_rtMouseBtn = false;
gboolean g_saveUnsorted = true;
int 	g_polyChan = 0;
bool 	g_addPoly = false;
int 	g_channel[4] = {0,32,64,95};
long double g_lastPo8eTime = 0.0;

double g_minISI = 1.3; //ms
int g_spikesCols = 16;

gboolean g_enableArtifactSubtr = true;
gboolean g_trainArtifactTempl = true;
int g_numArtifactSamps = 1e3;

float g_unsortrate = 0.0; //the rate that unsorted WFs get through.
float	g_autoThreshold = -3.5; //standard deviations. default negative, w/e.

int 	g_mode = MODE_RASTERS;
int	g_drawmode = GL_LINE_STRIP;
int	g_blendmode = GL_ONE_MINUS_SRC_ALPHA;

bool	g_vbo1Init = false;
GLuint g_vbo1[NFBUF]; //for the waveform display
GLuint g_vbo2[2] = {0,0}; //for spikes.

//global labels..
//GtkWidget* g_gainlabel[16];
GtkWidget *g_infoLabel;
GtkAdjustment *g_channelSpin[4] = {0,0,0,0};
GtkAdjustment *g_gainSpin[4] = {0,0,0,0};
GtkAdjustment *g_apertureSpin[8] = {0,0,0,0};
GtkAdjustment *g_thresholdSpin[4];
GtkAdjustment *g_centeringSpin[4];
GtkAdjustment *g_unsortRateSpin;
GtkAdjustment *g_minISISpin;
GtkAdjustment *g_numArtifactSpin;
GtkAdjustment *g_autoThresholdSpin;
GtkAdjustment *g_spikesColsSpin;
GtkAdjustment *g_zoomSpin;
GtkAdjustment *g_rasterSpanSpin;
GtkWidget *g_fileSizeLabel;
GtkWidget *g_notebook;
int			g_uiRecursion = 0; //prevents programmatic changes to the UI
// from causing commands to be sent to the headstage.

i64 mod2(i64 a, i64 b)
{
	i64 c = a % b;
	return c;
}
void gsl_matrix_to_mat(gsl_matrix *x, const char *fname)
{
	//write a gsl matrix to a .mat file.
	// does not free the matrix.
	mat_t *mat;
	mat = Mat_CreateVer(fname,NULL,MAT_FT_MAT73);
	if (!mat) {
		printf("could not open %s for writing \n", fname);
		return;
	}
	size_t dims[2];
	dims[0] = x->size1;
	dims[1] = x->size2;
	double *d = (double *)malloc(dims[0]*dims[1]*sizeof(double));
	if (!d) {
		printf("could not allocate memory for copy \n");
		return;
	}
	//reformat and transpose.
	//matio expects fortran style, column-major format.
	//gsl is row-major.
	for (size_t i=0; i<dims[0]; i++) { //rows
		for (size_t j=0; j<dims[1]; j++) { //columns
			d[j*dims[0] + i] = x->data[i*x->tda + j];
		}
	}
	matvar_t *matvar;
	matvar = Mat_VarCreate("a",MAT_C_DOUBLE,MAT_T_DOUBLE,
	                       2,dims,d,0);
	Mat_VarWrite( mat, matvar, MAT_COMPRESSION_NONE );
	Mat_VarFree(matvar);
	free(d);
	Mat_Close(mat);
}
void copyData(GLuint vbo, u32 sta, u32 fin, float *ptr, int stride)
{
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, vbo);
	sta *= stride;
	fin *= stride;
	ptr += sta;
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, (GLvoid *)ptr);
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
	dpy = XOpenDisplay(NULL); // default to DISPLAY env.
	fontInfo = XLoadQueryFont(dpy, "-adobe-helvetica-medium-r-normal--14-*-*-*-p-*-iso8859-1");
	if (fontInfo == NULL) {
		fontInfo = XLoadQueryFont(dpy, "fixed");
		if (fontInfo == NULL) {
			printf("no X font available?\n");
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
	if (text == NULL) { // if there's no text, do nothing.
		return;
	}
	glPushAttrib(GL_LIST_BIT);  // alert that we're about to offset the display lists with glListBase
	glListBase(g_base - 32);    // sets the base character to 32.

	// draws the display list text.
	glCallLists(strlen(text), GL_UNSIGNED_BYTE, text);
	glPopAttrib();  // undoes the glPushAttrib(GL_LIST_BIT);
}
GLvoid printGLf(const char *fmt, ...)
{
	va_list ap;     /* our argument pointer */
	char text[256];
	if (fmt == NULL)    /* if there is no string to draw do nothing */
		return;
	va_start(ap, fmt);  /* make ap point to first unnamed arg */
	/* FIXME: we *should* do boundschecking or something to prevent buffer
	 * overflows/segmentations faults
	 */
	vsprintf(text, fmt, ap);
	va_end(ap);
	glPushAttrib(GL_LIST_BIT);
	glListBase(g_base - 32);
	glCallLists(strlen(text), GL_UNSIGNED_BYTE, text);
	glPopAttrib();
}
void updateCursPos(float x, float y)
{
	g_cursPos[0] = x/g_viewportSize[0];
	g_cursPos[1] = y/g_viewportSize[1];
	//convert to -1 to +1
	for (int i=0; i<2; i++) {
		g_cursPos[i] -= 0.5f;
		g_cursPos[i] *= 2.f;
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
			//need to update g_thresholdSpin and g_centeringSpin
			gtk_adjustment_set_value(
			        g_thresholdSpin[g_polyChan],
			        g_c[g_channel[g_polyChan]]->getThreshold());
			gtk_adjustment_set_value(
			        g_centeringSpin[g_polyChan],
			        g_c[g_channel[g_polyChan]]->getCentering());
		}
	}
	if ((state & GDK_BUTTON1_MASK) && (g_mode == MODE_SPIKES)) {
		printf("TODO: interact with channel.\n");
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
		if (g_cursPos[0] > 0.0f) u += 1;
		if (g_cursPos[1] < 0.0f) u += 2;
		if (event->button == 1) {
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
		if (event->button == 3) {
			if (g_c[g_channel[u]]->m_pcaVbo->m_polyW > 10 && g_mode == MODE_SORT)
				templatePopupMenu(event, (gpointer)u);
		}
	}
	if (g_mode == MODE_SPIKES) {
		int spikesRows = NCHAN / g_spikesCols;
		if (NCHAN % g_spikesCols) spikesRows++;
		float xf = g_spikesCols;
		float yf = spikesRows;
		float x = (g_cursPos[0] + 1.f)/ 2.f;
		float y = (g_cursPos[1]*-1.f + 1.f)/2.f; //0,0 = upper left hand corner.
		int sc = (int)floor(x*xf);
		int sr = (int)floor(y*yf);
		if (event->type==GDK_2BUTTON_PRESS) { //double click.
			int h =  sr*g_spikesCols + sc;
			if (h >= 0 && h < NCHAN) {
				//shift channels down, like a priority queue.
				for (int i=3; i>0; i--)
					g_channel[i] = g_channel[i-1];
				g_channel[0] = h;
				printf("channel switched to %d\n", g_channel[0]);
				g_mode = MODE_SORT;
				gtk_notebook_set_current_page(GTK_NOTEBOOK(g_notebook), 1);
			}
			//update the UI elements.
			for (int i=0; i<4; i++) {
				gtk_adjustment_set_value(g_channelSpin[i], (double)g_channel[i]);
				updateChannelUI(i);
			}
		}
	}
	return TRUE;
}
static gboolean
expose1 (GtkWidget *da, GdkEventExpose *, gpointer )
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
		g_assert_not_reached ();

	//copy over any new data.
	if (g_pause <= 0.0) {
		if (g_fbufR < g_fbufW) {
			i64 w = g_fbufW; //atomic
			i64 sta = g_fbufR % g_nsamp;
			i64 fin = w % g_nsamp;
			for (int k=0; k<NFBUF; k++) {
				if (fin < sta) { //wrap
					copyData(g_vbo1[k], sta, g_nsamp, g_fbuf[k], 3);
					copyData(g_vbo1[k], 0, fin, g_fbuf[k], 3);
				} else {
					copyData(g_vbo1[k], sta, fin, g_fbuf[k], 3);
				}
			}
			g_fbufR = w;
		}
		//ditto for the spike buffers (these can be disordered ..they generally don't overlap.)
		for (int k=0; k<2; k++) { //will ultimately need more than 2, or have per-dot color.
			if (g_sbufR[k] < g_sbufW[k]) {
				i64 len = sizeof(g_sbuf[k])/8; //total # of pts.
				i64 w = g_sbufW[k];
				i64 sta = g_sbufR[k] % len;
				i64 fin = w % len;
				if (fin < sta) { //wrap
					copyData(g_vbo2[k], sta, len, g_sbuf[k], 2);
					copyData(g_vbo2[k], 0, fin, g_sbuf[k], 2);
				} else {
					copyData(g_vbo2[k], sta, fin, g_sbuf[k], 2);
				}
				g_sbufR[k] = w;
			}
		}
		//and the waveform buffers.
		for (int i=0; i<NCHAN; i++)
			g_c[i]->copy();
	}
	/* draw in here */
	glMatrixMode(GL_MODELVIEW);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_FLAT);
	glBlendFunc(GL_SRC_ALPHA, g_blendmode);
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

	float time = (float)gettime();
	if (g_pause > 0.0) time = g_pause;

	if (g_mode == MODE_RASTERS) {
		g_vsThreshold->setParam(2,"xzoom",1.f/g_nsamp);

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

			//labels.
			glColor4f(0.f, 0.8f, 0.75f, 0.5);
			glRasterPos2f(-1.f, (float)((3-k)*2)/8.f +
			              2.f*2.f/g_viewportSize[1]); //2 pixels vertical offset.
			//kearning is from the lower right hand corner.
			char buf[128];
			snprintf(buf, 128, "%c %d", 'A'+k, g_channel[k]);
			glPrint(buf);
		}
		//continuous waveform drawing..
		for (int k=0; k<NFBUF; k++) {
			glEnableClientState(GL_VERTEX_ARRAY);
			g_vsThreshold->setParam(2,"yoffset",(3-k)/4.f);
			g_vsThreshold->bind();
			cgGLEnableProfile(myCgVertexProfile);
			checkForCgError("enabling vertex profile");

			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1[k]);
			glVertexPointer(3, GL_FLOAT, 0, 0);
			glPointSize(1);
			glDrawArrays(g_drawmode, 0, g_nsamp);

			cgGLDisableProfile(myCgVertexProfile);
			checkForCgError("disabling vertex profile");
		}
		//see glDrawElements for indexed arrays
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		//draw seconds / ms label here.
		for (int i=0; i<(int)g_nsamp; i+=24414/5) {
			float x = 2.f*i/g_nsamp-1.f + 2.f/g_viewportSize[0];
			float y = 1.f - 13.f*2.f/g_viewportSize[1];
			glRasterPos2f(x,y);
			char buf[64];
			snprintf(buf, 64, "%3.2f", i/24414.f);
			glPrint(buf);
		}
		if (g_showContGrid) {
			glColor4f(0.f, 0.8f, 0.75f, 0.35);
			glBegin(GL_LINES);
			for (int i=0; i<(int)g_nsamp; i+=24414/10) {
				float x = 2.f*i/g_nsamp-1.f;
				glVertex2f(x, 0.f);
				glVertex2f(x, 1.f);
			}
			glEnd();
		}
		//glPopMatrix ();

		//rasters
#ifndef EMG
		glShadeModel(GL_FLAT);
		float vscale = 97.f;
		glPushMatrix();
		glScalef(1.f/g_rasterSpan, -1.f/vscale, 1.f);
		int lt = (int)time / (int)g_rasterSpan;
		lt *= (int)g_rasterSpan;
		float x = time - (float)lt;
		float adj = 0.f;
		float movtime = 0.20 + log10(g_rasterSpan);
		if (x < movtime) {
			x /= movtime;
			adj = 2.f*x*x*x -3.f*x*x + 1;
			adj *= g_rasterSpan;
		}
		glTranslatef((0 - (float)lt + adj), 1.f, 0.f);

		//VBO drawing..
		for (int k=0; k<2; k++) {
			glEnableClientState(GL_VERTEX_ARRAY);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo2[k]);
			glVertexPointer(2, GL_FLOAT, 0, 0);
			if (k == 0) glColor4f (0., 1., 1., 0.3f); //cyan
			else glColor4f (1., 0., 0., 0.3f); //red
			glPointSize(2.0);
			glDrawArrays(GL_POINTS, 0, sizeof(g_sbuf[k])/8);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		}
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
		if (g_blendmode == GL_ONE)
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
				g_c[g_channel[k]]->draw(g_drawmode, time, g_cursPos,
				                        g_showPca, g_rtMouseBtn, true, g_showWFVgrid);
			}
		}
		if (g_mode == MODE_SPIKES) {
			int spikesRows = NCHAN / g_spikesCols;
			if (NCHAN % g_spikesCols) spikesRows++;
			float xf = g_spikesCols;
			float yf = spikesRows;
			xz = 2.f/xf;
			yz = 2.f/yf;
			for (int k=0; k<NCHAN; k++) {
				xo = (k%g_spikesCols)/xf;
				yo = ((k/g_spikesCols)+1)/yf;
				g_c[k]->setLoc(xo*2.f-1.f, 1.f-yo*2.f, xz*2.f, yz);
				g_c[k]->draw(g_drawmode, time, g_cursPos,
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
				glBegin(GL_LINE_STRIP);
				if (k==0)
					glColor4f(1.f, 0.f, 0.f, 1.f);
				else
					glColor4f(1.f, 1.f, 0.f, 1.f);
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
		// XXX TODO, DRAW STUFF HERE
		/*
		glPushMatrix();
		glEnableClientState(GL_VERTEX_ARRAY);
		float xo, yo, xz, yz;
		cgGLEnableProfile(myCgVertexProfile);
		if (g_blendmode == GL_ONE)
			g_vsFadeColor->setParam(2,"ascale", 0.2f);
		else
			g_vsFadeColor->setParam(2,"ascale", 1.f);
		cgGLDisableProfile(myCgVertexProfile);

		int spikesRows = RECCHAN / g_spikesCols;
		if (RECCHAN % g_spikesCols) spikesRows++;
		float xf = g_spikesCols;
		float yf = spikesRows;
		xz = 2.f/xf;
		yz = 2.f/yf;

		for (int k=0; k<RECCHAN; k++) {
			xo = (k%g_spikesCols)/xf;
			yo = ((k/g_spikesCols)+1)/yf;
			g_c[k]->setLoc(xo*2.f-1.f, 1.f-yo*2.f, xz*2.f, yz);
			g_c[k]->draw(g_drawmode, time, g_cursPos,
			             g_showPca, g_rtMouseBtn, false, g_showWFVgrid);
		}
		*/

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

	if (!g_vbo1Init) { //start it up!
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
		//glInfo.printSelf();
		if (glInfo.isExtensionSupported("GL_ARB_vertex_buffer_object")) {
			printf("Video card supports GL_ARB_vertex_buffer_object.\n");
		} else {
			printf("Video card does NOT support GL_ARB_vertex_buffer_object.\n");
		}
		g_vbo1Init = true;
		//okay, want one vertex buffer (4now): draw the samples.
		//fill the buffer with temp data.
		for (int k=0; k<NFBUF; k++) {
			for (int i=0; i<NSAMP; i++) {
				g_fbuf[k][i*3+0] = (float)i;
				g_fbuf[k][i*3+1] = sinf((float)i *0.02);
				g_fbuf[k][i*3+2] = 0.f;
			}
			glGenBuffersARB(1, &g_vbo1[k]);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1[k]);
			glBufferDataARB(GL_ARRAY_BUFFER_ARB, NSAMP*3*sizeof(float),
			                0, GL_DYNAMIC_DRAW_ARB);
			glBufferSubDataARB(GL_ARRAY_BUFFER_ARB,
			                   0, sizeof(g_fbuf[0]), g_fbuf[k]);
			int bufferSize;
			glGetBufferParameterivARB(GL_ARRAY_BUFFER_ARB,
			                          GL_BUFFER_SIZE_ARB, &bufferSize);
			//printf("Vertex Array in VBO:%d bytes\n", bufferSize);
		}
		//have one VBO that's filled with spike times & channels.
		for (int k=0; k<2; k++) {
			for (int i=0; i<NCHAN; i++) {
				for (int j=0; j<NSBUF; j++) {
					g_sbuf[k][(i*NSBUF+j)*2+0] = (float)i/256.0+(float)j/2048.0;
					g_sbuf[k][(i*NSBUF+j)*2+1] = (float)i;
				}
			}
			glGenBuffersARB(1, &g_vbo2[k]);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo2[k]);
			glBufferDataARB(GL_ARRAY_BUFFER_ARB, sizeof(g_sbuf[k]),
			                0, GL_DYNAMIC_DRAW_ARB);
			glBufferSubDataARB(GL_ARRAY_BUFFER_ARB,
			                   0, sizeof(g_sbuf[k]), g_sbuf[k]);
		}
		for (int i=0; i<NCHAN; i++) {
			g_c[i]->configure(g_vsFadeColor);
		}
	}
	BuildFont(); //so we're in the right context?

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean rotate (gpointer user_data)
{
	GtkWidget *da = GTK_WIDGET (user_data);

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);

	string s = g_ts.getInfo();
	char str[256];
	snprintf(str, 256, "\npo8e interval: %f (ms)\n", (double)(gettime() - g_lastPo8eTime)*1000.0);
	s += string(str);
	gtk_label_set_text(GTK_LABEL(g_infoLabel), s.c_str());
	snprintf(str, 256, "spikes: %.2f MB\ticms: %.2f MB",
	         (double)g_wfwriter.bytes()/1e6,
	         (double)g_icmswriter.bytes()/1e6);
	gtk_label_set_text(GTK_LABEL(g_fileSizeLabel), str);
	return TRUE;
}
void saveState()
{
	MatStor ms(g_prefstr);
	for (int i=0; i<NCHAN; i++)
		g_c[i]->save(&ms);
	for (int i=0; i<4; i++)
		ms.setValue(i, "channel", g_channel[i]);
	ms.save();
}
void destroy(GtkWidget *, gpointer)
{
	//save the old values..
	g_die = true;
	saveState();
	if (g_vbo1Init) {
		for (int k=0; k<NFBUF; k++)
			glDeleteBuffersARB(1, &g_vbo1[k]);
		glDeleteBuffersARB(2, g_vbo2);
	}
	delete g_vsFadeColor;
	delete g_vsThreshold;
	cgDestroyContext(myCgContext);
	for (int i=0; i<NCHAN; i++)
		delete g_c[i];
	for (int i=0; i<STIMCHAN; i++)
		delete g_artifact[i];
	gtk_main_quit();
}
void *wfwrite_thread(void *)
{
	while (!g_die) {
		if (g_wfwriter.write()) //if it can write, it will.
			usleep(1e4); //poll qicker.
		else
			usleep(1e5);
	}
	return NULL;
}
void *icmswrite_thread(void *)
{
	while (!g_die) {
		if (g_icmswriter.write()) //if it can write, it will.
			usleep(1e4); //poll qicker.
		else
			usleep(1e5);
	}
	return NULL;
}
void *po8_thread(void *)
{
	PO8e *card = NULL;
	bool simulate = false;
	int bufmax = 16384;	// 2^14 > 10000

	while (!g_die) {
		int totalcards = PO8e::cardCount();
		int conn_cards = 0;
		printf("Found %d PO8e card(s) in the system.\n", totalcards);
		if (totalcards < 1) {
			printf("  simulating instead.\n");
			simulate = true;
		}
		if (!simulate) {
			printf("Connecting to card 0\n");
			card = PO8e::connectToCard(0);
			if (card == NULL)
				printf("  connection failed to card0 \n");
			else {
				// todo: connect to multiple cards
				printf("  connection established to card0 at %p\n", (void *)card);
				if (!card->startCollecting()) {
					printf("  startCollecting() failed with: %d\n",
					       card->getLastError());
					card->stopCollecting();
					printf("  releasing card0\n");
					PO8e::releaseCard(card);
					card = NULL;
				} else {
					printf("  card is collecting incoming data.\n");
					conn_cards++;
					printf("Waiting for the stream to start on card0 ... ");
					card->waitForDataReady(); // waits ~ 1200 hours ;-)
					printf("started\n");
				}
			}
		}
		// start the timer used to compute the speed and set the collected bytes to 0
		long double starttime = gettime();
		long double totalSamples = 0.0; //for simulation.
		double		sinSamples = 0.0; // for driving the sinusoids; resets every 4e4.
		long long bytes = 0;
		unsigned int frame = 0;
		unsigned int nchan = NCHAN;
		unsigned int bps = 2; //bytes/sample
		if (!simulate && card) {
			nchan = card->numChannels();
			bps = card->dataSampleSize();
		}
		short *temp = new short[bufmax*(nchan+4)];  // 2^14 samples * 2 bytes/sample * (nChannels+time+stim)
		short *temptemp = new short[bufmax];
		while ((simulate || conn_cards > 0) && !g_die) {
			if (!simulate && !card->waitForDataReady()) { // waits ~ 1200 hours ;-)
				// this occurs when the rpvdsex circuit is idled.
				// and potentially when a glitch happens
				printf("  waitForDataReady() failed with: %d\n",
				       card->getLastError());
				card->stopCollecting();
				conn_cards--;
				printf("  releasing card0\n");
				PO8e::releaseCard(card);
				card = NULL;
				break;
			}
			int waitCount = 0;
			bool stopped = false;
			int numSamples = 0;
			if (!simulate) {
				numSamples = (int)card->samplesReady(&stopped);
				if (stopped) {
					printf("  stopped collecting data\n");
					card->stopCollecting();
					conn_cards--;
					printf("  releasing card0\n");
					PO8e::releaseCard(card);
					card = NULL;
					break;
				}
				if (numSamples > 0) {
					card->readBlock(temp, numSamples);
					card->flushBufferedData(numSamples);
					totalSamples += numSamples;
				}
			} else { //simulate!
				long double now = gettime();
				numSamples = (int)((now - starttime)*24414.0625 - totalSamples);
				if (numSamples >= 250) {
					numSamples = 250;
					totalSamples = (now - starttime)*24414.0625;
				}
				float scale = sin(sinSamples/4e4);
				for (int i=0; i<numSamples; i++) {
					temptemp[i] =  (short)(sinf((float)
					                            ((sinSamples + i)/6.0))*32768.f*scale);
				}
				for (int k=0; k<NCHAN; k++) {
					for (int i=0; i<numSamples; i++) {
						temp[k*numSamples +i] = temptemp[i];
					}
				}
				//last part of the buffer is just TDT ticks (most recent -> least delay?)
				for (int i=0; i<numSamples; i++) {
					int r = (int)(sinSamples +i);
					temp[NCHAN*numSamples     +i] = r       & 0xffff;
					temp[(NCHAN+1)*numSamples +i] = (r>>16) & 0xffff;
				}
				totalSamples += numSamples;
				sinSamples += numSamples;
				if (sinSamples > 4e4*2*3.1415926) sinSamples -= 4e4*2*3.1415926;
				usleep(70);
			}
			if (numSamples > 0 && numSamples < bufmax) {
				bytes += numSamples * nchan * bps;

				long double time = gettime();
				g_lastPo8eTime = time;

				// estimate TDT ticks from perf counter
				// ticks are distributed across two shorts
				int ticks = (unsigned short)(temp[NCHAN*numSamples + numSamples -1]);
				ticks += (unsigned short)(temp[(NCHAN+1)*numSamples + numSamples -1]) << 16;
				g_ts.update(time, ticks, frame); //also updates the mmap file.
				g_ts.m_dropped = (int)totalSamples - ticks;

				// get icms times, fill icms buffers, and subtract artifact
				icmspak icms;
				for (int k=0; k<numSamples; k++) {
					unsigned int tmp = (unsigned short)(temp[(NCHAN+2)*numSamples+k]);
					tmp += (unsigned short)(temp[(NCHAN+3)*numSamples+k]) << 16;

					unsigned int tk = (unsigned short)(temp[NCHAN*numSamples+k]);
					tk += (unsigned short)(temp[(NCHAN+1)*numSamples+k]) << 16;

					// stim pulse?
					for (int j=0; j<32; j++) {  // int is 32 bits
						unsigned int id = pow(2,j);
						if (tmp & id) {
							if (g_icmswriter.m_enable) {
								icms.ticks = tk;
								icms.time = g_ts.getTime(tk);
								icms.id = (short)j+1; // one-indexed
								g_icmswriter.add(&icms);
							}
							if (g_artifact[j]->m_index == -1)
								g_artifact[j]->m_index++;
							else
								printf("ERR: STIM ARTIFACTS OVERLAP!\n");
						}
					}

					// fill artifact-subtraction buffers
					// xxx check if we are even filling buffers
					for (int j=0; j<STIMCHAN; j++) {
						i64 idx = g_artifact[j]->m_index;
						if (idx != -1) {
							for (int ch=0; ch<RECCHAN; ch++) {
								float gain = g_c[ch]->getGain();
								short samp = temp[ch*numSamples + k];
								float f = gain * samp / 32767.f;
								float alpha = 1/(g_artifact[j]->m_nsamples+1);
								float curr = g_artifact[j]->m_buf[ch*ARTBUF+idx];
								// iterative update of average
								float next = curr + alpha*(f-curr);
								if (g_trainArtifactTempl)
									g_artifact[j]->m_buf[ch*ARTBUF+idx] = next;

								// xxx check if we are subtracting
								if (g_enableArtifactSubtr) {
									short subtr = (short)((f-next)*32767.f)/gain;
									temp[ch*numSamples + k] = subtr;
								}
							}
							g_artifact[j]->m_index++;
							if (g_artifact[j]->m_index > ARTBUF) {
								g_artifact[j]->m_index = -1;
								if (g_trainArtifactTempl)
									g_artifact[j]->m_nsamples++;
							}
						}
					}

				}

				// copy the data over to g_fbuf for display (broadband trace)
				// input data is scaled from TDT so that 32767 = 10mV.
				// send the data for one channel to jack
				float audio[256];
				for (int k=0; k<NFBUF; k++) {
					int h = g_channel[k];
					float gain = g_c[h]->getGain();
					for (int i=0; i<numSamples; i++) {
						short samp = temp[h*numSamples + i];
						float f = gain * samp / 32767.f;
						g_fbuf[k][((g_fbufW+i) % g_nsamp)*3 + 1] = f;
						//g_fbuf[k][(g_fbufW % g_nsamp)*3 + 1] = 0; --sets the color.
						if (k==0 && i<256)
							audio[i] = f;
					}
				}
#ifdef JACK
				jackAddSamples(&audio[0], &audio[0], numSamples);
#endif
				g_fbufW += numSamples;

				// copy to the sorting buffers, wrapped.
				int oldo = g_sample & 255;
				for (int k=0; k<NCHAN; k++) {
					for ( int i=0; i<numSamples; i++) {
						short samp = temp[k*numSamples + i];
						float f = samp / 32767.f; 	// no gain?
						g_obuf[k][(oldo+i) & 255] = f;
						//1 = +10mV; range = [-1 1] here.
						//update the channel standard deviations, too.
						double m = g_c[k]->m_mean;
						g_c[k]->m_var *= 0.999998;
						g_c[k]->m_var += 0.000002*(f-m)*(f-m);
						m *= 0.999997;
						m += 0.000003 * f;
						g_c[k]->m_mean = m;
					}
				}
				g_sample += numSamples;

				//sort -- see if samples pass threshold.  if so, copy.
				wfpak pak;
				float wf[32];
				for (int k=0; k<NCHAN && !g_die; k++) {
					float threshold = g_c[k]->getThreshold(); //1 -> 10mV.
					int centering = g_c[k]->getCentering();
					for (int m=0; m<numSamples; m++) {
						int o = oldo - centering + m - 1;
						o &= 255;
						float a = g_obuf[k][o];
						float b = g_obuf[k][(o+1)&255];
						//normal template-threshold sorting for now. boring, but known.
						if ((threshold > 0 && (a <= threshold && b > threshold))
						    || (threshold < 0 && (a >= threshold && b < threshold))) {
							for (int g=0; g<32; g++) {
								wf[g] = g_obuf[k][(oldo+g+m-32) & 255] * 0.5; //range [-0.5 0.5]
							}
							int unit = 0; //unsorted.
							//compare to template.
							for (int u=1; u>=0; u--) {
								float sum = 0;
								for (int j=0; j<32; j++) {
									float r = wf[j] - g_c[k]->m_template[u][j];
									sum += r*r;
								}
								sum /= 32;
								if (sum < g_c[k]->getAperture(u))
									unit = u+1;
							}
							//check if this exceeds minimum ISI.
							double wfticks = g_sample - numSamples + m + g_ts.m_dropped;
							// wfticks is indexed to the start of the waveform.
							if (g_sample - g_lastSpike[k][unit] > g_minISI*24.4140625) {
								//need to more precisely calulate spike time here.
								g_c[k]->addWf(wf, unit, time, true);
								g_c[k]->updateISI(unit, g_sample - numSamples + m);
								g_lastSpike[k][unit] = g_sample;
								if (g_wfwriter.m_enable) {
									if (unit > 0 || g_saveUnsorted) {
										pak.time = time + (double)m/24414.0625;
										pak.ticks = wfticks;
										pak.channel = k;
										pak.unit = unit;
										pak.len = 32;
										float gain2 = 2.f * 32767.f;
										for (int g=0; g<32; g++) {
											pak.wf[g] = (short)(wf[g]*gain2); //should be in original units.
										}
										g_wfwriter.add(&pak);
									}
								}
								if (unit > 0 && unit <=2) {
									int uu = unit-1;
									g_fr[k][uu].add(time + (double)m/24414.0625);
									i64 w = g_sbufW[uu] % (i64)(sizeof(g_sbuf[0])/8);
									g_sbuf[uu][w*2+0] = (float)(time);
									g_sbuf[uu][w*2+1] = (float)k;
									g_sbufW[uu]++;
								}
							} else {
								g_c[k]->m_isiViolations++;
							}
						}
					}
				}
			} else {
				//printf("wait count %d\n", waitCount);
				waitCount++;
			}
			frame++;
		}
		//delete buffers since we have dynamically allocated;
		delete[] temp;
		delete[] temptemp;
		printf("\n");
		sleep(1);
	}
	return 0;
}
/*
struct binned_header {
	double time;
	unsigned short nchan;
	unsigned short nunits;
	unsigned short nlags;
};
void bswap_64(void *a)
{
	long long b = *((long long *)a);
	unsigned int h = htonl((b>>32) & 0xffffffff);
	unsigned int l = htonl(b & 0xffffffff);
	b = l;
	b <<= 32;
	b += h;
	*((long long *)a) = b;
}
*/
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
void *mmap_thread(void *)
{
	// sockets are too slow -- we need to memmap a file(s).
	/* matlab can do this -- very well, too! e.g:
	 * m = memmapfile('/tmp/binned.mmap', 'Format', {'uint16' [194 10] 'x'})
	 * A = m.Data(1).x;
	 * */
	// XXX we make an assumption here that the number of lags is
	// the same for all neurons.
	int nlags = g_fr[0][0].get_lags();
	size_t length = (NCHAN+1)*NSORT*nlags*2; // (chans+time)*(2 units)*lags*sizeof(short)
	mmapHelp *mmh = new mmapHelp(length, "/tmp/binned.mmap");
	volatile unsigned short *bin = (unsigned short *)mmh->m_addr;
	mmh->prinfo();
	fifoHelp *pipe_out = new fifoHelp("/tmp/gtkclient_out.fifo");
	fifoHelp *pipe_in = new fifoHelp("/tmp/gtkclient_in.fifo");
	int frame = 0;
	bin[NCHAN*2*nlags] = 0;
	bin[NCHAN*2*nlags+1] = 0;
	flush_pipe(pipe_out->m_fd);

	while (!g_die) {
		//printf("%d waiting for matlab...\n", frame);
		double reqTime = 0.0;
		int r = read(pipe_in->m_fd, &reqTime, 8); // send it the time you want to sample,
		double end = reqTime; 	// or < 0 to bin 'now'.
		if (end < 0) end = (double)gettime();
		if (r >= 3) {
			for (int i=0; i<NCHAN; i++) {
				for (int j=0; j<2; j++) {
					g_fr[i][j].get_bins(end, (unsigned short *)&(bin[(i*2+j)*nlags]));
				}
			}
			bin[NCHAN*2*nlags]++; //counter.
			// N.B. seems we need to touch all memory to update the first page.
			//msync(addr, length, MS_SYNC);
			//  if made with shm_open, msync is ok -- no writes to disk.
			usleep(100); //seems reliable with this in place.
			write(pipe_out->m_fd, "go\n", 3);
			//printf("sent pipe_out 'go'\n");
		} else
			usleep(200000); //does not seem to limit the frame rate, just the startup sync.
		frame++;
	}
	delete mmh;
	delete pipe_in;
	delete pipe_out;
	return NULL;
}
static gboolean chanscan(gpointer)
{
	if (g_cycle) {
		g_uiRecursion++;
		int base = g_channel[0];
		base ++;
		base &= 31;
		for (int k=0; k<4; k++) {
			g_channel[k] = base + k*32;
			g_channel[k] %= NCHAN;
			gtk_adjustment_set_value(g_channelSpin[k], (double)g_channel[k]);
		}
		g_uiRecursion--;
		//setChans();
	}
	return g_cycle; //if this is false, don't call again.
}
void updateChannelUI(int k)
{
	//called when a channel changes -- update the UI elements accordingly.
	g_uiRecursion++;
	int ch = g_channel[k];
	gtk_adjustment_set_value(g_gainSpin[k], g_c[ch]->getGain());
	gtk_adjustment_set_value(g_apertureSpin[k*2+0], g_c[ch]->getApertureUv(0));
	gtk_adjustment_set_value(g_apertureSpin[k*2+1], g_c[ch]->getApertureUv(1));
	gtk_adjustment_set_value(g_thresholdSpin[k], g_c[ch]->getThreshold());
	gtk_adjustment_set_value(g_centeringSpin[k], g_c[ch]->getCentering());
	g_uiRecursion--;
}
static void channelSpinCB( GtkWidget *, gpointer p)
{
	int k = (int)((long long)p & 0xf);
	if (k >= 0 && k<4) {
		int ch = (int)gtk_adjustment_get_value(g_channelSpin[k]);
		printf("channelSpinCB: %d\n", ch);
		if (ch < NCHAN && ch >= 0 && ch != g_channel[k]) {
			g_channel[k] = ch;
			//update the UI too.
			updateChannelUI(k);
		}
		//if we are in sort mode, and k == 0, move the other channels ahead of us.
		//this allows more PCA points for sorting!
		//if (g_mode == MODE_SORT && k == 0 && g_autoChOffset) {
		if (k == 0 && g_autoChOffset) {
			for (int j=1; j<4; j++) {
				g_channel[j] = (g_channel[0] + j) % NCHAN;
				//this does not recurse -- have to set the other stuff manually.
				g_uiRecursion++;
				gtk_adjustment_set_value(g_channelSpin[j], (double)g_channel[j]);
				g_uiRecursion--;
			}
			//loop over & update the UI afterward, so we don't have a race-case.
			for (int j=1; j<4; j++)
				updateChannelUI(j);
		}
		//if(!g_uiRecursion)
		//	setChans();
	}
}
static void gainSpinCB( GtkWidget *, gpointer p)
{
	int h = (int)((long long)p & 0xf);
	if (h >= 0 && h < 4 && !g_uiRecursion) {
		float gain = gtk_adjustment_get_value(g_gainSpin[h]);
		printf("gainSpinCB: %f\n", gain);
		g_c[g_channel[h]]->setGain(gain);
		//updateGain(g_channel[h]);
		g_c[g_channel[h]]->resetPca();
	}
}
static void gainSetAll(gpointer )
{
	float gain = gtk_adjustment_get_value(g_gainSpin[0]);
	for (int i=0; i<NCHAN; i++) {
		g_c[i]->setGain(gain);
		//updateGain(i);
	}
	//for(int i=0; i<32; i++){
	//	resetBiquads(i);
	//}
	for (int i=0; i<4; i++)
		gtk_adjustment_set_value(g_gainSpin[i], gain);
	for (int i=0; i<NCHAN; i++)
		g_c[i]->resetPca();
}
static void unsortRateSpinCB( GtkWidget * , gpointer)
{
	float t = gtk_adjustment_get_value(g_unsortRateSpin);
	g_unsortrate = t;
	printf("unsortRateSpinCB: %f\n", t);
}
static void autoThresholdSpinCB( GtkWidget * , gpointer)
{
	float t = gtk_adjustment_get_value(g_autoThresholdSpin);
	g_autoThreshold = t;
	printf("autoThresholdSpinCB: %f\n", t);
}
static void apertureSpinCB( GtkWidget *, gpointer p)
{
	int h = (int)((long long)p & 0xf);
	if (h >= 0 && h < 8 && !g_uiRecursion) {
		float a = gtk_adjustment_get_value(g_apertureSpin[h]);
		int j = g_channel[h/2];
		//gtk likes to call this frequently -- only update when
		//the value has actually changed.
		if (g_c[j]->getApertureUv(h%2) != a) {
			if (a >= 0 && a < 2000) {
				g_c[j]->setApertureUv(h%2, a);
				//setAperture(j);
			}
			//printf("apertureSpinCB: %f ch %d\n", a, j);
		}
	}
}
static void apertureOffCB( GtkWidget *, gpointer p)
{
	int h = (int)((long long)p & 0xf);
	if (h >= 0 && h < 8 && !g_uiRecursion) {
		int j = g_channel[h/2];
		gtk_adjustment_set_value(g_apertureSpin[h], 0);
		g_c[j]->setApertureLocal(h%2, 0);
		//setAperture(j);
	}
}
static void autoThresholdCB( GtkWidget *, gpointer p)
{
	int h = (int)((long long)p & 0xf);
	if (h == 1) {
		g_c[g_channel[0]]->autoThreshold(g_autoThreshold);
	}
	if (h == 2) {
		for (int i=0; i<NCHAN; i++) {
			g_c[i]->autoThreshold(g_autoThreshold);
		}
	}
}
static void drawRadioCB(GtkWidget *button, gpointer p)
{
	if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))) {
		int i = (int)((long long)p & 0xf);
		if (i == 0) g_drawmode = GL_LINE_STRIP;
		else g_drawmode = GL_POINTS;
	}
}
static void blendRadioCB(GtkWidget *button, gpointer p)
{
	if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))) {
		int i = (int)((long long)p & 0xf);
		if (i == 0) g_blendmode = GL_ONE_MINUS_SRC_ALPHA;
		else g_blendmode = GL_ONE;
	}
}
static void pauseButtonCB(GtkWidget *button, gpointer * )
{
	if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button)))
		g_pause = gettime();
	else
		g_pause = -1.0;
}
static void cycleButtonCB(GtkWidget *button, gpointer p)
{
	gboolean *b = (gboolean *)p;
	if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))) {
		*b = true;
		g_timeout_add(3000, chanscan, (gpointer)0);
	} else {
		*b = false;
	}
}
static void minISISpinCB( GtkWidget *, gpointer)
{
	g_minISI = gtk_adjustment_get_value(g_minISISpin);
}
static void spikesColsSpinCB( GtkWidget *, gpointer)
{
	g_spikesCols = (int)gtk_adjustment_get_value(g_spikesColsSpin);
}
static void basic_checkbox_cb(GtkWidget *button, gpointer p)
{
	gboolean *b = (gboolean *)p;
	*b = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button)) ?
		true :
		false;
}
static void clearArtifactTemplCB(GtkWidget )
{
	for (int i=0; i<STIMCHAN; i++) {
		for (int j=0; j<ARTBUF; j++) {
			g_artifact[i]->m_buf[j] = 0.f;
		}
		g_artifact[i]->m_nsamples = 0;
	}
}
static void numArtifactCB( GtkWidget *, gpointer)
{
	g_numArtifactSamps = (int)gtk_adjustment_get_value(g_numArtifactSpin);
}
static void zoomSpinCB( GtkWidget *, gpointer )
{
	float f = gtk_adjustment_get_value(g_zoomSpin); //should be in seconds.
	g_nsamp = f * 24414.0625;
	//make it multiples of 128.
	g_nsamp &= (0xffffffff ^ 127);
	g_nsamp = g_nsamp > NSAMP ? NSAMP : g_nsamp;
	g_nsamp = g_nsamp < 512 ? 512 : g_nsamp;
}
static void rasterSpanSpinCB( GtkWidget *, gpointer )
{
	g_rasterSpan = gtk_adjustment_get_value(g_rasterSpanSpin);
	//this is pretty simple.
}
static void notebookPageChangedCB(GtkWidget *,
                                  gpointer, int page, gpointer)
{
	if (page == 0) g_mode = MODE_RASTERS;
	if (page == 1) g_mode = MODE_SORT;
	if (page == 2) g_mode = MODE_SPIKES;
	if (page == 3) g_mode = MODE_ICMS;
}
static GtkAdjustment *mk_spinner(const char *txt, GtkWidget *container,
                                 float start, float min, float max, float step,
                                 GtkCallback cb, int cb_val)
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
	g_signal_connect(spinner, "value-changed", G_CALLBACK(cb), GINT_TO_POINTER (cb_val));
	gtk_widget_show(spinner);

	gtk_box_pack_start (GTK_BOX (container), bx, TRUE, TRUE, 2);

	return adj;
}
static void mk_radio(const char *txt, int ntxt,
                     GtkWidget *container, bool vertical,
                     const char *frameTxt, GtkCallback cb)
{
	GtkWidget *frame, *button, *modebox;
	GSList *group;

	frame = gtk_frame_new (frameTxt);
	gtk_box_pack_start (GTK_BOX (container), frame, TRUE, TRUE, 0);
	modebox = vertical ? gtk_vbox_new(FALSE, 2) : gtk_hbox_new(FALSE, 2);
	gtk_container_add (GTK_CONTAINER (frame), modebox);
	gtk_container_set_border_width (GTK_CONTAINER (modebox), 2);
	gtk_box_pack_start (GTK_BOX (container), modebox, TRUE, TRUE, 0);
	gtk_widget_show(modebox);

	char buf[256];
	strncpy(buf, txt, 256);
	char *a = strtok(buf, ",");

	button = gtk_radio_button_new_with_label (NULL, (const char *)a );
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
	                    GTK_SIGNAL_FUNC (cb), GINT_TO_POINTER(0));

	for (int i=1; i<ntxt; i++) {
		group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (button));
		a = strtok(0, ",");
		button = gtk_radio_button_new_with_label (group, (const char *)a );
		gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (button), FALSE);
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
	gtk_box_pack_start (GTK_BOX (container), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
}
static void openSaveSpikesFile(gpointer parent_window)
{
	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save Spikes File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	        GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_filename (GTK_FILE_CHOOSER (dialog),"spikes.bin");
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_wfwriter.open(filename);
		g_free (filename);
	}
	gtk_widget_destroy (dialog);
}
static void openSaveICMSFile(gpointer parent_window)
{
	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save ICMS File",
	                                      (GtkWindow *)parent_window,
	                                      GTK_FILE_CHOOSER_ACTION_SAVE,
	                                      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
	                                      GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
	                                      NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
	        GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_filename (GTK_FILE_CHOOSER (dialog),"icms.bin");
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT) {
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_icmswriter.open(filename);
		g_free (filename);
	}
	gtk_widget_destroy (dialog);
}
static void closeSaveFiles(gpointer)
{
	//have to signal to the other thread, let them close it.
	g_wfwriter.close();
	g_icmswriter.close();
}
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

static void calcPCACB(gpointer)
{
	for (int h=0; h<4; h++)
		g_c[g_channel[h]]->computePca();
}
static void getTemplateCB( GtkWidget *, gpointer p)
{
	int aB = (int)((long long)p & 0x1);
	int j = (int)((long long)p >> 1);
	if (j < 4) {
		g_c[g_channel[j]]->updateTemplate(aB+1);
		//update the UI.
		gtk_adjustment_set_value(g_apertureSpin[j*2+aB],
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
	int s = (int)((long long)p & 0xff);

	menu = gtk_menu_new();

	menuitem = gtk_menu_item_new_with_label("set template 1 (cyan)");
	setWidgetColor(menuitem, 128, 255, 255);
	g_signal_connect(menuitem, "activate",
	                 G_CALLBACK(getTemplateCB), (gpointer)(s*2+0));
	gtk_menu_shell_append(GTK_MENU_SHELL(menu), menuitem);

	menuitem = gtk_menu_item_new_with_label("set template 2 (red)");
	setWidgetColor(menuitem, 255, 130, 130);
	g_signal_connect(menuitem, "activate",
	                 G_CALLBACK(getTemplateCB), (gpointer)(s*2+1));
	gtk_menu_shell_append(GTK_MENU_SHELL(menu), menuitem);

	gtk_widget_show_all(menu);

	/* Note: event can be NULL here when called from view_onPopupMenu;
	 *  gdk_event_get_time() accepts a NULL argument */
	gtk_menu_popup(GTK_MENU(menu), NULL, NULL, NULL, NULL,
	               (event != NULL) ? event->button : 0,
	               gdk_event_get_time((GdkEvent *)event));
}
int main(int argc, char **argv)
{

#ifdef DEBUG
	feenableexcept(FE_DIVBYZERO|FE_INVALID|FE_OVERFLOW);  // Enable (some) floating point exceptions
#endif

	GtkWidget *window;
	GtkWidget *da1;
	GdkGLConfig *glconfig;
	GtkWidget *box1, *bx, *v1, *label;
	GtkWidget *paned;
	GtkWidget *frame;
	GtkWidget *button;
	//GtkWidget *combo;
	//GtkWidget *paned2;

	for (int i=0; i<NCHAN; i++) {
		g_fr[i][0].set_bin_params(40, 1.0);	// nlags, duration (sec)
		g_fr[i][1].set_bin_params(40, 1.0);	// nlags, duration (sec)
	}

	FiringRate test_fr;
	test_fr.set_bin_params(40,1.0);
	test_fr.get_bins_test();

	if (argc > 1)
		strcpy(g_prefstr, argv[1]);
	else
		strcpy(g_prefstr, "preferences.mat");

	MatStor ms(g_prefstr);
	for (int i=0; i<4; i++) {
		g_channel[i] = ms.getValue(i, "channel", i*16);
		if (g_channel[i] < 0) g_channel[i] = 0;
		if (g_channel[i] >= NCHAN) g_channel[i] = NCHAN-1;
	}
	for (int i=0; i<NCHAN; i++)
		g_c[i] = new Channel(i, &ms);
	for (int i=0; i<STIMCHAN; i++)
		g_artifact[i] = new Artifact();

	//g_dropped = 0;

	// Verify that the version of the library that we linked against is
	// compatible with the version of the headers we compiled against.
	//GOOGLE_PROTOBUF_VERIFY_VERSION;

	gtk_init (&argc, &argv);
	gtk_gl_init (&argc, &argv);

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
#ifndef DEBUG
	gtk_window_set_title (GTK_WINDOW (window), "gtk TDT client v1.1");
#else
	gtk_window_set_title (GTK_WINDOW (window), "gtk TDT client v1.1 *** DEBUG ***");
#endif
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
		snprintf(buf, 128, "%c", 'A'+i);
		frame = gtk_frame_new (buf);
		//gtk_frame_set_shadow_type(GTK_FRAME(frame),  GTK_SHADOW_ETCHED_IN);
		gtk_box_pack_start (GTK_BOX (v1), frame, FALSE, FALSE, 0);

		GtkWidget *bx2 = gtk_vbox_new (FALSE, 1);
		gtk_container_add (GTK_CONTAINER (frame), bx2);
		GtkWidget *bx3 = gtk_hbox_new (FALSE, 1);
		gtk_box_pack_start (GTK_BOX (bx2), bx3, FALSE, FALSE, 0);

		//channel spinner.
		g_channelSpin[i] = mk_spinner("ch", bx3,
		                              g_channel[i], 0, NCHAN, 1,
		                              channelSpinCB, i);
		//right of that, a gain spinner. (need to update depending on ch)
		g_gainSpin[i] = mk_spinner("gain", bx3,
		                           g_c[g_channel[i]]->getGain(),
		                           -64.0, 64.0, 0.1,
		                           gainSpinCB, i);
		if (i==0) {
			mk_checkbox("auto offset of B,C,D", bx2,
				&g_autoChOffset, basic_checkbox_cb);
		}

		gtk_box_pack_start (GTK_BOX (frame), bx2, FALSE, FALSE, 1);
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



	// add a page for rasters
	box1 = gtk_vbox_new(FALSE, 2);

	//add a gain set-all button.
	button = gtk_button_new_with_label ("Set all gains from A");
	g_signal_connect(button, "clicked", G_CALLBACK (gainSetAll),0);
	gtk_box_pack_start (GTK_BOX (box1), button, TRUE, TRUE, 0);

	mk_checkbox("show grid", box1, &g_showContGrid, basic_checkbox_cb);

	mk_checkbox("show threshold", box1, &g_showContThresh, basic_checkbox_cb);

	//add in a zoom spinner.
	g_zoomSpin = mk_spinner("Waveform Span", box1,
	                        1.0, 0.1, 2.7, 0.05,
	                        zoomSpinCB, 0);
	zoomSpinCB(GTK_WIDGET(NULL), NULL); //init the variables properly.

	g_rasterSpanSpin = mk_spinner("Raster span", box1,
	                              g_rasterSpan, 1.0, 100.0, 1.0,
	                              rasterSpanSpinCB, 0);

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
		gtk_box_pack_start (GTK_BOX (frame), bx2, FALSE, FALSE, 1);

		for (int j=0; j<NSORT; j++) {
			GtkWidget *bx3 = gtk_hbox_new (FALSE, 2);
			gtk_container_add (GTK_CONTAINER (bx2), bx3);
			g_apertureSpin[i*2+j] = mk_spinner("", bx3,
			                                   g_c[g_channel[i]]->getApertureUv(j), 0, 100, 0.1,
			                                   apertureSpinCB, i*2+j);
			label = gtk_label_new("uV");
			gtk_box_pack_start (GTK_BOX (bx3), label, TRUE, TRUE, 1);
			//a button for disable.
			button = gtk_button_new_with_label("off");
			if (j == 0)
				setWidgetColor(button, 160, 255, 255);
			else
				setWidgetColor(button, 255, 155, 155);
			g_signal_connect(button, "clicked", G_CALLBACK (apertureOffCB), (gpointer)(i*2+j));
			gtk_box_pack_start (GTK_BOX (bx3), button, TRUE, TRUE, 1);
		}
	}
	//add one for unsorted unit add rate.
	g_unsortRateSpin = mk_spinner("unsort rate", box1,
	                              g_unsortrate, 0.0, 40.0, 0.1,
	                              unsortRateSpinCB, 0);

	GtkWidget *box2 = gtk_hbox_new (FALSE, 0);

	//show PCA button.
	mk_checkbox("show PCA", box2, &g_showPca, basic_checkbox_cb);

	//show wf voltage grid
	mk_checkbox("show grid", box2, &g_showWFVgrid, basic_checkbox_cb);

	gtk_widget_show(box2);
	gtk_box_pack_start (GTK_BOX (box1), box2, TRUE, TRUE, 0);

	button = gtk_button_new_with_label ("calc PCA");
	g_signal_connect(button, "clicked", G_CALLBACK (calcPCACB),
	                 (gpointer *)window);
	gtk_box_pack_start (GTK_BOX (box1), button, FALSE, FALSE, 1);

//this concludes sort page.
	gtk_widget_show (box1);
	label = gtk_label_new("sort");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 1);

//add page for sorting a single unit.
	//box1 = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);


//add a page for viewing all the spikes.
	box1 = gtk_vbox_new(FALSE, 0);
	// for the sorting, we show all waveforms (up to a point..)
	//these should have a minimum enforced ISI.
	g_minISISpin = mk_spinner("min ISI", box1, g_minISI, 0.2, 3.0, 0.01,
	                          minISISpinCB, 0);

	g_autoThresholdSpin = mk_spinner("auto thresh, std", box1, g_autoThreshold,
	                                 -10.0, 10.0, 0.05, autoThresholdSpinCB, 0);
	GtkWidget *bx3 = gtk_hbox_new (FALSE, 1);
	gtk_box_pack_start (GTK_BOX (box1), bx3, FALSE, FALSE, 0);
	button = gtk_button_new_with_label ("set selected");
	g_signal_connect(button, "clicked", G_CALLBACK (autoThresholdCB),
	                 (gpointer *)1);
	gtk_box_pack_start (GTK_BOX (bx3), button, FALSE, FALSE, 1);
	button = gtk_button_new_with_label ("set all");
	g_signal_connect(button, "clicked", G_CALLBACK (autoThresholdCB),
	                 (gpointer *)2);
	gtk_box_pack_start (GTK_BOX (bx3), button, FALSE, FALSE, 1);

	g_spikesColsSpin = mk_spinner("Columns", box1, g_spikesCols, 3, 32, 1,
	                              spikesColsSpinCB, 0);

// end sort page.
	gtk_widget_show (box1);
	label = gtk_label_new("spikes");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 2);



	// add a page for icms
	box1 = gtk_vbox_new(FALSE, 0);

	// enable artifact subtraction
	mk_checkbox("enable artifact subtraction", box1,
				&g_enableArtifactSubtr, basic_checkbox_cb);

	mk_checkbox("train artifact templates", box1,
				&g_trainArtifactTempl, basic_checkbox_cb);

	button = gtk_button_new_with_label ("clear artifact templates");
	g_signal_connect(button, "clicked", G_CALLBACK (clearArtifactTemplCB), 0);
	gtk_box_pack_start (GTK_BOX (box1), button, FALSE, FALSE, 1);

	g_numArtifactSpin = mk_spinner("num samples", box1, g_numArtifactSamps,
	                               1e2, 1e5, 1, numArtifactCB, 0);

	// end icms page
	gtk_widget_show(box1);
	label = gtk_label_new("icms");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(g_notebook), box1, label, 3);



	//add a automatic channel change button.
	mk_checkbox("cycle channels", v1, &g_cycle, cycleButtonCB);
	
	//add draw mode (applicable to all)
	bx = gtk_hbox_new(FALSE, 0);
	mk_radio("lines,points", 2,
	         bx, true, "draw mode", drawRadioCB);
	mk_radio("normal,accum", 2,
	         bx, true, "blend mode", blendRadioCB);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);


	bx = gtk_hbox_new (FALSE, 3);

	//add a pause / go button (applicable to all)
	button = gtk_check_button_new_with_label("pause");
	g_signal_connect (button, "toggled",
	                  G_CALLBACK (pauseButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (bx), button, TRUE, TRUE, 0);
	gtk_widget_show(button);

	//saving unsorted units?
	mk_checkbox("Save unsorted", bx,
			&g_saveUnsorted, basic_checkbox_cb);

	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	//and save / stop saving buttons
	bx = gtk_hbox_new (FALSE, 3);
	button = gtk_button_new_with_label ("Rec Spikes");
	g_signal_connect(button, "clicked", G_CALLBACK (openSaveSpikesFile),
	                 (gpointer *)window);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);

	button = gtk_button_new_with_label ("Rec ICMS");
	g_signal_connect(button, "clicked", G_CALLBACK (openSaveICMSFile),
	                 (gpointer *)window);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);

	button = gtk_button_new_with_label ("Stop All");
	g_signal_connect(button, "clicked", G_CALLBACK (closeSaveFiles),0);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);

	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	bx = gtk_hbox_new (FALSE, 3);
	g_fileSizeLabel = gtk_label_new ("KB");
	gtk_misc_set_alignment (GTK_MISC (g_fileSizeLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_fileSizeLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_fileSizeLabel);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	gtk_paned_add1(GTK_PANED(paned), v1);
	gtk_paned_add2(GTK_PANED(paned), da1);

	gtk_widget_show (paned);

	g_signal_connect_swapped (window, "destroy",
	                          G_CALLBACK (destroy), NULL);
	gtk_widget_set_events (da1, GDK_EXPOSURE_MASK);

	gtk_widget_show (window);

	/* prepare GL */
	glconfig = gdk_gl_config_new_by_mode (GdkGLConfigMode(
	                GDK_GL_MODE_RGB |
	                GDK_GL_MODE_DEPTH |
	                GDK_GL_MODE_DOUBLE));

	if (!glconfig)
		g_assert_not_reached ();

	if (!gtk_widget_set_gl_capability (da1, glconfig, NULL, TRUE,
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

	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	g_startTime = gettime();
	pthread_create( &thread1, &attr, po8_thread,		0 );
	pthread_create( &thread1, &attr, wfwrite_thread, 	0 );
	pthread_create( &thread1, &attr, icmswrite_thread, 	0 );
	pthread_create( &thread1, &attr, mmap_thread, 		0 );

	//set the initial sampling stage.
	//gtk_combo_box_set_active(GTK_COMBO_BOX(combo), 12);
	gtk_widget_show_all (window);

	g_timeout_add (1000 / 30, rotate, da1);
	//change the channel every 2 seconds.
	g_timeout_add(3000, chanscan, (gpointer)0);

	//jack.
#ifdef JACK
	jackInit("gtkclient", JACKPROCESS_RESAMPLE);
	jackConnectFront();
	jackSetResample(24414.0625/SAMPFREQ);
#endif

	gtk_main ();

#ifdef JACK
	jackClose(0);
#endif
	//just in case.
	closeSaveFiles(0);
	//cancel the mmap thread -- probably waiting on a read().
	if (pthread_cancel(thread1)) {
		perror("pthread_cancel mmap_thread");
	}
	KillFont();
}