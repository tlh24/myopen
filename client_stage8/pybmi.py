# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gobject
import gtk
from gtk import gdk
import math
import cairo
import random
from multiprocessing import Process, Value, Array, Queue, Manager
import socket
import spikes_pb2
import sys
import array
import collections
import time
from tcpsegmenter import *
import pylab
import time
import jsonpickle # for saving state.

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
pierad = 40
mean_smoothing = 3.0
fr_smoothing = 6.0
g_mean = [10.0, 10.0] # mean firing rate.
plot_thread = None
plot_queue = Queue()

def plot_proc(g_die,cqueue):
	la = -1; 
	while(not g_die.value):
		try:
			la = cqueue.get(True, 1.0)
		except:
			la = None
		if la:
			t = pylab.arange(0.0, 3.0, 0.01)
			a = math.pow(2.0, -1.0*la); 
			integral = math.pi/(4*math.sqrt(a))
			s = t/((t*t*t*t + a)*integral)
			pylab.hold(False)
			pylab.plot(t,s)
			pylab.ion()
			pylab.xlabel('time (s)')
			print "plotting...", la, a
		pylab.draw()
	print "done."

def plot_fr_smoothing(widget):
	global g_dict, g_die, plot_thread, plot_queue
	global fr_smoothing
	a = g_dict['-log2(fr_smoothing)']
	fr_smoothing = a
	plot_queue.put(a)
	print "thread_a_v", a
	if (not plot_thread):
		plot_thread = Process(target=plot_proc,args=(g_die,plot_queue))
		plot_thread.start()

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
			cr.move_to(x*pierad*2+4,y*pierad+pierad/2)
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
				cr.translate(x*pierad*2+pierad/2+pierad*u,y*pierad+pierad/2)
				cr.arc(0,0, pierad/2, 0,2*math.pi); 
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
	global frsock, g_die, g_dict, fr_smoothing, mean_smoothing                                
	if frsock == None:
		frsock = sock_connect('rabbit',4343,g_die)
		#frsock.settimeout(1)
		frsock.setsockopt(socket.SOL_TCP, socket.TCP_NODELAY, 1)
	try:
		a = fr_smoothing
		a = math.pow(2.0, -1.0*a); 
		n = frsock.send(str(a))
	except:
		n = 0
	if(n>0):
		# wait for response. 
		data = ""
		passes = 0
		try:
			while((len(data) < 129*2*2) & (passes < 15)):
				data = "".join([data,frsock.recv(4096)])
				# print 'data length', len(data)
				passes = passes + 1
		except socket.error, msg:
			print "error in rx of update_display:", msg
			data = []
			frsock.close()
			frsock = None
		if len(data) >= 129*2*2:
			ar = array.array('H',[]);
			ar.fromstring(data);
			if((ar[0]!= 2) | (ar[1] != 128)):
				print "wrong data size fr rx!", ar[0], ar[1], passes
			# need to transpose..
			for r in range(0,128):
				firing_rates[0][r] = ar[(r+1)*2+0] / 128.0
				firing_rates[1][r] = ar[(r+1)*2+1] / 128.0
			#compute x and y position.
			targ = [0.0,0.0]
			for ch in range(0,128):
				for u in range(0,2):
					if neuron_group[ch][u] == 1:
						targ[0] += firing_rates[u][ch];
					if neuron_group[ch][u] == 2:
						targ[1] += firing_rates[u][ch];
			#remove mean, adaptively. 
			sm = g_dict["-log10(mean_smoothing)"]
			mean_smoothing = sm
			sm = math.pow(10, -1*sm); 
			for i in range(0,2):
				g_mean[i] = (1-sm)*g_mean[i] + sm*targ[i]
			scale = [1.0,1.0]
			offset = [0.0,0.0]
			scale[0] = g_dict["X scale"]
			scale[1] = g_dict["Y scale"]
			offset[0] = g_dict["X offset"]
			offset[1] = g_dict["Y offset"]
			for u in range(0,2):
				targ[u] = (targ[u] - g_mean[u]) / (g_mean[u] * scale[u])
				targ[u] = targ[u] + offset[u]
			if g_dict['control'] == 'BMI':
				cursV[0] = targ[0] # slightly more atomic.
				cursV[1] = targ[1] # accessed from server thread.
			#probably need to run the game here... 
			if g_dict['task'] == 'random':
				d = cursV[0] - targV[0]
				e = cursV[1] - targV[1]
				d = d*d + e*e
				if d < 0.3:
					targV[0] = random.random()-0.5
					targV[1] = random.random()-0.5
	else:
		frsock.close()
		frsock = None
		most_recent = 0
		last_update = 0
	wind.invalidate_rect(gtk.gdk.Rectangle(0,0,pierad*16,pierad*16), False)
	return True

def expose_event(widget, event):
	global surface
	global selected
	global firing_rates
	global neuron_group
	cr = widget.window.cairo_create()
	cr.set_source_rgb(0.0, 0.09, 0.13); 
	cr.rectangle(0,0,pierad*16,pierad*16)
	cr.fill()
	#draw the firing rates.
	if True:
		cr.set_line_width(1)
		cr.set_source_rgb(0.7, 0.8, 0.2); 
		pr = pierad
		for y in range(0,16):
			for x in range(0,8):
				if firing_rates[0][y*8+x] > 0:
					cr.save()
					cr.move_to(x*pr*2+pr/2,y*pr+pr/2)
					cr.arc(x*pr*2+pr/2,y*pr+pr/2,pr/2,0,2*math.pi*firing_rates[0][y*8+x]/100)
					cr.fill()
					cr.restore()
		cr.set_source_rgb(0.1, 0.8, 0.7); 
		for y in range(0,16):
			for x in range(0,8):
				if firing_rates[1][y*8+x] > 0:
					cr.save()
					cr.move_to(x*pr*2+pr+pr/2,y*pr+pr/2)
					cr.arc(x*pr*2+pr+pr/2,y*pr+pr/2,pr/2,0,2*math.pi*firing_rates[1][y*8+x]/100)
					cr.fill()
					cr.restore()
	#draw selected.
	cr.save()
	cr.set_line_width(4)
	(ch,u) = selected
	cr.set_source_rgb(0.3,0,1); 
	cr.translate((2*(ch%8) + u)*pr+pr/2,(ch/8)*pr+pr/2); 
	cr.arc(0,0,pr/2,0,2*math.pi); 
	cr.close_path()
	cr.stroke()
	cr.restore()
	#copy the surfaces.
	cr.set_source_surface(surface[0], 0, 0)
	cr.paint(); 
	cr.set_source_surface(surface[1], 0, 0)
	cr.paint(); 
	return False

def button_press_event(widget, event):
	# figure out which channel / unit is selected. 
	global selected, neuron_group
	x = int(event.x) / pierad
	y = int(event.y) / pierad
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
	ng2 = 0
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
	global firing_rates, frsock, targV, cursV, juiceV, touchV
	global g_die, drawing_area, group_radio_buttons
	global g_dict # shared state.
	global neuron_group, selected, pierad, mean_smoothing, fr_smoothing
	
	#first order of business is to read in state. 
	fil = None
	try:
		fil = open('pybmi_state.json','r')
		p = jsonpickle.decode(fil.read())
		neuron_group = p['neuron_group']
		selected = p['selected']
		pierad = p['pierad']
		mean_smoothing = p['mean_smoothing']
		fr_smoothing = p['fr_smoothing']
	except:
		print "failed to read prefs!"
		if fil: 
			fil.close()
			
	#manage the shared dictionary. 
	manager = Manager()
	g_dict = manager.dict()
	
	# next is to make the window. 
	window = gtk.Window()
	window.set_size_request(800, 480)
	window.connect('delete-event', gtk.main_quit)

	vpaned = gtk.HPaned()
	vpaned.set_border_width(5)
	window.add(vpaned)

	sw = gtk.ScrolledWindow()
	sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
	vpaned.add2(sw)
	
	drawing_area = gtk.DrawingArea()
	drawing_area.set_size_request(pierad*16, pierad*16)
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
	frame = make_radio('neuron_group', ['None','X','Y'], 0, radio_event)
	vbox_p.add(frame)

	def mk_scale(lbl,mn,mx,init,callback=lambda x:x):
		frame = gtk.Frame(lbl)
		vbox_p.add(frame)
		vb = gtk.VBox(False,0)
		frame.add(vb)
		widget = gtk.HScale()
		widget.set_range(mn, mx)
		widget.set_size_request(200, -1)
		widget.set_digits(2); 
		widget.set_value(init)
		g_dict[lbl] = init
		vb.add(widget)
		adj = widget.get_adjustment()
		def read_value(widget):
			g_dict[lbl] = widget.value #closure
			callback(widget)
		adj.connect("value_changed", read_value); 
		return vb
		
	mk_scale("X scale",0.01,4,2.5)
	mk_scale("X offset",-1,1,0)
	mk_scale("Y scale",0.01,4,2)
	mk_scale("Y offset",-1,1,0)
	mk_scale("-log10(mean_smoothing)",0,5,mean_smoothing)
	frame = mk_scale("-log2(fr_smoothing)",-3,10,fr_smoothing, plot_fr_smoothing)
	# button = gtk.Button("plot!")
	# button.connect("clicked", plot_fr_smoothing, 0)
	# frame.add(button)
	
	# add controls for the game. 
	frame = make_radio('control', ['manual','BMI'], 0, lambda x,y:x)
	vbox_p.add(frame)
	frame = make_radio('task',['left/right','4 target stereotyped','random'], 0, lambda x,y:x)
	vbox_p.add(frame)
	
	
	#start sock_thread.
	g_die = Value('b',False)
	frsock = None

	targV = Array('d',[0.0]*2)
	cursV = Array('d',[0.0]*2)
	juiceV = Value('b',False)
	touchV = Value('b',False)
	#start server_thread (remote head)
	p2 = Process(target=server_thread,args=(g_die,4344,targV,cursV,juiceV,touchV,g_dict))
	p2.start()
	#start server_thread (local head)
	p3 = Process(target=server_thread,args=(g_die,4345,targV,cursV,juiceV,touchV,g_dict))
	p3.start()
	
	gobject.timeout_add(10, update_display)

	window.show_all()
	gtk.main()
	g_die.value = True
	p2.join()
	p3.join()
	fil = open('pybmi_state.json','w')
	try:
		p = {}
		p['neuron_group'] = neuron_group
		p['selected'] = selected
		p['pierad'] = pierad
		p['mean_smoothing'] = mean_smoothing
		p['fr_smoothing'] = fr_smoothing
		fil.write(jsonpickle.encode(p))
	except:
		print "failed to write prefs!"
	fil.close()
	
def radio_event(widget, btn_number):
	global neuron_group,selected,drawing_area
	if widget.get_active():
		(ch,u) = selected
		neuron_group[ch][u] = btn_number
		configure_event(drawing_area,None); 
		
def make_radio(name, labels, initialSelected, callback):
	global g_dict
	frame = gtk.Frame(name)
	vbox = gtk.VBox(False, 0); 
	frame.add(vbox)
	group_radio_buttons=[]
	def radioEvent(widget, btn_number):
		if widget.get_active():
			g_dict[name] = labels[btn_number]
			print name, btn_number
			callback(widget,btn_number)
	for a in range(0,len(labels)):
		if len(group_radio_buttons) == 0:
			widget = None #first button with none group
		else:
			widget = but #additional buttons with belong to the group of the first button
		but = gtk.RadioButton(group=widget)
		but.set_label(labels[a])
		but.connect("clicked", radioEvent, a)
		vbox.pack_start(but, True, True)
		group_radio_buttons.append(but)
	group_radio_buttons[initialSelected].set_active(True)
	g_dict[name] = labels[initialSelected]
	return frame
	
            
def server_thread(die,port,targV,cursV,juiceV,touchV,g_dict):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	# turn on socket re-use (in the case of rapid restarts)
	s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); 
	s.bind(("",port))
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
			print port, " connected to by ", addr
			seg = TCPSegmenter()
			while (not die.value) & sopen:
				#first write out commands (if any)
				pb = spikes_pb2.Display_msg()
				map((lambda x: pb.cursor.append(x)),cursV)
				# print cursV[0], cursV[1]
				map((lambda x: pb.target.append(x)),targV)
				pb.juicer = juiceV.value
				pb.touch = touchV.value
				try:
					seg.writeSegment(conn, pb.SerializeToString())
				except:
						sopen = False
						print port, " could not write segment to client"
				if sopen:
					# get some feedback. 
					pb = spikes_pb2.Display_msg()
					try:
						data = seg.nextSegment(conn)
					except:
						data = None
					if data:
						pb.ParseFromString(data)
						if pb.HasField('manual'):
							if pb.manual and (g_dict['control'] == 'manual'):
								if len(pb.cursor) > 0:
									cursV[0] = pb.cursor[0]
									cursV[1] = pb.cursor[1]
						if pb.HasField('touch'):
							touchV.value = pb.touch
							#print port, "touch", touchV.value
					else:
						print port, " no data from the display client."
			print port," display connection closed"
			conn.close()

if __name__ == '__main__':
    main()