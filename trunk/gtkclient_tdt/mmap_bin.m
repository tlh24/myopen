% too slow -- mmap memory.  works well.
m = memmapfile('/tmp/binned', 'Format', {'uint16' [10 194] 'x'}); 
A = m.Data(1).x;

cd('/home/tlh24/myopen/gtkclient_tdt');
pipe_out = fopen('gtkclient_out', 'r'); 
pipe_in = fopen('gtkclient_in', 'w'); 

skip = 0;
prev = 0;
tic
for i=1:2000
	fwrite(pipe_in, 'go.'); 
	msg = fread(pipe_out, 3, 'uchar');
	disp([num2str(i) ' ' num2str(A(1,193))]); 
	if A(1,193) - prev ~= 1
		skip = skip + 1; 
	end
	prev = A(1,193); 
	if 1
		image(A(:,1:192)/300); 
		xlabel('lag')
		ylabel('neuron'); 
		colormap gray
		drawnow
	end
end
d = toc()
frame_rate = 5000/d
skip %skipped frames.

fclose(pipe_in); 
fclose(pipe_out); 

% test the connection with bmi5 as well. 
cd('/home/tlh24/sabes-exp-ctrl/bmi5');

bmi5_out = fopen('/home/tlh24/sabes-exp-ctrl/bmi5/bmi5_out', 'r'); 
bmi5_in = fopen('/home/tlh24/sabes-exp-ctrl/bmi5/bmi5_in', 'w'); 

% initial settings -- setup a cursor and a starfield.
fwrite(bmi5_in, 'make circle cursor_');
code = fread(bmi5_out, 1, 'int');
msg = char(fread(bmi5_out, code, 'char')')

fwrite(bmi5_in, 'make stars stars_');
code = fread(bmi5_out, 1, 'int');
msg = char(fread(bmi5_out, code, 'char')')

fwrite(bmi5_in, 'make circle target_');
code = fread(bmi5_out, 1, 'int');
msg = char(fread(bmi5_out, code, 'char')')

fwrite(bmi5_in, 'tone'); % tone object, not actual tone.
code = fread(bmi5_out, 1, 'int');
msg = char(fread(bmi5_out, code, 'char')')

fwrite(bmi5_in, 'mmap structure');
code = fread(bmi5_out, 1, 'int');
msg = char(fread(bmi5_out, code, 'char')')
eval(msg); 

m2.Data(1).tone_freq = 440; 
m2.Data(1).tone_pan = 0;
m2.Data(1).tone_scale = 1;
m2.Data(1).tone_duration = 5;

m2.Data(1).cursor_scale = [0.1; 0.1]; 
m2.Data(1).cursor_color = [1; 0.6; 1; 1]; 
m2.Data(1).target_scale = [0.1; 0.1]; 
m2.Data(1).target_color = [1; 1; 0.6; 1]; 

m2.Data(1).stars_coherence = 0.5; 
fwrite(bmi5_in, 'go.'); 
code = fread(bmi5_out, 1, 'int');

n = 2000
tic
for i=1:n
	m2.Data(1).cursor_trans = sin(toc()/4)*[sin(toc()); cos(toc())]; 
	m2.Data(1).target_trans = -1* m2.Data(1).cursor_trans; 
	m2.Data(1).stars_vel = 0.1*[sin(toc()); cos(toc())]; 
	% tell bmi5 to set these parameters -- it's read is blocking.
	fwrite(bmi5_in, 'go.'); 
	% if bmi5 has to do anything, it will block on this read. 
	% could e.g. wait for vsync.
	code = fread(bmi5_out, 1, 'int');
	if(code ~= 0)
		disp('unexpected response from bmi5_out pipe'); 
	end
	disp(['frame ' num2str(m2.Data(1).frame)]); 
	disp(['ticks ' num2str(m2.Data(1).ticks)]); 
end
d = toc()
frame_rate = n/d

fclose(bmi5_in); 
fclose(bmi5_out); 