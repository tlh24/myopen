#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
  
#include <stdio.h>
#include <stdlib.h>

#define BITMAPDEPTH 1
  
Display *display;
int screen;
#include "8x13.c"
#include "6x12.c"

typedef struct {
    unsigned char phony_name[16];
    unsigned char height;
    unsigned char base_line;
    struct {
       unsigned char width;
       unsigned char offset_msb;
       unsigned char offset_lsb;
    } per_char[256];   
    unsigned char data[1];
} picoFont;

/* values for window_size in main */
#define SMALL 1
#define OK 0

//from : http://www.visi.com/~grante/Xtut/basicwn.html

//this is just to check that I'm understanding the 
// c-embedded font correctly. 
void load_font(XFontStruct **font_info)
{
	char *fontname = "9x15";
	if ((*font_info=XLoadQueryFont(display,fontname)) == NULL){
		printf("stderr, basicwin: cannot open 9x15 font\n");
		exit(-1);
	}
}
void get_GC(Window win, GC *gc, XFontStruct *font_info)
{
	unsigned long valuemask = 0;
	XGCValues values;
	unsigned int line_width = 1;
	int line_style = LineSolid; /*LineOnOffDash;*/
	int cap_style = CapButt;
	int join_style = JoinMiter;
	int dash_offset = 0;
	static char dash_list[] = {20, 40};
	int list_length = sizeof(dash_list);

	*gc = XCreateGC(display, win, valuemask, &values);

	XSetFont(display, *gc, font_info->fid);

	XSetForeground(display, *gc, BlackPixel(display,screen));

	XSetLineAttributes(display, *gc, line_width, line_style, cap_style, join_style);

	XSetDashes(display, *gc, dash_offset, dash_list, list_length);
}

void draw_text(Window win,
		GC gc,
		XFontStruct *font_info,
		unsigned int win_width,
		unsigned int win_height)
{
	int y = win_height/2;
	char *string1 = "To terminate program, Press any key";
	int len1;
	int width1;

	len1 = strlen(string1);
	width1 = XTextWidth(font_info, string1, len1);
	XDrawString(display, win, gc, (win_width-width1)/2, y, string1, len1);
}
void draw_graphics(
		Window win, GC gc, 
		unsigned int window_width, 
		unsigned int window_height)
{
	unsigned int width, height;
	int x,y; 
	height = 25;
	width = 3 * window_width/4;

	x = window_width/2 - width/2;
	y = window_height/2 - height/2;

	XDrawRectangle(display, win, gc, x, y, width, height);
	// loop over the font data, draw the pixels where appropriate. 
	int ch = 0;
	picoFont* font = (picoFont*)(font_6x12); 
	x = 0; 
	int h = font->height; 
	for(ch = 0; ch < 256; ch++){
		int offset = ((int)(font->per_char[ch].offset_msb) << 8) + 
					(int)(font->per_char[ch].offset_lsb) ;
		int w = font->per_char[ch].width ;  
		for(y=0; y<h; y++){
			int xx; 
			int wincr =  (w+7)/8; 
			for(xx=0; xx < wincr; xx++){
				unsigned char c = font->data[offset + xx + y*wincr]; 
				int b; 
				for(b=0; b<8; b++){
					if( c & (0x80 >> b) ){
						XDrawPoint(display, win, gc, x+xx*8+b, y); 
					}
				}
			}
		}
		x += w; 
	}
}

void TooSmall(Window win,
		GC gc,
		XFontStruct *font_info)
{
	char *string1 = "Too Small";
	int x,y;
	y = font_info->max_bounds.ascent + 2;
	x = 2;
	XDrawString(display, win, gc, x, y, string1, strlen(string1));
}

int main(int argc, char** argv){
	Window win;
	unsigned int width, height;
	int	x = 0, y = 0;
	unsigned int border_width = 4;
	char *window_name = "Font tester.";
	char *icon_name = "font tester";
	Pixmap icon_pixmap;
	XSizeHints size_hints;
	XEvent report;
	GC gc;
	XFontStruct *font_info;
	char *display_name = NULL;
	int window_size = 0;

	if ((display=XOpenDisplay(display_name)) == NULL){
		fprintf(stderr,"fonttester: cannot connect to X server %s\n",
		  XDisplayName(display_name));
		exit(0);
	}

	screen = DefaultScreen(display);

	width = 500;
	height = 100;

	win = XCreateSimpleWindow(display, RootWindow(display,screen),
			  x, y, width, height, border_width,
			  BlackPixel(display,screen),
			  WhitePixel(display,screen));


	size_hints.flags = PPosition | PSize | PMinSize;
	size_hints.x = x;
	size_hints.y = y;
	size_hints.width = width;
	size_hints.height = height;
	size_hints.min_width = 350;
	size_hints.min_height = 50;

	XSetStandardProperties(display, win, window_name, icon_name, icon_pixmap,
			   argv, argc, &size_hints);

	XSelectInput(display, win, ExposureMask |
		 KeyPressMask |
		 ButtonPressMask |
		 StructureNotifyMask);

	load_font(&font_info);

	get_GC(win, &gc, font_info);

	XMapWindow(display, win);

	while (1)
	{
		XNextEvent(display, &report);
		switch (report.type)
		{
			case Expose:
				while (XCheckTypedEvent(display, Expose, &report))
				  ;
				if (window_size == SMALL)
				  TooSmall(win, gc, font_info);
				else{
					draw_text(win, gc, font_info, width, height);
					draw_graphics(win, gc, width, height);
				}
				break;
			case ConfigureNotify:
				width = report.xconfigure.width;
				height = report.xconfigure.height;
				if (width < size_hints.min_width || height < size_hints.min_height)
				window_size = SMALL;
				else
				window_size = OK;
				break;
			case ButtonPress:
			case KeyPress:
				XUnloadFont(display, font_info->fid);
				XFreeGC(display, gc);
				XCloseDisplay(display);
				exit(1);
				break;
			default:
				break;
		}
	}
	return 0; 
}
