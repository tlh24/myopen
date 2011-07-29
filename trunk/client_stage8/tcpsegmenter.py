# -*- coding: utf-8 -*-
import array, socket, time
from multiprocessing import Value

#utility function for connecting to a server robustly.
def sock_connect(host, port, die):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	discon = True
	print "waiting..."
	while(discon & (not die.value)):
		try:
			s.connect((host, port))
		except socket.error, msg:
			print msg
			time.sleep(1.0)
			continue
		discon = False
	print "connected."
	s.settimeout(0.1)
	return s

class TCPSegmenter:
	def __init__(self):
		self.data = ""
		self.length = 0
	def nextSegment(self,s):
		def toshort(ss):
			ar = array.array('H'); 
			ar.fromstring(ss[0:2])
			return ar[0]
		#print "length", self.length, "data", self.data, len(self.data)
		passes = 0
		out = None
		while ((self.length == 0) | (self.length > len(self.data))) & (passes < 5):
			try:
				d = s.recv(4096)
			except:
				d = ""
			passes = passes+1
			# print 'passes', passes
			if len(d) > 1:
				# print 'Received', repr(d), len(d)
				if self.length == 0:
					self.length = toshort(d)
					#print '1 got segment length', self.length
					d = d[2:]
				self.data = "".join([self.data,d])
		if len(self.data) > 0:
			out = self.data[0:self.length]
			self.data = self.data[self.length:]
		if len(self.data) >= 2:
			self.length = toshort(self.data)
			self.data = self.data[2:]
			#print '2 got segment length', self.length
		else: 
			self.length = 0
		return out
		
	def writeSegment(self,s,msg):
		ar = array.array('H')
		ar.append(len(msg))
		s.send(ar.tostring() + msg)