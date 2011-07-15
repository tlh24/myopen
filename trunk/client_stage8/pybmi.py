#! /usr/bin/python
# -*- coding: utf-8 -*-
# Echo client program
import socket
import spikes_pb2
import sys
import array

class TCPSegmenter:
	def __init__(self):
		self.data = ""
		self.length = 0
	def nextSegment(self,s):
		def toshort(ss):
			ar = array.array('H'); 
			ar.fromstring(ss[0:2])
			return ar[0]
		#returns a string representation of a data segment.
		print "length", self.length, "data", self.data, len(self.data)
		while ((self.length == 0) | (self.length > len(self.data))):
			d = s.recv(1024)
			#print 'Received', repr(d), len(d)
			if self.length == 0:
				self.length = toshort(d)
				print '1 got segment length', self.length
				d = d[2:]
			self.data = "".join([self.data,d])
			print "data length", len(self.data)
		out = self.data[0:self.length]
		self.data = self.data[self.length:]
		if len(self.data) > 1:
			self.length = toshort(self.data)
			self.data = self.data[2:]
			print '2 got segment length', self.length
		else: 
			self.length = 0
		return out

HOST = 'localhost'    # The remote host
PORT = 4343              # The same port as used by the server
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
s.send('Hello, world')
seg = TCPSegmenter()
while True:
	data = seg.nextSegment(s)
	print 'Segmented', repr(data)
s.close()

