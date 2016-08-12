// in order to get function prototypes from glext.h,
// define GL_GLEXT_PROTOTYPES before including glext.h
#define GL_GLEXT_PROTOTYPES

#include <string>
#include <vector>
#include <thread>
#include <algorithm>

#include <gtk/gtk.h>
#include <gdk/gdkkeysyms.h>
#include <gtk/gtkgl.h>
#include <GL/glut.h>	// Header File For The GLUT Library
#include <GL/gl.h>		// Header File For The OpenGL32 Library
#include <GL/glu.h>		// Header File For The GLu32 Library
#include <GL/glx.h>		// Header file for the glx libraries.
#include "../common_host/glext.h"
#include "../common_host/glInfo.h"

#include <Cg/cg.h>		/* included in Cg toolkit for nvidia */
#include <Cg/cgGL.h>
#include "cgVertexShader.h"

#include "vbo.h"
#include "vbo_timeseries.h"

#include <signal.h>				// for signal, SIGINT
#include <libgen.h>

#include "timesync.h"
#include "util.h"
#include "lockfile.h"

#include <zmq.h>
#include "zmq_packet.h"

#include <basedir.h>
#include <basedir_fs.h>
#include "lconf.h"

#if defined KHZ_24
#define SRATE_HZ	(24414.0625)
#define SRATE_KHZ	(24.4140625)
#define NSAMP 		(64*1024)	// about 2.6 seconds. (MUST BE POWER OF 2)
#elif defined KHZ_48
#define SRATE_HZ	(48828.1250)
#define SRATE_KHZ	(48.8281250)
#define NSAMP 		(128*1024)
#else
#error Bad sampling rate!
#endif

GLuint 		g_base;            // base display list for the font set.

//CG stuff. for the vertex shaders.
CGcontext   myCgContext;
CGprofile   myCgVertexProfile;
cgVertexShader		*g_vsThreshold;

float	g_viewportSize[2] = {640, 480}; //width, height.

float	g_cursPos[2];

bool g_vboInit = false;

vector <VboTimeseries *> g_timeseries;

float g_zoomSpan = 1.0;

bool s_interrupted = false;
std::vector <void *> g_socks;

gboolean g_pause = false;

int g_drawmode[2] = {GL_POINTS, GL_LINE_STRIP};
int	g_drawmodep = 1;

int	g_blendmode[2] = {GL_ONE_MINUS_SRC_ALPHA, GL_ONE};
int g_blendmodep = 0;

u64 g_nplot = 32;

int g_chan_offset = 0;

float g_gain = 10;

static void s_signal_handler(int)
{
	s_interrupted = true;
	gtk_main_quit();	// tell gui thread to finish
}
void destroyGUI(GtkWidget *, gpointer)
{
	s_signal_handler(SIGINT);
}
static void s_catch_signals(void)
{
	struct sigaction action;
	action.sa_handler = s_signal_handler;
	action.sa_flags = 0;
	sigemptyset(&action.sa_mask);
	sigaction(SIGINT, &action, NULL);
	sigaction(SIGQUIT, &action, NULL);
	sigaction(SIGTERM, &action, NULL);
}

static void cleanup(void *ctx)
{
	for (auto &sock : g_socks) {
		zmq_close(sock);
	}
	zmq_ctx_destroy(ctx);
}

static void die(void *ctx, int status)
{
	s_interrupted = true;
	gtk_main_quit();
	cleanup(ctx);
	exit(status);
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

static gboolean
expose (GtkWidget *da, GdkEventExpose *, gpointer )
{
	if (s_interrupted) {
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
	}

	/* draw in here */
	glMatrixMode(GL_MODELVIEW);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_FLAT);
	glBlendFunc(GL_SRC_ALPHA, g_blendmode[g_blendmodep]);

	int n = std::min(g_nplot, g_timeseries.size());

	for (int k=0; k<n; k++) {
		float yoffset = 1.95f*((float)k/n + 1.f/(2.f*n)) - 0.95f;
		g_timeseries[k+g_chan_offset]->draw(g_drawmode[g_drawmodep], (float)n, yoffset);
	}

	u32 nplot = g_timeseries[0]->m_nplot;

	//draw seconds / ms label here.
	for (u32 i=0; i<nplot; i+=SRATE_HZ/5) {
		float x = 2.f*i/nplot-1.f + 2.f/g_viewportSize[0];
		float y = 1.f - 13.f*2.f/g_viewportSize[1];
		glColor4f(0.f, 1.f, 0.f, 1.f);
		glRasterPos2f(x,y);
		char buf[64];
		snprintf(buf, 64, "%3.1f", i/SRATE_HZ);
		glPrint(buf);
	}

	glRasterPos2f(-1.f + 2.f/g_viewportSize[0], -1 + 3.f*2.f/g_viewportSize[1]);
	char buf[256];
	snprintf(buf, 256, "Chan (%i-%i of %lu) [ < | > ]     Gain (%3.2f) [ Up | Down ]     Scale [ Left | Right ]     Pause [ p ]     Quit [ q/esc ]",
	         g_chan_offset, g_chan_offset+(int)g_nplot, g_timeseries.size(), g_gain);
	glPrint(buf);

	glDisableClientState(GL_VERTEX_ARRAY);

	if (gdk_gl_drawable_is_double_buffered (gldrawable))
		gdk_gl_drawable_swap_buffers (gldrawable);
	else
		glFlush ();

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean
configure(GtkWidget *da, GdkEventConfigure *, gpointer)
{
	GdkGLContext *glcontext = gtk_widget_get_gl_context(da);
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable(da);

	if (!gdk_gl_drawable_gl_begin (gldrawable, glcontext))
		g_assert_not_reached ();

	// save the viewport size.
	GtkAllocation allocation;
	gtk_widget_get_allocation(da, &allocation);

	glLoadIdentity();
	glViewport (0, 0, allocation.width, allocation.height);
	g_viewportSize[0] = (float)allocation.width;
	g_viewportSize[1] = (float)allocation.height;

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
		std::string d(dname);

		std::string cgfile;

		cgfile = d + "/cg/" + "threshold.cg";
		g_vsThreshold = new cgVertexShader(cgfile.c_str(),"thresholdB");
		g_vsThreshold->addParams(3, "xzoom", "nchan", "yoffset");

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

		g_vboInit = true;

	}
	BuildFont(); //so we're in the right context?

	gdk_gl_drawable_gl_end (gldrawable);

	return TRUE;
}

static gboolean rotate(gpointer user_data)
{
	GtkWidget *da = GTK_WIDGET(user_data);
	GdkWindow *win = gtk_widget_get_window(da);

	GtkAllocation allocation;
	gtk_widget_get_allocation (da, &allocation);

	gdk_window_invalidate_rect(win, &allocation, FALSE);
	gdk_window_process_updates (win, FALSE);

	return TRUE;
}

static gboolean
key_event(GtkWidget *, GdkEventKey *event)
{
	float gain_factor = 10.f;

	switch (event->keyval) {
	case GDK_KEY_Down:	// it's more of an attenuation than a gain
		if (g_gain <= 10.f) {
			gain_factor = 1.f;
		}
		if (g_gain <= 1.f) {
			gain_factor = 0.1f;
		}
		g_gain -= gain_factor;
		g_gain = g_gain <= 0 ? gain_factor : g_gain;
		break;
	case GDK_KEY_Up:
		if (g_gain < 10.f) {
			gain_factor = 1.f;
		}
		if (g_gain < 1.f) {
			gain_factor = 0.1f;
		}
		g_gain += gain_factor;
		g_gain = g_gain <= 0 ? gain_factor : g_gain;
		break;
	case GDK_KEY_Left:
		g_zoomSpan -= 0.05;
		g_zoomSpan = g_zoomSpan < 0.1 ? 0.05 : g_zoomSpan;
		g_zoomSpan = g_zoomSpan > 2.5 ? 2.5 : g_zoomSpan;
		break;
	case GDK_KEY_Right:
		g_zoomSpan += 0.05;
		g_zoomSpan = g_zoomSpan < 0.1 ? 0.05 : g_zoomSpan;
		g_zoomSpan = g_zoomSpan > 2.5 ? 2.5 : g_zoomSpan;
		break;
	case GDK_KEY_greater:
	case GDK_KEY_period:
		if (g_chan_offset+g_nplot < g_timeseries.size()) {
			g_chan_offset += g_nplot;
		}
		break;
	case GDK_KEY_less:
	case GDK_KEY_comma:
		if (g_chan_offset-(int)g_nplot >= 0) {
			g_chan_offset -= g_nplot;
		}
		break;
	case GDK_KEY_p:
	case GDK_KEY_P:
		g_pause = !g_pause;
		break;
	case GDK_KEY_Escape:
	case  GDK_KEY_q:
		s_signal_handler(SIGINT);
		break;
	}

	for (auto &x : g_timeseries) {
		x->setNPlot(g_zoomSpan * SRATE_HZ);
	}

	return true;
}
void worker(void *ctx, std::string zin)
{
	void *socket_in = zmq_socket(ctx, ZMQ_SUB);
	if (socket_in == NULL) {
		error("zmq: could not create socket");
		die(ctx, 1);
	}
	g_socks.push_back(socket_in);
	if (zmq_connect(socket_in, zin.c_str()) != 0) {
		error("zmq: could not connect to socket %s", zin.c_str());
		die(ctx, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(ctx, 1);
	}

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	g_socks.push_back(controller);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	// init poll set
	zmq_pollitem_t items [] = {
		{ socket_in, 	0,	ZMQ_POLLIN,	0 },
		{ controller, 	0,	ZMQ_POLLIN,	0}
	};

	while (!s_interrupted) {

		if (zmq_poll(items, 2, -1) == -1) { //  -1 means block
			break;
		}

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket_in, 0);
			zmq_packet_header *p = (zmq_packet_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket_in, 0);
			float *f = (float *)zmq_msg_data(&body);

			for (u64 i=0; i<nc; i++) {
				for (u64 j=0; j<ns; j++) {
					float x = g_gain * f[i*ns+j] / 1e4;
					g_timeseries[i]->addData(&x, 1);
				}
			}

			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

		if (items[1].revents & ZMQ_POLLIN) {
			// eventually check for what the message says
			//controller.recv(&buf);
			break;
		}

	}

}

int main(int argc, char **argv)
{
	// bbview [zmq in]

	if (argc < 2) {
		printf("\nbbview - broadband stream viewer\n");
		printf("usage: bbview [zmq_sub]\n\n");
		return 1;
	}

	std::string zin  = argv[1];

	debug("ZMQ SUB: %s\n", zin.c_str());

	s_catch_signals();

	xdgHandle xdg;
	xdgInitHandle(&xdg);
	char *confpath = xdgConfigFind("spk/spk.rc", &xdg);
	char *tmp = confpath;
	// confpath is "string1\0string2\0string3\0\0"

	luaConf conf;

	while (*tmp) {
		conf.loadConf(tmp);
		tmp += strlen(tmp) + 1;
	}
	if (confpath)
		free(confpath);
	xdgWipeHandle(&xdg);

	std::string zq = "ipc:///tmp/query.zmq";
	conf.getString("spk.query_socket", zq);

	void *zcontext = zmq_ctx_new();
	if (zcontext == NULL) {
		error("zmq: could not create context");
		return 1;
	}
	// we don't need 1024 sockets
	if (zmq_ctx_set(zcontext, ZMQ_MAX_SOCKETS, 64) != 0) {
		error("zmq: could not set max sockets");
		die(zcontext, 1);
	}

	void *controller = zmq_socket(zcontext, ZMQ_PUB);
	if (controller == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(controller);
	if (zmq_bind(controller, "inproc://controller") != 0) {
		error("zmq: could not bind to socket");
		die(zcontext, 1);
	}

	void *query_sock = zmq_socket(zcontext, ZMQ_REQ);
	if (query_sock == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(query_sock);
	if (zmq_connect(query_sock, zq.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}

	u64 nnc; // num neural channels
	zmq_send(query_sock, "NNC", 3, 0);
	if (zmq_recv(query_sock, &nnc, sizeof(u64), 0) == -1) {
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	for (size_t i=0; i<nnc; i++) {
		g_timeseries.push_back(new VboTimeseries(NSAMP));
	}

	std::thread t1(worker, zcontext, zin);

	gtk_init (&argc, &argv);
	gtk_gl_init(&argc, &argv);

	GtkWidget *window;
	GtkWidget *da;
	GdkGLConfig *glconfig;

	window = gtk_window_new (GTK_WINDOW_TOPLEVEL);

	da = gtk_drawing_area_new();
	gtk_widget_set_size_request(GTK_WIDGET(da), 640, 480);

	gtk_container_add (GTK_CONTAINER (window), da);

	g_signal_connect_swapped (window, "destroy",
	                          G_CALLBACK (destroyGUI), NULL);
	gtk_widget_set_events (da, GDK_EXPOSURE_MASK);

	/* prepare GL */
	glconfig = gdk_gl_config_new_by_mode (GdkGLConfigMode(
	        GDK_GL_MODE_RGB |
	        GDK_GL_MODE_DEPTH |
	        GDK_GL_MODE_DOUBLE));

	if (!glconfig)
		g_assert_not_reached();

	if (!gtk_widget_set_gl_capability(da, glconfig, nullptr, TRUE,
	                                  GDK_GL_RGBA_TYPE)) {
		g_assert_not_reached();
	}

	g_signal_connect(da, "configure-event",
	                 G_CALLBACK (configure), NULL);
	g_signal_connect(da, "expose-event",
	                 G_CALLBACK (expose), NULL);
	g_signal_connect(da, "key-press-event",
	                 G_CALLBACK(key_event), NULL);

	gtk_widget_set_events (da, GDK_EXPOSURE_MASK
	                       | GDK_LEAVE_NOTIFY_MASK
	                       | GDK_BUTTON_PRESS_MASK
	                       | GDK_POINTER_MOTION_MASK
	                       | GDK_POINTER_MOTION_HINT_MASK);

	//in order to receive keypresses, must be focusable!
	// http://forums.fedoraforum.org/archive/index.php/t-242963.html
	gtk_widget_set_can_focus(da, true);

	gtk_widget_show_all(window);

	g_timeout_add(1000 / 30, rotate, da);

	gtk_main(); // gtk itself uses three threads, it seems

	zmq_send(controller, "KILL", 4, 0);

	t1.join();

	KillFont();

	for (auto &o : g_timeseries)
		delete o;

	if (g_vsThreshold)
		delete g_vsThreshold;
	cgDestroyContext(myCgContext);

	cleanup(zcontext);
}

