#include <matio.h>
#include <GL/glut.h>         /* glut.h includes gl.h and glu.h*/


matvar_t* g_wf;

void display(void){
	/* clear window */
	int i, j;
	 glClear(GL_COLOR_BUFFER_BIT);



	 double* d = (double*)g_wf->data;
	 int rows = g_wf->dims[0];
	 int cols = g_wf->dims[1];
	 float min = 1e8;
	 float max = -1e8;
	 for(i=0; i< rows * cols; i++){
		 float e = (float)d[i];
		 max = max < e ? e : max;
		 min = min > e ? e : min;
	 }
	 //glEnable(GL_LINE_SMOOTH);
	 glLineWidth(1.f);
	 glColor4f(0.8f, 0.6f, 0.5f, 0.01f);
	 glBegin(GL_LINE_STRIP);
	 for(i = 0; i< cols; i++){
		 glVertex2f(-1.f, -1.f);
		 for(j=0; j < rows; j++){
			 float x = (float) j / (float)(rows - 1);
			 x -= 0.5f;
			 x *= 2.f;
			 float r = (float)rand();
			 r /= (float)RAND_MAX;
			 r /= rows * 10;
			 r -= 1.f/(rows * 20.f);
			 x += r; //jitter the x-azis a little bit.
			 float y = d[i*rows + j];
			 y -= min;
			 y /= (max - min);
			 y -= 0.5f;
			 y *= 1.9f;
			 glVertex2f(x,y);
		 }
		 glVertex2f(1.f, -1.f);
	 }
	 glEnd();
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
}


void init(){
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

int main(int argc, char** argv){
	if(argc != 2){
		printf("usage: simple waveforms.mat\n");
		exit(0);
	}
	mat_t* mfid = Mat_Open(argv[1], MAT_ACC_RDONLY);
	g_wf = Mat_VarReadNext(mfid);
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
