// in order to get function prototypes from glext.h, 
// define GL_GLEXT_PROTOTYPES before including glext.h
#define GL_GLEXT_PROTOTYPES

#include <gtk/gtk.h>
#include <gtk/gtkgl.h>
#include <GL/glut.h>    // Header File For The GLUT Library 
#include <GL/gl.h>	// Header File For The OpenGL32 Library
#include <GL/glu.h>	// Header File For The GLu32 Library
#include <GL/glx.h>     // Header file fot the glx libraries.
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
#define u32 unsigned int

#include "../../neurorecord/stage/memory.h"
#include "cgVertexShader.h"
#include "vbo.h"
#include "channel.h"
#include "packet.h"
#include <sqlite3.h>
#include "sql.h"
#include <matio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_linalg.h>


//CG stuff. for the vertex shaders.
CGcontext   myCgContext;
CGprofile   myCgVertexProfile;
cgVertexShader*		g_vsFade; 
cgVertexShader*		g_vsFadeColor; 
cgVertexShader*		g_vsThreshold; 

float		g_cursPos[2]; 
float		g_viewportSize[2] = {640, 480}; //width, height.

class Channel; 

#define i64 long long

static float	g_fbuf[4][NSAMP*3]; //continuous waveform.
i64	g_fbufW; //where to write to (always increment) 
i64	g_fbufR; //display thread reads from here - copies to mem
unsigned int 	g_nsamp = 4096; //given the current level of zoom (1 = 4096 samples), how many samples to update?
static float 	g_sbuf[2][128*512*2]; //spike buffers.
i64	g_sbufW[2]; 
i64	g_sbufR[2]; 
Channel*		g_c[128]; 
GLuint 			base;            // base display list for the font set.
unsigned int*	g_sendbuf; 
i64	g_sendW; //where to write to (in 32-byte increments)
i64 	g_sendR; //where to read from
i64	g_sendL; //the length of the buffer (in 32-byte packets)
char		g_messages[1024][128]; //save these, plaintext, in the file.
i64	g_messW;
i64	g_messR; 
bool g_die = false; 
double g_pause = -1.0;
double g_rasterZoom = 1.0; 
bool g_cycle = false;
bool g_showPca = false; 
bool g_rtMouseBtn = false; 
int g_polyChan = 0; 
bool g_addPoly = false; 
int g_channel[4] = {0,32,64,96}; 
int	g_signalChain = 10; //what to sample in the headstage signal chain.
unsigned int g_echo = 0; 
unsigned int g_headecho = 0; 
unsigned int g_oldheadecho = 100; 
bool g_out = false; 
bool g_templMatch[128][2]; //the headstage matched a,b over all 128 channels.
unsigned int g_bitdelay[4][2] = {{0,0},{0,0},{0,0},{0,0}};
unsigned int g_usdelay[4][2] = {{0,0},{0,0},{0,0},{0,0}};
unsigned int g_verDelay[4][2]; 
float	g_verAper[4][2]; 
float g_gains[128]; //per-channel gains.
float g_agcs[128]; //per-channel AGC target.
float g_unsortrate = 10.0; //the rate that unsorted WFs get through.
FILE* g_saveFile = 0; 
bool g_closeSaveFile = false; 
unsigned int g_saveFileBytes;

// for 31.25ksps -- see filter_butter.m
// broken into 2 biquads, order b0 b1 a0 a1
/** 500 - 6.7kHz **/
float lowpass_coefs[8] ={ 0.240833,0.481711,0.323083,-0.456505,
					0.240833,0.481619,0.233390,-0.052153};
float highpass_coefs[8] ={0.936405,-1.872810,1.916303,-0.926028,
					0.936405,-1.872810,1.821050,-0.830291};
/** 150 - 10kHz **/
float lowpass_coefs2[8] = {0.453447,0.906993,-0.632535,-0.485595,
	0.453447,0.906796,-0.463824,-0.089354};
float highpass_coefs2[8] = {0.980489,-1.960979,1.976285,-0.977184,
	0.980489,-1.960979,1.944907,-0.945792};
double g_startTime = 0.0; 

int g_totalPackets = 0; 
unsigned int g_dropped; //compare against the bridge.
int g_totalDropped = 0;

enum MODES {
	MODE_RASTERS, 
	MODE_SPIKES, 
	MODE_SORT,
	MODE_NUM
};
int g_mode = MODE_RASTERS; 
int	g_drawmode = GL_LINE_STRIP; 

int g_rxsock = 0;//rx
int g_txsock = 0; 
struct sockaddr_in g_txsockAddr; 

bool	g_vbo1Init = false; 
GLuint g_vbo1[4] = {0,0,0,0}; //for the waveform display
GLuint g_vbo2[2] = {0,0}; //for spikes.

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

void BuildFont(void) {
    Display *dpy;
    XFontStruct *fontInfo;  // storage for our font.

    base = glGenLists(96);                      // storage for 96 characters.
    
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
    glXUseXFont(fontInfo->fid, 32, 96, base);

    // free that font's info now that we've got the 
    // display lists.
    XFreeFont(dpy, fontInfo);

    // close down the 2nd display connection.
    XCloseDisplay(dpy);
}
void KillFont(void){
    glDeleteLists(base, 96);                    // delete all 96 characters.
}
void glPrint(char *text){                    // custom gl print routine.
    if (text == NULL) {                         // if there's no text, do nothing.
		return;
    }
    glPushAttrib(GL_LIST_BIT);                  // alert that we're about to offset the display lists with glListBase
    glListBase(base - 32);                      // sets the base character to 32.

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
    glListBase(base - 32);
    glCallLists(strlen(text), GL_UNSIGNED_BYTE, text);
    glPopAttrib();
}
void saveMessage(const char *fmt, ...){
	va_list ap;     /* our argument pointer */
    if (fmt == NULL)    /* if there is no string to draw do nothing */
        return;
    va_start(ap, fmt);  //make ap point to first unnamed arg
	//need to add in 'echo' in alphabet encoding - when the headstage has the same sync, 
	//we know that it got the command preceding this.
	int e = g_echo % 16; 
	g_messages[g_messW % 1024][0] = 'A'+e;
	g_messages[g_messW % 1024][1] = ' '; 
    vsnprintf(g_messages[g_messW % 1024] + 2, 126, fmt, ap);
    va_end(ap);
	g_messW++; 
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
		if(g_addPoly)
			g_c[g_channel[g_polyChan]]->addPoly(g_cursPos); 
		else
			g_c[g_channel[g_polyChan]]->mouse(g_cursPos); 
	}
	if(state & GDK_BUTTON3_MASK)
		g_rtMouseBtn = true;
	else
		g_rtMouseBtn = false; 
	return TRUE;
}
static gint button_press_event( GtkWidget      *,
                                GdkEventButton *event ){
	if (event->button == 1){
		updateCursPos(event->x,event->y); 
		int u = 0; 
		if(g_cursPos[0] > 0.0f) u += 1; 
		if(g_cursPos[1] < 0.0f) u += 2; 
		g_polyChan = u; 
		if(!g_c[g_channel[u]]->mouse(g_cursPos)){
			g_c[g_channel[u]]->resetPoly(); 
			g_c[g_channel[u]]->addPoly(g_cursPos); 
			g_addPoly = true; 
		}else g_addPoly = false; 
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
			for(int k=0; k<4; k++){
				if(fin < sta) { //wrap
					copyData(g_vbo1[k], sta, g_nsamp, g_fbuf[k], 3); 
					copyData(g_vbo1[k], 0, fin, g_fbuf[k], 3); 
				} else {
					copyData(g_vbo1[k], sta, fin, g_fbuf[k], 3); 
				}
			}
			g_fbufR = w; 
		}
		//ditto for the spike buffers
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
		for(int k=0; k<4; k++){
			glLineWidth(1.f); 
			glBegin(GL_LINES); 
			glColor4f(0.f, 0.5, 1.f, 0.75); //blue, center line
			glVertex3f( -1.f, (float)((3-k)*2+1)/8.f, 0.f);
			glVertex3f( 1.f, (float)((3-k)*2+1)/8.f, 0.f); 
			glColor4f(0.f, 0.8f, 0.75f, 0.5);//green, edge lines
			glVertex3f( -1.f, (float)((3-k)*2)/8.f, 0.f);
			glVertex3f( 1.f, (float)((3-k)*2)/8.f, 0.f); 
				//draw threshold. 
			glColor4f (1., 0.0f, 0.0f, 0.35);
			float y = (float)((3-k)*2+1)/8.f + 
				(g_c[g_channel[k]]->getThreshold())/(256.f*128.f*8.f); 
			glVertex3f(-1.f, y, 0.f);
			glVertex3f( 1.f, y, 0.f);
			glEnd(); 
			//labels.
			glColor4f(0.f, 0.8f, 0.75f, 0.5);
			glRasterPos2f(-1.f, (float)((3-k)*2)/8.f + 
				2.f*2.f/g_viewportSize[1]); //2 pixels vertical offset.
				//kearning is from the lower right hand corner.
			char buf[128] = {0,0,0,0}; 
			snprintf(buf, 128, "%c %d", 'A'+k, g_channel[k]); 
			glPrint(buf);
		}
		//continuous waveform drawing.. 
		for(int k=0; k<4;k++){
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
		glPushMatrix();
		float scl = 0.5*g_rasterZoom;
		glScalef(-1.f*scl, -1.f/130.f, 1.f); 
		glTranslatef((1.f/scl - time), 1.f, 0.f); 

		glShadeModel(GL_FLAT);
		
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
		//end VBO
	}
	if(g_mode == MODE_SORT || g_mode == MODE_SPIKES){
		glPushMatrix();
		glEnableClientState(GL_VERTEX_ARRAY);
		float xo, yo, xz, yz; 
		cgGLEnableProfile(myCgVertexProfile);
		for(int k=0; k<4; k++){
			//2x2 array.
			xo = (k%2)-1.f; yo = 0.f-(k/2); 
			xz = 1.f; yz = 1.f; 
			g_c[g_channel[k]]->setLoc(xo, yo, xz, yz); 
			g_c[g_channel[k]]->draw(g_drawmode, time, g_cursPos, 
									false, g_rtMouseBtn, g_mode==MODE_SORT);
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
		
		g_vsFade = new cgVertexShader("fade.cg","fade"); 
		g_vsFade->addParams(4,"time","fade","col","off"); 
		
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
		for(int k=0; k<4; k++){
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
			printf("Vertex Array in VBO:%d bytes\n", bufferSize);
		}
		//have one VBO that's filled with spike times & channels.
		for(int k=0; k<2; k++){
			for(int i=0; i<128; i++){
				for(int j=0; j<512; j++){
					g_sbuf[k][(i*512+j)*2+0] = (float)j/256.f; 
					g_sbuf[k][(i*512+j)*2+1] = (float)i; 
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
GtkWidget* g_pktpsLabel;
GtkWidget* g_fileSizeLabel;

static gboolean rotate (gpointer user_data){
	GtkWidget *da = GTK_WIDGET (user_data);

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);
	char str[256]; 
	if(g_oldheadecho != g_headecho){
		if(g_headecho != ((g_echo-1) & 0xf))
			snprintf(str, 256, "headecho:%d (ASYNC)", g_headecho); 
		else
			snprintf(str, 256, "headecho:%d (sync)", g_headecho); 
		gtk_label_set_text(GTK_LABEL(g_headechoLabel), str); //works!
		g_oldheadecho = g_headecho; 
		//update the packets/sec label too
		snprintf(str, 256, "pkts/sec: %.2f", (double)g_totalPackets/gettime()); 
		gtk_label_set_text(GTK_LABEL(g_pktpsLabel), str); //works!
	}
	snprintf(str, 256, "%.2f MB", (double)g_saveFileBytes/1e6); 
	gtk_label_set_text(GTK_LABEL(g_fileSizeLabel), str);
	return TRUE;
}
void saveState(){
	sqlite3_exec(g_db, "BEGIN TRANSACTION;",0,0,0);
	for(int i=0; i<128; i++){
		sqliteSetValue(i, "agc", g_agcs[i]); 
		sqliteSetValue(i, "gain", g_gains[i]);
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
		for(int k=0; k<4; k++)
			glDeleteBuffersARB(1, &g_vbo1[k]); 
		glDeleteBuffersARB(2, g_vbo2);
	}
	for(int i=0; i<128; i++){
		delete g_c[i]; 
	}
	delete g_vsFade;
	delete g_vsFadeColor;
	delete g_vsThreshold; 
	cgDestroyContext(myCgContext);
	sqlite3_close(g_db);
	 
	gtk_main_quit(); 
}
void sendEcho(){
	//need some way of knowing that the headstage RXed the command.
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(int i=0; i<4; i++){
		ptr[i*2+0] = htonl(FP_BASE - FP_ECHO);
		ptr[i*2+1] = htonl((g_echo << 4) & 0xf0); 
	}
	g_sendW++; 
	g_echo++; 
}
void updateGain(int chan){
	/* remember, channels 0 and 32 are filtered at the same time. 
		then 64 and 96
		and the biquads are arranged as: 
		low1 high1 low2 high2
		only can adjust the B coefs of the lowpass filters, though.
		(the highpass coefs are maxed out)
		all emitted numbers are base 14.(s2rnd flag)
	*/
	chan = chan & (0xff ^ 32); //map to the lower channels. 
		// e.g. 42 -> 10,42; 67 -> 67,99 ; 100 -> 68,100
	float gain1 = sqrt(fabs(g_gains[chan]));
	float gain2 = sqrt(fabs(g_gains[chan+32])); 
	float again1, again2; //the actual gains.
	int indx [] = {0,1,4,5}; //index the B coefs.
	float b[8]; 
	int i,j,k; 
	unsigned int u; 
	for(i=0; i<4; i++){
		j = indx[i];
		b[i*2+0] = lowpass_coefs[j]*gain1*16384.f;
		b[i*2+1] = lowpass_coefs[j]*gain2*16384.f;
	}
	//clamp to acceptable values.
	for(i=0; i<8; i++){
		b[i] = b[i] < -32768.f ? -32768.f : b[i];
		b[i] = b[i] > 32767.f ? 32767.f : b[i]; 
	}
	if(g_gains[chan] < 0){
		b[0] *= -1; b[2] *= -1; //change the sign of the first filter.
	}
	if(g_gains[chan+32] < 0){
		b[1] *= -1; b[3] *= -1; 
	}
	//calculate the actual gain. assume static gain = 1
	again1 = 
		((b[0]/(lowpass_coefs[0]*16384.f) +
			b[2]/(lowpass_coefs[1]*16384.f))/2.f) * 
		((b[4]/(lowpass_coefs[4]*16384.f) +
			b[6]/(lowpass_coefs[5]*16384.f))/2.f); 
	again2 = 
		((b[1]/(lowpass_coefs[0]*16384.f) +
			b[3]/(lowpass_coefs[1]*16384.f))/2.f) * 
		((b[5]/(lowpass_coefs[4]*16384.f) +
			b[7]/(lowpass_coefs[5]*16384.f))/2.f); 
	printf("actual gain ch %d %f ; ch %d %f\n", 
		   chan, again1, chan+32, again2); 
	//now form the 4x 32 bit uints to be written. 
	int indx2[] = {0,1,8,9}; //don't write highpass Bs (4,5,12,13)
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4; i++){
		//remember, chan mapped to 0-31 & 64-95 (above)
		unsigned int p = 0; 
		if(chan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(A1 + 
			(A1_STRIDE*(chan & 31) + 
			A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + indx2[i])*4); 
			
		j = (int)(b[i*2+0]);
		k = (int)(b[i*2+1]);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16)); 
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++; 
	sendEcho(); 
	saveMessage("gain %d %3.2f %d %3.2f", chan, again1, chan+32, again2); 
}
void setOsc(int chan){
	//turn two channels e.g. 0 and 32 into oscillators.
	float b[4]; 
	unsigned int u; 
	int i,j; 
	b[0] = 0.f; //assume there is already energy in the 
	b[1] = 0.f; //delay line.
	b[2] = 32768.f - 45; //10 -> should be about 250Hz @ fs = 62.5khz
	b[3] = -16384.f; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	chan = chan & (0xff ^ 32); //map to the lower channels. 
		// e.g. 42 -> 10,42; 67 -> 67,99 ; 100 -> 68,100
	for(i=0; i<4; i++){
		unsigned int p = 0; 
		if(chan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(A1 + 
			(A1_STRIDE*(chan & 31) + 
			A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + i)*4); 
		j = (int)(b[i]);
		u = (unsigned int)((j&0xffff) | ((j&0xffff)<<16)); 
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++; 
	sendEcho(); 
	saveMessage("osc %d and %d", chan, chan+32); 
}
void setChans(){
	int i; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4;i++){
		ptr[i*2+0] = htonl(FP_BASE - FP_TXCHAN0 + 4*i); 
		//ok, for the taps: have 4 offsets. 
		int c = g_channel[i]; 
		int o1 = (c & 31) * W1_STRIDE * 2 * 4; //which MUX line. 
		int o2 = ((c & 64)>>6) * W1_STRIDE * 4; // primary/secondary SPORT
		int o3 = ((c & 32)>>5) * 2; // primary/secondary RX chan. 
		/* 4th offset is to get to the correct written delay.
		0	mean from integrator
		1	gain
		2	saturated sample
		3	AGC out / LMS save
		4	x1(n-1) / LMS out
		5	x1(n-2)
		6	x2(n-1) / y1(n-1)
		7	x2(n-2) / y1(n-2)
		8	x3(n-1) / y2(n-1)
		9	x3(n-2) / y2(n-2)
		10	x2(n-1) / y3(n-1)
		11	x2(n-2) / y3(n-2)
		12	y4(n-1)
		13	y4(n-2)
		 */
		int o4 = g_signalChain * 4; 
		ptr[i*2+1] = htonl(W1 + o1 + o2 + o3 + o4 + 1); //1 is for little-endian.
	}
	g_sendW++; 	
	sendEcho(); 
	for(i=0; i<4; i++){
		saveMessage("chan %c %d", 'A'+i, g_channel[i]); 
		//save it in the sqlite db. 
		//sqliteSetValue(i,"channel", (float)g_channel[i]); 
	}
}
void setAGC(int ch1, int ch2, int ch3, float target){
	//sets AGC for (up to) three channels.
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	int chs[3]; chs[0] = ch1&127; chs[1]= ch2&127; chs[2] = ch3&127; 
	for(int i=0; i<3; i++){
		int chan = chs[i];
		g_agcs[chan] = target; 
		chan = chan & (0xff ^ 32); //map to the lower channels (0-31,64-95)
		unsigned int p = 0; 
		if(chan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(A1 + 
			(A1_STRIDE*(chan & 31) + 
			+ p*(A1_IIRSTARTA+A1_IIR) + 2)*4); // 2 is the offset to the AGC target. 
		int j = (int)(sqrt(32768 * g_agcs[chan]));
		int k = (int)(sqrt(32768 * g_agcs[chan+32]));
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16)); 
		ptr[i*2+1] = htonl(u); 
	}
	for(int i=3; i<4; i++){
		ptr[i*2+0] = htonl(FP_BASE - FP_ECHO);
		ptr[i*2+1] = htonl((g_echo << 4) & 0xf0); 
	}
	g_sendW++;
	g_echo++; 
	saveMessage("agc %d", (int)target);
}
void setAperture(int ch){
	// aperture order: ch0, ch32, ch64, ch96. (little-endian)
	// each 16 bits. 
	//might as well set both A & B apertures in same packet. 
	ch &= 31; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8;
	for(int i=0; i<4; i++){
		ptr[i*2+0] = htonl(A1 + 
			(A1_STRIDE*ch + (A1_TEMPLATE+A1_APERTURE)*(i/2) + 
			 A1_APERTUREA + (i&1))*4); 
		unsigned int u = (g_c[ch+64*(i&1)]->getAperture(i/2) & 0xffff) | 
						((g_c[ch+32+64*(i&1)]->getAperture(i/2) & 0xffff)<<16);
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++;
	g_echo++; 
	for(int i=0; i<4; i++){
		saveMessage("aperture %d %d,%d", ch + 32*i, 
				g_c[ch + 32*i]->getAperture(0),
				g_c[ch + 32*i]->getAperture(0)); 
	}
}
void setLMS(bool on){
	//this applies to all channels.
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt. (32 byte packets)
	ptr[0] = htonl(FP_BASE - FP_WEIGHTDECAY); //frame pointer
	ptr[1] = htonl(on ? 0x7fff0005 : 0); //see r4 >>> 1 (v) in radio4.asm
	for(int i=1; i<4; i++){
		ptr[i*2+0] = htonl(FP_BASE - FP_ECHO);
		ptr[i*2+1] = htonl((g_echo << 4) & 0xf0); 
	}
	g_sendW++;
	g_echo++; 
	saveMessage("lms %d", (on ? 1 : 0));
}
void setTemplate(int ch, int aB){
	ch &= 31; 
	aB &= 1; 
	//each template is 16 points; can write 4 at a time, so need 4 writes.
	for(int p=0; p<4; p++){
		unsigned int* ptr = g_sendbuf; 
		ptr += (g_sendW % g_sendL) * 8;
		for(int i=0; i<4; i++){
			//template A starts with newest sample (rightmost) -- loop.
			//template B is in normal order. (oldest first)
			int n = (p*4+i+(1-aB)*15)%16; 
			ptr[i*2+0] = htonl(A1 + 
				(A1_STRIDE*ch + (A1_TEMPLATE+A1_APERTURE)*aB + 
				A1_TEMPA + (p*4+i))*4); 
			unsigned char a,b,c,d; 
			a = (unsigned char)((g_c[ch+ 0]->m_template[aB][n]+0.5f) * 255.f);
			b = (unsigned char)((g_c[ch+32]->m_template[aB][n]+0.5f) * 255.f); 
			c = (unsigned char)((g_c[ch+64]->m_template[aB][n]+0.5f) * 255.f); 
			d = (unsigned char)((g_c[ch+96]->m_template[aB][n]+0.5f) * 255.f); 
			unsigned int u= ((a << 0) & 0xff) | 
							((b << 8) & 0xff00) | 
							((c <<16) & 0xff0000) | 
							((d <<24) & 0xff000000); 
			ptr[i*2+1] = htonl(u); 
		}
		g_sendW++;
	}
	//really should save the templates somewhere else (another file)
}
void setBiquad(int chan, float* biquad, int biquadNum){
	// biquad num 0 or 1
	// biquad lo or hi (global)
	chan = chan & (0xff ^ 32); //map to the lower channels (0-31,64-95)
	float gain1 = sqrt(fabs(g_gains[chan]));
	float gain2 = sqrt(fabs(g_gains[chan+32])); 
	float b[8]; 
	int i,j,k; 
	short s; 
	unsigned int u; 
	if(biquadNum & 1){
		gain1 = gain2 = 1.f; //no gain on the hpf.	
	}
	for(i=0; i<2; i++){
		b[i*2+0] = biquad[i]*gain1*16384.f; //B coefs
		b[i*2+1] = biquad[i]*gain2*16384.f; //lo and hi, respectively
	}
	for(i=2; i<4; i++){
		b[i*2+0] = biquad[i]*16384.f;
		b[i*2+1] = biquad[i]*16384.f;
	}
	//clamp to acceptable values.
	printf("coefs!\n"); 
	for(i=0; i<8; i++){
		b[i] = b[i] < -32768.f ? -32768.f : b[i];
		b[i] = b[i] > 32767.f ? 32767.f : b[i]; 
		//printf("%d %f\n", i, b[i]); 
	}
	if(biquadNum == 0){
		if(g_gains[chan] < 0){
			b[0] *= -1; b[2] *= -1; //change the sign of the first filter.
		}
		if(g_gains[chan+32] < 0){
			b[1] *= -1; b[3] *= -1; 
		}
	}
	//now form the 32 bit uints to be written. 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4; i++){
		unsigned int p = 0; 
		if(chan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(A1 + ((chan & 31)*A1_STRIDE +
			 A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + biquadNum*4 + i)*4);
		j = (int)(b[i*2+0]);
		k = (int)(b[i*2+1]);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16)); 
		s = (short)(u & 0xffff); 
		printf("%d ", s); 
		s = (short)((u>>16) & 0xffff); 
		printf("%d\n", s); 
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++; 
	sendEcho(); 
	saveMessage("biquad %d ch %d: %d %d %d %d", 
				biquadNum, chan,(int)b[0],(int)b[2],(int)b[4],(int)b[6]); 
	saveMessage("biquad %d ch %d: %d %d %d %d", 
				biquadNum, chan+32,(int)b[1],(int)b[3],(int)b[5],(int)b[7]); 
}
void resetBiquads(int chan){
	//reset all coefs in two channels.
	setBiquad(chan, &(lowpass_coefs[0]), 0);
	setBiquad(chan, &(highpass_coefs[0]), 1); 
	setBiquad(chan, &(lowpass_coefs[4]), 2); 
	setBiquad(chan, &(highpass_coefs[4]), 3); 
}
void setFilter2(int chan){
	//reset all coefs in two channels.
	setBiquad(chan, &(lowpass_coefs2[0]), 0);
	setBiquad(chan, &(highpass_coefs2[0]), 1); 
	setBiquad(chan, &(lowpass_coefs2[4]), 2); 
	setBiquad(chan, &(highpass_coefs2[4]), 3); 
}
void setFlat(int chan){
	//lets you look at the raw ADC samples.
	chan = chan & (0xff ^ 32); //map to the lower channels. 
	float biquad[] = {0.0, 1.0, 0.0, 0.0}; //NOTE B assumed to be symmetric.
		//hence you need to set b[1] not b[0] (and b[2])
	setBiquad(chan, biquad, 0);
	setBiquad(chan, biquad, 1); 
	setBiquad(chan, biquad, 2); 
	setBiquad(chan, biquad, 3); 
	saveMessage("flat %d", chan); 
	saveMessage("flat %d", chan+32); 
}
void* sock_thread(void* destIP){
	g_sendL = 0x4000; 
	g_sendbuf = (unsigned int*)malloc(g_sendL*32); 
	if(!g_sendbuf){
		fprintf(stderr, "could not allocate sendbuf\n");
		return 0;
	}
	g_sendR = 0; 
	g_sendW = 0; 
	
	g_rxsock = setup_socket(4340); 
	g_txsock = connect_socket(4342,(char*)destIP); 
	if(!g_txsock) printf("failed to connect to bridge.\n"); 
	//default txsockAddr
	get_sockaddr(4342, (char*)destIP, &g_txsockAddr); 
	char buf[1024];
	int send_delay = 0; 
	g_totalPackets = 0; 
	sockaddr_in from; 
	while(g_die == 0){
		socklen_t fromlen = sizeof(from); 
		int n = recvfrom(g_rxsock, buf, sizeof(buf),0, 
						 (sockaddr*)&from, &fromlen); 
		if(fromlen > 0 && n > 0){
			g_txsockAddr.sin_addr = from.sin_addr; 
			//keep the dest port (4342); don't copy that.
		}
		if(n > 0 && !g_die){
			double rxtime = gettime(); 
			unsigned int trptr = *((unsigned int*)buf);
			if(g_out) printf("%d\n", trptr); 
			
			if(g_closeSaveFile && g_saveFile){
				fclose(g_saveFile); 
				g_saveFile = 0; 
				g_closeSaveFile = false; 
				g_saveFileBytes = 0; 
			}
			if(g_saveFile){
				//do the save -- the raw packets!
				//will have to convert them with another prog later.
				unsigned int tmp = 0xdecafbad; 
				fwrite((void*)&tmp, 4, 1, g_saveFile);
				tmp = 498; //SVN version.
				tmp <<= 16; 
				tmp += n; //size of the ensuing packet data. 
				fwrite((void*)&tmp, 4, 1, g_saveFile);
				fwrite((void*)&rxtime, 8, 1, g_saveFile); 
				fwrite((void*)buf,n,1,g_saveFile);
				g_saveFileBytes += 16 + n; 
				//if there are messages to be written, save them too. 
				while(g_messW > g_messR){
					unsigned int len = strnlen(g_messages[g_messR % 1024],128); 
					tmp = 0xb00a5c11; //ascii
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					tmp = 498; //SVN version.
					tmp <<= 16; 
					tmp += len; //size of the ensuing text data.
					fwrite((void*)&tmp, 4, 1, g_saveFile);
					fwrite((void*)&rxtime, 8, 1, g_saveFile); 
					fwrite((void*)g_messages[g_messR % 1024], len, 1, g_saveFile); 
					g_saveFileBytes += 16 + len; 
					g_messR++; 
				}
			}
			char* ptr = buf; 
			unsigned int drop = *(unsigned int*)ptr; 
			if(drop > g_dropped){
				printf("dropped %d radio packets. %d of %d, BER (est) = %f per 1e6 bits\n", 
					   drop - g_dropped, 
					   g_totalDropped, 
					   g_totalPackets, 
					   1e6*(double)g_totalDropped/((double)g_totalPackets*32*8)); 
				if((drop - g_dropped) < 4)
					g_totalDropped += drop - g_dropped; 
				g_dropped = drop; 
			}
			ptr += 4; 
			n -= 4; 
			packet* p = (packet*)ptr;
			int npack = n / 32; 
			g_totalPackets += npack; 
			
			int channels[32]; char match[32]; 
			for(int i=0; i<npack && g_pause <=0.0; i++){
				//see if it matched a template.
				float z = 0; 
				//g_headecho = ((p->flag) >> 4) & 0xf ; 
				double time = rxtime - ((double)(npack-i)-0.5) * 0.000192;
				decodePacket(p, channels, match); 
				for(int j=0; j<32; j++){
					int adr = channels[j]; 
					for(int t=0; t<2; t++){
						g_templMatch[adr][t] = false; 
						if(match[j] == t+1){
							g_templMatch[adr][t] = true; 
							//add to the spike raster list.
							i64 w = g_sbufW[t] % (i64)(sizeof(g_sbuf[t])/8); 
							g_sbuf[t][w*2+0] = (float)time; 
							g_sbuf[t][w*2+1] = (float)adr; 
							g_sbufW[t] ++; 
						}
					}
				}
				for(int j=0; j<6; j++){
					for(int k=0; k<4; k++){
						char samp = p->data[j*4+k]; 
						int ch = g_channel[k];
						z = 0.f; 
						if(g_templMatch[ch][0] || 
							(g_bitdelay[k][0] < 5)) z = 1.f; 
						if(g_templMatch[ch][1] || 
							(g_bitdelay[k][1] < 5)) z = 2.f; 
						g_fbuf[k][(g_fbufW % g_nsamp)*3 + 1] = (float)samp / 128.f;
						g_fbuf[k][(g_fbufW % g_nsamp)*3 + 2] = z;
					}
					g_fbufW++; 
				}
				p++;
				if(g_mode == MODE_SORT){
					//threshold and extract templates. 
					//just like plexon :-)
					//need a threshold - capture anything that exceeds threshold, 
					//align based on threshold crossing. 
					//this loop is per packet; get 6 samples per pkt, but have to
					//look in the past to fill out the 32-sample wf display.
					for(int k=0; k<4; k++){
						int h = g_channel[k]; 
						float threshold = g_c[h]->getThreshold(); 
						for(int j=0; j<2; j++){
							if(g_templMatch[h][j]) g_verDelay[k][j] = 0;
							if(g_verDelay[k][j] > 8){
								float a = g_c[h]->getAperture(j); 
								if(fabs(g_verAper[k][j] - a)/a > 16.f/256.f){
									printf("err missed spike %d saa %f (aperture %d)\n",
									j,g_verAper[k][j],g_c[h]->getAperture(j)); 
								}
								g_verDelay[k][j] = 0;
							}
						}
						for(int m=0; m<6; m++){
							int centering = g_c[h]->getCentering(); 
							float a = g_fbuf[k][mod2(g_fbufW - centering + m-6, g_nsamp)*3+1]; 
							float b = g_fbuf[k][mod2(g_fbufW - centering+1 + m-6, g_nsamp)*3+1]; 
							if(a <= threshold && b > threshold && 
									(g_bitdelay[k][0] > 6)){
									float wf[32]; 
									for(int j=0; j < 32; j++){
										//x coord does not need updating.
										//remember, g_fbufW is incremented already. 
										wf[j] = g_fbuf[k][mod2(g_fbufW + j + m - 31 - 6, g_nsamp)*3+1];
										wf[j] = wf[j] * 0.5f; 
									}
									g_c[g_channel[k]]->addWf(wf, -1, time, true); 
									//printf("pca %f %f\n", fp[0], fp[1]); 
									g_bitdelay[k][0] = 0; 
									break; 
							}
							//also check to see if it matches template. 
							float saa[2] = {0,0}; 
							for(int j=0; j<16; j++){
									float w; 
									w = g_fbuf[k][mod2(g_fbufW + j + m - 21, g_nsamp)*3+1];
									w *= 0.5; 
									saa[0] += fabs(w - g_c[h]->m_template[0][j]); 
									saa[1] += fabs(w - g_c[h]->m_template[1][j]);
							}
							if(saa[0] < saa[1] && saa[0] < g_c[h]->getAperture(0)/255.f){
									g_verDelay[k][0] = 1; 
									g_verAper[k][0] = saa[0]*255.f; 
							}
							if(saa[1] < saa[0] && saa[1] < g_c[h]->getAperture(1)/255.f){
									g_verDelay[k][1] = 1; 
									g_verAper[k][1] = saa[1]*255.f; 
							}
						}
						if(g_verDelay[k][0]) g_verDelay[k][0]++; 
						if(g_verDelay[k][1]) g_verDelay[k][1]++; 
					}
				}
				else if(g_mode == MODE_SPIKES){
					for(int k=0; k<4; k++){
						for(int t = 0; t<2; t++){
							if(g_bitdelay[k][t] == 3){
								//there is variable latency here - could have just matched
								// (in which case we need a delay to get more samples --
								//	 delay 2 packets = 12 samples.)
								// or it might have matched 4 packets ago; hence have to search
								// further.
								float min = 1e9f; 
								i64 offset = 0; 
								/* diagram of waveform: 
								|<- 6 pre ->|<- 16 template ->|<- 10 post ->|
								total 32 samples. 
								*/
								for(int j=-36-10-16; j <= -10-16; j++){ 
									// j <= -10-16 b/c g_fbufW points to spot for new sample.
									//perform the same op as the headstage -- convolve.
									float saa = 0; 
									for(int g=0; g<16; g++){
										float w = g_fbuf[k][mod2(g_fbufW +j+g, g_nsamp)*3+1];
										float tmp = g_c[g_channel[k]]->m_template[t][g]; 
										//w is mean 0 range 2; tmp is mean 0 range 1.
										saa += fabs(w*0.5 - tmp); 
									}
									if(saa < min){
										min = saa; 
										offset = j; 
									}
								}
								float a = g_c[k]->getAperture(t);
								if(min*251.f > a){
									printf("err ch %d u %d headstage says match, we don't find! match %f target %f\n", 
										   g_channel[k], t+1, min*255.f, a); 
								}
								float wf[32]; 
								for(int q=0; q < 32; q++){
									wf[q] = g_fbuf[k][mod2(g_fbufW + q + offset - 6, g_nsamp)*3+1]; 
									wf[q] *= 0.5f; // target mean 0 range 1.
								}
								g_c[g_channel[k]]->addWf(wf, t+1, time, true); 
							} else {
								u32 usthresh = (u32)((31.25e3/g_unsortrate)/6.f); 
								if(g_bitdelay[k][t] > 25 && g_usdelay[k][t] > usthresh){
									//have to be aggressive with the masking - 
									//to prevent the edge from intruding in the non-sorted wf
									int offset = -6*16; 
									float wf[32];
									for(int j=0; j < 32; j++){
										wf[j] = g_fbuf[k][mod2(g_fbufW + j + offset, g_nsamp)*3+1]; 
										wf[j] = wf[j] * 0.5f; 
									}
									g_c[g_channel[k]]->addWf(wf, 0, time, true); 
									g_usdelay[k][t] = 0;
								}
							}
							// need a delay line - at least 21 samples. so 3 packets.
							if(g_templMatch[g_channel[k]][t]){ 
								g_bitdelay[k][t]=0; 
								g_templMatch[g_channel[k]][t] = false; 
								//taken care of, so clear for following packets!
							}
						}
					}
				}
				for(int k=0; k<4; k++){
					for(int t=0; t<2; t++){
						g_bitdelay[k][t]++;
						g_usdelay[k][t]++; 
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
			if( send_delay >= 2 ){
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
					tmp = 498; //SVN version.
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
	}
	close_socket(g_rxsock);
	free(g_sendbuf); 
	return 0; 
}
static gboolean chanscan(gpointer){
	if(g_cycle){
		for(int k=0; k<4; k++){
			g_channel[k]++; 
			g_channel[k] &= 127; 
			gtk_adjustment_set_value(g_channelSpin[k], (double)g_channel[k]); 
		}
		setChans(); 
	}
	return g_cycle; //if this is false, don't call again.
}
static void channelSpinCB( GtkWidget*, gpointer p){
	int k = (int)((long long)p & 0xf); 
	if(k >= 0 && k<4){
		int ch = (int)gtk_adjustment_get_value(g_channelSpin[k]); 
		//printf("channelSpinCB: %d\n", ch); 
		if(ch < 128 && ch >= 0 && ch != g_channel[k]){
			g_channel[k] = ch; 
			setChans(); 
			//update the UI too. 
			gtk_adjustment_set_value(g_gainSpin[k], g_gains[ch]);
			gtk_adjustment_set_value(g_agcSpin[k], g_agcs[ch]); 
			gtk_adjustment_set_value(g_apertureSpin[k*2+0], g_c[ch]->getAperture(0));
			gtk_adjustment_set_value(g_apertureSpin[k*2+1], g_c[ch]->getAperture(1));
			gtk_adjustment_set_value(g_thresholdSpin[k], g_c[ch]->getThreshold()); 
			gtk_adjustment_set_value(g_centeringSpin[k], g_c[ch]->getCentering());
		}
	}
}
static void gainSpinCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf); 
	if(h >= 0 && h < 4){
		float gain = gtk_adjustment_get_value(g_gainSpin[h]); 
		printf("gainSpinCB: %f\n", gain); 
		g_gains[g_channel[h]] = gain; 
		updateGain(g_channel[h]);
		g_c[g_channel[h]]->resetPca(); 
	} 
}
static void gainSetAll(gpointer ){
	float gain = gtk_adjustment_get_value(g_gainSpin[0]); 
	for(int i=0; i<128; i++){
		g_gains[i] = gain;
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
	if(h >= 0 && h < 4){
		int ch = g_channel[h]; 
		float thresh = gtk_adjustment_get_value(g_thresholdSpin[h]); 
		g_c[ch]->setThreshold(thresh); 
		printf("thresholdSpinCB: %f\n", thresh); 
	}
}
static void centeringSpinCB( GtkWidget* , gpointer p){
	int h = (int)((long long)p & 0xf); 
	if(h >= 0 && h < 4){
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
	if(h >= 0 && h < 4){
		float agc = gtk_adjustment_get_value(g_agcSpin[h]); 
		printf("agcSpinCB: %f\n", agc); 
		int j = g_channel[h]; 
		if(j >= 0 && j < 128){
			g_agcs[j] = agc; 
			setAGC(j,j,j,agc);
		}
		g_c[j]->resetPca(); 
	}
}
static void apertureSpinCB( GtkWidget*, gpointer p){
	int h = (int)((long long)p & 0xf); 
	if(h >= 0 && h < 8){
		float a = gtk_adjustment_get_value(g_apertureSpin[h]); 
		int j = g_channel[h/2]; 
		//gtk likes to call this frequently -- only update when
		//the value has actually changed.
		if(g_c[j]->getAperture(h%2) != a){
			if(a >= 0 && a < 256*16){
				g_c[j]->setAperture(a, h%2); 
				setAperture(j);
			}
			printf("apertureSpinCB: %f ch %d\n", a, j); 
		}
	}
}
static void agcSetAll(gpointer ){
	float agc = gtk_adjustment_get_value(g_agcSpin[0]); 
	for(int i=0; i<128-2; i+=3){
		g_agcs[i+0] = agc;
		g_agcs[i+1] = agc;
		g_agcs[i+2] = agc;
		setAGC(i,i+1,i+2,agc);
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
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		int i = (int)((long long)p & 0xf);
		if(i == 2) setOsc(g_channel[0]); 
		else if(i == 3) setFlat(g_channel[0]);
		else if(i == 1) setFilter2(g_channel[0]); 
		else resetBiquads(g_channel[0]); 
	}
}
static void signalChainCB( GtkComboBox *combo, gpointer){
    gchar *string = gtk_combo_box_get_active_text( combo );
    //printf( "signalChain: >> %s <<\n", ( string ? string : "NULL" ) );
 	int i = atoi((char*)string); 
	if(i >=0 && i < W1_STRIDE){
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
static void cycleButtonCB(GtkWidget *button, gpointer * ){
	if(gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(button))){
		g_cycle = true; 
		g_timeout_add(2000, chanscan, (gpointer)0);
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
	if(g_mode == MODE_SPIKES || g_mode == MODE_SORT) g_nsamp = NSAMP; 
	printf("g_nsamp: %d, actual zoom %f\n", g_nsamp, g_rasterZoom); 
}
static void notebookPageChangedCB(GtkWidget *, 
					gpointer, int page, gpointer){
	if(page == 0) g_mode = MODE_RASTERS;
	if(page == 1) g_mode = MODE_SPIKES; 
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
	g_c[g_channel[0]]->computePca(); 
	//lauch this on a seperate thread for speed. 
	/*int* p = (int*)malloc(2*sizeof(int)); 
	p[0] = MIN(NSAMP, g_wbufW[0]); 
	p[1] = g_channel[0]; 
	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_create( &thread1, &attr, computePCA, (void*)p ); */
}
static void getTemplateCB( GtkWidget *, gpointer p){
	int aB = (int)((long long)p & 0xf); 
	g_c[g_channel[0]]->updateTemplate(aB+1); 
	setTemplate(g_channel[0], aB); 
	//setAperture(g_channel[0]); will be called below.
	gtk_adjustment_set_value(g_apertureSpin[aB],
							 g_c[g_channel[0]]->getAperture(aB));
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
	sqlite3_exec(g_db, "BEGIN TRANSACTION;",0,0,0);
	//init the tables (if they are absent). 
	sqliteCreateTableDouble("channel"); //present channel..
	sqliteCreateTableDouble("gain"); 
	sqliteCreateTableDouble("agc"); 
	sqliteCreateTableDouble("threshold");
	sqliteCreateTableDouble("centering"); 
	sqliteCreateTableDouble2("aperture"); 
	sqliteCreateTableBlob("template"); 
	sqliteCreateTableBlob("pca"); 
	
	for(int i=0; i<4; i++){
		g_channel[i] = sqliteGetValue(i, "channel", i*32); 
	}
	//defaults, to be read in from sqlite.
	for(int i=0; i<128; i++){
		g_agcs[i] = sqliteGetValue(i, "agc", 6000.f); 
		g_gains[i] = sqliteGetValue(i, "gain", 1.f); 
		g_c[i] = new Channel(i); 
	}
	sqlite3_exec(g_db, "END TRANSACTION;",0,0,0);
	g_dropped = 0; 

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

	//add in a headstage channel # label
	bx = gtk_vbox_new (FALSE, 2);
	g_headechoLabel = gtk_label_new ("headch: 0");
	gtk_misc_set_alignment (GTK_MISC (g_headechoLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_headechoLabel, TRUE, TRUE, 0);
	gtk_widget_show(g_headechoLabel); 
	//add in a packets/second label
	g_pktpsLabel = gtk_label_new ("packets/sec");
	gtk_misc_set_alignment (GTK_MISC (g_pktpsLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (bx), g_pktpsLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_pktpsLabel); 
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
								  1.0, -30.0, 30.0, 0.1, 
								  gainSpinCB, i); 
		//below that, the AGC target. 
		g_agcSpin[i] = mk_spinner("AGC target", bx2, 
								  6000, 0, 32000, 1000, 
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
			 
	//add a automatic channel change button.
	button = gtk_check_button_new_with_label("cycle channels");
	g_signal_connect (button, "toggled",
			G_CALLBACK (cycleButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (box1), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
	
	//add in a zoom spinner.
	g_zoomSpin = mk_spinner("zoom", box1, 
			   1.0, 0.15, 10.0, 0.05,
			   zoomSpinCB, 0); 

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
			snprintf(buf, 128, "%s", (j < 1 ? "0 yellow":"1 cyan")); 
			g_apertureSpin[i*2+j] = mk_spinner((const char*)buf, bx2, 
								  g_c[g_channel[i]]->getAperture(j), 0, 255*16, 2, 
								  apertureSpinCB, i*2+j); 
		}
	}
	//add one for unsorted unit add rate. 
	g_unsortRateSpin = mk_spinner("unsort rate", box1, 
			   g_unsortrate, 0.1, 40.0, 0.1, 
			   unsortRateSpinCB, 0);
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
	
	button = gtk_button_new_with_label ("set Template 0");
	g_signal_connect(button, "clicked", G_CALLBACK (getTemplateCB),
					 (gpointer*)0);
	gtk_box_pack_start (GTK_BOX (box1), button, FALSE, FALSE, 1);
	
	button = gtk_button_new_with_label ("set Template 1");
	g_signal_connect(button, "clicked", G_CALLBACK (getTemplateCB),
					 (gpointer*)1);
	gtk_box_pack_start (GTK_BOX (box1), button, FALSE, FALSE, 1);
// end sort page.
	gtk_widget_show (box1);
	label = gtk_label_new("sort"); 
	gtk_label_set_angle(GTK_LABEL(label), 90); 
	gtk_notebook_insert_page(GTK_NOTEBOOK(notebook), box1, label, 2); 
	
	//add draw mode (applicable to all)
	mk_radio("lines,points", 2, 
			 v1, false, "draw mode", drawRadioCB); 
	
	//add a pause / go button (applicable to all)
	button = gtk_check_button_new_with_label("pause");
	g_signal_connect (button, "toggled",
			G_CALLBACK (pauseButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (v1), button, TRUE, TRUE, 0);
	gtk_widget_show(button);

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
			
	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	g_startTime = gettime(); 
	pthread_create( &thread1, &attr, sock_thread, (void*)destIP ); 

	while(g_sendbuf == 0){
		usleep(10000); //wait for the other thread to come up. 
	}
	//set the initial sampling stage. 
	gtk_combo_box_set_active(GTK_COMBO_BOX(combo), 12); 
	gtk_widget_show_all (window);

	g_timeout_add (1000 / 30, rotate, da1);
	//change the channel every 2 seconds. 
	g_timeout_add(2000, chanscan, (gpointer)0);

	gtk_main ();
	KillFont(); 
}