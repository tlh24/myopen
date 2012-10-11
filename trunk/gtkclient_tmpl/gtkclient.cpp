// in order to get function prototypes from glext.h,
// define GL_GLEXT_PROTOTYPES before including glext.h
#define GL_GLEXT_PROTOTYPES

#include <gtk/gtk.h>
#include <gtk/gtkgl.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include <GL/gl.h>	// Header File For The OpenGL32 Library
#include <GL/glu.h>	// Header File For The GLu32 Library
#include <GL/glx.h>     // Header file for the glx libraries.
#include "glext.h"
#include "glInfo.h"

#include <Cg/cg.h>    /* included in Cg toolkit for nvidia */
#include <Cg/cgGL.h>

#include <stdio.h>
#include <sys/types.h>
#include <inttypes.h>
#include <sys/time.h>
#include <pthread.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <arpa/inet.h>
#include "sock.h"

#define NSAMP (24*1024)
#define NDISPW 256
#ifdef EMG
#define NFBUF 8 //for EMG
#else
#define NFBUF 4
#endif
#define NSBUF	1024

#include "../firmware_stage9/memory.h"
#include "headstage.h"
#include "cgVertexShader.h"
#include "vbo.h"
#include "channel.h"
#include "packet.h"
#include <sqlite3.h>
#include "sql.h"
#include <matio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_linalg.h>
#include "spikes.pb.h"
#include "tcpsegmenter.h"
#include "firingrate.h"


//CG stuff. for the vertex shaders.
CGcontext   myCgContext;
CGprofile   myCgVertexProfile;
//cgVertexShader*		g_vsFade;
cgVertexShader*		g_vsFadeColor;
cgVertexShader*		g_vsThreshold;

float		g_cursPos[2];
float		g_viewportSize[2] = {640, 480}; //width, height.

class Channel;

static float	g_fbuf[NFBUF][NSAMP*3]; //continuous waveform. range [-1 .. 1]
i64	g_fbufW; //where to write to (always increment)
i64	g_fbufR; //display thread reads from here - copies to mem
unsigned int 	g_nsamp = 4096; //given the current level of zoom (1 = 4096 samples), how many samples to update?
static float 	g_sbuf[2][128*NSBUF*2]; //2 units, 128 channels, 1024 spikes, 2 floats / spike.
static float	g_rasterSpan = 10.f; // %seconds.
i64	g_sbufW[2];
i64	g_sbufR[2];
Channel*		g_c[128];
FiringRate	g_fr[128][2];
GLuint 		g_base;            // base display list for the font set.

bool g_die = false;
double g_pause = -1.0;
double g_rasterZoom = 0.15;
bool g_cycle = false;
bool g_showPca = false;
bool g_rtMouseBtn = false;
int g_polyChan = 0;
bool g_addPoly = false;
int g_channel[4] = {0,32,64,96};
int	g_signalChain = 10; //what to sample in the headstage signal chain.
int	g_radioChannel = 114; //the radio channel to use.

bool g_out = false;
bool g_templMatch[128][2];
//the headstage match a,b over all 128 channels. cleared after every packet!!
float        g_sortAperture[4][2][16]; //the quality of the match found, circular buffer.
i64			 g_sortOffset[4][2][16]; //offset to the best match.
unsigned int g_sortUnit[4][16]; //have to remember to zero all of these.
unsigned int g_sortI; //index to the (short) circular buffer.
i64			 g_sortWfOffset[4];
int 			 g_sortWfUnit[4];
i64			 g_unsortCount[4];

float g_unsortrate = 0.0; //the rate that unsorted WFs get through.
FILE* g_saveFile = 0;
bool g_closeSaveFile = false;
i64 g_saveFileBytes;

double g_startTime = 0.0;
double g_timeOffset = 0.0; //offset between local time and bridge time.

int g_totalPackets = 0;
int g_strobePackets = 0;
unsigned int g_dropped; //compare against the bridge.
int g_totalDropped = 0;

enum MODES {
	MODE_RASTERS,
	MODE_SORT,
	MODE_NUM
};
int g_mode = MODE_RASTERS;
int	g_drawmode = GL_LINE_STRIP;

int g_rxsock = 0;//rx from hardware. right now only support 1 headstage.
int g_txsock = 0;//transmit back to hardware.  again, only one supported now.
int g_spikesock = 0; //transmit spike times to client
int g_strobesock = 0; //socket for strobing client

struct sockaddr_in g_txsockAddr;

bool	g_vbo1Init = false;
GLuint g_vbo1[NFBUF]; //for the waveform display
GLuint g_vbo2[2] = {0,0}; //for spikes.

//global labels..
//GtkWidget* g_gainlabel[16];
GtkWidget* g_headechoLabel;
GtkAdjustment* g_channelSpin[4] = {0,0,0,0};
GtkAdjustment* g_gainSpin[4] = {0,0,0,0};
GtkAdjustment* g_agcSpin[4] = {0,0,0,0};
GtkAdjustment* g_apertureSpin[8] = {0,0,0,0};
GtkAdjustment* g_thresholdSpin[4];
GtkAdjustment* g_centeringSpin[4];
GtkAdjustment* g_unsortRateSpin;
GtkAdjustment* g_zoomSpin;
GtkAdjustment* g_rasterSpanSpin;
GtkWidget* g_pktpsLabel;
GtkWidget* g_stbpsLabel; //strobe per second label, todo: put in raster
GtkWidget* g_fileSizeLabel;
int			g_uiRecursion = 0; //prevents programmatic changes to the UI
// from causing commands to be sent to the headstage.

i64 mod2(i64 a, i64 b){
	i64 c = a % b;
	return c;
	/*if(a >=0) return a % b;
	else {
		//map to the positive numbers: -1 -> b-1; -2 ->b-2 etc
		int c = abs(a) / b+1;
		return (b*c+a)%b;
	}*/
}

double gettime(){ //in seconds!
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC, &pt);
	double ret = (double)(pt.tv_sec) ;
	ret += (double)(pt.tv_nsec) / 1e9 ;
	return ret - g_startTime;
	//printf( "present time: %d s %d ns \n", pt.tv_sec, pt.tv_nsec ) ;
}

void gsl_matrix_to_mat(gsl_matrix *x, const char* fname){
	//write a gsl matrix to a .mat file.
	// does not free the matrix.
	mat_t *mat;
	mat = Mat_Create(fname,NULL);
	if(!mat){
		printf("could not open %s for writing \n", fname);
		return;
	}
	int dims[2];
	dims[0] = x->size1;
	dims[1] = x->size2;
	double* d = (double*)malloc(dims[0]*dims[1]*sizeof(double));
	if(!d){
		printf("could not allocate memory for copy \n");
		return;
	}
	//reformat and transpose.
	//matio expects fortran style, column-major format.
	//gsl is row-major.
	for(int i=0; i<dims[0]; i++){ //rows
		for(int j=0; j<dims[1]; j++){ //columns
			d[j*dims[0] + i] = x->data[i*x->tda + j];
		}
	}
	matvar_t *matvar;
	matvar = Mat_VarCreate("a",MAT_C_DOUBLE,MAT_T_DOUBLE,
						2,dims,d,0);
	Mat_VarWrite( mat, matvar, 0 );
	Mat_VarFree(matvar);
	free(d);
	Mat_Close(mat);
}
void copyData(GLuint vbo, u32 sta, u32 fin, float* ptr, int stride){
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, vbo);
	sta *= stride;
	fin *= stride;
	ptr += sta;
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, (GLvoid*)ptr);
}
void BuildFont(void) {
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

    // start at character 32 (space), get 96 characters (a few characters past z), and
    // store them starting at base.
    glXUseXFont(fontInfo->fid, 32, 96, g_base);

    // free that font's info now that we've got the
    // display lists.
    XFreeFont(dpy, fontInfo);

    // close down the 2nd display connection.
    XCloseDisplay(dpy);
}
void KillFont(void){
    glDeleteLists(g_base, 96);                    // delete all 96 characters.
}
void glPrint(char *text){                    // custom gl print routine.
    if (text == NULL) {                         // if there's no text, do nothing.
		return;
    }
    glPushAttrib(GL_LIST_BIT);                  // alert that we're about to offset the display lists with glListBase
    glListBase(g_base - 32);                      // sets the base character to 32.

    glCallLists(strlen(text), GL_UNSIGNED_BYTE, text); // draws the display list text.
    glPopAttrib();                              // undoes the glPushAttrib(GL_LIST_BIT);
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
void updateCursPos(float x, float y){
	g_cursPos[0] = x/g_viewportSize[0];
	g_cursPos[1] = y/g_viewportSize[1];
	//convert to -1 to +1
	for(int i=0; i<2; i++){
		g_cursPos[i] -= 0.5f;
		g_cursPos[i] *= 2.f;
	}
	g_cursPos[1] *= -1; //zero at the top for gtk; bottom for opengl.
}
static gint motion_notify_event( GtkWidget *,
                                 GdkEventMotion *event ){
	float x, y;
	int ix, iy;
	GdkModifierType state;
	if (event->is_hint){
		gdk_window_get_pointer (event->window, &ix, &iy, &state);
		x = ix; y = iy;
	}else{
		x = event->x;
		y = event->y;
		state = (GdkModifierType)(event->state);
	}
	updateCursPos(x,y);
	if((state & GDK_BUTTON1_MASK) && (g_mode == MODE_SORT)){
		if(g_addPoly){
			printf("add poly, g_polyChan %d\n", g_polyChan);
			g_c[g_channel[g_polyChan]]->addPoly(g_cursPos);
			for(int i=1;i<4;i++){
				int sames = 0;
				for(int j=1; j<4; j++){
					if(g_channel[(g_polyChan+i)&3] == g_channel[(g_polyChan+i+j)&3])
						sames = 1;
				}
				if(!sames)
					g_c[g_channel[(g_polyChan+i)&3]]->resetPoly();
			}
		}else{
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
	if(state & GDK_BUTTON3_MASK)
		g_rtMouseBtn = true;
	else
		g_rtMouseBtn = false;
	return TRUE;
}
//forward declaration.
static void templatePopupMenu (GdkEventButton *event, gpointer userdata);
static gint button_press_event( GtkWidget      *,
                                GdkEventButton *event ){
	updateCursPos(event->x,event->y);
	int u = 0;
	if(g_cursPos[0] > 0.0f) u += 1;
	if(g_cursPos[1] < 0.0f) u += 2;
	if (event->button == 1){
		g_polyChan = u;
		g_addPoly = false;
		if(event->type==GDK_2BUTTON_PRESS){
			g_c[g_channel[u]]->computePca();
		}else if(event->type==GDK_3BUTTON_PRESS){
			g_c[g_channel[u]]->resetPca();
		}else{
			if(!g_c[g_channel[u]]->mouse(g_cursPos)){
				g_c[g_channel[u]]->resetPoly();
				g_c[g_channel[u]]->addPoly(g_cursPos);
				g_addPoly = true;
			}
		}
	}
	if(event->button == 3){
		if(g_c[g_channel[u]]->m_pcaVbo->m_polyW > 10 && g_mode == MODE_SORT)
			templatePopupMenu(event, (gpointer)u);
	}
	return TRUE;
}
static gboolean
expose1 (GtkWidget *da, GdkEventExpose*, gpointer )
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext)){
		g_assert_not_reached ();
	}

	//copy over any new data.
	if(g_pause <= 0.0){
		if(g_fbufR < g_fbufW){
			i64 w = g_fbufW; //atomic
			i64 sta = g_fbufR % g_nsamp;
			i64 fin = w % g_nsamp;
			for(int k=0; k<NFBUF; k++){
				if(fin < sta) { //wrap
					copyData(g_vbo1[k], sta, g_nsamp, g_fbuf[k], 3);
					copyData(g_vbo1[k], 0, fin, g_fbuf[k], 3);
				} else {
					copyData(g_vbo1[k], sta, fin, g_fbuf[k], 3);
				}
			}
			g_fbufR = w;
		}
		//ditto for the spike buffers (these can be disordered ..they generally don't overlap.)
		for(int k=0; k<2; k++){
			if(g_sbufR[k] < g_sbufW[k]){
				i64 len = sizeof(g_sbuf[k])/8; //total # of pts.
				i64 w = g_sbufW[k];
				i64 sta = g_sbufR[k] % len;
				i64 fin = w % len;
				if(fin < sta) { //wrap
					copyData(g_vbo2[k], sta, len, g_sbuf[k], 2);
					copyData(g_vbo2[k], 0, fin, g_sbuf[k], 2);
				} else {
					copyData(g_vbo2[k], sta, fin, g_sbuf[k], 2);
				}
				g_sbufR[k] = w;
			}
		}
		//and the waveform buffers.
		for(int i=0; i<128; i++){
			g_c[i]->copy();
		}
	}
	/* draw in here */
	glMatrixMode(GL_MODELVIEW);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_FLAT);

	//draw the cursor no matter what?
	if(0){
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
	if(g_pause > 0.0) time = g_pause;

	if(g_mode == MODE_RASTERS){
		g_vsThreshold->setParam(2,"xzoom",g_rasterZoom);

		//glPushMatrix();
		//glScalef(1.f, 0.5f, 1.f); //don't think this does anythaaang.
		//glTranslatef(0.f,0.5f, 0.f);

		//draw zero lines for the 4 continuous channels.
		for(int k=0; k<NFBUF; k++){
			glLineWidth(1.f);
			glBegin(GL_LINES);
			glColor4f(0.f, 0.5, 1.f, 0.75); //blue, center line
			glVertex3f( -1.f, (float)((3-k)*2+1)/8.f, 0.f);
			glVertex3f( 1.f, (float)((3-k)*2+1)/8.f, 0.f);
			glColor4f(0.f, 0.8f, 0.75f, 0.5);//green, edge lines
			glVertex3f( -1.f, (float)((3-k)*2)/8.f, 0.f);
			glVertex3f( 1.f, (float)((3-k)*2)/8.f, 0.f);
#ifndef EMG
				//draw threshold.
			glColor4f (1., 0.0f, 0.0f, 0.35);
			float y = (float)((3-k)*2+1)/8.f +
				(g_c[g_channel[k]]->getThreshold())/(256.f*128.f*8.f);
			glVertex3f(-1.f, y, 0.f);
			glVertex3f( 1.f, y, 0.f);
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
		for(int k=0; k<NFBUF;k++){
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

		//glPopMatrix ();

		//rasters
#ifndef EMG
		glShadeModel(GL_FLAT);

		glPushMatrix();
		glScalef(1.f/g_rasterSpan, -1.f/130.f, 1.f);
		int lt = (int)time / (int)g_rasterSpan;
		lt *= (int)g_rasterSpan;
		float x = time - (float)lt;
		float adj = 0.f;
		float movtime = 0.20 + log10(g_rasterSpan);
		if(x < movtime){
			x /= movtime;
			adj = 2.f*x*x*x -3.f*x*x + 1;
			adj *= g_rasterSpan;
		}
		glTranslatef((0 - (float)lt + adj), 1.f, 0.f);

		//VBO drawing..
		for(int k=0; k<2; k++){
			glEnableClientState(GL_VERTEX_ARRAY);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo2[k]);
			glVertexPointer(2, GL_FLOAT, 0, 0);
			if(k == 0) glColor4f (1., 1., 0., 0.3f);
			else glColor4f (0., 1., 1., 0.3f);
			glPointSize(2.0);
			glDrawArrays(GL_POINTS, 0, sizeof(g_sbuf[k])/8);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		}
		glDisable(GL_LINE_SMOOTH);
		//draw current time.
		glColor4f (1., 0., 0., 0.5);
		glBegin(GL_LINES);
		glVertex3f( time, 0, 0.f);
		glVertex3f( time, 130.f, 0.f);
		glColor4f (0.5, 0.5, 0.5, 0.5);
		//draw old times, every second.
		for(int t=(int)time; t > time-g_rasterSpan*2; t--){
			glVertex3f( (float)t, 0, 0.f);
			glVertex3f( (float)t, 130.f, 0.f);
		}
		glEnd();
		glEnable(GL_LINE_SMOOTH);
		glPopMatrix ();
		//draw current channel
		for(int k=0; k<4; k++){
			glBegin(GL_LINE_STRIP);
			glColor4f (1., 0., 0., 0.5);
			float y = (float)(1+g_channel[k])/-130.f;
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
	if(g_mode == MODE_SORT){
		glPushMatrix();
		glEnableClientState(GL_VERTEX_ARRAY);
		float xo, yo, xz, yz;
		cgGLEnableProfile(myCgVertexProfile);
		for(int k=0; k<4; k++){
			//2x2 array.
			xo = (k%2)-1.f; yo = 0.f-(k/2);
			xz = 1.f; yz = 1.f;
			g_c[g_channel[k]]->setLoc(xo, yo, xz, yz);
			bool srt = g_mode==MODE_SORT;
			g_c[g_channel[k]]->draw(g_drawmode, time, g_cursPos,
									g_showPca, g_rtMouseBtn, srt);
		}
		cgGLDisableProfile(myCgVertexProfile);
		glPopMatrix();
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

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext)){
		g_assert_not_reached ();
	}

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
	glEnable(GL_LINE_SMOOTH);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	//glEnable(GL_DEPTH_TEST);
	//glDepthMask(GL_TRUE);
	glMatrixMode(GL_MODELVIEW);
  	glLoadIdentity();

	if(!g_vbo1Init){ //start it up!
		//start up Cg first.(glInfo seems to trample some structures)
		myCgContext = cgCreateContext();
		checkForCgError("creating Cg context\n");
		cgGLSetDebugMode(CG_FALSE);
		cgSetParameterSettingMode(myCgContext, CG_DEFERRED_PARAMETER_SETTING);
		checkForCgError("Cg parameter setting\n");

		myCgVertexProfile = cgGLGetLatestProfile(CG_GL_VERTEX);
		cgGLSetOptimalOptions(myCgVertexProfile);
		checkForCgError("selecting vertex profile");

		//g_vsFade = new cgVertexShader("fade.cg","fade");
		//g_vsFade->addParams(4,"time","fade","col","off");

		g_vsFadeColor = new cgVertexShader("fadeColor.cg","fadeColor");
		g_vsFadeColor->addParams(4,"time","fade","col","off");

		g_vsThreshold = new cgVertexShader("threshold.cg","threshold");
		g_vsThreshold->addParams(2,"xzoom","yoffset");

		//now the vertex buffers.
		glInfo glInfo;
		glInfo.getInfo();
		//glInfo.printSelf();
		if(glInfo.isExtensionSupported("GL_ARB_vertex_buffer_object")){
			printf("Video card supports GL_ARB_vertex_buffer_object.\n");
		}else{
			printf("Video card does NOT support GL_ARB_vertex_buffer_object.\n");
		}
		g_vbo1Init = true;
		//okay, want one vertex buffer (4now): draw the samples.
		//fill the buffer with temp data.
		for(int k=0; k<NFBUF; k++){
			for(int i=0; i<NSAMP; i++){
				g_fbuf[k][i*3+0] = (float)i / 4096.0;
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
		for(int k=0; k<2; k++){
			for(int i=0; i<128; i++){
				for(int j=0; j<NSBUF; j++){
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
		for(int i=0; i<128; i++){
			g_c[i]->configure(g_vsFadeColor);
		}
	}
	BuildFont(); //so we're in the right context?

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean rotate (gpointer user_data){
	GtkWidget *da = GTK_WIDGET (user_data);

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);

	char str[256];
	if(g_headecho != ((g_echo-1) & 0xf))
		snprintf(str, 256, "headecho:%d (ASYNC)", g_headecho);
	else
		snprintf(str, 256, "headecho:%d (sync)", g_headecho);
	gtk_label_set_text(GTK_LABEL(g_headechoLabel), str); //works!
	g_oldheadecho = g_headecho;
	//update the packets/sec label too
	snprintf(str, 256, "pkts/sec: %.2f\ndropped %d of %d \nBER %f per 1e6 bits",
			(double)g_totalPackets/gettime(),
			g_totalDropped, g_totalPackets,
			1e6*(double)g_totalDropped/((double)g_totalPackets*32*8));
	gtk_label_set_text(GTK_LABEL(g_pktpsLabel), str); //works!

		snprintf(str, 256, "strobe/sec: %.2f",
			(double)g_strobePackets/gettime());
	gtk_label_set_text(GTK_LABEL(g_stbpsLabel), str); //works!

	snprintf(str, 256, "%.2f MB", (double)g_saveFileBytes/1e6);
	gtk_label_set_text(GTK_LABEL(g_fileSizeLabel), str);
	return TRUE;
}
void saveState(){
	sqlite3_exec(g_db, "BEGIN TRANSACTION;",0,0,0);
	for(int i=0; i<128; i++){
		g_c[i]->save();
	}
	for(int i=0; i<4; i++){
		sqliteSetValue(i, "channel", g_channel[i]);
	}
	sqlite3_exec(g_db, "END TRANSACTION;",0,0,0);
}
void destroy(GtkWidget *, gpointer){
	//save the old values..
	saveState();
	g_die = true;
	if(g_vbo1Init){
		for(int k=0; k<NFBUF; k++)
			glDeleteBuffersARB(1, &g_vbo1[k]);
		glDeleteBuffersARB(2, g_vbo2);
	}
	for(int i=0; i<128; i++){
		delete g_c[i];
	}
	//delete g_vsFade;
	delete g_vsFadeColor;
	delete g_vsThreshold;
	cgDestroyContext(myCgContext);
	sqlite3_close(g_db);

	gtk_main_quit();
}
void* sock_thread(void*){
	g_sendL = 0x4000;
	g_sendbuf = (unsigned int*)malloc(g_sendL*32);
	if(!g_sendbuf){
		fprintf(stderr, "could not allocate sendbuf\n");
		return 0;
	}
	g_sendR = 0;
	g_sendW = 0;

	char destName[256]; destName[0] = 0;
	char buf[1024+128+4];
	char buf2[1024];
	sockaddr_in from;
	g_rxsock = setup_socket(4340+g_radioChannel,0); //udp sock.
	g_strobesock = setup_socket(8845, 0);
	int bcastsock = setup_socket(4340,0); 
	//have to enable multicast reception on the socket.
	printf("**make sure you've enabled allmulti for the ethernet iface**\n");
	printf("sudo ifconfig eth0 allmulti\n");
	printf("put it in your /etc/network/interfaces file.\n");
	struct ip_mreqn group;
	group.imr_multiaddr.s_addr = inet_addr("239.0.200.0");
	group.imr_address.s_addr = htonl(INADDR_ANY);
	group.imr_ifindex = 0;
	if(setsockopt(bcastsock, IPPROTO_IP, IP_ADD_MEMBERSHIP,
		(char *)&group, sizeof(group)) < 0)
		printf("Error adding multicast group");

	// this code needs to be seriously refactored to allow multiple bridges.
		// or does it? 
	while(!destName[0]){
		socklen_t fromlen = sizeof(from);
		int n = recvfrom(bcastsock, buf, sizeof(buf),0,
						 (sockaddr*)&from, &fromlen);
		if(fromlen > 0 && n > 0){
			buf[n] = 0;
			printf("rxed buf: %s\n", buf);
			inet_ntop(AF_INET, (const void*)(&(from.sin_addr)),
						 destName, 256);
			printf("a bridge appears to be at %s\n",destName);
			//send a response.
			buf[0] = g_radioChannel; /** radio channel. **/
			printf("radio channel set to %d\n", buf[0]); 
#ifdef EMG
			buf[0] += 128; //put the bridge in EMG compat mode.
#endif
			buf[1] = 0;
			n = sendto(bcastsock,buf,2,0,(sockaddr*)&from,sizeof(from));
		}
	}
	//must close that socket so another client may use it. 
	close_socket(bcastsock); 
	g_txsock = connect_socket(4342,destName,0); //one port is Ok -- differentiate by IP at this point.
	if(!g_txsock) printf("failed to connect to bridge.\n");
	//default txsockAddr
	get_sockaddr(4342, (char*)destName, &g_txsockAddr);
	int send_delay = 0;
	g_totalPackets = 0;
/* packet format from the headstage, UDP:
4 bytes uint dropped radio packet count
16 radio packets
	Each packet preceded by 4 byte bridge milisecond (ish) counter
	Followed by 32 byte radio packet:
		24 bytes samples, 6 samples from each of 4 channels.
		8 bytes template match, Huffman encoded with one bit
			flag for every byte, or 8 total flags.
			As of SVN 605, this is just the packet # in frame repeated.
			SVN v 612 includes echo capability on the second 4 flag bits.

packet format in the file, as saved here:
4 byte magic number
2 bytes uint svn version
2 bytes uint ensuing packet data size
8 bytes double RX time
	-- If magic number is 0xdecafbad, packet is exactly as what comes in on the
	wire / over UDP.
	-- If magic number is 0xb00a5c11, Data is ascii encoded messages,
	e.g. channel change, template, aperture whatever from the GUI.
	(Technically these can be reconstruced from the TX packet stream,
	but that's complicated.)
	see headstage.cpp.
	-- If magic number is 0xc0edfad0, packet is a TX packet, exactly as
	written out on the wire / UDP.
*/
	while(g_die == 0){
		socklen_t fromlen = sizeof(from);
		int n = recvfrom(g_rxsock, buf, sizeof(buf),0,
						 (sockaddr*)&from, &fromlen);
		//check strobe
		int sn = recvfrom(g_strobesock, buf2, sizeof(buf2),0, 0, 0);
		double rxtime = gettime();
		if(fromlen > 0 && n > 0){
			g_txsockAddr.sin_addr = from.sin_addr;
			//keep the dest port (4342); don't copy that.
			}
#ifndef EMG
		if(n > 0 || sn > 0 && !g_die){
			unsigned int dropped = *((unsigned int*)buf);
			if(g_out) printf("%d\n", dropped);

			if(g_closeSaveFile && g_saveFile){
				fclose(g_saveFile);
				g_saveFile = 0;
				g_closeSaveFile = false;
				g_saveFileBytes = 0;
			}
			if(g_saveFile){
				if (n > 0){
				//do the save -- the raw packets!
				//will have to convert them with another prog later.
				unsigned int tmp = 0xdecafbad;
				fwrite((void*)&tmp, 4, 1, g_saveFile);
				tmp = 784; //SVN version.
				tmp <<= 16;
				tmp += n; //size of the ensuing packet data.
				fwrite((void*)&tmp, 4, 1, g_saveFile);
				fwrite((void*)&rxtime, 8, 1, g_saveFile);
				fwrite((void*)buf,n,1,g_saveFile);
				g_saveFileBytes += 16 + n;
				}
				if (sn > 0){
						//will need to iterate through the buffer, to get at the data
					//unsigned int tlen = ((unsigned int*)buf2)[0]; Uncomment if sending sizedelimited buffer
					unsigned int tmp = 0x1eafbabe;
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					tmp = 784; //SVN version
					tmp <<= 16;
					//tmp += tlen & 0xffff; //size of the ensuing packet data.
					tmp += sn; //buffer size
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					fwrite((void*)&rxtime, 8, 1, g_saveFile);
					//fwrite((void*)(&(buf2[4])),tlen,1,g_saveFile); //sizedelimited buffer
					fwrite((void*)buf2, sn, 1, g_saveFile); //write ALL the buffer
					//g_saveFileBytes += 16 + tlen;
					g_saveFileBytes += 16 + sn;
				}

				//if there are messages to be written, save them too.
				while(g_messW > g_messR){
					unsigned int len = strnlen(g_messages[g_messR % 1024],128);
					unsigned int tmp = 0xb00a5c11; //boo!  it's ascii
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					tmp = 784; //SVN version.
					tmp <<= 16;
					tmp += len; //size of the ensuing text data.
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					fwrite((void*)&rxtime, 8, 1, g_saveFile);
					fwrite((void*)g_messages[g_messR % 1024], len, 1, g_saveFile);
					g_saveFileBytes += 16 + len;
					g_messR++;
				}
			}
		if(sn > 0){
			g_strobePackets++;
		}
		if(n > 0){

			char* ptr = buf;
			unsigned int drop = *(unsigned int*)ptr;
			if(drop > g_dropped){
				/*printf("dropped %d radio packets. %d of %d, BER (est) = %f per 1e6 bits\n",
					   drop - g_dropped,
					   g_totalDropped,
					   g_totalPackets,
					   1e6*(double)g_totalDropped/((double)g_totalPackets*32*8));*/
				if((drop - g_dropped) < 4)
					g_totalDropped += drop - g_dropped;
				g_dropped = drop;
			}
			ptr += 4;
			n -= 4;
			packet* p = (packet*)ptr;
			int npack = n / sizeof(packet);
			g_totalPackets += npack;

			int channels[32]; char match[32];
			Spike_msg smsg;
			for(int i=0; i<npack && g_pause <=0.0; i++){
				//see if it matched a template.
				float z = 0;
				//g_headecho = ((p->flag) >> 4) & 0xf ;
/*
 synchronization math:
 each packet has 6 samples (24 bytes) + 8 bytes template match.
 each headstage ADC runs at 1msps, so over 32 channels we have 31.25ksps.
 each packet hence takes 0.000192 seconds, or packets at 5.20833khz.
 in turn, each packet contains 32 channels of template match (a and b)
 	so all 128 channels are cycled through in 4 packets,
 	or every one updated at 1.302kHz.  Hence the ms timer is slightly undersampling it.
 one frame consists of 16 packets, so we get a new frame at 325.52Hz.
 there is likely variable latency in the ethernet switch
 so we really should timestamp the packets on the bridge ...
 32 bit ms timer done!

 Now, we need some accurate way of converting bridge time, in ms, to wall clock time.
 we know the instant that we get a packet on the line, wall time
 and we know bridge timestamps of each of those packets, especially the last.
 since there is no clear way of measuring latency, assume that the last packet's
 time is synchronous with the wall clock at rx time -> can build up an offset.
 if the offset is within a few seconds, update by smoothing.
 if it is off by a lot, just replace.
*/
				if(i == npack-1){ //update the offset.
					double off = rxtime - ((double)p->ms / BRIDGE_CLOCK);
					if(abs(off - g_timeOffset) > 1.0) g_timeOffset = off;
					//not sure what the correct level of smoothing is:
					//we want to reject noise, but we don't want to lag behind the
					//changing clock skew by too much (the xtal osc on the bridge is not
					// precisely trimmed).
					//actually, now that i think about it, provided clock skew is
					//consistent the lag should be consistent so this will come out as
					//another (slight) lag.
					//perhaps we should also do outlier rejection?
					//perhaps we sholud implement a PI controller?
					g_timeOffset *= 0.997;
					g_timeOffset += 0.003*off;
					//probably need a GUI element to display offset.
					//printf("offset time: %f of %f\n", g_timeOffset,
					//		 ((double)p->ms / BRIDGE_CLOCK));
				}
				for(int j=0; j<128;j++){
					g_templMatch[j][0] = g_templMatch[j][1] = false;
				}
				double time = ((double)p->ms / BRIDGE_CLOCK) + g_timeOffset;
				decodePacket(p, channels, match, g_headecho);
				for(int j=0; j<32; j++){
					int adr = channels[j];
					for(int t=0; t<2; t++){
						if(match[j] == t+1){
							g_templMatch[adr][t] = true;
							//add to the spike raster list.
							i64 w = g_sbufW[t] % (i64)(sizeof(g_sbuf[t])/8);
							g_sbuf[t][w*2+0] = (float)(time);
							g_sbuf[t][w*2+1] = (float)adr;
							g_sbufW[t] ++;
							g_fr[adr][t].add(time);
							//calcISI.
							g_c[adr]->spike(t);
						}
					}
				}
				//update ISI counts.
				for(int j=0; j<128; j++){
					g_c[j]->isiIncr();
				}
				//color the rasters. really should color differently.
				// meh, in the vertex shader.
				for(int j=0; j<6; j++){
					for(int k=0; k<NFBUF; k++){
						char samp = p->data[j*4+k]; //-128 -> 127.
						int ch = g_channel[k];
						z = 0.f;
						if(g_templMatch[ch][0]) z = 1.f;
						if(g_templMatch[ch][1]) z = 2.f;
						g_fbuf[k][(g_fbufW % g_nsamp)*3 + 1] =
							(((samp+128.f)/255.f)-0.5f)*2.f; //range +-1.
						g_fbuf[k][(g_fbufW % g_nsamp)*3 + 2] = z;
					}
					g_fbufW++;
				}
				p++; //next packet!
				if(g_mode == MODE_SORT){
					//need a threshold - capture anything that exceeds threshold,
					//align based on threshold crossing.
					//this loop is per packet; get 6 samples per pkt, but have to
					//look in the past to fill out the 32-sample wf display.
					for(int k=0; k<4; k++){
						int h = g_channel[k];
						g_sortUnit[k][g_sortI] = 0;
						g_sortAperture[k][0][g_sortI] = 2048;
						g_sortAperture[k][1][g_sortI] = 2048;
						for(int m=0; m<6; m++){
							//first check to see if it matches template here.
							//template: might as well make it equal on both sides; no reason for bias.
							//[8 pre][16 template][8 post].
							//however, for parity with the headstage, convolve with the most
							//recent 16 samples.
							float saa[2] = {0,0};
							i64 offset = g_fbufW - 16 + m-5; //absolute index to sample [0].
							for(int j=0; j<16; j++){
								float w;
								w = g_fbuf[k][mod2(offset + j, g_nsamp)*3+1];
								w *= 0.5f;
								saa[0] += fabs(w - g_c[h]->m_template[0][j]);
								saa[1] += fabs(w - g_c[h]->m_template[1][j]);
							}
							//record the best match.
							for(int u=0; u<2; u++){
								if(g_sortAperture[k][u][g_sortI] > saa[u]){
									g_sortAperture[k][u][g_sortI] = saa[u];
									g_sortOffset[k][u][g_sortI] = offset -8; // [8 pre]
								}
							}
						}
						//if the headstage has sent a match, clear out our old matches.
						for(int u=0; u<2; u++){
							float aper = g_c[h]->getAperture(u)/255.f;
							//see if there was a match in the past 4 packets.
							float saa = 16*256;
							i64 off = 0;
							for(int d=0; d<4; d++){
								float f = g_sortAperture[k][u][(g_sortI-d)&0xf];
								if(f < saa){
									saa = f;
									off = g_sortOffset[k][u][(g_sortI-d)&0xf];
								}
							}
							if(g_templMatch[h][u]){ //problem is this persists over 4 packets.
								if(saa <= aper){
									g_sortWfUnit[k] = u+1;
									g_sortWfOffset[k] = off;
									//the headstage and client are in agreement.
									//clear client's store of potential matches.
									for(int d=0; d<4; d++){
										g_sortAperture[k][u][(g_sortI-d)&0xf] = 2048;
									}
								}else{
									//headstage found a match. false positive.
									g_sortWfUnit[k] = u+5;
									g_sortWfOffset[k] = off;
									printf("channel %d unit %d headstage false positive.\n",h,u);
								}
							}
							//check to see if the headstage may have missed a spike.
							if(g_sortAperture[k][u][(g_sortI-4)&0xf] < aper){
								//the headstage may have missed a spike.
								if(u == 1 && g_templMatch[h][0]){
									printf("channel %d unit b occluded by unit a.\n",h);
								}else{
									//did miss a spike. false negative.
									printf("channel %d unit %d headstage missed spike.\n",h,u);
									g_sortWfUnit[k] = u+3;
									g_sortWfOffset[k] = off;
								}
							}
							if(!g_templMatch[h][u] && !g_sortWfUnit[k]){
								//normal,nothing.
								//don't copy if we have something queued.
								//check to see if we crossed threshold.
								float threshold = g_c[h]->getThreshold();
								int centering = g_c[h]->getCentering();
								for(int m=0; m<6; m++){
									i64 o = g_fbufW - centering + m-6;
									float a = g_fbuf[k][mod2(o, g_nsamp)*3+1];
									float b = g_fbuf[k][mod2(o+1, g_nsamp)*3+1];
									if(a <= threshold && b > threshold){
										g_sortWfUnit[k] = -1; //unsorted.
										g_sortWfOffset[k] = g_fbufW + m-31-6;
									}
								}
							}
							//finally, if we still don't have anything queued, try adding
							//an unsorted, unthresholded waveform, if so desired.
							if(!g_sortWfUnit[k] && g_unsortrate > 0.0){
								if(g_unsortCount[k] > 31250.0/g_unsortrate){
									g_sortWfUnit[k] = -1;
									g_sortWfOffset[k] = g_fbufW - 32;
									g_unsortCount[k] = 0;
								}
							}
						}
						g_unsortCount[k] += 6;
						//okay, copy over waveforms if there is enough data.
						unsigned int o = g_sortWfOffset[k];
						unsigned int dist = g_fbufW - o;
						if(dist >= 32 && g_sortWfUnit[k]){
							float wf[32];
							for(int m=0; m<32; m++){
								wf[m] = g_fbuf[k][mod2(o + m, g_nsamp)*3+1];
								wf[m] = wf[m] * 0.5f;
							}
							g_c[g_channel[k]]->addWf(wf, g_sortWfUnit[k], time, true);
							g_sortWfUnit[k] = 0;
						}
					} // over k, the channels.
					g_sortI++;
					g_sortI &= 0xf;
					}
				}
			}
		}
		//see if they want us to send something?
		// (this occurs after RX of a packet, so we should not overflow the
		// bridge -- bridge sends out packets of 256 + 4 bytes (one frame
		// of 8 32-byte radio packets)
		if(g_sendR < g_sendW && n > 0){
			//send one command packet for every 3 RXed frame --
			// this allows 3 duplicate transmits from bridge to headstage of
			// each command packet.  redundancy = safety = good.
			if( send_delay >= 3 ){
				send_delay = 0;
				//printf("sending message to bridge ..\n");
				double txtime = gettime();
				unsigned int* ptr = g_sendbuf;
				ptr += (g_sendR % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
				n = sendto(g_txsock,ptr,32,0,
					(struct sockaddr*)&g_txsockAddr, sizeof(g_txsockAddr));
				if(n < 0)
					printf("failed to send a message to bridge.\n");
				else
					g_sendR++;
				//save the command in the file, too, so we can reconstruct it later.
				if(g_saveFile){
					unsigned int tmp = 0xc0edfad0;
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					tmp = 605; //SVN version.
					tmp <<= 16;
					n = 32; //bytes to send.
					tmp += n; //size of the ensuing packet data.
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					fwrite((void*)&txtime, 8, 1, g_saveFile);
					fwrite((void*)ptr,n,1,g_saveFile);
					g_saveFileBytes += 16 + n;
				}
			} else {
				send_delay++;
			}
		}
#else
		//data is just samples, 2 by 8 per packet.
		unsigned short *ptr = (unsigned short*)buf;
		ptr += 2; //dropped.
		n -= 4;
		for(int i=0; i<n/36; i++){
			ptr += 2; //skip milisecond timer.
			for(int k=0; k<2; k++){
				for(int j=0; j<8; j++){
					unsigned short s = *ptr++;
					float f = (float)s/(32768.f) -1.f;
					g_fbuf[j][mod2(g_fbufW, g_nsamp)*3+1] = f;
				}
				g_fbufW++;
			}
		}
		g_totalPackets += n/36;
#endif
	}
	close_socket(g_rxsock);
	close_socket(g_strobesock);
	free(g_sendbuf);
	return 0;
}
void* server_thread(void* ){
	//kinda like a RPC service -- call to get the vector of firing rates.
	// call whenever you want!
	unsigned short rates[128+3][2]; //first two are the size of the array, then the time.
	//9 bits integer part, 7 bits fractional part. hence 0-511.99Hz.
	unsigned char buf[128];
	int client = 0;
	g_spikesock = setup_socket(4343,1); //tcp socket, server.
	//check to see if a client is connected.
	int passes = 0;
	while(g_die == 0){
		if(client <= 0){
			client = accept_socket(g_spikesock);
			if(client > 0){
				printf("got new client connection!\n");
			}
		}
		if(client > 0){
			//see if they have requested something.
			double reqtime = gettime();
			//double start = reqtime;
			int n = recv(client, buf, sizeof(buf), 0); //this seems to block?
			//double end = gettime();
			//printf("recv time: %f\n", end-start);
			buf[n] = 0;
			if(n > 0){
				passes = 0;
				//printf("got client request [%d]:%s\n",n,buf);
				double a_req = atof((const char*)buf);
				if(a_req > 0 && a_req < 10.0){
					for(int i=0; i<128; i++){
						for(int j=0; j<2; j++){
							g_fr[i][j].set_a(a_req);
						}
					}
				}
				//doesn't matter at this point -- make a response.
				//start = gettime();
				long long ltime = (long long)(reqtime * 1000.0); //put it in ms.
				rates[0][0] = 2; //rows
				rates[0][1] = 128; //columns.
				rates[1][0] = (unsigned short)(ltime & 0xffff);
				ltime >>= 16;
				rates[1][1] = (unsigned short)(ltime & 0xffff);
				ltime >>= 16;
				rates[2][0] = (unsigned short)(ltime & 0xffff);
				ltime >>= 16;
				rates[2][1] = (unsigned short)(ltime & 0xffff);
				for(int i=0; i<128; i++){
					for(int j=0; j<2; j++){
						rates[i+3][j] = g_fr[i][j].get_rate(reqtime);
					}
				}
				//end = gettime();
				//printf("rate computation time: %f\n", end-start);
				//start = end;
				n = send(client,(void*)rates, sizeof(rates), 0);
				if(n != sizeof(rates)){
					close(client);
					printf("sending message to client failed!\n");
					client = 0;
				}
				usleep(5000); //5ms sleep. so the display does not lock up.
				//end = gettime();
				//printf("sending message time: %f\n", end-start);
				//else{
				//printf("sent %d bytes to client.\n", n);
				//}
			}else{
				passes++;
				if(passes > 6){
					printf("no response, closing client connection\n");
					if(client) close_socket(client);
					client = 0; passes = 0;
				}
				usleep(200000);
			}
		}else{
			usleep(100000);
		}
	}
	if(client) close_socket(client);
	close_socket(g_spikesock);
	return 0;
}
static gboolean chanscan(gpointer){
	if(g_cycle){
		g_uiRecursion++;
		int base = g_channel[0];
		base ++;
		base &= 31;
		for(int k=0; k<4; k++){
			g_channel[k] = base + k*32;
			g_channel[k] &= 127;
			gtk_adjustment_set_value(g_channelSpin[k], (double)g_channel[k]);
		}
		g_uiRecursion--;
		setChans();
	}
	return g_cycle; //if this is false, don't call again.
}
void updateChannelUI(int k){
	//called when a channel changes -- update the UI elements accordingly.
	g_uiRecursion++;
	int ch = g_channel[k];
	gtk_adjustment_set_value(g_gainSpin[k], g_c[ch]->m_gain);
	gtk_adjustment_set_value(g_agcSpin[k], g_c[ch]->m_agc);
	gtk_adjustment_set_value(g_apertureSpin[k*2+0], g_c[ch]->getAperture(0));
	gtk_adjustment_set_value(g_apertureSpin[k*2+1], g_c[ch]->getAperture(1));
	gtk_adjustment_set_value(g_thresholdSpin[k], g_c[ch]->getThreshold());
	gtk_adjustment_set_value(g_centeringSpin[k], g_c[ch]->getCentering());
	g_uiRecursion--;
}
static void channelSpinCB( GtkWidget*, gpointer p){
	int k = (int)((long long)p & 0xf);
	if(k >= 0 && k<4){
		int ch = (int)gtk_adjustment_get_value(g_channelSpin[k]);
		printf("channelSpinCB: %d\n", ch);
		if(ch < 128 && ch >= 0 && ch != g_channel[k]){
			g_channel[k] = ch;
			//update the UI too.
			updateChannelUI(k);
		}
		//if we are in sort mode, and k == 0, move the other channels ahead of us.
		//this allows more PCA points for sorting!
		if(g_mode == MODE_SORT && k == 0){
			for(int j=1; j<4; j++){
				g_channel[j] = (g_channel[0] + j) & 127;
				//this does not recurse -- have to set the other stuff manually.
				g_uiRecursion++;
				gtk_adjustment_set_value(g_channelSpin[j], (double)g_channel[j]);
				g_uiRecursion--;
			}
			//loop over & update the UI afterward, so we don't have a race-case.
			for(int j=1; j<4; j++)
				updateChannelUI(j);
		}
		if(!g_uiRecursion)
			setChans();
	}
}
static void gainSpinCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 4 && !g_uiRecursion){
		float gain = gtk_adjustment_get_value(g_gainSpin[h]);
		printf("gainSpinCB: %f\n", gain);
		g_c[g_channel[h]]->m_gain = gain;
		updateGain(g_channel[h]);
		g_c[g_channel[h]]->resetPca();
	}
}
static void gainSetAll(gpointer ){
	float gain = gtk_adjustment_get_value(g_gainSpin[0]);
	for(int i=0; i<128; i++){
		g_c[i]->m_gain = gain;
		updateGain(i);
	}
	for(int i=0; i<32; i++){
		resetBiquads(i);
	}
	for(int i=0; i<4; i++)
		gtk_adjustment_set_value(g_gainSpin[i], gain);
	for(int i=0; i<128; i++)
		g_c[i]->resetPca();
}
static void thresholdSpinCB( GtkWidget* , gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 4 && !g_uiRecursion){
		int ch = g_channel[h];
		float thresh = gtk_adjustment_get_value(g_thresholdSpin[h]);
		g_c[ch]->setThreshold(thresh);
		printf("thresholdSpinCB: %f\n", thresh);
	}
}
static void centeringSpinCB( GtkWidget* , gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 4 && !g_uiRecursion){
		int ch = g_channel[h];
		float t = gtk_adjustment_get_value(g_centeringSpin[h]);
		g_c[ch]->setCentering(t);
		printf("centeringSpinCB: %f\n", t);
	}
}
static void unsortRateSpinCB( GtkWidget* , gpointer){
	float t = gtk_adjustment_get_value(g_unsortRateSpin);
	g_unsortrate = t;
	printf("unsortRateSpinCB: %f\n", t);
}
static void agcSpinCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 4 && !g_uiRecursion){
		float agc = gtk_adjustment_get_value(g_agcSpin[h]);
		printf("agcSpinCB: %f\n", agc);
		int j = g_channel[h];
		if(j >= 0 && j < 128){
			g_c[j]->m_agc = agc;
			setAGC(j,j,j,j);
		}
		g_c[j]->resetPca();
	}
}
static void apertureSpinCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 8 && !g_uiRecursion){
		float a = gtk_adjustment_get_value(g_apertureSpin[h]);
		int j = g_channel[h/2];
		//gtk likes to call this frequently -- only update when
		//the value has actually changed.
		if(g_c[j]->getAperture(h%2) != a){
			if(a >= 0 && a < 256*16){
				g_c[j]->setApertureLocal(a, h%2);
				setAperture(j);
			}
			//printf("apertureSpinCB: %f ch %d\n", a, j);
		}
	}
}
static void apertureOffCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf);
	if(h >= 0 && h < 8 && !g_uiRecursion){
		int j = g_channel[h/2];
		gtk_adjustment_set_value(g_apertureSpin[h], 0);
		g_c[j]->setApertureLocal(0, h%2);
		setAperture(j);
	}
}
static void agcSetAll(gpointer ){
	//sets *all 128* channels.
	float agc = gtk_adjustment_get_value(g_agcSpin[0]);
	for(int i=0; i<128; i+=4){
		g_c[i+0]->m_agc = agc;
		g_c[i+1]->m_agc = agc;
		g_c[i+2]->m_agc = agc;
		g_c[i+3]->m_agc = agc;
		setAGC(i,i+1,i+2,i+3);
	}
	for(int i=0; i<4; i++)
		gtk_adjustment_set_value(g_agcSpin[i], agc);
}
static void drawRadioCB(GtkWidget *button, gpointer p){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		int i = (int)((long long)p & 0xf);
		if(i == 0) g_drawmode = GL_LINE_STRIP;
		else g_drawmode = GL_POINTS;
	}
}
static void lmsRadioCB(GtkWidget *button, gpointer p){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		int i = (int)((long long)p & 0xf);
		if(i == 0) setLMS(true);
		else setLMS(false);
	}
}
static void filterRadioCB(GtkWidget *button, gpointer p){
	//only sets the currently viewed channels.
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		int i = (int)((long long)p & 0xf);
		for(int j=0; j<4; j++){
			int c = g_channel[j];
			bool same = false;
			for(int k=j-1; k>=0; k--){
				if(c == (g_channel[k] & (0 ^ 32)))
					same = true;
			}
			if(!same){
				if(i == 2) setOsc(c);
				else if(i == 3) setFlat(c);
				else if(i == 1) setFilter2(c);
				else resetBiquads(c);
			}
		}
	}
}
static void signalChainCB( GtkComboBox *combo, gpointer){
    gchar *string = gtk_combo_box_get_active_text( combo );
    //printf( "signalChain: >> %s <<\n", ( string ? string : "NULL" ) );
 	int i = atoi((char*)string);
	if(i >=0 && i < W1_STRIDE && !g_uiRecursion){
		g_signalChain = i;
		printf("g_signalChain = %d\n", i);
		setChans();
	}
    g_free( string );
}
static void showPcaButtonCB(GtkWidget *button, gpointer * ){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button)))
		g_showPca = true;
	else
		g_showPca = false;
}
static void pauseButtonCB(GtkWidget *button, gpointer * ){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button)))
		g_pause = gettime();
	else
		g_pause = -1.0;
}
static void syncHeadstageCB(GtkWidget *, gpointer * ){
	setAll(); //see headstage.cpp
}
static void cycleButtonCB(GtkWidget *button, gpointer * ){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		g_cycle = true;
		g_timeout_add(3000, chanscan, (gpointer)0);
	}else
		g_cycle = false;
}
static void zoomSpinCB( GtkWidget*, gpointer ){
	g_rasterZoom = gtk_adjustment_get_value(g_zoomSpin);
	g_nsamp = 4096 / g_rasterZoom;
	//make it multiples of 1024.
	g_nsamp &= (0xffffffff ^ 127);
	g_nsamp = g_nsamp > NSAMP ? NSAMP : g_nsamp;
	g_nsamp = g_nsamp < 512 ? 512 : g_nsamp;
	g_rasterZoom = 4096.0 / (float)g_nsamp;
	if(g_mode == MODE_SORT) g_nsamp = NSAMP;
	printf("g_nsamp: %d, actual zoom %f\n", g_nsamp, g_rasterZoom);
}
static void rasterSpanSpinCB( GtkWidget*, gpointer ){
	g_rasterSpan = gtk_adjustment_get_value(g_rasterSpanSpin);
	//this is pretty simple.
}
static void notebookPageChangedCB(GtkWidget *,
					gpointer, int page, gpointer){
	if(page == 0) g_mode = MODE_RASTERS;
	if(page == 1) g_mode = MODE_SORT;
	if(page == 2) g_mode = MODE_SORT;
}
static GtkAdjustment* mk_spinner(const char* txt, GtkWidget* container,
							 float start, float min, float max, float step,
							 GtkCallback cb, int cb_val){
	GtkWidget *spinner, *label;
	GtkAdjustment *adj;
	GtkWidget * bx = gtk_hbox_new (FALSE, 1);

	label = gtk_label_new (txt);
	gtk_box_pack_start (GTK_BOX (bx), label, TRUE, TRUE, 2);
	gtk_widget_show(label);
	adj = (GtkAdjustment *)gtk_adjustment_new(
		start, min, max, step, step, 0.0);
	float climb = 0.0; int digits = 0;
	if(step <= 0.01){ climb = 0.001; digits = 3; }
	else if(step <= 0.1){ climb = 0.01; digits = 2; }
	else if(step <= 0.99){ climb = 0.1; digits = 1; }
	spinner = gtk_spin_button_new (adj, climb, digits);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), FALSE);
	gtk_box_pack_start (GTK_BOX (bx), spinner, TRUE, TRUE, 2);
	g_signal_connect(spinner, "value-changed", G_CALLBACK(cb), GINT_TO_POINTER (cb_val));
	gtk_widget_show(spinner);

	gtk_box_pack_start (GTK_BOX (container), bx, TRUE, TRUE, 2);

	return adj;
}
static void mk_radio(const char* txt, int ntxt,
						   GtkWidget* container, bool vertical,
						   const char* frameTxt, GtkCallback cb){
	GtkWidget *frame, *button, *modebox;
	GSList* group;

	frame = gtk_frame_new (frameTxt);
	gtk_box_pack_start (GTK_BOX (container), frame, TRUE, TRUE, 0);
	if(vertical) modebox = gtk_vbox_new (FALSE, 2);
	else modebox = gtk_hbox_new (FALSE, 2);
	gtk_container_add (GTK_CONTAINER (frame), modebox);
	gtk_container_set_border_width (GTK_CONTAINER (modebox), 2);
	gtk_box_pack_start (GTK_BOX (container), modebox, TRUE, TRUE, 0);
	gtk_widget_show (modebox);

	char buf[256];
	strncpy(buf, txt, 256);
	char* a = strtok(buf, ",");

	button = gtk_radio_button_new_with_label (NULL, (const char*)a );
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
		GTK_SIGNAL_FUNC (cb), GINT_TO_POINTER(0));

	for(int i=1; i<ntxt; i++){
		group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (button));
		a = strtok(0, ",");
		button = gtk_radio_button_new_with_label (group, (const char*)a );
		gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (button), FALSE);
		gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
		gtk_widget_show (button);
		gtk_signal_connect (GTK_OBJECT (button), "clicked",
			GTK_SIGNAL_FUNC (cb), GINT_TO_POINTER(i));
	}
}
static void openSaveFile(gpointer parent_window) {
	GtkWidget *dialog;
	dialog = gtk_file_chooser_dialog_new ("Save File",
						(GtkWindow*)parent_window,
						GTK_FILE_CHOOSER_ACTION_SAVE,
						GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
						GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
						NULL);
	gtk_file_chooser_set_do_overwrite_confirmation(
				GTK_FILE_CHOOSER (dialog), TRUE);
	gtk_file_chooser_set_filename (GTK_FILE_CHOOSER (dialog),"data.bin");
	if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT){
		char *filename;
		filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
		g_closeSaveFile = false;
		g_saveFileBytes = 0;
		g_saveFile = fopen(filename, "w");
		g_free (filename);
	}
	gtk_widget_destroy (dialog);
}
static void closeSaveFile(gpointer) {
	//have to signal to the other thread, let them close it.
	g_closeSaveFile = true;
}
void saveMatrix(const char* fname, gsl_matrix* v){
	FILE* fid = fopen(fname, "w");
	int m = v->size1;
	int n = v->size2;
	for(int i=0; i<m; i++){
		for(int j=0; j<n; j++){
			fprintf(fid,"%f ", v->data[i*n + j]);
		}
		fprintf(fid,"\n");
	}
	fclose(fid);
}

static void calcPCACB(gpointer){
	for(int h=0; h<4; h++)
		g_c[g_channel[h]]->computePca();
}
static void getTemplateCB( GtkWidget *, gpointer p){
	int aB = (int)((long long)p & 0x1);
	int j = (int)((long long)p >> 1);
	if(j < 4){
		g_c[g_channel[j]]->updateTemplate(aB+1);
		//update the UI.
		gtk_adjustment_set_value(g_apertureSpin[j*2+aB],
								g_c[g_channel[j]]->getAperture(aB));
		//remove the old poly, now that we've used it.
		g_c[g_channel[j]]->resetPoly();
	}
}
static void setWidgetColor(GtkWidget* widget, unsigned char red, unsigned char green, unsigned char blue){
	GdkColor color;
	color.red = red*256;
	color.green = green*256;
	color.blue = blue*256;
	gtk_widget_modify_bg(widget, GTK_STATE_NORMAL, &color);
}
static void templatePopupMenu (GdkEventButton *event, gpointer p){
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
                   gdk_event_get_time((GdkEvent*)event));
}
int main(int argn, char **argc)
{
	GtkWidget *window;
	GtkWidget *da1;
	GdkGLConfig *glconfig;
	GtkWidget *box1, *bx, *v1, *label;
	GtkWidget *paned;
	GtkWidget *frame;
	GtkWidget *notebook;
	GtkWidget *button, *combo;
	//GtkWidget *paned2;

	char destIP[256];
	for(int i=0;i<256;i++) destIP[i] = 0;
	if(argn == 2){
		strncpy(destIP, argc[1], 255);
		destIP[255] = 0;
	}else{
		snprintf(destIP, 256, "152.16.229.38");
	}

	//sqlite stuff.
	if (sqlite3_open("state.db", &g_db) != SQLITE_OK) {
		fprintf(stderr, "Can't open database: \n");
		sqlite3_close(g_db);
		exit(1);
	}
	sqlite3_exec(g_db, "BEGIN TRANSACTION;",0,0,0); //this speeds things up!
	//init the tables (if they are absent).
	sqliteCreateTableDouble("channel"); //present channel..
	sqliteCreateTableDouble("gain");
	sqliteCreateTableDouble("agc");
	sqliteCreateTableDouble("threshold");
	sqliteCreateTableDouble("centering");
	sqliteCreateTableDouble2("aperture");
	sqliteCreateTableBlob("template");
	sqliteCreateTableBlob("pca");
	sqliteCreateTableBlob("pcaScl");
	sqliteCreateTableBlob("vbopca_mean");
	sqliteCreateTableBlob("vbopca_max");

	for(int i=0; i<4; i++){
		g_channel[i] = sqliteGetValue(i, "channel", i*32);
	}
	//defaults, to be read in from sqlite.
	for(int i=0; i<128; i++){
		g_c[i] = new Channel(i);
	}
	sqlite3_exec(g_db, "END TRANSACTION;",0,0,0);
	g_dropped = 0;

	// Verify that the version of the library that we linked against is
	// compatible with the version of the headers we compiled against.
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	gtk_init (&argn, &argc);
	gtk_gl_init (&argn, &argc);

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title (GTK_WINDOW (window), "gtk headstage v8 client");
	gtk_window_set_default_size (GTK_WINDOW (window), 850, 650);
	da1 = gtk_drawing_area_new ();
	gtk_widget_set_size_request(GTK_WIDGET(da1), 640, 650);

	paned = gtk_hpaned_new();
	gtk_container_add (GTK_CONTAINER (window), paned);

	v1 = gtk_vbox_new (FALSE, 0);
	gtk_widget_set_size_request(GTK_WIDGET(v1), 200, 600);
	
	bx = gtk_vbox_new (FALSE, 2);
	if(1){ //namespace reasons.
		//add in a radio channel label
		char buf[128]; 
		snprintf(buf, 128, "radio Ch: %i", g_radioChannel);
		GtkWidget* chanLabel = gtk_label_new (buf);;
		gtk_misc_set_alignment (GTK_MISC (chanLabel), 0, 0);
		gtk_box_pack_start (GTK_BOX (bx), chanLabel, TRUE, TRUE, 0);
		gtk_widget_show(chanLabel);
	}
	
	//add in a headstage channel # label
	g_headechoLabel = gtk_label_new ("headch: 0");
	gtk_misc_set_alignment (GTK_MISC (g_headechoLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_headechoLabel, TRUE, TRUE, 0);
	gtk_widget_show(g_headechoLabel);
	//add in a packets/second label
	g_pktpsLabel = gtk_label_new ("packets/sec");
	gtk_misc_set_alignment (GTK_MISC (g_pktpsLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_pktpsLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_pktpsLabel);
	
	//add in a strobe frame/second label
	g_stbpsLabel = gtk_label_new ("strobe/sec");
	gtk_misc_set_alignment (GTK_MISC (g_stbpsLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_stbpsLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_stbpsLabel);

	
	gtk_box_pack_start (GTK_BOX (v1), bx, FALSE, FALSE, 0);

	//4-channel control blocks.
	for(int i=0; i<4; i++){
		char buf[128];
		snprintf(buf, 128, "%c", 'A'+i);
		frame = gtk_frame_new (buf);
		//gtk_frame_set_shadow_type(GTK_FRAME(frame),  GTK_SHADOW_ETCHED_IN);
		gtk_box_pack_start (GTK_BOX (v1), frame, FALSE, FALSE, 0);

		GtkWidget* bx2 = gtk_vbox_new (FALSE, 1);
		gtk_container_add (GTK_CONTAINER (frame), bx2);
		GtkWidget* bx3 = gtk_hbox_new (FALSE, 1);
		gtk_box_pack_start (GTK_BOX (bx2), bx3, FALSE, FALSE, 0);

		//channel spinner.
		g_channelSpin[i] = mk_spinner("ch", bx3,
									  g_channel[i], 0, 127, 1,
									  channelSpinCB, i);
		//right of that, a gain spinner. (need to update depending on ch)
		g_gainSpin[i] = mk_spinner("gain", bx3,
								 	g_c[g_channel[i]]->m_gain,
									-30.0, 30.0, 0.1,
								  	gainSpinCB, i);
		//below that, the AGC target.
		g_agcSpin[i] = mk_spinner("AGC target", bx2,
								  	g_c[g_channel[i]]->m_agc,
									0, 32000, 1000,
								  	agcSpinCB, i);

		gtk_box_pack_start (GTK_BOX (frame), bx2, FALSE, FALSE, 1);
	}
	//notebook region!
	notebook = gtk_notebook_new();
	gtk_notebook_set_tab_pos (GTK_NOTEBOOK (notebook), GTK_POS_LEFT);
	g_signal_connect(notebook, "switch-page",
					 G_CALLBACK(notebookPageChangedCB), 0);
	//g_signal_connect(notebook, "select-page",
	//				 G_CALLBACK(notebookPageChangedCB), 0);
	gtk_box_pack_start(GTK_BOX(v1), notebook, TRUE, TRUE, 1);
    gtk_widget_show(notebook);

	box1 = gtk_vbox_new(FALSE, 2);
	//add signal chain combo box.
	frame = gtk_frame_new ("signal chain");
	gtk_box_pack_start (GTK_BOX (box1), frame, TRUE, TRUE, 0);
	const char* signalNames[W1_STRIDE] = {
		"0	mean from integrator",
		"1	AGC gain",
		"2	LMS saturated sample",
		"3	AGC out / LMS save",
		"4	x1(n-1) / LMS out",
		"5	x1(n-2)",
		"6	x2(n-1) / y1(n-1) (lo1 out)",
		"7	x2(n-2) / y1(n-2)",
		"8	x3(n-1) / y2(n-1) (hi1 out)",
		"9	x3(n-2) / y2(n-2)",
		"10	x2(n-1) / y3(n-1) (lo2 out)",
		"11	x2(n-2) / y3(n-2)",
		"12	y4(n-1) (hi2 out, final)",
		"13	y4(n-2)" };
	button = 0;
	combo = gtk_combo_box_new_text();
   gtk_container_add( GTK_CONTAINER( frame ), combo );

	for(int k=0; k<W1_STRIDE; k++){
		gtk_combo_box_append_text( GTK_COMBO_BOX( combo ),
								   signalNames[k]);
	}
	g_signal_connect( G_OBJECT( combo ), "changed",
                      G_CALLBACK( signalChainCB ), NULL );

	//add a gain set-all button.
	button = gtk_button_new_with_label ("Set all gains from A");
	g_signal_connect(button, "clicked", G_CALLBACK (gainSetAll),0);
	gtk_box_pack_start (GTK_BOX (box1), button, TRUE, TRUE, 0);
	//and a AGC set-all button.
	button = gtk_button_new_with_label ("Set all AGC targets from A");
	g_signal_connect(button, "clicked", G_CALLBACK (agcSetAll),0);
	gtk_box_pack_start (GTK_BOX (box1), button, TRUE, TRUE, 0);

	//add LMS on/off.. (global .. for now)
	mk_radio("on,off", 2,
			 box1, false, "LMS", lmsRadioCB);

	//add osc / reset radio buttons
	mk_radio("500-6.7k,150-10k,osc,flat", 4,
			 box1, true, "filter", filterRadioCB);

	//add in a zoom spinner.
	g_zoomSpin = mk_spinner("zoom", box1,
			   0.15, 0.1, 10.0, 0.05,
			   zoomSpinCB, 0);
	zoomSpinCB(GTK_WIDGET(NULL), NULL); //init the variables properly.

	g_rasterSpanSpin = mk_spinner("Raster span", box1,
			   g_rasterSpan, 1.0, 100.0, 1.0,
			   rasterSpanSpinCB, 0);

//this concludes the rasters page.
	gtk_widget_show (box1);
	label = gtk_label_new("rasters");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(notebook), box1, label, 0);

//add page for spikes.
	box1 = gtk_vbox_new (FALSE, 0);
		//4-channel control blocks.
	for(int i=0; i<4; i++){
		char buf[128];
		snprintf(buf, 128, "%c template aperture", 'A'+i);
		frame = gtk_frame_new (buf);
		gtk_box_pack_start (GTK_BOX (box1), frame, FALSE, FALSE, 1);

		GtkWidget* bx2 = gtk_vbox_new (FALSE, 2);
		gtk_container_add (GTK_CONTAINER (frame), bx2);
		gtk_box_pack_start (GTK_BOX (frame), bx2, FALSE, FALSE, 1);

		for(int j=0; j<2; j++){
			GtkWidget* bx3 = gtk_hbox_new (FALSE, 2);
			gtk_container_add (GTK_CONTAINER (bx2), bx3);
			g_apertureSpin[i*2+j] = mk_spinner("", bx3,
								  g_c[g_channel[i]]->getAperture(j), 0, 255*16, 2,
								  apertureSpinCB, i*2+j);
			//a button for disable.
			button = gtk_button_new_with_label("off");
			if(j == 0)
				setWidgetColor(button, 160, 255, 255);
			else
				setWidgetColor(button, 255, 155, 155);
			g_signal_connect(button, "clicked", G_CALLBACK (apertureOffCB), (gpointer)(i*2+j));
			gtk_box_pack_start (GTK_BOX (bx3), button, TRUE, TRUE, 1);
			//and a button for 'set'.
			button = gtk_button_new_with_label("set");
			if(j == 0)
				setWidgetColor(button, 120, 255, 255);
			else
				setWidgetColor(button, 255, 120, 120);
			g_signal_connect(button, "clicked", G_CALLBACK (getTemplateCB), (gpointer)(i*2+j));
			gtk_box_pack_start (GTK_BOX (bx3), button,TRUE, TRUE, 1);
		}
	}
	//add one for unsorted unit add rate.
	g_unsortRateSpin = mk_spinner("unsort rate", box1,
			   g_unsortrate, 0.0, 40.0, 0.1,
			   unsortRateSpinCB, 0);
	//show PCA button.
	button = gtk_check_button_new_with_label("show PCA");
	g_signal_connect (button, "toggled",
			G_CALLBACK (showPcaButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (box1), button, TRUE, TRUE, 0);
	gtk_widget_show(button);

	button = gtk_button_new_with_label ("calc PCA");
	g_signal_connect(button, "clicked", G_CALLBACK (calcPCACB),
					 (gpointer*)window);
	gtk_box_pack_start (GTK_BOX (box1), button, FALSE, FALSE, 1);

//this concludes spike page.
	gtk_widget_show (box1);
	label = gtk_label_new("spikes");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(notebook), box1, label, 1);

//add a page for sorting.
	box1 = gtk_vbox_new (FALSE, 0);

	for(int h=0; h<4; h++){
		char buf[128];
		snprintf(buf, 128, "%c threshold", 'A'+h);
		g_thresholdSpin[h] = mk_spinner(buf, box1,
					g_c[g_channel[h]]->getThreshold(), 0.0, 1.0, 0.01,
					thresholdSpinCB, h);
		snprintf(buf, 128, "%c centering", 'A'+h);
		g_centeringSpin[h] = mk_spinner(buf, box1,
					g_c[g_channel[h]]->getCentering(), 1.0, 30.0, 1.0,
					centeringSpinCB, h);
	}

// end sort page.
	gtk_widget_show (box1);
	label = gtk_label_new("sort");
	gtk_label_set_angle(GTK_LABEL(label), 90);
	gtk_notebook_insert_page(GTK_NOTEBOOK(notebook), box1, label, 2);

	//add a automatic channel change button.
	button = gtk_check_button_new_with_label("cycle channels");
	g_signal_connect (button, "toggled",
			G_CALLBACK (cycleButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (v1), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
	//add draw mode (applicable to all)
	mk_radio("lines,points", 2,
			 v1, false, "draw mode", drawRadioCB);

	bx = gtk_hbox_new (FALSE, 3);
	//add a pause / go button (applicable to all)
	button = gtk_check_button_new_with_label("pause");
	g_signal_connect (button, "toggled",
			G_CALLBACK (pauseButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (bx), button, TRUE, TRUE, 0);
	gtk_widget_show(button);

	//add a sync headstage button (useful in the case of a reset).
	button = gtk_button_new_with_label ("sync headstage");
	g_signal_connect(button, "clicked", G_CALLBACK (syncHeadstageCB),
					 (gpointer*)window);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);
	gtk_box_pack_start (GTK_BOX (v1), bx, TRUE, TRUE, 0);

	//and save / stop saving button
	bx = gtk_hbox_new (FALSE, 3);
	button = gtk_button_new_with_label ("Record");
	g_signal_connect(button, "clicked", G_CALLBACK (openSaveFile),
					 (gpointer*)window);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);
		button = gtk_button_new_with_label ("Stop");
	g_signal_connect(button, "clicked", G_CALLBACK (closeSaveFile),0);
	gtk_box_pack_start (GTK_BOX (bx), button, FALSE, FALSE, 0);
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
				GDK_GL_RGBA_TYPE)){
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
	pthread_create( &thread1, &attr, sock_thread, 0 );
	pthread_create( &thread1, &attr, server_thread, 0 );

	while(g_sendbuf == 0){
		usleep(10000); //wait for the other thread to come up.
	}
	//set the initial sampling stage.
	gtk_combo_box_set_active(GTK_COMBO_BOX(combo), 12);
	gtk_widget_show_all (window);

	g_timeout_add (1000 / 30, rotate, da1);
	//change the channel every 2 seconds.
	g_timeout_add(3000, chanscan, (gpointer)0);

	gtk_main ();
	KillFont();
}