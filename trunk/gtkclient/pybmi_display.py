#!/usr/bin/python
# -*- coding: utf-8 -*-

hasU3 = True

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
import string, sys, math, socket, spikes_pb2, time
from OpenGL.GL import *
from OpenGL.GLUT import *
from multiprocessing import Process, Value, Array
from tcpsegmenter import *
import time
try:
	import u3
except ImportError, err:
	print "Warning: Labjack driver not installed."
	hasU3 = False

class Shape:
	def __init__(self,r,g,b,a):
		self.color = [r,g,b,a]
		self.v = []
		self.loc = [0.0,0.0]
	def translate(self,x,y):
		self.loc[0] = x
		self.loc[1] = y
	def set_color(self,r,g,b,a):
		self.color = [r,g,b,a]
	def set_alpha(self,a):
		self.color[3] = a
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

class cupoje: 
	def display(self,*args):
		pb = spikes_pb2.Display_msg()
		data = self.seg.nextSegment(self.sock)
		if data:
			pb.ParseFromString(data)
			if len(pb.cursor) == 2:
				self.cursor.translate(pb.cursor[0],pb.cursor[1])
				#print pb.cursor[0],pb.cursor[1]
			if len(pb.target) == 2:
				self.target.translate(pb.target[0],pb.target[1])
			if pb.HasField('juicer'):
				self.juice = pb.juicer
			if pb.HasField('manual'):
				self.manual = pb.manual and (self.du3 != None)
			if pb.HasField('touch'):
				self.touch = pb.touch
			if pb.HasField('cursorSize'):
				self.cursor.make_circle(pb.cursorSize, 25)
			if pb.HasField('targetSize'):
				a = pb.targetSize
				self.target.make_ring(a*0.6, a, 25)
			if pb.HasField('cursorAlpha'):
				self.cursor.set_alpha(pb.cursorAlpha)
			if pb.HasField('targetAlpha'):
				self.target.set_alpha(pb.targetAlpha)
		if self.du3 and self.manual:
			vx = self.du3.getAIN(0)
			vy = self.du3.getAIN(1)
			vt = self.du3.getAIN(2)
			self.touch = vt > 1.25
			print "manual control"
			self.cursor.translate((vx-1.25)/-1.25, (vy-1.25)/-1.25)
		else:
			time.sleep(0.012)
		if self.du3: 
			if self.juice:
				self.du3.configIO(NumberOfTimersEnabled = 1)
				self.du3.getFeedback( u3.Timer0Config(TimerMode = 1, Value = 65535 - 7000) )
				#self.du3.writeRegister(7200, 65535 - 5000)  
			else:
				self.du3.configIO(NumberOfTimersEnabled = 0)
				self.du3.writeRegister(6000 + 4, 0)  #disable juice
		alpha = 0.75
		if self.touch:
			alpha = 1.0
		self.cursor.set_color(1.0,1.0,1.0, alpha)
		glClearColor(0.0, 0.0, 0.0, 0.0)
		glClear(GL_COLOR_BUFFER_BIT)
		self.target.draw()
		self.cursor.draw()
		if data:
			# make a response. 
			pb = spikes_pb2.Display_msg() # new message.
			pb.manual = self.manual
			if self.du3: 
				map((lambda x: pb.cursor.append(x)),self.cursor.get_loc())
				pb.touch = self.touch
			self.seg.writeSegment(self.sock,pb.SerializeToString())
		else:
			# try reconnecting. 
			self.sock = sock_connect(sys.argv[1],self.port,self.die,False)
		#display
		glFlush()
		glutSwapBuffers()

	def keyboard(self,*args):
		self.die.value = True
		sys.exit()
		
	def winclose(self):
		self.die.value = True
		sys.exit()

	def mouse(self,button, state, x, y):
		# window is always +-1 in height -- aspect ratio may vary.
		w = self.window_size[0]/2.0
		h = self.window_size[1]/2.0
		xx = (x-w)/h
		yy = (h-y)/h
		if button == GLUT_LEFT_BUTTON:
			self.cursor.translate(xx,yy)
		elif button == GLUT_RIGHT_BUTTON:
			self.target.translate(xx,yy)

	def setup_viewport(self,w,h):
		glMatrixMode(GL_PROJECTION)
		glLoadIdentity()
		hh = (1.0*h)/w
		ww = 1.0
		glOrtho(-1.0*ww, 1.0*ww, -1.0*hh, 1.0*hh, 0.0, 1.0)
		glBlendFunc(GL_SRC_ALPHA,  GL_ONE_MINUS_SRC_ALPHA);		
		glEnable(GL_BLEND);
		glEnable(GL_LINE_SMOOTH);

	def reshape(self,w, h):
		self.window_size = [w,h]
		glViewport(0, 0, w, h)
		self.setup_viewport(w,h)

	def __init__(self):
		glutInit(sys.argv)
		glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_ALPHA)
		glutInitWindowSize(300, 300)
		glutCreateWindow('cupoje 2')
		self.setup_viewport(300,300)
		glutReshapeFunc(self.reshape)
		glutDisplayFunc(self.display)
		glutIdleFunc(self.display)
		glutMouseFunc(self.mouse)
		glutKeyboardFunc(self.keyboard)
		glutCloseFunc(self.winclose)
		#setup the vertex buffers.
		self.target = Shape(1.0,1.0,1.0,0.7)
		self.target.make_ring(0.3, 0.5, 25)
		self.cursor = Shape(1.0, 1.0, 1.0, 0.8)
		self.cursor.make_circle(0.2, 25)
		# setup the labJack. 
		try:
			self.du3 = u3.U3()
			baseValue = 65535
			self.du3.configIO(FIOAnalog=7,EIOAnalog=7,TimerCounterPinOffset=4,NumberOfTimersEnabled=1)
			self.du3.configTimerClock(TimerClockBase=5, TimerClockDivisor=2) # 12Mhz clock / 2
			# this puts the output around 26Khz -- should be sufficiently far from our recording b/w.
			self.du3.getFeedback( u3.Timer0Config(TimerMode = 1, Value = baseValue) )
			self.du3.writeRegister(7200, baseValue)  
			self.manual = True
		except:
			self.du3 = None
			self.manual = False
		self.touch = False
		#connect to the BMI server.
		if len(sys.argv) < 3:
			print "usage: pybmi_display.py <server> <port>"
			print "example: python pybmi_display.py neuro-nico 4345"
		else:
			self.port = int(sys.argv[2])
			self.die = Value('b',False)
			self.sock = sock_connect(sys.argv[1],self.port,self.die,False)
			self.sock.settimeout(1)
			self.seg = TCPSegmenter()
			self.juice = False
			glutMainLoop()
			self.die = True

c = cupoje()



