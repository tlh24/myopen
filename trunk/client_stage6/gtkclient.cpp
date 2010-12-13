/*
 *
 * Cribbed from an example Written by Davyd Madeley <davyd@madeley.id.au> and made available under a
 * BSD license.
 *
 * This is purely an example, it may eat your cat and you can keep both pieces.
 *
 * to compile, see Makefile
 */
// in order to get function prototypes from glext.h, 
// define GL_GLEXT_PROTOTYPES before including glext.h
#define GL_GLEXT_PROTOTYPES

#include <gtk/gtk.h>
#include <gtk/gtkgl.h>
#include <GL/gl.h>
#include "glext.h"
#include "glInfo.h"  

#include <Cg/cg.h>    /* Can't include this?  Is Cg Toolkit installed! */
#include <Cg/cgGL.h>

#include <stdio.h>
#include <sys/types.h>
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

#define NSAMP (4*1024)
#define NDISPW 512
#define u32 unsigned int

static float	g_fbuf[NSAMP*3];
unsigned int	g_fbufW; //where to write to (always increment) 
unsigned int	g_fbufR; //display thread reads from here - copies to mem
static float 	g_sbuf[32*1024*2]; 
unsigned int	g_sbufW; 
unsigned int	g_sbufR; 
static float 	g_wbuf[2][3*34*NDISPW]; //32 samps / waveform + 2 endpoints
unsigned int	g_wbufW[2]; 
unsigned int	g_wbufR[2]; 
GLuint			g_wvbo[2]; 
unsigned int*	g_sendbuf; 
unsigned int g_sendW; //where to write to (in 32-byte increments)
unsigned int g_sendR; //where to read from
unsigned int g_sendL; //the length of the buffer.
bool g_die = false; 
double g_pause = -1.0;
double g_rasterZoom = 1.0; 
bool	g_cycle = false;
int g_channel = 0; 
int g_headch = 0; 
int g_oldheadch = 100; 
bool g_out = false; 
unsigned int g_exceeded = 0; 
int g_thresh = 16000; 
float g_gains[32]; //per-channel gains.
float lowpass_coefs[8] = {0.078146,0.156309,1.261974,-0.614587,
								0.078146,0.156275,0.991706,-0.268803};
float highpass_coefs[8] = {0.983715,-1.967430,1.980324,-0.980949,
								0.983715,-1.967430,1.954002,-0.954619};
double g_startTime = 0.0; 
int g_totalPackets = 0; 

typedef struct {
	char data[27]; 
	unsigned char flag; 
	unsigned int exceeded; 
} packet; 

enum MODES {
	MODE_RASTERS, 
	MODE_SPIKES, 
	MODE_NUM
}; 

int g_rxsock = 0;//rx
int g_txsock = 0; 
struct sockaddr_in g_txsockAddr; 
int g_mode = MODE_RASTERS; 

bool	g_vbo1Init = false; 
GLuint g_vbo1 = 0; //for the waveform display
GLuint g_vbo2 = 0; //for spikes.
static CGcontext   myCgContext;
static CGprofile   myCgVertexProfile;
static CGprogram   myCgVertexProgram[2];
static CGparameter myCgVertexParam_time;
static CGparameter myCgVertexParam_col;
static CGparameter myCgVertexParam_xzoom;

int mod2(int a, int b){
	if(a >=0) return a % b;
	else {
		//map to the positive numbers: -1 -> b-1; -2 ->b-2 etc
		int c = abs(a) / b+1; 
		return (b*c+a)%b; 
	}
}

static void checkForCgError(const char *situation)
{
  CGerror error;
  const char *string = cgGetLastErrorString(&error);

  if (error != CG_NO_ERROR) {
    printf("%s: %s\n", situation, string);
    if (error == CG_COMPILER_ERROR) {
      printf("%s\n", cgGetLastListing(myCgContext));
    }
	exit(1);
  }
}

double gettime(){ //in seconds!
	timespec pt ; 
	clock_gettime(CLOCK_MONOTONIC, &pt); 
	double ret = (double)(pt.tv_sec) ; 
	ret += (double)(pt.tv_nsec) / 1e9 ; 
	return ret - g_startTime; 
	//printf( "present time: %d s %d ns \n", pt.tv_sec, pt.tv_nsec ) ; 
}

void copyData(GLuint vbo, u32 sta, u32 fin, float* ptr, int stride){
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, vbo);
	sta *= stride; 
	fin *= stride; 
	ptr += sta; 
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, (GLvoid*)ptr);
}

static gboolean
expose1 (GtkWidget *da, GdkEventExpose*, gpointer )
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	// g_print (" :: expose\n");

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext)){
		g_assert_not_reached ();
	}
	
	//copy over any new data.
	if(g_pause <= 0.0){
		if(g_fbufR < g_fbufW){
			unsigned int w = g_fbufW; //atomic
			unsigned int sta = g_fbufR % NSAMP; 
			unsigned int fin = w % NSAMP; 
			if(fin < sta) { //wrap
				copyData(g_vbo1, sta, NSAMP, g_fbuf, 3); 
				copyData(g_vbo1, 0, fin, g_fbuf, 3); 
			} else {
				copyData(g_vbo1, sta, fin, g_fbuf, 3); 
			}
			g_fbufR = w; 
		}
		//ditto for the spike buffers
		if(g_sbufR < g_sbufW){
			unsigned int len = sizeof(g_sbuf)/8; //total # of pts. 
			unsigned int w = g_sbufW; //atomic
			unsigned int sta = g_sbufR % len; 
			unsigned int fin = w % len; 
			if(fin < sta) { //wrap
				copyData(g_vbo2, sta, len, g_sbuf, 2); 
				copyData(g_vbo2, 0, fin, g_sbuf, 2); 
			} else {
				copyData(g_vbo2, sta, fin, g_sbuf, 2); 
			}
			g_sbufR = w; 
		}
		//and the waveform buffers.
		for(int k=0; k<2; k++){
			if(g_wbufR[k] < g_wbufW[k]){
				unsigned int len = NDISPW; 
				unsigned int w = g_wbufW[k]; //atomic
				unsigned int sta = g_wbufR[k] % len; 
				unsigned int fin = w % len; 
				if(fin < sta) { //wrap
					copyData(g_wvbo[k], sta, len, g_wbuf[k], 3*34); 
					copyData(g_wvbo[k], 0, fin, g_wbuf[k], 3*34); 
				} else {
					copyData(g_wvbo[k], sta, len, g_wbuf[k], 3*34); 
				}
				g_wbufR[k] = w; 
			}
		}
	}
	/* draw in here */
	glMatrixMode(GL_MODELVIEW); 
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_FLAT);
	glEnableClientState(GL_VERTEX_ARRAY);
	
	float t = (float)gettime(); 
	if(g_pause > 0.0) t = g_pause; 
	
	if(g_mode == MODE_RASTERS){
		cgSetParameter1f(myCgVertexParam_xzoom, g_rasterZoom);
		cgGLBindProgram(myCgVertexProgram[0]);
		checkForCgError("binding vertex program");
		cgGLEnableProfile(myCgVertexProfile);
		checkForCgError("enabling vertex profile");
		
		glPushMatrix();
		glScalef(1.f, 0.5f, 1.f); 
		glTranslatef(0.f,0.5f, 0.f); 
		
		//continuous waveform drawing.. 
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1);
		glVertexPointer(3, GL_FLOAT, 0, 0);
		glColor3f (1., 1., 1.);
		glDrawArrays(GL_LINE_STRIP, 0, NSAMP); 
		//see glDrawElements for indexed arrays
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		cgGLDisableProfile(myCgVertexProfile);
		checkForCgError("disabling vertex profile");
		
		//draw threshold. 
		glBegin(GL_LINE_STRIP); 
		glColor4f (1., 0., 0., 0.5);
		glVertex3f( -1.f, 0.5f+g_thresh/(256.f*128.f), 0.f);
		glVertex3f( 1.f, 0.5f+g_thresh/(256.f*128.f), 0.f); 
		glEnd(); 
		//end VBO

		glPopMatrix ();
		
		//rasters
		glPushMatrix();
		float scl = 0.5*g_rasterZoom; 
		glScalef(-1.f*scl, 1.f/33.f, 1.f); 
		glTranslatef((1.f/scl - t), -32.f, 0.f); 

		glShadeModel(GL_FLAT);
		
		//VBO drawing.. 
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo2);
		glVertexPointer(2, GL_FLOAT, 0, 0);
		glColor4f (1., 1., 1., 0.3f);
		glPointSize(3.0);
		glDrawArrays(GL_POINTS, 0, sizeof(g_sbuf)/8);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		
		glPopMatrix ();
		//draw current channel
		glBegin(GL_LINE_STRIP); 
		glColor4f (1., 0., 0., 0.5);
		glVertex3f( -1.f, (float)(32-g_channel)/-33.f, 0.f);
		glVertex3f( 1.f, (float)(32-g_channel)/-33.f, 0.f); 
		glEnd(); 
		//end VBO
	}
	if(g_mode == MODE_SPIKES){
		//draw the spikes!! ya.
		cgSetParameter1f(myCgVertexParam_time, t);
		cgSetParameter3f(myCgVertexParam_col, 0.5f,0.5f,0.5f);
		cgGLBindProgram(myCgVertexProgram[1]);
		cgGLEnableProfile(myCgVertexProfile);
		checkForCgError("enabling vertex profile");
		
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_wvbo[1]);
		glVertexPointer(3, GL_FLOAT, 0, 0);
		glDrawArrays(GL_LINE_STRIP, 0, 34*NDISPW);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		cgGLDisableProfile(myCgVertexProfile);
		checkForCgError("disabling vertex profile");
		
		cgSetParameter1f(myCgVertexParam_time, t);
		cgSetParameter3f(myCgVertexParam_col, 1.f,1.f,0.f);
		cgGLBindProgram(myCgVertexProgram[1]);
		cgGLEnableProfile(myCgVertexProfile);
		checkForCgError("enabling vertex profile");
		
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_wvbo[0]);
		glVertexPointer(3, GL_FLOAT, 0, 0);
		glDrawArrays(GL_LINE_STRIP, 0, 34*NDISPW);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		cgGLDisableProfile(myCgVertexProfile);
		checkForCgError("disabling vertex profile");

		glDisableClientState(GL_VERTEX_ARRAY);
	}
	
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
	/*printf("allocation.width %d allocation_height %d\n", 
		da->allocation.width, da->allocation.height); */
	glOrtho (-1,1,-1,1,0,1);
	glEnable (GL_BLEND);
	glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	//glScalef (10., 10., 10.); //this nixes glOrtho above.
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

		myCgVertexProgram[0] = cgCreateProgramFromFile(
			myCgContext,              /* Cg runtime context */
			CG_SOURCE,                /* Program in human-readable form */
			"threshold.cg",  /* Name of file containing program */
			myCgVertexProfile,        /* Profile: OpenGL ARB vertex program */
			"threshold",      /* Entry function name */
			NULL);                    /* No extra compiler options */
		checkForCgError("creating vertex program from file");
		cgGLLoadProgram(myCgVertexProgram[0]);
		checkForCgError("loading vertex program");
		myCgVertexParam_xzoom =
			cgGetNamedParameter(myCgVertexProgram[0], "xzoom");
		
		myCgVertexProgram[1] = cgCreateProgramFromFile(
			myCgContext,              /* Cg runtime context */
			CG_SOURCE,                /* Program in human-readable form */
			"fade.cg",  /* Name of file containing program */
			myCgVertexProfile,        /* Profile: OpenGL ARB vertex program */
			"fade",      /* Entry function name */
			NULL);                    /* No extra compiler options */
		checkForCgError("creating vertex program from file");
		cgGLLoadProgram(myCgVertexProgram[1]);
		checkForCgError("loading vertex program");
		//need the time parameter --
		myCgVertexParam_time =
			cgGetNamedParameter(myCgVertexProgram[1], "time");
		myCgVertexParam_col =
			cgGetNamedParameter(myCgVertexProgram[1], "col");
		checkForCgError("loading vertex program variables");
		
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
		for(int i=0; i<NSAMP; i++){
			g_fbuf[i*3+0] = ((float)i / NSAMP)*2.0 - 1.0;
			g_fbuf[i*3+1] = sinf((float)i *0.02); 
			g_fbuf[i*3+2] = 0.f; 
		}
		glGenBuffersARB(1, &g_vbo1);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1);
		glBufferDataARB(GL_ARRAY_BUFFER_ARB, NSAMP*3*sizeof(float), 
			0, GL_DYNAMIC_DRAW_ARB);
		glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, 
			0, sizeof(g_fbuf), g_fbuf);
		int bufferSize;
		glGetBufferParameterivARB(GL_ARRAY_BUFFER_ARB, 
			GL_BUFFER_SIZE_ARB, &bufferSize);
		printf("Vertex Array in VBO:%d bytes\n", bufferSize);
		
		//have one VBO that's filled with spike times & channels.
		for(int i=0; i<32; i++){
			for(int j=0; j<1024; j++){
				g_sbuf[(i*1024+j)*2+0] = (float)j/100.f; 
				g_sbuf[(i*1024+j)*2+1] = (float)i + 0.5f; 
			}
		}
		glGenBuffersARB(1, &g_vbo2);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo2);
		glBufferDataARB(GL_ARRAY_BUFFER_ARB, sizeof(g_sbuf), 
			0, GL_DYNAMIC_DRAW_ARB);
		glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, 
			0, sizeof(g_sbuf), g_sbuf);
			
		//an another 2 VBOs that are filled with waveforms. 
		for(int k=0; k<2; k++){
			for(int i=0; i < NDISPW; i++){
				int j = 0; 
				g_wbuf[k][(i*34+j)*3 + 0] = 0.f; //x
				g_wbuf[k][(i*34+j)*3 + 1] = 0.f; //y
				g_wbuf[k][(i*34+j)*3 + 2] = 0.f; //time!
				for(j=1; j<33; j++){
					g_wbuf[k][(i*34+j)*3 + 0] = (float)(j-1)/32.f; 
					g_wbuf[k][(i*34+j)*3 + 1] = 
						sinf((float)j/2.f + (float)i/1.2345296); 
					g_wbuf[k][(i*34+j)*3 + 2] = 0.f;
				}
				g_wbuf[k][(i*34+j)*3 + 0] = 1.f; //x
				g_wbuf[k][(i*34+j)*3 + 1] = 0.f; //y
				g_wbuf[k][(i*34+j)*3 + 2] = 0.f; //time!
			}
			glGenBuffersARB(1, &g_wvbo[k]);
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_wvbo[k]);
			glBufferDataARB(GL_ARRAY_BUFFER_ARB, sizeof(g_wbuf[k]), 
				0, GL_DYNAMIC_DRAW_ARB);
			glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, 
				0, sizeof(g_wbuf[k]), g_wbuf[k]);
		}
		
	}
	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

//global labels.. 
GtkWidget* g_gainlabel[32];
GtkWidget* g_headchLabel;
GtkAdjustment* g_channelSpin;
GtkAdjustment* g_gainSpin; 
GtkAdjustment* g_thresholdSpin; 
GtkWidget* g_pktpsLabel;

static gboolean
rotate (gpointer user_data)
{
	GtkWidget *da = GTK_WIDGET (user_data);

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);

	if(g_headch != g_oldheadch){
		char str[256]; 
		printf("g_headch %d\n", g_headch); 
		snprintf(str, 256, "headch: %d", g_headch); 
		gtk_label_set_text(GTK_LABEL(g_headchLabel), str); //works!
		g_oldheadch = g_headch; 
		//update the packets/sec label too
		snprintf(str, 256, "pkts/sec: %.2f", (double)g_totalPackets/gettime()); 
		gtk_label_set_text(GTK_LABEL(g_pktpsLabel), str); //works!
	}
	return TRUE;
}

void destroy(GtkWidget *, gpointer){
	g_die = true; 
	if(g_vbo1Init){
		glDeleteBuffersARB(1, &g_vbo1); 
		glDeleteBuffersARB(1, &g_vbo2);
		glDeleteBuffersARB(2, g_wvbo); 
	}
	cgDestroyProgram(myCgVertexProgram[0]);
	cgDestroyProgram(myCgVertexProgram[1]);
	cgDestroyContext(myCgContext);
	sleep(1); 
	gtk_main_quit(); 
}

void updateGain(int chan){
	//remember, channels 0 and 16 are written at the same time. 
	//and the biquads are arranged as: 
	// low1 high1 low2 high2
	//only can adjust the B coefs of the lowpass filters, though.
	//all emitted numbers are base 14.(s2rnd flag)
	chan = chan & 0xf; //map to the lower channels.
	float gain1 = sqrt(g_gains[chan]);
	float gain2 = sqrt(g_gains[chan+16]); 
	int indx [] = {0,1,4,5};
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
	//now form the 32 bit uints to be written. 
	int indx2[] = {0,1,8,9};
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4; i++){
		ptr[i*2+0] = htonl(0xff904000 + chan*16*4 + indx2[i]*4);
		j = (int)(b[i*2+0]);
		k = (int)(b[i*2+1]);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16)); 
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++; 
}
void setOsc(int chan){
	//turn two channels e.g. 0 and 16 into oscillators.
	float b[4]; 
	unsigned int u; 
	int i,j; 
	b[0] = 0.f; //assume there is already energy in the 
	b[1] = 0.f; //delay line.
	b[2] = 32768.f - 10; //should be about 250Hz @ fs = 62.5khz
	b[3] = -16384.f; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4; i++){
		ptr[i*2+0] = htonl(0xff904000 + (chan*16 + 3*4 + i)*4);
		j = (int)(b[i]);
		u = (unsigned int)((j&0xffff) | ((j&0xffff)<<16)); 
		ptr[i*2+1] = htonl(u); 
	}
	g_sendW++; 
}
void setChan(){
	int i; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4;i++){
		ptr[i*2+0] = htonl(0xff904500 - 8); //frame pointer
		ptr[i*2+1] = htonl(g_channel);
	}
	g_sendW++; 	
}
void setThresh(){
	int i; 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	ptr[0] = htonl(0xff904500 - 24); //frame pointer
	ptr[1] = htonl(g_thresh/2); //see r4 >>> 1 (v) in radio3.asm
	for(i=2; i<8; i++){
		ptr[i] = 0xa5a5a5a5; 
	}
	g_sendW++; 	
}
void setBiquad(int chan, float* biquad, int biquadNum){
	chan = chan & 0xf; //map to the lower channels.
	float gain1 = sqrt(g_gains[chan]);
	float gain2 = sqrt(g_gains[chan+16]); 
	float b[8]; 
	int i,j,k; 
	short s; 
	unsigned int u; 
	if(biquadNum & 1){
		gain1 = gain2 = 1.f; //no gain on the hpf.	
	}
	for(i=0; i<2; i++){
		b[i*2+0] = biquad[i]*gain1*16384.f; //B coefs
		b[i*2+1] = biquad[i]*gain2*16384.f; //lo and hi
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
	
	//now form the 32 bit uints to be written. 
	unsigned int* ptr = g_sendbuf; 
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4; i++){
		ptr[i*2+0] = htonl(0xff904000 + (chan*16 + biquadNum*4 +i)*4);
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
}
void resetBiquads(int chan){
	//reset all coefs in two channels.
	setBiquad(chan, &(lowpass_coefs[0]), 0);
	setBiquad(chan, &(highpass_coefs[0]), 1); 
	setBiquad(chan, &(lowpass_coefs[4]), 2); 
	setBiquad(chan, &(highpass_coefs[4]), 3); 
}
void setFlat(int chan){
	//lets you look at the raw ADC samples.
	chan &= 0xf; 
	float gainSave1 = g_gains[chan]; 
	float gainSave2 = g_gains[chan+16]; 
	g_gains[chan] = 1.0;
	g_gains[chan+16] = 1.0; // 0.5 ^ 0.25 = 0.84089
	float biquad[] = {0.8409, 0.0, 0.0, 0.0}; 
	setBiquad(chan, biquad, 0);
	setBiquad(chan, biquad, 1); 
	setBiquad(chan, biquad, 2); 
	//fbiquad[0] *= -1.f; 
	setBiquad(chan, biquad, 3); 
	g_gains[chan] = gainSave1;
	g_gains[chan+16] = gainSave2; 
}
void* sock_thread(void* destIP){
	g_sendL = 0x4000; 
	g_sendbuf = (unsigned int*)malloc(g_sendL); 
	if(!g_sendbuf){
		fprintf(stderr, "could not allocate sendbuf\n");
		return 0;
	}
	g_sendR = 0; 
	g_sendW = 0; 
	
	g_rxsock = setup_socket(4340); 
	g_txsock = connect_socket(4342,(char*)destIP); 
	if(!g_txsock) printf("failed to connect to bridge.\n"); 
	get_sockaddr(4342, (char*)destIP, &g_txsockAddr); 
	char buf[1024];
	int send_delay = 0; 
	g_totalPackets = 0; 
	bool prevExceed = false; //did the previous packet (not frame) exceed thresh?
	char last = 0; 
	char last2 = 0; 
	while(g_die == 0){
		int n = recvfrom(g_rxsock, buf, sizeof(buf), 0,0,0); 
		if(n > 0 && !g_die){
			double rxtime = gettime(); 
			unsigned int trptr = *((unsigned int*)buf);
			if(g_out) printf("%d\n", trptr); 
			char* ptr = buf; 
			ptr += 4; 
			n -= 4; 
			packet* p = (packet*)ptr;
			int npack = n / 32; 
			g_totalPackets += npack; 
			for(int i=0; i<npack && g_pause <=0.0; i++){
				//see if it exceeded threshold.
				float z = 0; 
				g_headch = (p->flag) >> 3 ; 
				g_exceeded = p->exceeded; 
				// encoding (makes the headstage code simpler)
				// ch0 -> 0x1; ch1 -> 0x4; ch16 -> 0x2 ; ch17 -> 0x8
				// 27 samples / packet, 31.25ksps = 1157 pkts/sec, 0.864ms/pkt
				double time = rxtime - ((double)(npack-i)-0.5) * 0.000864; 
				for(int j=0; j<32; j++){
					int ch = ((j & 0xf) << 1) + ((j & 0x10) >> 4); 
					if(g_exceeded & (0x1 << ch)){
						int w = g_sbufW % (sizeof(g_sbuf)/8); 
						g_sbuf[w*2+0] = (float)time; 
						g_sbuf[w*2+1] = (float)j; 
						g_sbufW ++; 
					}
				}
				unsigned int bit = 0; 
				if(g_headch < 16) bit = 1 << (g_headch*2);
				else bit = 1 << ((g_headch&0xf)*2+1);
				if(g_exceeded & bit) z = 1.0; 
				for(int j=0; j<27; j++){
					char samp = p->data[j]; 
					char dither = (last << 4) & 0xf0; 
					dither += last2 & 0xf; 
					//dither ^= samp; 
					g_fbuf[(g_fbufW % NSAMP)*3 + 1] = 
						(float)samp / 128.f + 
						(float)dither/ 32768.f; 
						//the last bit is pseudo-random dithering (for display)
					g_fbuf[(g_fbufW % NSAMP)*3 + 2] = z;
					last2 = last; 
					last = samp; 
					//g_fbufColor[(g_bufpos % NSAMP)*4 + 0] = r;
					//g_fbufColor[(g_bufpos % NSAMP)*4 + 3] = 0.7f;
					g_fbufW++; 
				}
				p++; 
				if(g_mode == MODE_SPIKES){
					if(prevExceed){
						//look back through the past 27 samples, select the largest.
						float max = -100.f; 
						float offset = 0; 
						for(int j=-54; j < -20; j++){
							float v = g_fbuf[mod2(g_fbufW +j, NSAMP)*3+1]; 
							if(v > max){
								max = v; 
								offset = j; 
							}
						}
						z = 0.f; //clear the exceeded signal -- should have found the peak.
						int w = g_wbufW[0] % NDISPW; 
						for(int j=0; j < 32; j++){
							//x coord does not need updating.
							g_wbuf[0][w*34*3 + (j+1)*3 + 1] = 
								g_fbuf[mod2(g_fbufW + j + offset -10, NSAMP)*3+1]; 
							g_wbuf[0][w*34*3 + (j+1)*3 + 2] = time; 
						}
						g_wbufW[0]++; 
					} else {
						if(z < 1.f){
							//if neither this nor the previous packet exceeded, 
							// copy to unsorted buffer.
							int w = g_wbufW[1] % NDISPW; 
							int offset = -32; 
							for(int j=0; j < 32; j++){
								//x coord does not need updating.
								g_wbuf[1][w*34*3 + (j+1)*3 + 1] = 
									g_fbuf[mod2(g_fbufW + j + offset, NSAMP)*3+1]; 
								g_wbuf[1][w*34*3 + (j+1)*3 + 2] = time; 
							}
							g_wbufW[1]++; 
						}
					}
					if(z > 0.f) prevExceed = true; 
					else prevExceed = false; 
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
			// each command packet.  redundancy = safety. 
			if( send_delay >= 2 ){
				send_delay = 0; 
				printf("sending message to bridge ..\n"); 
				unsigned int* ptr = g_sendbuf; 
				ptr += (g_sendR % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
				n = sendto(g_txsock,ptr,32,0, 
					(struct sockaddr*)&g_txsockAddr, sizeof(g_txsockAddr));
				if(n < 0)
					printf("failed to send a message to bridge.\n"); 
				else
					g_sendR++;
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
		g_channel++; 
		g_channel &= 31; 
		gtk_adjustment_set_value(g_channelSpin, (double)g_channel); 
		setChan(); 
	}
	return g_cycle; //if this is false, don't call again.
}
static void channelSpinCB( GtkAdjustment*, gpointer ){
	int ch = (int)gtk_adjustment_get_value(g_channelSpin); 
	printf("channelSpinCB: %d\n", ch); 
	if(ch < 32 && ch >= 0 && ch != g_channel){
		g_channel = ch; 
		setChan(); 
	}
}
static void gainSpinCB( GtkAdjustment*, gpointer ){
	float gain = gtk_adjustment_get_value(g_gainSpin); 
	printf("gainSpinCB: %f\n", gain); 
	g_gains[g_channel] = gain; 
	updateGain(g_channel);  
	char str[256]; 
	snprintf(str, 256, "%d gain: %.2f", g_channel, gain); 
	gtk_label_set_text(GTK_LABEL(g_gainlabel[g_channel]), str);
}
static void thresholdSpinCB( GtkAdjustment*, gpointer ){
	g_thresh = gtk_adjustment_get_value(g_thresholdSpin); 
	printf("thresholdSpinCB: %d\n", g_thresh); 
	setThresh();
}
static void modeRadioCB(GtkWidget *, gpointer * data){
	char* ptr = (char*)data; 
	if(*ptr == 'r') g_mode = MODE_RASTERS;
	else g_mode = MODE_SPIKES; 
}
static void filterRadioCB(GtkWidget *, gpointer * data){
	char* ptr = (char*)data; 
	if(*ptr == 'o') setOsc(g_channel); 
	else resetBiquads(g_channel); 
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
static void zoomSpinCB( GtkAdjustment* , gpointer p){
	g_rasterZoom = gtk_adjustment_get_value((GtkAdjustment*)p); 
	printf("zoomSpinCB: %f\n", g_rasterZoom); 
}
int main (int argn, char **argc)
{
	GtkWidget *window;
	GtkWidget *da1;
	GdkGLConfig *glconfig;
	//GtkWidget *table; 
	GtkWidget *box1, *bx, *label;
	GtkWidget *modebox;
	GtkWidget *paned;
	//GtkWidget *paned2;
	int i; 
	
	char destIP[256]; 
	if(argn == 2){
		strncpy(destIP, argc[1], 255); 
		destIP[255] = 0; 
	}else{
		snprintf(destIP, 256, "152.16.229.61"); 
	}
	
	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	g_startTime = gettime(); 
	pthread_create( &thread1, &attr, sock_thread, (void*)destIP ); 

	gtk_init (&argn, &argc);
	gtk_gl_init (&argn, &argc);

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title (GTK_WINDOW (window), "gtk headstage v6 client");
	gtk_window_set_default_size (GTK_WINDOW (window), 850, 650);
	da1 = gtk_drawing_area_new ();
	gtk_widget_set_size_request(GTK_WIDGET(da1), 640, 650);

	/* Create a 2x2 table */
	//table = gtk_table_new (2, 2, TRUE);
	paned = gtk_hpaned_new(); 
	gtk_container_add (GTK_CONTAINER (window), paned);
	box1 = gtk_vbox_new (FALSE, 0);
	for(i=0; i<32; i++){
		g_gainlabel[i] = gtk_label_new ("");
		/* Align the label to the left side.  We'll discuss this function and 
		 * others in the section on Widget Attributes. */
		gtk_misc_set_alignment (GTK_MISC (g_gainlabel[i]), 0, 0);

		/* Pack the label into the vertical box (vbox box1).  Remember that 
		 * widgets added to a vbox will be packed one on top of the other in
		 * order. */
		gtk_box_pack_start (GTK_BOX (box1), g_gainlabel[i], FALSE, FALSE, 0);

		/* Show the label */
		gtk_widget_show (g_gainlabel[i]);
	}
	//add in a headstage channel # label
	g_headchLabel = gtk_label_new ("headch: 0");
	gtk_misc_set_alignment (GTK_MISC (g_headchLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (box1), g_headchLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_headchLabel); 
	//and a channel spinner.
	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("channel");
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label); 
	GtkWidget *spinner;
	g_channelSpin = (GtkAdjustment *)gtk_adjustment_new(
		(double)g_channel, 
		0.0, 31.0, 1.0, 5.0, 0.0);
	spinner = gtk_spin_button_new (g_channelSpin, 0, 0);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), TRUE);
	gtk_box_pack_start (GTK_BOX (bx), spinner, FALSE, FALSE, 0);
	g_signal_connect(spinner, "value-changed", 
					G_CALLBACK(channelSpinCB), GINT_TO_POINTER (1));
	gtk_widget_show(spinner); 
	gtk_box_pack_start (GTK_BOX (box1), bx, TRUE, TRUE, 0);
	
	//and a gain spinner.
	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("gain");
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label); 
	g_gainSpin = (GtkAdjustment *)gtk_adjustment_new(100.0, 
		0.0, 10000.0, 1.0, 100.0, 0.0);
	spinner = gtk_spin_button_new (g_gainSpin, 0, 0);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), FALSE);
	gtk_box_pack_start (GTK_BOX (bx), spinner, FALSE, FALSE, 0);
	g_signal_connect(spinner, "value-changed", 
					G_CALLBACK(gainSpinCB), GINT_TO_POINTER (1));
	gtk_widget_show(spinner); 
	gtk_box_pack_start (GTK_BOX (box1), bx, TRUE, TRUE, 0);
	//update labels. 
	/*for(i=0; i<32; i++){
		g_channel = i; 
		gainSpinCB(g_gainSpin, GINT_TO_POINTER (1)); 
	}*/
	//add in a threshold spinner.
	bx = gtk_hbox_new (FALSE, 3);
	label = gtk_label_new ("threshold");
	gtk_box_pack_start (GTK_BOX (bx), label, FALSE, FALSE, 0);
	gtk_widget_show(label); 
	g_thresholdSpin = (GtkAdjustment *)gtk_adjustment_new(16000.0, 
		0.0, 32000.0, 50.0, 1000.0, 0.0);
	spinner = gtk_spin_button_new (g_thresholdSpin, 0, 0);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), FALSE);
	gtk_box_pack_start (GTK_BOX (bx), spinner, FALSE, FALSE, 0);
	g_signal_connect(spinner, "value-changed", 
					G_CALLBACK(thresholdSpinCB), GINT_TO_POINTER (1));
	gtk_widget_show(spinner); 
	gtk_box_pack_start (GTK_BOX (box1), bx, TRUE, TRUE, 0);
	
	//add in a packets/second label
	g_pktpsLabel = gtk_label_new ("packets/sec");
	gtk_misc_set_alignment (GTK_MISC (g_pktpsLabel), 0, 0);
	gtk_box_pack_start (GTK_BOX (box1), g_pktpsLabel, FALSE, FALSE, 0);
	gtk_widget_show(g_pktpsLabel); 
	
	//add mode radio buttons
	GtkWidget *button;
	GSList *group;
	modebox = gtk_hbox_new (FALSE, 10);
	gtk_container_set_border_width (GTK_CONTAINER (modebox), 2);
	gtk_box_pack_start (GTK_BOX (box1), modebox, TRUE, TRUE, 0);
	gtk_widget_show (modebox);
	
	button = gtk_radio_button_new_with_label (NULL, "rasters");
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
		GTK_SIGNAL_FUNC (modeRadioCB), (gpointer) "r");

	group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (button));
	button = gtk_radio_button_new_with_label (group, "spikes");
	gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (button), FALSE);
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
		GTK_SIGNAL_FUNC (modeRadioCB), (gpointer) "s");
		
	//add osc / reset radio buttons
	modebox = gtk_hbox_new (FALSE, 10);
	gtk_container_set_border_width (GTK_CONTAINER (modebox), 2);
	gtk_box_pack_start (GTK_BOX (box1), modebox, TRUE, TRUE, 0);
	gtk_widget_show (modebox);
	
	button = gtk_radio_button_new_with_label (NULL, "normal filter");
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
		GTK_SIGNAL_FUNC (filterRadioCB), (gpointer) "n");

	group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (button));
	button = gtk_radio_button_new_with_label (group, "osc filter");
	gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (button), FALSE);
	gtk_box_pack_start (GTK_BOX (modebox), button, TRUE, TRUE, 0);
	gtk_widget_show (button);
	gtk_signal_connect (GTK_OBJECT (button), "clicked",
		GTK_SIGNAL_FUNC (filterRadioCB), (gpointer) "o");
		
	//add a pause / go button.
	bx = gtk_hbox_new (FALSE, 3);
	button = gtk_check_button_new_with_label("pause");
	g_signal_connect (button, "toggled",
			G_CALLBACK (pauseButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (bx), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
	
	//add a automatic channel change button.
	button = gtk_check_button_new_with_label("cycle channels");
	g_signal_connect (button, "toggled",
			G_CALLBACK (cycleButtonCB), (gpointer) "o");
	gtk_box_pack_start (GTK_BOX (bx), button, TRUE, TRUE, 0);
	gtk_widget_show(button);
	gtk_box_pack_start (GTK_BOX (box1), bx, TRUE, TRUE, 0);
	
	//add in a zoom spinner.
	GtkAdjustment* adj = (GtkAdjustment *)gtk_adjustment_new(1.0, 
		0.2, 10.0, 0.2, 1.0, 0.0);
	spinner = gtk_spin_button_new (adj, 1.0, 2);
	gtk_spin_button_set_wrap (GTK_SPIN_BUTTON (spinner), FALSE);
	gtk_box_pack_start (GTK_BOX (box1), spinner, FALSE, FALSE, 0);
	g_signal_connect(spinner, "value-changed", 
					G_CALLBACK(zoomSpinCB), (gpointer)adj );
	gtk_widget_show(spinner); 
	
	//show all.
	gtk_widget_set_size_request(GTK_WIDGET(box1), 200, 600);
	gtk_widget_show (box1);
	
	/*paned2 = gtk_vpaned_new(); 
	gtk_paned_add1(GTK_PANED(paned2), da1);
	gtk_paned_add2(GTK_PANED(paned2), da2); 
	gtk_widget_show(paned2); */
	
	gtk_paned_add1(GTK_PANED(paned), box1);
	gtk_paned_add2(GTK_PANED(paned), da1); 
	//gtk_box_pack_start (GTK_BOX (box2), box1, FALSE, FALSE, 0);
	//gtk_box_pack_start (GTK_BOX (box2), da, TRUE, TRUE, 0);
	gtk_widget_show (paned);
	//gtk_widget_show (da);

	/* Create first button */
	//button = gtk_button_new_with_label ("button 1");
	/* Insert button 1 into the upper left quadrant of the table */
	//gtk_table_attach_defaults (GTK_TABLE (table), button, 0, 1, 0, 1);

	//gtk_table_attach_defaults (GTK_TABLE (table), da, 0, 2, 1, 2);

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
	{
		g_assert_not_reached ();
	}

	if (!gtk_widget_set_gl_capability (da1, glconfig, NULL, TRUE,
				GDK_GL_RGBA_TYPE)){
		g_assert_not_reached ();
	}

	g_signal_connect (da1, "configure-event",
			G_CALLBACK (configure1), NULL);
	g_signal_connect (da1, "expose-event",
			G_CALLBACK (expose1), NULL);
	/*g_signal_connect (da2, "configure-event",
			G_CALLBACK (configure2), NULL);
	g_signal_connect (da2, "expose-event",
			G_CALLBACK (expose2), NULL);*/

	gtk_widget_show_all (window);

	g_timeout_add (1000 / 30, rotate, da1);
	//change the channel every 2 seconds. 
	g_timeout_add(2000, chanscan, (gpointer)0);

	gtk_main ();
}
