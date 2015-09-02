#include <matio.h>
#include <GL/glut.h>         /* glut.h includes gl.h and glu.h*/
#include <GL/freeglut.h>
#include <png.h>

matvar_t* g_wf;
int g_frame = 0;

int writeImage(char* filename, int width, int height, unsigned char* buf, char* title)
{
	int code = 0;
	FILE *fp = NULL;
	png_structp png_ptr = NULL;
	png_infop info_ptr = NULL;
	png_bytep row = NULL;

	// Open file for writing (binary mode)
	fp = fopen(filename, "wb");
	if (fp == NULL) {
		fprintf(stderr, "Could not open file %s for writing\n", filename);
		code = 1;
		goto finalise;
	}

	// Initialize write structure
	png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	if (png_ptr == NULL) {
		fprintf(stderr, "Could not allocate write struct\n");
		code = 1;
		goto finalise;
	}

	// Initialize info structure
	info_ptr = png_create_info_struct(png_ptr);
	if (info_ptr == NULL) {
		fprintf(stderr, "Could not allocate info struct\n");
		code = 1;
		goto finalise;
	}

	// Setup Exception handling
	if (setjmp(png_jmpbuf(png_ptr))) {
		fprintf(stderr, "Error during png creation\n");
		code = 1;
		goto finalise;
	}

	png_init_io(png_ptr, fp);

	// Write header (8 bit colour depth)
	png_set_IHDR(png_ptr, info_ptr, width, height,
	             8, PNG_COLOR_TYPE_RGB, PNG_INTERLACE_NONE,
	             PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

	// Set title
	if (title != NULL) {
		png_text title_text;
		title_text.compression = PNG_TEXT_COMPRESSION_NONE;
		title_text.key = "Title";
		title_text.text = title;
		png_set_text(png_ptr, info_ptr, &title_text, 1);
	}

	png_write_info(png_ptr, info_ptr);

	// Allocate memory for one row (3 bytes per pixel - RGB)
	row = (png_bytep) malloc(3 * width * sizeof(png_byte));

	// Write image data
	int x, y;
	for (y=0 ; y<height ; y++) {
		for (x=0 ; x<width ; x++) {
			int yy = height - y - 1; //flip image vertically.
			row[x*3+0] = buf[(yy*width +x)*3 +0];
			row[x*3+1] = buf[(yy*width +x)*3 +1];
			row[x*3+2] = buf[(yy*width +x)*3 +2];
		}
		png_write_row(png_ptr, row);
	}

	// End write
	png_write_end(png_ptr, NULL);

finalise:
	if (fp != NULL) fclose(fp);
	if (info_ptr != NULL) png_free_data(png_ptr, info_ptr, PNG_FREE_ALL, -1);
	if (png_ptr != NULL) png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
	if (row != NULL) free(row);

	return code;
}

void display(void)
{
	/* clear window */
	int i, j, k;
	glClear(GL_COLOR_BUFFER_BIT);

	double* d = (double*)g_wf->data;
	int rows = g_wf->dims[0];
	int cols = g_wf->dims[1];
	if(rows == 2) {
		//scatterplot!
		float min = 1e8;
		float max = -1e8;
		for(j=0; j<2; j++) {
			for(i=0; i<cols; i++) {
				float e = (float)d[i*2+j];
				max = max < e ? e : max;
				min = min > e ? e : min;
			}
			//transform the data.
			for(i=0; i<cols; i++) {
				float e = (float)d[i*2+j];
				e -= min;
				e /= max - min;
				e -= 0.5f;
				e *= 2.f;
				d[i*2+j] = e;
			}
		}
		glPointSize(3);
		//float alpha = 100 / ((float)cols);
		//alpha = alpha > 0.7 ? 0.7 : alpha;
		//alpha = alpha < 0.01 ? 0.01 : alpha;
		glColor4f(0.8f, 0.6f, 0.5f, 0.3);
		glBegin(GL_POINTS);
		for(i=0; i< cols; i++) {
			float x = (float)d[i*2+0];
			float y = (float)d[i*2+1];
			glVertex2f(x,y);
		}
		glEnd();
	} else {
		float min = 1e8;
		float max = -1e8;
		for(i=0; i< rows * cols; i++) {
			float e = (float)d[i];
			max = max < e ? e : max;
			min = min > e ? e : min;
		}
		int up = 6;
		int down = cols / 15000;
		down = down > 1 ? down : 1;
		float* sm = (float*)malloc((rows-1) * up * sizeof(float));
		int sms = (rows-1) * up;
		//glEnable(GL_LINE_SMOOTH);
		glLineWidth(1.f);
		//waveforms cover an approximately constant area.
		//want to mantain same level of brightness..
		float alpha = 100 / ((float)cols / (float)down);
		alpha = alpha > 0.7 ? 0.7 : alpha;
		alpha = alpha < 0.01 ? 0.01 : alpha;
		glColor4f(0.8f, 0.6f, 0.5f, alpha);
		glBegin(GL_LINE_STRIP);
		for(i = 0; i< cols; i += down) {
			glVertex2f(-1.f, -1.f);
			for(j=0; j < rows-1; j++) {
				for(k=0; k<up; k++) {
					sm[j*up+k] = (d[i/2*rows + j]*(up-k) + d[i/2*rows + j+1]*k)/up;
				}
			}
			// now need to apply some smoothing based on derivatives?
			for(k=0; k < up*2; k++) {
				//forwards pass.
				for(j=0; j < sms-2; j++) {
					float slope = sm[j+1] - sm[j];
					float slope2 = sm[j+2] - sm[j+1];
					sm[j+1] += 0.1 * (slope2 - slope);
				}

				//backwards pass.
				for(j=sms-1; j >= 2; j--) {
					float slope = sm[j-1] - sm[j];
					float slope2 = sm[j-2] - sm[j-1];
					sm[j-1] += 0.1 * (slope2 - slope);
				}
			}
			for(j=0; j < sms; j++) {
				float x = (float) j / (float)(sms - 1);
				x -= 0.5f;
				x *= 2.f;
				float y = sm[j];
				y -= min;
				y /= (max - min);
				y -= 0.5f;
				y *= 1.9f;
				glVertex2f(x,y);
			}
			glVertex2f(1.f, -1.f);
		}
		glEnd();
		free(sm);
	}
	// glDisable(GL_LINE_SMOOTH);
	/* draw unit square polygon

	glBegin(GL_POLYGON);
	 	glVertex2f(-0.5, -0.5);
	 	glVertex2f(-0.5, 0.5);
	 	glVertex2f(0.5, 0.5);
	 	glVertex2f(0.5, -0.5);
	glEnd();
	*/
	/* flush GL buffers */

	glFlush();
	//save a screenshot.
	if(g_frame == 0) {
		unsigned char* px = (unsigned char*)malloc(500*500*3);
		glReadPixels(0,0,500,500,GL_RGB, GL_UNSIGNED_BYTE, (GLvoid*)px);
		writeImage("test.png", 500, 500, px, "waveform");
		free(px);
		//glutLeaveMainLoop();
		sleep(1);
		exit(0);
	}
	g_frame ++;
}


void init()
{
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE); //GL_ONE = awesome fire shape.
	/* set clear color to black */

	/* 	glClearColor (0.0, 0.0, 0.0, 0.0); */
	/* set fill  color to white */

	/* 	glColor3f(1.0, 1.0, 1.0); */

	/* set up standard orthogonal view with clipping */
	/* box as cube of side 2 centered at origin */
	/* This is default view and these statement could be removed */

	/* glMatrixMode (GL_PROJECTION);
	glLoadIdentity ();
	glOrtho(-1.0, 1.0, -1.0, 1.0, -1.0, 1.0);  */
}

int main(int argc, char** argv)
{
	if(argc != 2) {
		printf("usage: simple waveforms.mat\n");
		exit(0);
	}
	mat_t* mfid = Mat_Open(argv[1], MAT_ACC_RDONLY);
	if (mfid == NULL) {
		fprintf(stderr,"Error opening MAT file \"%s\"!\n",argv[1]);
	}
	g_wf = Mat_VarReadNext(mfid);
	printf(" incoming matrix %zu by %zu\n", g_wf->dims[0],g_wf->dims[1]);
	Mat_Close(mfid);
	/* Initialize mode and open a window in upper left corner of screen */
	/* Window title is name of program (arg[0]) */

	/* You must call glutInit before any other OpenGL/GLUT calls */
	glutInit(&argc,argv);
	glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
	glutInitWindowSize(500,500);
	glutInitWindowPosition(0,0);
	glutCreateWindow("simple");
	glutDisplayFunc(display);
	init();
	glutMainLoop();

}
