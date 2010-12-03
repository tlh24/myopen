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
#include "sock.h"

#define NSAMP (4*1024)

float boxv[][3] = {
	{ -0.5, -0.5, -0.5 },
	{  0.5, -0.5, -0.5 },
	{  0.5,  0.5, -0.5 },
	{ -0.5,  0.5, -0.5 },
	{ -0.5, -0.5,  0.5 },
	{  0.5, -0.5,  0.5 },
	{  0.5,  0.5,  0.5 },
	{ -0.5,  0.5,  0.5 }
};
#define ALPHA 0.5

static float ang = 30.;

static float	g_fbuf[NSAMP*3];
unsigned int	g_fbufW; //where to write to (always increment) 
unsigned int	g_fbufR; //display thread reads from here - copies to mem
unsigned int*	g_sendbuf; 
unsigned int g_sendW; //where to write to (in 32-byte increments)
unsigned int g_sendR; //where to read from
unsigned int g_sendL; //the length of the buffer.
bool g_die = false; 
bool g_pause = false;
bool g_channel = 0; 
bool g_headch = 0; 
bool g_out = false; 
unsigned int g_exceeded = 0; 
int g_thresh = 16000; 
float g_gains[32]; //per-channel gains.
float lowpass_coefs[8] = {0.078146,0.156309,1.261974,-0.614587,
								0.078146,0.156275,0.991706,-0.268803};
float highpass_coefs[8] = {0.983715,-1.967430,1.980324,-0.980949,
								0.983715,-1.967430,1.954002,-0.954619};

typedef struct {
	char data[27]; 
	unsigned char flag; 
	unsigned int exceeded; 
} packet; 

int g_rxsock = 0;//rx
int g_txsock = 0; 
struct sockaddr_in g_txsockAddr; 

double g_time = 0.0; 

bool	g_vboSupported = false; 
GLuint g_vbo1 = 0; 

void copyData(unsigned int sta, unsigned int fin){
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1);
	sta *= 3; 
	fin *= 3; 
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, 
							 (GLvoid*)&(g_fbuf[sta]));
}

static gboolean
expose_top (GtkWidget *da, GdkEventExpose*, gpointer )
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	// g_print (" :: expose\n");

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
	{
		g_assert_not_reached ();
	}
	
	//copy over any new data.
	if(g_fbufR < g_fbufW){
		unsigned int w = g_fbufW; //atomic
		unsigned int sta = g_fbufR % NSAMP; 
		unsigned int fin = w % NSAMP; 
		if(fin < sta) { //wrap
			copyData(sta, NSAMP); 
			copyData(0, fin); 
		} else {
			copyData(sta, fin); 
		}
		g_fbufR = w; 
	}

	/* draw in here */
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glPushMatrix();
	
	//glRotatef (ang, 1, 0, 1);
	// glRotatef (ang, 0, 1, 0);
	// glRotatef (ang, 0, 0, 1);

	glShadeModel(GL_FLAT);
	
	//VBO drawing.. 
	glEnableClientState(GL_VERTEX_ARRAY);
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, g_vbo1);
	glVertexPointer(3, GL_FLOAT, 0, 0);
	glColor3f (1., 1., 1.);
	glDrawArrays(GL_LINE_STRIP, 0, NSAMP); 
	//see glDrawElements for indexed arrays
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
	glDisableClientState(GL_VERTEX_ARRAY);
	//end VBO

	glBegin (GL_LINES);
	glColor3f (1., 0., 0.);
	glVertex3f (0., 0., 0.);
	glVertex3f (1., 0., 0.);
	glEnd ();
	
	glBegin (GL_LINES);
	glColor3f (0., 1., 0.);
	glVertex3f (0., 0., 0.);
	glVertex3f (0., 1., 0.);
	glEnd ();
	
	glBegin (GL_LINES);
	glColor3f (0., 0., 1.);
	glVertex3f (0., 0., 0.);
	glVertex3f (0., 0., 1.);
	glEnd ();

	glBegin(GL_LINES);
	glColor3f (1., 1., 1.);
	glVertex3fv(boxv[0]);
	glVertex3fv(boxv[1]);
	
	glVertex3fv(boxv[1]);
	glVertex3fv(boxv[2]);
	
	glVertex3fv(boxv[2]);
	glVertex3fv(boxv[3]);
	
	glVertex3fv(boxv[3]);
	glVertex3fv(boxv[0]);
	
	glVertex3fv(boxv[4]);
	glVertex3fv(boxv[5]);
	
	glVertex3fv(boxv[5]);
	glVertex3fv(boxv[6]);
	
	glVertex3fv(boxv[6]);
	glVertex3fv(boxv[7]);
	
	glVertex3fv(boxv[7]);
	glVertex3fv(boxv[4]);
	
	glVertex3fv(boxv[0]);
	glVertex3fv(boxv[4]);
	
	glVertex3fv(boxv[1]);
	glVertex3fv(boxv[5]);
	
	glVertex3fv(boxv[2]);
	glVertex3fv(boxv[6]);
	
	glVertex3fv(boxv[3]);
	glVertex3fv(boxv[7]);
	glEnd();

	glPopMatrix ();

	if (gdk_gl_drawable_is_double_buffered (gldrawable))
		gdk_gl_drawable_swap_buffers (gldrawable);

	else
		glFlush ();

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean
configure (GtkWidget *da, GdkEventConfigure *, gpointer)
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
	glOrtho (-10,10,-10,10,-20050,10000);
	glEnable (GL_BLEND);
	glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glScalef (10., 10., 10.);
	if(!g_vboSupported){ //start it up!
		glInfo glInfo;
		glInfo.getInfo();
		//glInfo.printSelf();
		if(glInfo.isExtensionSupported("GL_ARB_vertex_buffer_object")){
			g_vboSupported = true;
			printf("Video card supports GL_ARB_vertex_buffer_object.\n");
		}
		else{
			g_vboSupported = false;
			printf("Video card does NOT support GL_ARB_vertex_buffer_object.\n");
		}
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
		printf("Vertex Array in VBO:%d bytes", bufferSize);
	}
	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

//global labels.. 
GtkWidget* g_gainlabel[32];

static gboolean
rotate (gpointer user_data)
{
	char str[256]; 
	GtkWidget *da = GTK_WIDGET (user_data);

	ang++;

	gdk_window_invalidate_rect (da->window, &da->allocation, FALSE);
	gdk_window_process_updates (da->window, FALSE);

	snprintf(str, 256, "%f", sin(ang)*4.0); 
	gtk_label_set_text(GTK_LABEL(g_gainlabel[0]), str); //works!
	return TRUE;
}

void destroy(GtkWidget *, gpointer){
	g_die = true; 
	if(g_vboSupported){
		glDeleteBuffersARB(1, &g_vbo1); 
	}
	sleep(1); 
	gtk_main_quit(); 
}

void* sock_thread(void* destIP){
	g_rxsock = setup_socket(4340); 
	g_txsock = connect_socket(4342,(char*)destIP); 
	if(!g_txsock) printf("failed to connect to bridge.\n"); 
	get_sockaddr(4342, (char*)destIP, &g_txsockAddr); 
	char buf[1024];
	int send_delay = 0; 
	while(g_die == 0){
		int n = recvfrom(g_rxsock, buf, sizeof(buf), 0,0,0); 
		if(n > 0 && !g_die){
			unsigned int trptr = *((unsigned int*)buf);
			if(g_out) printf("%d\n", trptr); 
			char* ptr = buf; 
			ptr += 4; 
			n -= 4; 
			packet* p = (packet*)ptr;
			int npack = n / 32; 
			for(int i=0; i<npack && !g_pause; i++){
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
				for(int j=0; j<27; j++){
					g_fbuf[(g_fbufW % NSAMP)*3 + 1] = 
						//sin(g_time); 
						(float)(p->data[j]) / 128.f; 
					//g_fbufColor[(g_bufpos % NSAMP)*4 + 0] = r;
					//g_fbufColor[(g_bufpos % NSAMP)*4 + 3] = 0.7f;
					g_fbufW++; 
					g_time += 0.03; 
				}
				p++; 
			}
			//'erase' the 10 oldest samples.
			/*float alpha = 0.f; 
			j = 0; 
			while(alpha < 1.f){
				g_fbufColor[((g_bufpos+j) % NSAMP)*4 + 3] = alpha;
				alpha += 0.05; 
				j++; 
			}
			pthread_cond_signal( &g_outthread_cond ); //unblock the other thread.*/
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
	return 0; 
}

int
main (int argn, char **argc)
{
	GtkWidget *window;
	GtkWidget *da;
	GtkWidget *da_spikes;
	GdkGLConfig *glconfig;
	//GtkWidget *table; 
	GtkWidget *box1;
	//GtkWidget *button;
	GtkWidget *paned;
	GtkWidget *paned2;
	int i; 
	
	g_sendL = 0x4000; 
	g_sendbuf = (unsigned int*)malloc(g_sendL); 
	if(!g_sendbuf){
		fprintf(stderr, "could not allocate sendbuf\n");
		exit(0); 
	}
	g_sendR = 0; 
	g_sendW = 0; 
	
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
	pthread_create( &thread1, &attr, sock_thread, (void*)destIP ); 

	gtk_init (&argn, &argc);
	gtk_gl_init (&argn, &argc);

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title (GTK_WINDOW (window), "gtk headstage v6 client");
	gtk_window_set_default_size (GTK_WINDOW (window), 800, 600);
	da = gtk_drawing_area_new ();
	gtk_widget_set_size_request(GTK_WIDGET(da), 600, 450);
	da_spikes = gtk_drawing_area_new ();
	gtk_widget_set_size_request(GTK_WIDGET(da_spikes), 600, 150);

	/* Create a 2x2 table */
	//table = gtk_table_new (2, 2, TRUE);
	paned = gtk_hpaned_new(); 
	gtk_container_add (GTK_CONTAINER (window), paned);
	box1 = gtk_vbox_new (FALSE, 0);
	for(i=0; i<32; i++){
		g_gainlabel[i] = gtk_label_new ("gain :: 4.0");
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
	gtk_widget_set_size_request(GTK_WIDGET(box1), 200, 600);
	gtk_widget_show (box1);
	
	paned2 = gtk_vpaned_new(); 
	gtk_paned_add1(GTK_PANED(paned2), da);
	gtk_paned_add2(GTK_PANED(paned2), da_spikes); 
	gtk_widget_show(paned2); 
	
	gtk_paned_add1(GTK_PANED(paned), box1);
	gtk_paned_add2(GTK_PANED(paned), paned2); 
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
	gtk_widget_set_events (da, GDK_EXPOSURE_MASK);

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

	if (!gtk_widget_set_gl_capability (da, glconfig, NULL, TRUE,
				GDK_GL_RGBA_TYPE))
	{
		g_assert_not_reached ();
	}

	g_signal_connect (da, "configure-event",
			G_CALLBACK (configure), NULL);
	g_signal_connect (da, "expose-event",
			G_CALLBACK (expose_top), NULL);

	gtk_widget_show_all (window);

	g_timeout_add (1000 / 60, rotate, da);

	gtk_main ();
}
