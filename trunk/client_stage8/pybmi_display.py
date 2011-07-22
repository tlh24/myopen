#!/usr/bin/python
# -*- coding: utf-8 -*-

try:
	from numpy import *
	from numpy.random import *
except ImportError, err:
	try: 
		from Numeric import *
		from RandomArray import *
	except ImportError, err:
		print "This program requires the numpy or Numeric extension, sorry"
		import sys
		sys.exit()
import string, sys
from OpenGL.GL import *
from OpenGL.GLUT import *

class Shape:
	def __init__(self,r,g,b,a):
		self.color = (r,g,b,a)
		self.v = []
		self.loc = [0.0,0.0]
	def translate(self,x,y):
		self.loc[0] = x
		self.loc[1] = y
	def set_color(self,r,g,b,a):
		self.color = [r,g,b,a]
		
	def make_ring(self, inner, outer, n):
		# I was going to do this using map .. too annoying. 
		x = array([0.0]*6*n)
		y = array([0.0]*6*n)
		dt = math.pi*2/n; 
		for t in range(0,n):
			t1 = dt*t
			t2 = dt*(t+1)
			def point(th,r,o):
				x[t*6+o] = r*math.sin(th); 
				y[t*6+o] = r*math.cos(th); 
			point(t1,inner,0)
			point(t1,outer,1)
			point(t2,outer,2)
			#second triangle
			point(t1,inner,3)
			point(t2,outer,4)
			point(t2,inner,5)
		self.v = transpose(array([x,y]))
	
	def make_circle(self,outer, n):
		x = array([0.0]*3*n)
		y = array([0.0]*3*n)
		dt = math.pi*2/n; 
		for t in range(0,n):
			t1 = dt*t
			t2 = dt*(t+1)
			def point(th,r,o):
				x[t*3+o] = r*math.sin(th); 
				y[t*3+o] = r*math.cos(th); 
			point(t1,0    ,0)
			point(t1,outer,1)
			point(t2,outer,2)
		self.v = transpose(array([x,y]))
	
	def draw(self):
		c = self.color
		glColor4f(c[0],c[1],c[2],c[3])
		glPushMatrix()
		glTranslate(self.loc[0],self.loc[1],0.0)
		glVertexPointerd(self.v)
		glEnableClientState(GL_VERTEX_ARRAY)
		glDrawArrays(GL_TRIANGLES, 0, len(self.v))
		glDisableClientState(GL_VERTEX_ARRAY)
		glPopMatrix()

def display(*args):
	global target,cursor
	glClearColor(0.0, 0.0, 0.0, 0.0)
	glClear(GL_COLOR_BUFFER_BIT)
	target.draw()
	cursor.draw()
	glFlush()
	glutSwapBuffers()


def halt():
	pass

def keyboard(*args):
	sys.exit()

def mouse(button, state, x, y):
	global cursor,target,window_size
	# window is always +-1 in height -- aspect ratio may vary.
	w = window_size[0]/2.0
	h = window_size[1]/2.0
	xx = (x-w)/h
	yy = (h-y)/h
	if button == GLUT_LEFT_BUTTON:
		cursor.translate(xx,yy)
	elif button == GLUT_RIGHT_BUTTON:
		target.translate(xx,yy)

def setup_viewport(w,h):
	glMatrixMode(GL_PROJECTION)
	glLoadIdentity()
	ww = (1.0*w)/h
	glOrtho(-1.0*ww, 1.0*ww, -1.0, 1.0, 0.0, 1.0)

def reshape(w, h):
	global window_size
	window_size = [w,h]
	glViewport(0, 0, w, h)
	setup_viewport(w,h)

def main():
	global target,cursor
	glutInit(sys.argv)
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
	glutInitWindowSize(300, 300)
	glutCreateWindow('cupoje 2')
	setup_viewport(300,300)
	glutReshapeFunc(reshape)
	glutDisplayFunc(display)
	glutIdleFunc(display)
	glutMouseFunc(mouse)
	glutKeyboardFunc(keyboard)
	#setup the vertex buffers.
	target = Shape(1.0,1.0,1.0,0.7)
	target.make_ring(0.3, 0.5, 25)
	cursor = Shape(1.0, 1.0, 1.0, 0.8)
	cursor.make_circle(0.2, 25)
	glutMainLoop()

print "Your mother is a sailor."
print "Hit any key to quit."
main()



