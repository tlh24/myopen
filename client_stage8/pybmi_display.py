#!/usr/bin/python
# -*- coding: utf-8 -*-

try:
	import numpy 
except ImportError, err:
	try: 
		from Numeric import *
		from RandomArray import *
	except ImportError, err:
		print "This program requires the numpy or Numeric extension, sorry"
		import sys
		sys.exit()
import string, sys, u3, math, socket, spikes_pb2, time
from OpenGL.GL import *
from OpenGL.GLUT import *
from multiprocessing import Process, Value, Array
from tcpsegmenter import *

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
	def get_loc(self):
		return self.loc
		
	def make_ring(self, inner, outer, n):
		# I was going to do this using map .. too annoying. 
		x = numpy.array([0.0]*6*n)
		y = numpy.array([0.0]*6*n)
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
		self.v = numpy.transpose(numpy.array([x,y]))
	
	def make_circle(self,outer, n):
		x = numpy.array([0.0]*3*n)
		y = numpy.array([0.0]*3*n)
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
		self.v = numpy.transpose(numpy.array([x,y]))
	
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
	global target,cursor,du3,manual,touch,juice,sock,seg
	pb = spikes_pb2.Display_msg()
	data = seg.nextSegment(sock)
	if data:
		pb.ParseFromString(data)
		if len(pb.cursor) == 2:
			cursor.translate(pb.cursor[0],pb.cursor[1])
		if len(pb.target) == 2:
			target.translate(pb.target[0],pb.target[1])
		if pb.HasField('juicer'):
			juice = pb.juicer
		if pb.HasField('manual'):
			manual = pb.manual
	vx = du3.getAIN(0)
	vy = du3.getAIN(1)
	vt = du3.getAIN(3)
	if manual:
		cursor.translate((vx-1.25)/1.25, (vy-1.25)/1.25)
		cursor.set_color(1.0,1.0,1.0, 0.5+vt/5.0)
	touch = vt > 1.25
	glClearColor(0.0, 0.0, 0.0, 0.0)
	glClear(GL_COLOR_BUFFER_BIT)
	target.draw()
	cursor.draw()
	# make a response. 
	pb = spikes_pb2.Display_msg() # new message.
	pb.cursor = cursV
	pb.touch = touchV.value
	seg.writeSegment(sock,pb.ToString())
	#display
	glFlush()
	glutSwapBuffers()

def halt():
	pass

def keyboard(*args):
	global die
	die.value = True
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
	glBlendFunc(GL_SRC_ALPHA,  GL_ONE_MINUS_SRC_ALPHA);		
	glEnable(GL_BLEND);
	glEnable(GL_LINE_SMOOTH);

def reshape(w, h):
	global window_size
	window_size = [w,h]
	glViewport(0, 0, w, h)
	setup_viewport(w,h)

def main():
	global target,cursor,du3,manual,sock,seg
	glutInit(sys.argv)
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_ALPHA)
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
	# setup the labJack. 
	du3 = u3.U3()
	du3.configIO(FIOAnalog=255,EIOAnalog=255); 
	manual = True
	#connect to the BMI server. 
	sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	discon = True
	print "waiting..."
	while(discon):
		try:
			sock.connect(('localhost', 4344))
		except socket.error, msg:
			print msg
			time.sleep(1.0)
			continue
		discon = False
	print "conneted."
	sock.settimeout(0.1)
	seg = TCPSegmenter()
	glutMainLoop()

main()



