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

class Layout(gtk.Container):
    __gsignals__ = dict(set_scroll_adjustments=
                        (gobject.SIGNAL_RUN_LAST, None,
                         (gtk.Adjustment, gtk.Adjustment)))
    def __init__(self):
        self._children = []
        self._width = 100
        self._height = 100
        self._hadj = None
        self._vadj = None
        self._bin_window = None
        self._hadj_changed_id = -1
        self._vadj_changed_id = -1
        gtk.Container.__init__(self)

        if not self._hadj or not self._vadj:
            self._set_adjustments(self._vadj or new_adj(),
                                  self._hadj or new_adj())

    # Public API

    def put(self, widget, x=0, y=0):
        child = Child()
        child.widget = widget
        child.x = x
        child.y = y
        self._children.append(child)

        if self.flags() & gtk.REALIZED:
            widget.set_parent_window(self._bin_window)

        widget.set_parent(self)

    def set_size(self, width, height):
        if self._width != width:
            self._width = width
        if self._height != height:
            self._height = height
        if self._hadj:
            set_adjustment_upper(self._hadj, self._width, False)
        if self._vadj:
            set_adjustment_upper(self._vadj, self._height, False)

        if self.flags() & gtk.REALIZED:
            self._bin_window.resize(max(width, self.allocation.width),
                                    max(height, self.allocation.height))

    # GtkWidget

    def do_realize(self):
        self.set_flags(gtk.REALIZED)

        self.window = gdk.Window(
            self.get_parent_window(),
            window_type=gdk.WINDOW_CHILD,
            x=self.allocation.x,
            y=self.allocation.y,
            width=self.allocation.width,
            height=self.allocation.height,
            wclass=gdk.INPUT_OUTPUT,
            colormap=self.get_colormap(),
            event_mask=gdk.VISIBILITY_NOTIFY_MASK)
        self.window.set_user_data(self)

        self._bin_window = gdk.Window(
            self.window,
            window_type=gdk.WINDOW_CHILD,
            x=int(-self._hadj.value),
            y=int(-self._vadj.value),
            width=max(self._width, self.allocation.width),
            height=max(self._height, self.allocation.height),
            colormap=self.get_colormap(),
            wclass=gdk.INPUT_OUTPUT,
            event_mask=(self.get_events() | gdk.EXPOSURE_MASK |
                        gdk.SCROLL_MASK))
        self._bin_window.set_user_data(self)

        self.set_style(self.style.attach(self.window))
        self.style.set_background(self.window, gtk.STATE_NORMAL)
        self.style.set_background(self._bin_window, gtk.STATE_NORMAL)

        for child in self._children:
            child.widget.set_parent_window(self._bin_window)
        self.queue_resize()

    def do_unrealize(self):
        self._bin_window.set_user_data(None)
        self._bin_window.destroy()
        self._bin_window = None
        gtk.Container.do_unrealize(self)

    def _do_style_set(self, style):
        gtk.Widget.do_style_set(self, style)

        if self.flags() & gtk.REALIZED:
            self.style.set_background(self._bin_window, gtk.STATE_NORMAL)

    def do_expose_event(self, event):
        if event.window != self._bin_window:
            return False
        gtk.Container.do_expose_event(self, event)
        return False

    def do_map(self):
        self.set_flags(gtk.MAPPED)
        for child in self._children:
            flags = child.widget.flags()
            if flags & gtk.VISIBLE:
                if not (flags & gtk.MAPPED):
                    child.widget.map()
        self._bin_window.show()
        self.window.show()

    def do_size_request(self, req):
        req.width = 0
        req.height = 0
        for child in self._children:
            child.widget.size_request()

    def do_size_allocate(self, allocation):
        self.allocation = allocation
        for child in self._children:
            self._allocate_child(child)

        if self.flags() & gtk.REALIZED:
            self.window.move_resize(*allocation)
            self._bin_window.resize(max(self._width, allocation.width),
                                    max(self._height, allocation.height))

        self._hadj.page_size = allocation.width
        self._hadj.page_increment = allocation.width * 0.9
        self._hadj.lower = 0
        set_adjustment_upper(self._hadj,
                             max(allocation.width, self._width), True)

        self._vadj.page_size = allocation.height
        self._vadj.page_increment = allocation.height * 0.9
        self._vadj.lower = 0
        self._vadj.upper = max(allocation.height, self._height)
        set_adjustment_upper(self._vadj,
                             max(allocation.height, self._height), True)

    def do_set_scroll_adjustments(self, hadj, vadj):
        self._set_adjustments(hadj, vadj)

    # GtkContainer

    def do_forall(self, include_internals, callback, data):
        for child in self._children:
            callback(child.widget, data)

    def do_add(self, widget):
        self.put(widget)

    def do_remove(self, widget):
        child = self._get_child_from_widget(widget)
        self._children.remove(child)
        widget.unparent()

    # Private

    def _set_adjustments(self, hadj, vadj):
        if not hadj and self._hadj:
            hadj = new_adj()

        if not vadj and self._vadj:
            vadj = new_adj()

        if self._hadj and self._hadj != hadj:
            self._hadj.disconnect(self._hadj_changed_id)

        if self._vadj and self._vadj != vadj:
            self._vadj.disconnect(self._vadj_changed_id)

        need_adjust = False

        if self._hadj != hadj:
            self._hadj = hadj
            set_adjustment_upper(hadj, self._width, False)
            self._hadj_changed_id = hadj.connect(
                "value-changed",
                self._adjustment_changed)
            need_adjust = True

        if self._vadj != vadj:
            self._vadj = vadj
            set_adjustment_upper(vadj, self._height, False)
            self._vadj_changed_id = vadj.connect(
                "value-changed",
                self._adjustment_changed)
            need_adjust = True

        if need_adjust and vadj and hadj:
            self._adjustment_changed()

    def _adjustment_changed(self, adj=None):
        if self.flags() & gtk.REALIZED:
            self._bin_window.move(int(-self._hadj.value),
                                  int(-self._vadj.value))
            self._bin_window.process_updates(True)

    def _get_child_from_widget(self, widget):
        for child in self._children:
            if child.widget == widget:
                return child
        else:
            raise AssertionError

    def _allocate_child(self, child):
        allocation = gdk.Rectangle()
        allocation.x = child.x
        allocation.y = child.y
        req = child.widget.get_child_requisition()
        allocation.width = req[0]
        allocation.height = req[1]
        child.widget.size_allocate(allocation)

Layout.set_set_scroll_adjustments_signal('set-scroll-adjustments')

wind = None
pixmap = None
surface = [None]*2
# firing rates need to be shared between threads.
firing_rates = [None]*2
firing_rates[0] = Array('d', [0]*128)
firing_rates[1] = Array('d', [0]*128)
selected = (0,0)

def configure_event(widget, event):
	global wind
	global pixmap
	global surface
	
	wind = widget.window
	width, height = wind.get_size()

	surface[0] = cairo.ImageSurface(cairo.FORMAT_ARGB32, width, height)
	for y in range(0,16):
		for x in range(0,8):
			for u in range(0,2):
				firing_rates[u][y*8+x] = 0.0; 
	update_display()
		
	# overlay the text.
	surface[1] = cairo.ImageSurface(cairo.FORMAT_ARGB32, width, height)
	cr = cairo.Context(surface[1])
	cr.select_font_face('sans-serif')
	cr.set_font_size(12)
	cr.set_line_width(1)
	cr.set_source_rgb(1,1,1)
	for y in range(0,16):
		for x in range(0,8):
			cr.move_to(x*64+4,y*32+16)
			cr.show_text(str(y*8+x)); 
			for u in range(0,2):
				cr.save()
				cr.new_path()
				cr.translate(x*64+16+32*u,y*32+16)
				cr.arc(0,0, 16, 0,2*math.pi); 
				cr.close_path()
				cr.stroke(); 
				cr.restore()
	return True
	
def update_display():
	wind.invalidate_rect(gtk.gdk.Rectangle(0,0,16*32,16*32), False)
	return True

def expose_event(widget, event):
	global surface
	global selected
	global firing_rates
	cr = widget.window.cairo_create()
	cr.set_source_rgb(0.10, 0.09, 0.33); 
	cr.rectangle(0,0,512,512)
	cr.fill()
	#draw the fifing rates.
	cr.set_line_width(9)
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
	cr.set_source_rgb(1,0,0); 
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
	global selected
	x = int(event.x) / 32
	y = int(event.y) / 32
	ch = x/2 + y*8
	un = x%2
	selected = (ch,un)
	widget.queue_draw()
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
	global firing_rates
	window = gtk.Window()
	window.set_size_request(300, 300)
	window.connect('delete-event', gtk.main_quit)

	vpaned = gtk.HPaned()
	vpaned.set_border_width(5)
	window.add(vpaned)

	sw = gtk.ScrolledWindow()
	sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
	vpaned.add2(sw)

	layout = Layout()
	layout.set_size(1000, 1000)
	sw.add(layout)

	b = gtk.Button('foobar')
	layout.put(b, 0, 240)
	
	drawing_area = gtk.DrawingArea()
	drawing_area.set_size_request(1000, 1000)
	layout.put(drawing_area)
	drawing_area.show()
	
	drawing_area.connect("expose_event", expose_event)
	drawing_area.connect("configure_event", configure_event)
	drawing_area.connect("motion_notify_event", motion_notify_event)
	drawing_area.connect("button_press_event", button_press_event)
	drawing_area.set_events(gtk.gdk.EXPOSURE_MASK |
		gtk.gdk.LEAVE_NOTIFY_MASK |
		gtk.gdk.BUTTON_PRESS_MASK |
		gtk.gdk.POINTER_MOTION_MASK |
		gtk.gdk.POINTER_MOTION_HINT_MASK)


	vbox = gtk.VBox(False, 0); 
	b = gtk.Button('Leftbar'); 
	vbox.pack_start(b, True, True)
	vpaned.add1(vbox); 
	
	gobject.timeout_add(100, update_display)
	
	#start another thread.
	g_die = Value('b',False)
	p = Process(target = sock_thread, args=(firing_rates, g_die))
	p.start()

	window.show_all()
	gtk.main()
	g_die.value = True
	p.join()

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
		#print "length", self.length, "data", self.data, len(self.data)
		while ((self.length == 0) | (self.length > len(self.data))):
			d = s.recv(4096)
			#print 'Received', repr(d), len(d)
			if self.length == 0:
				self.length = toshort(d)
				#print '1 got segment length', self.length
				d = d[2:]
			self.data = "".join([self.data,d])
			#print "data length", len(self.data)
		out = self.data[0:self.length]
		self.data = self.data[self.length:]
		if len(self.data) > 1:
			self.length = toshort(self.data)
			self.data = self.data[2:]
			#print '2 got segment length', self.length
		else: 
			self.length = 0
		return out

def sock_thread(fr,die):
	HOST = 'localhost'    # The remote host
	PORT = 4343              # The same port as used by the server
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((HOST, PORT))
	seg = TCPSegmenter()
	pb = spikes_pb2.Spike_msg()
	# convolve with a kernel? 
	# have to keep around a list of timestamps. 
	# the python data structure deque seems perfect for this.
	spike_dq = [[collections.deque([])]*2]*128
	most_recent = 0
	last_update = 0
	while (not die.value):
		data = seg.nextSegment(s)
		print 'Segmented', repr(data)
		# convert this to a protocol buffer object.
		pb.ParseFromString(data) # so easy! uau!
		print pb.ts, pb.chan, pb.unit
		if pb.unit >= 0 & pb.unit < 2:
			if pb.chan >= 0 & pb.chan < 128:
				if pb.ts > most_recent:
					most_recent = pb.ts
				spike_dq[pb.chan][pb.unit].appendleft(pb.ts); 
		#update at 100Hz?  (timestamps 10us)
		if(most_recent - last_update)*1e5 > 0.01:
			last_update = most_recent
			a = 1e-3; # sets the width. explore in matlab!
			integral = math.pi/(4*math.sqrt(a))
			for chan in range(0,128):
				for unit in range(0,2):
					d = spike_dq[chan][unit]
					fr = 0; 
					for e in d:
						x = (most_recent - e)/1e5
						#convolve with the function x/(x^4+a)
						#which integrates to pi/(4*sqrt(a))
						y = x/(x^4+0.001)
						y /= integral
						fr += y
					# remove the old spikes.
					if len(d) > 0:
						e = d.pop()
						while len(d) > 0 & (most_recent - e) > 1e5:
							e = d.pop()
						if (most_recent - e) < 1e5:
							d.append(e) #oops should not have removed.
					#update firing rate.
					fr[chan][unit] = fr; 
						
	s.close()

if __name__ == '__main__':
    main()