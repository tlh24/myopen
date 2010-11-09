/*
 *  $Id: fontripper.c,v 1.3 2000/11/13 00:17:04 tgkamp Exp $
 *
 *  fontripper converts X Fonts into picoTK fonts
 *
 *  Copyright (c) by Thomas Gallenkamp <tgkamp@users.sourceforge.net>
 *
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 */


#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include <X11/Xatom.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>

void initialize();
void demo1(char *fontname,char *shortname);
int check_event();

#define TRUE (1)
#define FALSE (0)

Pixmap		pixmap;
Display 	*display;
GC 		gc1;
Window		window, root, parent;
int 		depth, screen;
char *host;

int main(argc, argv)
 int argc;
 char *argv[] ;
{
 
 if(( host = (char *) getenv("DISPLAY")) == NULL)
   { fprintf(stderr, "%s", "Error: No environment variable DISPLAY\n");
   return 1;
 }

  initialize();
  
  gc1 = XCreateGC(display, RootWindow(display,screen), 0, NULL);
  if (argc>=2) {
    demo1(argc>2 ? argv[2]:argv[1],argv[1]);

  }
  return 0;
}

void initialize()
{
   if((display = XOpenDisplay(host)) == NULL) 
   {
     fprintf(stderr,"Error: Connection could not be made.\n");
     exit(1);
   }
   screen = DefaultScreen(display);
   depth  = DefaultDepth(display,screen);
 }

print_xchar_info(XCharStruct *info,char *comment,int num) {
  return;  
    fprintf(stderr,"--XCharStruct %s %02x\n",comment,num);
    fprintf(stderr,"  lbearing:   %d\n",info->lbearing);
    fprintf(stderr,"  rbearing:   %d\n",info->rbearing);
    fprintf(stderr,"  width:      %d\n",info->width);
    fprintf(stderr,"  ascent:     %d\n",info->ascent);
    fprintf(stderr,"  descent:    %d\n",info->descent);
}
/*
 struct font_info{
   char          phony_name[16];
   unsigned char height;
   unsigned char base_line;
   struct {
      unsigned char width;
      unsigned      offset;
   } per_char[256];   
   unsigned char data[];
 }
*/

void uint8_out(unsigned char x) {
    static int pos=0;
    if (pos==10) {
        printf(",\n");
        pos=0;
    } 
    if (pos==0) {
        printf("     ");
    } else {
        printf(",");
    }
    printf("0x%02x",x);
    pos++;
}

void uint16_out(unsigned short x) {
    uint8_out(x>>8);
    uint8_out(x&0xff);
}
  


void demo1(char *fontname, char *shortname)
{ 
	int i=0;
	int x_position;
	int y_position;
	XFontStruct *f;
	int static count=0;
	XTextItem textitem;
	Font font;
	Pixmap pixmap;

	int font_height;
	int font_baseline;
	int font_min;
	int font_max;
	int font_nchars;

	font=XLoadFont(display,fontname);
	{
		int i;
		f=XQueryFont(display,font);
		font_min=f->min_char_or_byte2;
		font_max=f->max_char_or_byte2;
		font_nchars=font_max-font_min;

		fprintf(stderr,"direction        : %d\n",f->direction);
		fprintf(stderr,"min_char_or_byte2: %d\n",f->min_char_or_byte2);
		fprintf(stderr,"max_char_or_byte2: %d\n",f->max_char_or_byte2);
		fprintf(stderr,"min_byte1        : %d\n",f->min_char_or_byte2);
		fprintf(stderr,"max_byte1        : %d\n",f->max_char_or_byte2);
		fprintf(stderr,"ascent;          : %d\n",f->ascent);
		fprintf(stderr,"descent;         : %d\n",f->descent);
		print_xchar_info(&(f->min_bounds),"min_bounds",0);
		print_xchar_info(&(f->max_bounds),"max_bounds",0);

		for (i=0; i<=font_nchars; i++) {
			print_xchar_info(f->per_char+i,"per_char",i+font_min);
		}
	}
	{
		int offset;
		int width;
		int i;
		font_height=f->max_bounds.ascent+f->max_bounds.descent;
		font_baseline=f->max_bounds.ascent;
		offset=0;
		fprintf(stderr,"font height=%d\n",font_height);
		fprintf(stderr,"font base  =%d\n",font_baseline);
		printf(" /*\n"
		"  *  Font data automatically generate by fontripper\n"
		"  *  -----------------------------------------------\n"
		"  *  $Id: fontripper.c,v 1.3 2000/11/13 00:17:04 tgkamp Exp $\n"
		"  *\n"
		"  *  X-Fontname:   %s\n"
		"  *  Shortname:    %s\n"
		"  *  Fontheight:   %d\n"
		"  *  Fontbaseline: %d\n"
		"  */\n", fontname, shortname, font_height,font_baseline);


		printf("unsigned char font_%s[]={\n",shortname);

		for (i=0; shortname[i] && i<15; i++) 
			uint8_out(shortname[i]);
		for (;i<16;i++) 
			uint8_out(0);
		uint8_out(font_height);
		uint8_out(font_baseline);
		for (i=0; i<256; i++) {
			if (i>font_max||i<font_min) {
				uint8_out(0);
				uint16_out(offset);
			} else {
				width=f->per_char[i-font_min].width;
				if (f->per_char[i-font_min].rbearing>width) {
					width=f->per_char[i-font_min].rbearing;
				}
				/*
				fprintf(stderr,"width [%d] :%d\n",i,width);
				fprintf(stderr,"off   [%d] :%d\n",i,offset);
				*/
				uint8_out(width);
				uint16_out(offset);
				offset+=((width+7)/8)*font_height;
			}
		}
	}
	XSetFont(display,gc1,font);
	pixmap=XCreatePixmap(display,RootWindow(display,screen),100,font_height,depth);
	for (i=0; i<font_nchars; i++) {
		int width;
		width=f->per_char[i].width;
		if (f->per_char[i].rbearing>width) {
			width=f->per_char[i].rbearing;
		}
		if (width) {
			char ch;
			ch=i+font_min;
			textitem.chars =&ch;
			textitem.nchars=1;
			textitem.delta =0;
			textitem.font  =font;
			{
				int x,x2;
				int y;
				XImage *img;

				XSetForeground(display,gc1,0x000000);
				XFillRectangle(display,pixmap,gc1,0,0,100,font_height);
				XSetForeground(display,gc1,0xff8000);
				XDrawText(display, pixmap, gc1,
				0,f->max_bounds.ascent,
				&textitem,1);
				img=XGetImage(display, pixmap, 0,0, 
				width,font_height, 0xffffffff,XYPixmap);
				fprintf(stderr, "font image height %d font width %d \n", font_height, width); 
				for (y=0; y<font_height; y++) {
					for (x2=0; x2<(width+7)/8; x2++) { 
						int data;
						data=0;
						for (x=0; x<8  && (x+x2*8)<width; x++) {
							if (XGetPixel(img,x+x2*8,y)) 
								data+=(0x80>>x);
						} /* rof x   */
						uint8_out(data);
					} /* rof x2 */
				} /* rof y  */
			} /* block   */
		} /* fi (width) */
	} /* rof i*/
	printf("\n }; /* end of font %s definition */\n",shortname);
} /*block */
