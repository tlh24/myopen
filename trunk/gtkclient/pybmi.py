#!/usr/bin/python
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
import traceback
from collections import deque

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
g_file = None
g_time = 0.0
g_juiceOverride = False; 
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
	a = g_dict['fr_smoothing']
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
	y = 16
	labels = ['cursX','cursY','targX','targY']
	for x in range(0,4):
		cr.set_source_rgb(1,1,1)
		cr.move_to(x*pierad+3,y*pierad+pierad/2+4)
		cr.show_text(labels[x])
		cr.save()
		cr.set_source_rgb(0.5,0.5,0.5)
		cr.new_path()
		cr.translate(x*pierad+pierad/2,y*pierad+pierad/2)
		cr.arc(0,0, pierad/2, 0,2*math.pi); 
		cr.close_path()
		cr.stroke(); 
		cr.restore()
	update_display()
	return True
	
def update_display():
	# get data from gtkclient.
	global frsock, g_die, g_dict, fr_scale, g_juiceOverride, g_file 
	global firing_rates
	global g_frhist, g_behavhist
	try:
		a = g_dict['fr_smoothing']
		a = math.pow(2.0, -1.0*a); 
		n = frsock.send(str(a)) # this controls gtkclient.
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
		if len(data) >= 130*2*2:
			ar = array.array('H',[]);
			ar.fromstring(data);
			if((ar[0]!= 2) | (ar[1] != 128)):
				print "wrong data size fr rx!", ar[0], ar[1], passes
			g_time = ar[2] + ar[3]*math.pow(2,16) + ar[4]*math.pow(2,32) + ar[5]*math.pow(2,48);
			g_time = g_time / 1000.0 # transmitted resolution = ms.
			# need to transpose..
			for r in range(0,128):
				firing_rates[0][r] = ar[(r+3)*2+0] / 128.0
				firing_rates[1][r] = ar[(r+3)*2+1] / 128.0
			
		else:
			print "timeout waiting for firing rate data"
	else:
		# print "could not send req to gtkclient."
		if frsock:
			frsock.close()
		frsock = None
		most_recent = 0
		last_update = 0
	#compute x and y position.
	pos = [0.0,0.0]
	nn = [0.0,0.0]
	for ch in range(0,128):
		for u in range(0,2):
			if neuron_group[ch][u] == 1:
				pos[0] += firing_rates[u][ch];
				nn[0] += 1.0; 
			if neuron_group[ch][u] == 2:
				pos[1] += firing_rates[u][ch];
				nn[1] += 1.0; 
	frs = g_dict["fr_scale"];
	if pos[0] > 0:
		pos[0] /= nn[0] * frs; 
	if pos[1] > 0:
		pos[1] /= nn[1] * frs; 
	#individual axis scale and offset.
	scale = [1.0,1.0]
	offset = [0.0,0.0]
	scale[0] = g_dict["X scale"]
	scale[1] = g_dict["Y scale"]
	offset[0] = g_dict["X offset"]
	offset[1] = g_dict["Y offset"]
	for u in range(0,2):
		pos[u] = scale[u] * pos[u]
		pos[u] = pos[u] + offset[u]
		if pos[u] < -1.0:
			pos[u] = -1.0
		if pos[u] > 1.0:
			pos[u] = 1.0
	# print "pos", pos
	if g_dict['control'] == 'BMI':
		cursV[0] = pos[0] # slightly more atomic.
		cursV[1] = pos[1] # accessed from server thread.
	if g_file != None:
		# save data. 
		g_file.write("%f curs %f %f targ %f %f scl %f %f off %f %f fr_scl %f irDiff %f\n" %
			(g_time, cursV[0], cursV[1], targV[0], targV[1], 
			scale[0], scale[1], offset[0], offset[1], frs, g_dict['irDiff'])); 
		g_file.write("targ_sz %f curs_sz %f holdTime %f rewardTime %f\n" %
			(g_dict['targetSize'],g_dict['cursorSize'],g_dict['holdTime'],g_dict['rewardTime']));
		for grp in range(1,3):
			g_file.write("grp%d " % (grp))
			for ch in range(0,128):
				for u in range(0,2):
					if neuron_group[ch][u] == grp:
						g_file.write("%du%d " % (ch, u));
			g_file.write("\n"); 
			g_file.flush(); 
	#threshold irDiff. 
	if g_dict['irDiff'] > 0.5:
		g_dict['bgColor'] = [0.0, 0.0, 0.0, 0.0]
		attention = 1
	else:
		g_dict['bgColor'] = [0.7, 0.5, 0.7, 0.]
		attention = 0
	#probably need to run the game here... 
	d = cursV[0] - targV[0]
	e = cursV[1] - targV[1]
	#if the monkey is not paying attention, disable game..
	d = math.sqrt(d*d + e*e) + 10*(1-attention)
	inside = d < g_dict['targetSize']
	if g_dict['task'] == 'random':
		if inside:
			targV[0] = random.random()-0.5
			targV[1] = random.random()-0.5
	if ((g_dict['task'] == 'left/right') or (g_dict['task'] == '4 target')): #start here.  move to 2d later.
		# do the standard thing: switch statement based on state.
		gs = g_dict['gs']
		dt = time.time() - g_dict['gt']
		if g_juiceOverride:
			gs = 'reward'
			dt = 0
			g_juiceOverride = False
			print "juice override"
		if gs == 'default':
			g_dict['targetAlpha'] = 0.5
			if inside:
				gs = 'hold'
		elif gs == 'hold': 
			g_dict['targetAlpha'] = 0.5 + 0.5*dt/g_dict['holdTime']
			if dt > g_dict['holdTime']:
				gs = 'reward'
				g_dict['nTrials'] = g_dict['nTrials']+1
			if not inside:
				gs = 'default'
		elif gs == 'reward':
			g_dict['targetAlpha'] = 0.75 - 0.5*dt/g_dict['rewardTime']
			if dt > g_dict['rewardTime']:
				gs = 'new target'
		else: #make a new target and transisiton to wait.
			if g_dict['task'] == 'left/right':
				if targV[0] < 0:
					targV[0] = 0.7
				else:
					targV[0] = -0.7
				targV[1] = 0.0
			if g_dict['task'] == '4 target':
				if targV[0] < 0:
					if targV[1] < 0:
						targV[0] = 0.6
					else:
						targV[1] = -0.6
				else:
					if targV[1] < 0:
						targV[1] = 0.6
					else:
						targV[0] = -0.6
			g_dict['targetAlpha'] = 0.5
			gs = 'default'
		#control the juicer.
		if gs == 'reward':
			g_dict['juicer'] = True
		else:
			g_dict['juicer'] = False
		if g_dict['gs'] != gs: #update the state time
			g_dict['gt'] = time.time()
		g_dict['gs'] = gs
		
	# anyway, save the slice if he's paying attention. 
	fr = []
	sum = 0
	for i in range(0,128):
		fr.append(firing_rates[0][i])
		fr.append(firing_rates[1][i])
		sum = sum + firing_rates[0][i] + firing_rates[1][i]
	if sum > 10:
		# last 4 are the behavioral correlates. select them to see correlation...
		fr.append(cursV[0]); 
		fr.append(cursV[1]);
		fr.append(targV[0]);
		fr.append(targV[1]);
		g_frhist.append(fr); 
		g_behavhist.append([cursV[0], cursV[1], targV[0], targV[1], attention]); 
	if len(g_frhist) > 25000:
		g_frhist.popleft()
		g_behavhist.popleft()
	wind.invalidate_rect(gtk.gdk.Rectangle(0,0,pierad*16,pierad*16+18*3), False)
	return True

def expose_event(widget, event):
	global surface
	global selected
	global firing_rates
	global neuron_group
	global g_corrcoef
	cr = widget.window.cairo_create()
	cr.set_source_rgb(0.0, 0.09, 0.13); 
	cr.rectangle(0,0,pierad*16,pierad*16 + 18*3)
	cr.fill()
	(ch,u) = selected
	pr = pierad
	#draw the firing rates.
	if True:
		cr.set_line_width(1)
		cr.set_source_rgb(0.7, 0.8, 0.2); 
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
	#draw other interesting things -- number of trials, irdiff.
	cr.select_font_face('sans-serif')
	cr.set_font_size(12)
	cr.set_line_width(0)
	cr.set_source_rgb(1,1,1)
	cr.move_to(pierad*4+10, pierad*16 + 18)
	cr.show_text("irDiff %f" % g_dict['irDiff']); 
	cr.move_to(pierad*4+10, pierad*16 + 36)
	cr.show_text("nTrials %f" % g_dict['nTrials']); 
	#draw selected.
	cr.save()
	cr.set_source_rgb(0.3,0,1); 
	scx = (2*(ch%8) + u)*pr+pr/2
	scy = (ch/8)*pr+pr/2
	cr.move_to(scx + pr/2, scy)
	cr.translate(scx,scy); 
	cr.set_line_width(5)
	cr.arc(0,0,pr/2,0,2*math.pi); 
	#cr.close_path()
	cr.stroke()
	cr.restore()
	#draw the correlations, if possible. 
	if ch >= 0 and ch < 128+2 and u >= 0 and u < 2: 
		if g_corrcoef != None : 
			for i in range(0,256+4):
				c = g_corrcoef[ch*2+u, i]; 
				if (c > 0.1 or c < -0.1) and (i != ch*2+u):
					red = 0; 
					blue = 0; 
					if c > 0: 
						blue = 1.0
					if c < 0:
						red = 0.7
					cr.set_source_rgb(red, 0.0, blue); # will clamp for us? 
					x = i % 16
					y = i / 16
					cr.save()
					cr.move_to(x*pr+pr/2,y*pr+pr/2)
					radius = math.sqrt(abs(c) * pr * pr / 4.0)
					cr.arc(x*pr+pr/2,y*pr+pr/2,radius,0,2*math.pi)
					cr.fill()
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
	if ch >= 0 and ch < 128 and un >= 0 and un < 2:
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

def calcCorrcoef(widget, msg):
	global g_frhist, g_behavhist, g_corrcoef
	print("length of history %d\n" % len(g_frhist)); 
	a = pylab.zeros((len(g_frhist),256+4))
	i = 0
	for v in g_frhist:
		j=0
		for u in v:
			a[i,j] = u
			j = j+1
		i = i+1
	g_corrcoef = pylab.corrcoef(pylab.transpose(a))

def savehist(widget, msg):
	global g_frhist, g_behavhist, g_corrcoef
	fil = open('g_frhist','w'); 
	for v in g_frhist:
		for u in v:
			fil.write("%d " % u)
		fil.write("\n")
	fil.close()
	fil = open('g_behavhist','w')
	for v in g_behavhist:
		for u in v:
			fil.write("%f " % u)
		fil.write("\n")
	fil.close(); 

def main():
	global firing_rates, frsock, targV, cursV, touchV
	global g_die, drawing_area, group_radio_buttons, g_file
	global g_dict # shared state.
	global neuron_group, selected, pierad, g_juiceOverride
	global g_frhist, g_behavhist, g_corrcoef
	
	#manage the shared dictionary. 
	manager = Manager()
	g_dict = manager.dict()
	inits = ['gt','targetAlpha','cursorAlpha','targetSize','cursorSize','irDiff','nTrials']
	for v in inits:
		g_dict[v] = 0.0
	g_dict['bgColor'] = [0.0,0.0,0.0,0.0]
	#first order of business is to read in state. 
	fil = None
	try:
		fil = open('pybmi_state.json','r')
		p = jsonpickle.decode(fil.read())
		neuron_group = p['neuron_group']
		selected = p['selected']
		pierad = p['pierad']
		d = p['g_dict']
		for k,v in d.iteritems():
			g_dict[k] = v
	except:
		print "failed to read prefs!", sys.exc_info()[0]
		traceback.print_exc(file=sys.stdout)
		g_dict['fr_scale'] = 30.0
		g_dict['fr_smoothing'] = 6.0
		g_dict['gs'] = ''
		if fil: 
			fil.close()
	g_dict['nTrials'] = 0
	# make the history queues. 
	g_frhist = deque(); 
	g_behavhist = deque(); 
	g_corrcoef = None
	# next is to make the window. 
	window = gtk.Window()
	window.set_size_request(890, 760)
	def delete_event(widget, event):
		global g_die
		g_die.value = True
		# gtk.main_quit
		return False
	window.connect('delete_event', delete_event)
	window.connect('delete-event', gtk.main_quit) #why are these different? 

	vpaned = gtk.HPaned()
	vpaned.set_border_width(5)
	window.add(vpaned)

	sw = gtk.ScrolledWindow()
	sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
	vpaned.add2(sw)
	
	drawing_area = gtk.DrawingArea()
	drawing_area.set_size_request(pierad*16, pierad*16+18*3)
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
	#button for connect. 
	def frsock_connect(widget, msg):
		global frsock
		if frsock == None and widget.get_active():
			#can specify a server on the command line. 
			if len(sys.argv) > 1:
				server = sys.argv[1]
			else:
				server = 'localhost'
			print "trying to connect to ", server, " for firing rate data."
			frsock = sock_connect(server,4343,g_die, True)
			#frsock.settimeout(1)
			if frsock:
				frsock.setsockopt(socket.SOL_TCP, socket.TCP_NODELAY, 1)
				widget.set_active(True)
			else:
				widget.set_active(False)
	but = gtk.CheckButton("Connect to gtkclient"); 
	but.connect("toggled", frsock_connect, "connect")
	vbox_p.add(but)
	
	hbox_p = gtk.HBox(False, 0); 
	vbox_p.add(hbox_p); 
	# button for manual juice. 
	def juiceCB(widget, msg):
		global g_juiceOverride
		g_juiceOverride = True;
	but = gtk.Button("Juice"); 
	but.connect("clicked", juiceCB, "Juice"); 
	hbox_p.add(but)
	#button for drain. 
	g_drain= False
	def drainCB(widget, msg):
		global g_drain
		if(widget.get_active()):
			g_drain = True
		else:
			g_drain = False
	but = gtk.CheckButton("Drain")
	but.set_active(False)
	but.connect("toggled", drainCB, "drain")
	hbox_p.add(but)

	
	#frame = make_radio('set_neuron_group', ['None','X','Y'], radio_event, True)
	#vbox_p.add(frame)

	def mk_scale(lbl,mn,mx,init,callback=lambda x:x):
		global g_dict
		frame = gtk.Frame(lbl)
		vbox_p.add(frame)
		vb = gtk.VBox(False,0)
		frame.add(vb)
		widget = gtk.HScale()
		widget.set_range(mn, mx)
		widget.set_size_request(200, -1)
		widget.set_digits(2);
		if lbl in g_dict:
			widget.set_value(g_dict[lbl])
		else:
			widget.set_value(init)
			g_dict[lbl] = init
			print lbl, "not in g_dict?"
		vb.add(widget)
		adj = widget.get_adjustment()
		def read_value(widg):
			g_dict[lbl] = widg.value
			callback(widg)
		adj.connect("value_changed", read_value); 
		return vb
		
	mk_scale("X scale",0.01,10,2.5)
	mk_scale("X offset",-9,9,0)
	mk_scale("Y scale",0.01,10,2)
	mk_scale("Y offset",-9,9,0)
	mk_scale("fr_scale",0,100,30) #units: Hz.
	frame = mk_scale("fr_smoothing",-3,10,6,plot_fr_smoothing)
	
	# add controls for the game. 
	frame = make_radio('control',['manual','BMI'], lambda x,y:x, False)
	vbox_p.add(frame)
	frame = make_radio('task',['left/right','4 target'], lambda x,y:x, True)
	vbox_p.add(frame)
	mk_scale("targetSize",0.0, 1.0, 0.5)
	mk_scale("cursorSize",0.0, 1.0, 0.5)
	mk_scale("holdTime",0.0, 1.0, 0.5)
	mk_scale("rewardTime",0.0, 1.0, 0.5)
	
	#add a button for saving data. 
	def open_file (widget,msg):
		global g_file,g_dict
		chooser = gtk.FileChooserDialog(title=None,action=gtk.FILE_CHOOSER_ACTION_SAVE,
			buttons=(gtk.STOCK_CANCEL,gtk.RESPONSE_CANCEL,gtk.STOCK_OPEN,gtk.RESPONSE_OK))
		response = chooser.run()
		if response == gtk.RESPONSE_OK:
			print chooser.get_filename(), 'selected'
			g_file = open(chooser.get_filename(), "w")
			g_dict['nTrials'] = 0
		chooser.destroy()
	but = gtk.Button("Save data"); 
	but.connect("clicked", open_file, "connect")
	vbox_p.add(but)
	
	# for immediate analysis.
	hbox = gtk.HBox(False, 0); 
	vbox_p.add(hbox); 
	but = gtk.Button("export fr/behav"); 
	but.connect("clicked", savehist, "connect")
	hbox.add(but)
	
	but = gtk.Button("calc corr. mtx"); 
	but.connect("clicked", calcCorrcoef, "connect")
	hbox.add(but)
	
	#start sock_thread.
	g_die = Value('b',False)
	frsock = None

	targV = Array('d',[0.0]*2)
	cursV = Array('d',[0.0]*2)
	touchV = Value('b',False)
	#start server_thread (remote head)
	p2 = Process(target=server_thread,args=(g_die,4344,targV,cursV,touchV,g_dict))
	p2.start()
	#start server_thread (local head)
	p3 = Process(target=server_thread,args=(g_die,4345,targV,cursV,touchV,g_dict))
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
		d = {}
		for k,v in g_dict.items():
			# print k,v
			d[k] = v
		p['g_dict'] = d
		fil.write(jsonpickle.encode(p))
	except:
		print "failed to write prefs!", sys.exc_info()[0]
		traceback.print_exc(file=sys.stdout)
	fil.close()
	if g_file:
		g_file.close()
	
def radio_event(widget, btn_number):
	global neuron_group,selected,drawing_area
	if widget.get_active():
		(ch,u) = selected
		neuron_group[ch][u] = btn_number
		configure_event(drawing_area,None); 
		
def make_radio(name, labels, callback, vert):
	global g_dict
	frame = gtk.Frame(name)
	if vert:
		vbox = gtk.VBox(False, 0); 
	else:
		vbox = gtk.HBox(False, 0); 
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
	index = 0
	if name in g_dict:
		index = next((i for i in xrange(len(labels)) if labels[i] == g_dict[name]), 0)
	else:
		g_dict[name] = labels[index]
	group_radio_buttons[index].set_active(True)
	return frame
	
            
def server_thread(die,port,targV,cursV,touchV,g_dict):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	# turn on socket re-use (in the case of rapid restarts)
	s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); 
	try:
		s.bind(("",port))
		s.listen(1)
		s.settimeout(0.1)
	except:
		print port, "could not bind socket."
		s.close()
		s = None
	local_dict = {}
	while (not die.value) and s:
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
				#print cursV[0], cursV[1]
				map((lambda x: pb.target.append(x)),targV)
				map((lambda x: pb.bgColor.append(x)),g_dict['bgColor'])
				pb.touch = touchV.value
				check = ['cursorSize','targetSize','targetAlpha','juicer']
				for k in check:
					if (not (k in local_dict)) or (local_dict[k] != g_dict[k]):
						exec ('pb.' + k + ' = g_dict[k]') in locals(), globals()
						local_dict[k] = g_dict[k]
						# print "wrote ", k, g_dict[k]
				pb.manual = g_dict['control'] == 'manual'
				try:
					seg.writeSegment(conn, pb.SerializeToString())
				except:
						sopen = False
						print port, "could not write segment to client"
				if sopen:
					# get some feedback. 
					pb = spikes_pb2.Display_msg()
					try:
						data = seg.nextSegment(conn)
					except:
						data = None
					if data:
						pb.ParseFromString(data)
						if g_dict['control'] == 'manual':
							if len(pb.cursor) > 0:
								cursV[0] = pb.cursor[0]
								cursV[1] = pb.cursor[1]
							if pb.HasField('touch'):
								touchV.value = pb.touch
							#print port, "touch", touchV.value
						if pb.HasField('irDiff'):
							g_dict['irDiff'] = pb.irDiff
							# print "irDiff ", pb.irDiff
					else:
						print port, "no data from the display client."
			print port,"display connection closed"
			conn.close()
			local_dict = {}
	print port, "closing socket"
	if s: 
		s.close();

if __name__ == '__main__':
    main()