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

#include <math.h>

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
#define NSAMP (4*1024)
static float	g_fbuf[NSAMP*3];
bool	g_vboSupported = false; 
GLuint g_vbo1 = 0; 

static gboolean
expose_top (GtkWidget *da, GdkEventExpose *event, gpointer user_data)
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context (da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (da);

	// g_print (" :: expose\n");

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
	{
		g_assert_not_reached ();
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
configure (GtkWidget *da, GdkEventConfigure *event, gpointer user_data)
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

void destroy(GtkWidget *ign, gpointer ign2){
	if(g_vboSupported){
		glDeleteBuffersARB(1, &g_vbo1); 
	}
	gtk_main_quit(); 
}

int
main (int argc, char **argv)
{
	GtkWidget *window;
	GtkWidget *da;
	GtkWidget *da_spikes;
	GdkGLConfig *glconfig;
	//GtkWidget *table; 
	GtkWidget *box1, *box2;
	GtkWidget *button;
	GtkWidget *paned;
	GtkWidget *paned2;
	int i; 

	gtk_init (&argc, &argv);
	gtk_gl_init (&argc, &argv);

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
