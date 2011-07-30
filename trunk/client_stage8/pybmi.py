# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gobject
import gtk
from gtk import gdk
import math
import cairo
import random
from multiprocessing import Process, Value, Array
import socket
import spikes_pb2
import sys
import array
import collections
import time
from tcpsegmenter import *

class Child:
    widget = None
    x = 0
    y = 0

def set_adjustment_upper(adj, upper, always_emit):
    changed = False
    value_changed = False

    min = max(0.0, upper - adj.page_size)

    if upper != adj.upper:
        adj.upper = upper
        changed = True

    if adj.value > min:
        adj.value = min
        value_changed = True

    if changed or always_emit:
        adj.changed()
    if value_changed:
        adj.value_changed()

def new_adj():
    return gtk.Adjustment(0.0, 0.0, 0.0,
                          0.0, 0.0, 0.0)

wind = None
pixmap = None
surface = [None]*2
# firing rates need to be shared between threads.
# python likes to initialize by reference -- must follow the format below.
#firing_rates = [[Value('d',0.0) for unit in range(0,2)] for chan in range(128)]
firing_rates = [None, None]
firing_rates[0] = Array('d', [0.0]*128)
firing_rates[1] = Array('d', [0.0]*128)
neuron_group = [[0 for col in range(2)] for row in range(128)]
selected = (0,0)

def configure_event(widget, event):
	global wind
	global pixmap
	global surface
	global neuron_group
	
	wind = widget.window
	width, height = wind.get_size()

	surface[0] = cairo.ImageSurface(cairo.FORMAT_ARGB32, width, height)
	for y in range(0,16):
		for x in range(0,8):
			for u in range(0,2):
				firing_rates[u][y*8+x] = 0.0; 
		
	# overlay the text.
	surface[1] = cairo.ImageSurface(cairo.FORMAT_ARGB32, width, height)
	cr = cairo.Context(surface[1])
	cr.select_font_face('sans-serif')
	cr.set_font_size(12)
	cr.set_line_width(1)
	cr.set_source_rgb(1,1,1)
	group_labels = ["","x","y"]
	for y in range(0,16):
		for x in range(0,8):
			cr.move_to(x*64+4,y*32+16)
			cr.show_text(str(y*8+x))
			for u in range(0,2):
				cr.save()
				cr.new_path()
				ng = neuron_group[y*8+x][u]
				if ng == 0:
					cr.set_source_rgb(0.5,0.5,0.5)
				if ng == 1:
					cr.set_source_rgb(1,0,0)
				if ng == 2:
					cr.set_source_rgb(0,1,0)
				cr.translate(x*64+16+32*u,y*32+16)
				cr.arc(0,0, 16, 0,2*math.pi); 
				cr.close_path()
				cr.stroke(); 
				cr.set_source_rgb(1,1,1)
				cr.restore()
				# cr.move_to(x*64+14+32*u,y*32+24)
				# cr.show_text(group_labels[neuron_group[y*8+x][u]])
	update_display()
	return True
	
def update_display():
	# get data from gtkclient.
	global frsock, g_die, bmi_sliders
	if frsock == None:
		frsock = sock_connect('rabbit',4343,g_die)
		#frsock.settimeout(1)
		frsock.setsockopt(socket.SOL_TCP, socket.TCP_NODELAY, 1)
	n = frsock.send('hello\r\n')
	if(n==7):
		# wait for response. 
		data = ""
		passes = 0
		try:
			while((len(data) < 129*8*2) & (passes < 15)):
				data = "".join([data,frsock.recv(4096)])
				# print 'data length', len(data)
				passes = passes + 1
		except socket.error, msg:
			print msg
			data = []
			frsock.close()
			frsock = None
		if len(data) >= 129*2*8:
			ar = array.array('d',[]);
			ar.fromstring(data);
			if((ar[0]!= 2.0) | (ar[1] != 128.0)):
				print "wrong data size fr rx!", ar[0], ar[1], passes
			# need to transpose..
			for r in range(0,128):
				firing_rates[0][r] = ar[(r+1)*2+0]
				firing_rates[1][r] = ar[(r+1)*2+1]
			#compute x and y position.
			targ = [0.0,0.0]
			for ch in range(0,128):
				for u in range(0,2):
					if neuron_group[ch][u] == 1:
						targ[0] += firing_rates[u][ch];
					if neuron_group[ch][u] == 2:
						targ[1] += firing_rates[u][ch];
			scale = [1.0,1.0]
			offset = [0.0,0.0]
			scale[0] = bmi_sliders[0].value
			scale[1] = bmi_sliders[2].value
			offset[0] = bmi_sliders[1].value
			offset[1] = bmi_sliders[3].value
			for u in range(0,2):
				targ[u] = targ[u] / scale[u] 
				targ[u] = targ[u] + offset[u]
			targV[0] = targ[0] # slightly more atomic.
			targV[1] = targ[1]
	else:
		frsock.close()
		frsock = None
		most_recent = 0
		last_update = 0
	wind.invalidate_rect(gtk.gdk.Rectangle(0,0,16*32,16*32), False)
	return True

def expose_event(widget, event):
	global surface
	global selected
	global firing_rates
	global neuron_group
	cr = widget.window.cairo_create()
	cr.set_source_rgb(0.0, 0.09, 0.13); 
	cr.rectangle(0,0,512,512)
	cr.fill()
	#draw the firing rates.
	if True:
		cr.set_line_width(1)
		cr.set_source_rgb(0.7, 0.8, 0.2); 
		for y in range(0,16):
			for x in range(0,8):
				if firing_rates[0][y*8+x] > 0:
					cr.save()
					cr.move_to(x*64+16,y*32+16)
					cr.arc(x*64+16,y*32+16,16,0,2*math.pi*firing_rates[0][y*8+x]/100)
					cr.fill()
					cr.restore()
		cr.set_source_rgb(0.1, 0.8, 0.7); 
		for y in range(0,16):
			for x in range(0,8):
				if firing_rates[1][y*8+x] > 0:
					cr.save()
					cr.move_to(x*64+48,y*32+16)
					cr.arc(x*64+48,y*32+16,16,0,2*math.pi*firing_rates[1][y*8+x]/100)
					cr.fill()
					cr.restore()
	#draw selected.
	cr.save()
	cr.set_line_width(4)
	(ch,u) = selected
	cr.set_source_rgb(0.3,0,1); 
	cr.translate((2*(ch%8) + u)*32+16,(ch/8)*32+16); 
	cr.arc(0,0,16,0,2*math.pi); 
	cr.close_path()
	cr.stroke()
	cr.restore()
	#copy the surfaces.
	cr.set_source_surface(surface[0], 0, 0)
	cr.paint(); 
	cr.set_source_surface(surface[1], 0, 0)
	cr.paint(); 
	return False

def draw_brush(widget, x, y):
	x, y = int(x), int(y)
	pixmap.draw_rectangle(widget.get_style().black_gc, True,
							  x-5, y-5, 10, 10)
	widget.queue_draw()

def button_press_event(widget, event):
	# figure out which channel / unit is selected. 
	global selected, neuron_group
	x = int(event.x) / 32
	y = int(event.y) / 32
	ch = x/2 + y*8
	un = x%2
	selected = (ch,un)
	gr = neuron_group[ch][un]
	#group_radio_buttons[gr].set_active(True)
	widget.queue_draw()
	drawing_area.grab_focus() # this so we can get key presses.
	return True
	
def key_press_event(widget, event):
	global drawing_area
	(ch,un) = selected
	ng = neuron_group[ch][un]
	if event.keyval == gtk.keysyms.BackSpace:
		ng2 = 0
	if event.keyval == gtk.keysyms.x:
		ng2 = 1
	if event.keyval == gtk.keysyms.y:
		ng2 = 2
	if ng != ng2:
		neuron_group[ch][un] = ng2
		configure_event(drawing_area,None);
	return True

def motion_notify_event(widget, event):
	if event.is_hint:
		x, y, state = event.window.get_pointer()
	else:
		x = event.x; y = event.y
		state = event.state
	if state & gtk.gdk.BUTTON1_MASK and pixmap != None:
		draw_brush(widget, x, y)
	return True


def main():
	global firing_rates,frsock,targV,cursV,juiceV,touchV
	global g_die, drawing_area, group_radio_buttons, bmi_sliders
	window = gtk.Window()
	window.set_size_request(800, 480)
	window.connect('delete-event', gtk.main_quit)

	vpaned = gtk.HPaned()
	vpaned.set_border_width(5)
	window.add(vpaned)

	sw = gtk.ScrolledWindow()
	sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
	vpaned.add2(sw)

	#layout = Layout()
	#layout.set_size(32*16, 32*16)
	#sw.add(layout)

	#b = gtk.Button('foobar')
	#layout.put(b, 0, 240)
	
	drawing_area = gtk.DrawingArea()
	drawing_area.set_size_request(16*32, 16*32)
	sw.add_with_viewport(drawing_area)
	drawing_area.show()
	
	drawing_area.connect("expose_event", expose_event)
	drawing_area.connect("configure_event", configure_event)
	drawing_area.connect("motion_notify_event", motion_notify_event)
	drawing_area.connect("button_press_event", button_press_event)
	drawing_area.connect("key_press_event", key_press_event)
	drawing_area.set_events(gtk.gdk.EXPOSURE_MASK |
		gtk.gdk.LEAVE_NOTIFY_MASK |
		gtk.gdk.BUTTON_PRESS_MASK |
		gtk.gdk.KEY_PRESS_MASK |
		gtk.gdk.POINTER_MOTION_MASK |
		gtk.gdk.POINTER_MOTION_HINT_MASK)
	drawing_area.set_flags(gtk.CAN_FOCUS) 

	vbox_p = gtk.VBox(False, 0); 
	vpaned.add1(vbox_p); 
	frame = gtk.Frame("grouping")
	vbox_p.add(frame)
	vbox = gtk.VBox(False, 0); 
	frame.add(vbox)
	group_radio_buttons=[]
	labels = ["none","x","y"]
	for a in range(0,3):
		if len(group_radio_buttons) == 0:
			#first button with none group
			widget = None
		else:
			#additional buttons with belong to the group of the first button
			widget = but
		but = gtk.RadioButton(group=widget)
		but.set_label(labels[a])
		but.connect("clicked", radio_event, a)
		vbox.pack_start(but, True, True)
		group_radio_buttons.append(but)
	group_radio_buttons[0].set_active(True)

	def mk_scale(lbl,mn,mx):
		frame = gtk.Frame(lbl)
		vbox_p.add(frame)
		widget = gtk.HScale()
		widget.set_range(mn, mx)
		widget.set_size_request(200, -1)
		frame.add(widget)
		return widget.get_adjustment()
		
	bmi_sliders = []
	bmi_sliders.append(mk_scale("X scale",1,100))
	bmi_sliders.append(mk_scale("X offset",-1,1))
	bmi_sliders.append(mk_scale("Y scale",1,100))
	bmi_sliders.append(mk_scale("Y offset",-1,1))
	
	
	#start sock_thread.
	g_die = Value('b',False)
	frsock = None

	#start server_thread
	targV = Array('d',[0.0]*2)
	cursV = Array('d',[0.0]*2)
	juiceV = Value('b',False)
	touchV = Value('b',False)
	p2 = Process(target=server_thread,args=(g_die,targV,cursV,juiceV,touchV))
	p2.start()
	
	gobject.timeout_add(10, update_display)

	window.show_all()
	gtk.main()
	g_die.value = True
	p2.join()
	
def radio_event(widget, btn_number):
	global neuron_group,selected,drawing_area
	if widget.get_active():
		(ch,u) = selected
		neuron_group[ch][u] = btn_number
		configure_event(drawing_area,None); 
            
def server_thread(die,targV,cursV,juiceV,touchV):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	# turn on socket re-use (in the case of rapid restarts)
	s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); 
	s.bind(('localhost',4344))
	s.listen(1)
	s.settimeout(0.1)
	while (not die.value):
		try:
			conn,addr = s.accept()
		except:
			conn = None
		if conn:
			sopen = True
			conn.settimeout(0.1)
			print "connected to by ", addr
			seg = TCPSegmenter()
			while (not die.value) & sopen:
				#first write out commands (if any)
				pb = spikes_pb2.Display_msg()
				# targV[0] = cursV[0]
				# targV[1] = cursV[1]
				#targV[0] = random.random()
				#targV[1] = random.random()
				juiceV.value = False
				map((lambda x: pb.cursor.append(x)),cursV)
				map((lambda x: pb.target.append(x)),targV)
				pb.juicer = juiceV.value
				try:
					seg.writeSegment(conn, pb.SerializeToString())
				except:
						sopen = False
				if sopen:
					# get some feedback. 
					pb = spikes_pb2.Display_msg()
					data = seg.nextSegment(conn)
					if data:
						pb.ParseFromString(data)
						if pb.HasField('touch'):
							touchV.value = pb.touch
						if len(pb.cursor) > 0:
							cursV = []
							map((lambda x: cursV.append(x)),pb.cursor) 
			print "display connection closed"
			conn.close()

if __name__ == '__main__':
    main()