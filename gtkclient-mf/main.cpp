#include <stdio.h>
#include <sys/types.h>
#include <pthread.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <arpa/inet.h>
#include <GL/glx.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <X11/keysym.h>

#include "sock.h"

#define NSAMP (4*1024)

typedef struct {
	char data[27]; 
	unsigned char flag; 
	unsigned int exceeded; 
} packet; 
int g_rxsock = 0;//rx
int g_txsock = 0; 
struct sockaddr_in g_txsockAddr; 

double g_time = 0.0; 

static float	g_fbuf[NSAMP*3];
static float 	g_fbufColor[NSAMP*4]; //did the headstage indicate that passed thresh?
unsigned int	g_bufpos;
unsigned int*	g_sendbuf; 
unsigned int g_sendW; //where to write to (in 32-byte increments)
unsigned int g_sendR; //where to read from
unsigned int g_sendL; //the length of the buffer.

pthread_cond_t 	g_outthread_cond ; 
pthread_mutex_t	g_outthread_mutex ; 
int g_transferred = 0; 
int g_die = 0; 
int g_pause = 0; 
int g_print = 0; 
int g_discont = 0;
float g_zoom = 1.09f; 
float g_offset = 0.f; 
GLuint base;    /* base display list of our font set */
int g_channel = 0; 
int g_headch = 0; 
unsigned int g_exceeded = 0; 
int g_thresh = 16000; 
unsigned char g_prev = 0; 
float lowpass_coefs[8] = {0.078146,0.156309,1.261974,-0.614587,
								0.078146,0.156275,0.991706,-0.268803};
float highpass_coefs[8] = {0.983715,-1.967430,1.980324,-0.980949,
								0.983715,-1.967430,1.954002,-0.954619};

float g_gains[32]; //per-channel gains.


/* stuff about our window grouped together */
typedef struct {
    Display *dpy;
    int screen;
    Window win;
    GLXContext ctx;
    XSetWindowAttributes attr;
    int x, y;
    unsigned int width, height;
    unsigned int depth;    
} GLWindow;

/* attributes for a single buffered visual in RGBA format with at least
 * 4 bits per color and a 16 bit depth buffer */
static int attrListSgl[] = {GLX_RGBA, GLX_RED_SIZE, 4, 
    GLX_GREEN_SIZE, 4, 
    GLX_BLUE_SIZE, 4, 
    GLX_DEPTH_SIZE, 16,
    None};

/* attributes for a double buffered visual in RGBA format with at least
 * 4 bits per color and a 16 bit depth buffer */
static int attrListDbl[] = { GLX_RGBA, GLX_DOUBLEBUFFER, 
    GLX_RED_SIZE, 4, 
    GLX_GREEN_SIZE, 4, 
    GLX_BLUE_SIZE, 4, 
    GLX_DEPTH_SIZE, 16,
    None };

GLWindow GLWin;

/* function called when our window is resized (should only happen in window mode) */
void resizeGLScene(unsigned int width, unsigned int height)
{
    if (height == 0)    /* Prevent A Divide By Zero If The Window Is Too Small */
        height = 1;
    glViewport(0, 0, width, height);    /* Reset The Current Viewport And Perspective Transformation */
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(45.0f, 1 /*(GLfloat)width / (GLfloat)height*/, 0.1f, 100.0f);
    glMatrixMode(GL_MODELVIEW);
}

void buildFont()
{
    XFontStruct *font;
    
    base = glGenLists(96);      /* storage for 96 characters */
    /* load a font with a specific name in "Host Portable Character Encoding" */
    font = XLoadQueryFont(GLWin.dpy,
        "-*-freesans-bold-r-normal--14-*-*-*-p-*-iso8859-1");
    if (font == NULL)
    {
        /* this really *should* be available on every X Window System...*/
        font = XLoadQueryFont(GLWin.dpy, "fixed");
        if (font == NULL)
        {
            printf("Problems loading fonts :-(\n");
            exit(1);
        }
    }
    /* build 96 display lists out of our font starting at char 32 */
    glXUseXFont(font->fid, 32, 96, base);
    /* free our XFontStruct since we have our display lists */
    XFreeFont(GLWin.dpy, font);
}

void deleteFont()
{
    glDeleteLists(base, 96);
}

void printGLf(const char *fmt, ...)
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
/* general OpenGL initialization function */
int initGL()
{
    glShadeModel(GL_SMOOTH);
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClearDepth(1.0f);
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
	 glEnable(GL_BLEND); //Enable alpha blending
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); //Set the blend function
	 //glBlendFunc(GL_SRC_ALPHA,GL_ONE);
	 buildFont();        /* create our font-display-lists */
	 //init the vertex buffers
	float* f = g_fbuf; 
	float* t = g_fbufColor; 
	float r,g,b,x; 
	int i; 
	r = g = b = 0.6f; 
	for(i=0; i<NSAMP; i++){
		x = (float)i / (float)(NSAMP);
		x = x * 3.f - 1.5f; 
		*f++ = x; 
		*f++ = 0.f; 
		*f++ = 0.f; 
		*t++ = r;
		*t++ = g; 
		*t++ = b;
		*t++ = 0.4f;
	}
    /* we use resizeGLScene once to set up our initial perspective */
    resizeGLScene(GLWin.width, GLWin.height);
    glFlush();
    return True;
}
/* Here goes our drawing code */
int drawGLScene()
{
	int i; 
	
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_COLOR_ARRAY);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glLoadIdentity();
	//draw the text before anything else. 
	glTranslatef(0.0f, 0.0f, -1.0f);
	glColor4f(1.f, 1.f, 1.f, 0.6f);
	float offset = 0.f; 
	glRasterPos2f(-0.4f, -0.4f + ((offset+0.f)/(float)GLWin.height));
	printGLf("Present channel - %d (headstage: %d)", g_channel, g_headch);
	glRasterPos2f(-0.4f, -0.4f + ((offset+14.f)/(float)GLWin.height));
	printGLf("thresholds: 0x%x", g_exceeded);
	for(i=31; i>=0; i--){
		glRasterPos2f(-0.4f, -0.4f + ((offset+14.f*(i+2))/(float)GLWin.height));
		printGLf("g[%d] %f",i,g_gains[i]);
	}
	glTranslatef(g_offset, 0.0f, -3.0f);
	glScalef(g_zoom, g_zoom, 1.f); 
	glPointSize(2.0);
	glBegin(GL_LINE_STRIP); 
	glColor4f(1.f, 0.3f, 0.0f, 0.6f);
	float w = 1.5f; 
	float h = 1.f; 
	glVertex3f(-1.f*w, -1.f*h, 0.f); 
	glVertex3f(-1.f*w,  1.f*h, 0.f); 
	glVertex3f( 1.f*w,  1.f*h, 0.f); 
	glVertex3f( 1.f*w, -1.f*h, 0.f); 
	glVertex3f(-1.f*w, -1.f*h, 0.f); 
	glEnd();
	glBegin(GL_LINE_STRIP); 
	glColor4f(1.f, 0.0f, 0.0f, 0.4f);
	glVertex3f(-1.f*w,  0.f*h, 0.f);
	glVertex3f( 1.f*w,  0.f*h, 0.f); 
	glEnd();
	glBegin(GL_LINE_STRIP); 
	glColor4f(0.f, 1.0f, 0.0f, 0.4f);
	glVertex3f(-1.f*w,  ((float)g_thresh/(256.f*128.f))*h, 0.f);
	glVertex3f( 1.f*w,  ((float)g_thresh/(256.f*128.f))*h, 0.f); 
	glEnd();

	glVertexPointer(3, GL_FLOAT, 0, g_fbuf);
	glColorPointer(4, GL_FLOAT, 0, g_fbufColor);
	glColor4f(1.f, 1.0f, 1.0f, 0.4f);
	glDrawArrays(GL_POINTS, 0, NSAMP);
	glVertexPointer(3, GL_FLOAT, 0, g_fbuf);
	glColorPointer(4, GL_FLOAT, 0, g_fbufColor);
	glColor4f(0.f, 1.0f, 1.0f, 0.4f);
	glDrawArrays(GL_LINE_STRIP, 0, NSAMP);

	glXSwapBuffers(GLWin.dpy, GLWin.win);
	glDisableClientState(GL_VERTEX_ARRAY);
	glDisableClientState(GL_COLOR_ARRAY);

	return True;    
}

/* function to release/destroy our resources and restoring the old desktop */
void killGLWindow()
{
    if (GLWin.ctx)
    {
        if (!glXMakeCurrent(GLWin.dpy, None, NULL))
        {
            printf("Could not release drawing context.\n");
        }
        glXDestroyContext(GLWin.dpy, GLWin.ctx);
        GLWin.ctx = NULL;
    }
	deleteFont();
	XCloseDisplay(GLWin.dpy);
}

/* this function creates our window and sets it up properly */
/* FIXME: bits is currently unused */
Bool createGLWindow(const char* title, int width, int height)
{
    XVisualInfo *vi;
    Colormap cmap;
    int glxMajorVersion, glxMinorVersion;
    int bestMode;
    Atom wmDelete;
    Window winDummy;
    unsigned int borderDummy;
    
    /* set best mode to current */
    bestMode = 0;
    /* get a connection */
    GLWin.dpy = XOpenDisplay(0);
    GLWin.screen = DefaultScreen(GLWin.dpy);
    /* get an appropriate visual */
    vi = glXChooseVisual(GLWin.dpy, GLWin.screen, attrListDbl);
    if (vi == NULL)
    {
        vi = glXChooseVisual(GLWin.dpy, GLWin.screen, attrListSgl);
        printf("Only Singlebuffered Visual!\n");
    }
    else
    {
        printf("Got Doublebuffered Visual!\n");
    }
    glXQueryVersion(GLWin.dpy, &glxMajorVersion, &glxMinorVersion);
    printf("glX-Version %d.%d\n", glxMajorVersion, glxMinorVersion);
    /* create a GLX context */
    GLWin.ctx = glXCreateContext(GLWin.dpy, vi, 0, GL_TRUE);
    /* create a color map */
    cmap = XCreateColormap(GLWin.dpy, RootWindow(GLWin.dpy, vi->screen),
        vi->visual, AllocNone);
    GLWin.attr.colormap = cmap;
    GLWin.attr.border_pixel = 0;

	/* create a window in window mode*/
	GLWin.attr.event_mask = ExposureMask | KeyPressMask | ButtonPressMask |
		StructureNotifyMask;
	GLWin.win = XCreateWindow(GLWin.dpy, RootWindow(GLWin.dpy, vi->screen),
		0, 0, width, height, 0, vi->depth, InputOutput, vi->visual,
		CWBorderPixel | CWColormap | CWEventMask, &GLWin.attr);
	/* only set window title and handle wm_delete_events if in windowed mode */
	wmDelete = XInternAtom(GLWin.dpy, "WM_DELETE_WINDOW", True);
	XSetWMProtocols(GLWin.dpy, GLWin.win, &wmDelete, 1);
	XSetStandardProperties(GLWin.dpy, GLWin.win, title,
		title, None, NULL, 0, NULL);
	XMapRaised(GLWin.dpy, GLWin.win);     
    /* connect the glx-context to the window */
    glXMakeCurrent(GLWin.dpy, GLWin.win, GLWin.ctx);
    XGetGeometry(GLWin.dpy, GLWin.win, &winDummy, &GLWin.x, &GLWin.y,
        &GLWin.width, &GLWin.height, &borderDummy, &GLWin.depth);
    printf("Depth %d\n", GLWin.depth);
    if (glXIsDirect(GLWin.dpy, GLWin.ctx)) 
        printf("Congrats, you have Direct Rendering!\n");
    else
        printf("Sorry, no Direct Rendering possible!\n");
    initGL();
    return True;    
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
	ptr[0] = htonl(0xff904500 - 8); //frame pointer
	ptr[1] = htonl(g_channel);
	for(i=2; i<8; i++){
		ptr[i] = 0xa5a5a5a5; 
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
void keyPressed(KeySym key)
{
    switch (key){
		case XK_Escape:
			g_die = 1;
			break;
		case XK_space:
			g_pause = !g_pause; 
			break;
		case XK_s:
			g_print = !g_print; 
			break; 
		case XK_F1:
			killGLWindow();
			createGLWindow("wireless headstage!", 640, 480);
			break;
		case XK_Up: //zoom in
			g_zoom *= 1.1; 
			break; 
		case XK_Down:
			g_zoom /= 1.1; 
			break; 
		case XK_Left:
			g_offset += 0.1/g_zoom; 
			break; 
		case XK_Right:
			g_offset -= 0.1/g_zoom; 
			break;
		case XK_n:
			g_channel++; 
			g_channel &= 31;
			setChan(); 
			break; 
		case XK_p:
			g_channel--; 
			g_channel &= 31;
			setChan(); 
			break; 
		case XK_equal:
			g_gains[g_channel] *= 1.1f; 
			updateGain(g_channel); 
			break;
		case XK_minus:
			g_gains[g_channel] /= 1.1f; 
			updateGain(g_channel); 
			break; 
		case XK_0:
			setOsc(g_channel); 
			break;
		case XK_r:
			resetBiquads(g_channel); 
			break;
		case XK_f:
			setFlat(g_channel); 
			break;
		case XK_w:
			g_thresh += 200; 
			printf("threshold %d\n", g_thresh); 
			setThresh(); 
			break; 
		case XK_q:
			g_thresh -= 200; 
			printf("threshold %d\n", g_thresh); 
			setThresh(); 
			break; 
    }
}

int opengl_disp(){
	XEvent event;
   KeySym key;
    /* wait for events*/ 
    if (!g_die){
        /* handle the events in the queue */
        while (XPending(GLWin.dpy) > 0 && !g_die)
        {
            XNextEvent(GLWin.dpy, &event); //seems we cannot service these fast enough.
            switch (event.type)
            {
                case Expose:
	                if (event.xexpose.count != 0)
	                    break;
                    drawGLScene();
         	        break;
	            case ConfigureNotify:
	            /* call resizeGLScene only if our window-size changed */
	                if ((event.xconfigure.width != (int)GLWin.width) || 
	                    (event.xconfigure.height != (int)GLWin.height))
	                {
	                    GLWin.width = event.xconfigure.width;
	                    GLWin.height = event.xconfigure.height;
                       //printf("Resize event\n");
	                    resizeGLScene(event.xconfigure.width,
	                        event.xconfigure.height);
	                }
	                break;
                case ButtonPress: //do something here?
                    //g_die = True;
                    break;
                case KeyPress:
                    key = XLookupKeysym(&event.xkey, 0);
                    keyPressed(key);
                    break;
                case ClientMessage:
                    if (*XGetAtomName(GLWin.dpy, event.xclient.message_type) == 
                        *"WM_PROTOCOLS")
                    {
                        printf("Exiting sanely...\n");
                        g_die = True;
                    }
                    break;
                default:
                    break;
            }
        }
        drawGLScene();
    }
    return 0;
}
void* out_thread(void*){
	//simply prints out the contents of the buffer 
	//after it has been read in and presumably before it
	// is written again!
	//make an opengl window
	createGLWindow("wireless headstage!", 640, 480);
	while(!g_die){
		if(pthread_cond_wait(&g_outthread_cond, &g_outthread_mutex) == 0){
			pthread_mutex_unlock(&g_outthread_mutex); 
			//the order of packets seems to be reversed with libusb
			// I have no idea why, but it is not hard to fix. 
			// -- is this still true? 
			opengl_disp(); 
			//printf("discontinuities: %d\n", g_discont); 
		}
	}
	killGLWindow();
	return (void*)0;
}
int main(int argn, char* argc[])
{
	int i, j;
	
	for(i=0; i<32; i++){
		g_gains[i] = 4.f; 	
	}
	g_sendL = 0x4000; 
	g_sendbuf = (unsigned int*)malloc(g_sendL); 
	if(!g_sendbuf){
		fprintf(stderr, "could not allocate sendbuf\n");
		exit(0); 
	}
	g_sendR = 0; 
	g_sendW = 0; 

	//start the output thread.
	pthread_mutex_init(&g_outthread_mutex, NULL); 
	pthread_cond_init(&g_outthread_cond, NULL); 
	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_create( &thread1, &attr, out_thread, 0 ); 
	
	char destIP[256]; 
	if(argn == 2){
		strncpy(destIP, argc[1], 255); 
		destIP[255] = 0; 
	}else{
		snprintf(destIP, 256, "152.16.229.22"); 
	}
	
	//open up a UDP socket, read from it.
	g_rxsock = setup_socket(4340); 
	g_txsock = connect_socket(4342, destIP); 
	if(!g_txsock) printf("failed to connect to bridge.\n"); 
	get_sockaddr(4342, destIP, &g_txsockAddr); 
	char buf[1024];
	int send_delay = 0; 
	while(g_die == 0){
		int n = recvfrom(g_rxsock, buf, sizeof(buf), 0,0,0); 
		if(n > 0 && !g_die){
			unsigned int trptr = *((unsigned int*)buf);
			if(g_print) printf("%d\n", trptr); 
			char* ptr = buf; 
			ptr += 4; 
			n -= 4; 
			packet* p = (packet*)ptr;
			int npack = n / 32; 
			for(i=0; i<npack && !g_pause; i++){
				//see if it exceeded threshold.
				float r = 0.6; 
				g_headch = (p->flag) >> 3 ; 
				g_exceeded = p->exceeded; 
				// encoding (makes the headstage code simpler)
				// ch0 -> 0x1; ch1 -> 0x4; ch16 -> 0x2 ; ch17 -> 0x8
				unsigned int bit = 0; 
				if(g_headch < 16) bit = 1 << (g_headch*2);
				else bit = 1 << ((g_headch&0xf)*2+1);
				if(g_exceeded & bit) r = 1.0; 
				for(j=0; j<27; j++){
					g_fbuf[(g_bufpos % NSAMP)*3 + 1] = 
						//sin(g_time); 
						(float)(p->data[j]) / 128.f; 
					g_fbufColor[(g_bufpos % NSAMP)*4 + 0] = r;
					g_fbufColor[(g_bufpos % NSAMP)*4 + 3] = 0.7f;
					g_bufpos++; 
					g_time += 0.03; 
				}
				p++; 
			}
			//'erase' the 10 oldest samples.
			float alpha = 0.f; 
			j = 0; 
			while(alpha < 1.f){
				g_fbufColor[((g_bufpos+j) % NSAMP)*4 + 3] = alpha;
				alpha += 0.05; 
				j++; 
			}
			pthread_cond_signal( &g_outthread_cond ); //unblock the other thread.
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

	g_die = 1; 
	pthread_cond_signal( &g_outthread_cond ); //unblock so it can quit! 
	pthread_mutex_destroy(&g_outthread_mutex); 
	pthread_cond_destroy(&g_outthread_cond); 

	close_socket(g_rxsock);

	free(g_sendbuf); 
	return 0;
}