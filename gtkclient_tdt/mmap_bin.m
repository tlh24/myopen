% too slow -- mmap memory.  works well.
m = memmapfile('/tmp/binned', 'Format', {'uint16' [10 194] 'x'}); 
A = m.Data(1).x;

pipe_out = fopen('gtkclient_out', 'r'); 
pipe_in = fopen('gtkclient_in', 'w'); 

skip = 0;
prev = 0;
tic
for i=1:5000
	disp('writing to pipe_in') 
	fwrite(pipe_in, 'go.'); 
	disp('reading from pipe_out'); 
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
skip

fclose(pipe_in); 
fclose(pipe_out); 

% test the connection with bmi5 as well. 
cd('/home/tlh24/sabes-exp-ctrl/bmi5');
m2 = memmapfile('/tmp/bmi5_control', 'Format', {...
        'double' [1 1] 'time';...
        'double' [1 1] 'ticks';...
        'double' [1 1] 'frame';...
        'double' [4 1] 'shape_color';...
        'double' [2 1] 'shape_scale';...
        'double' [2 1] 'shape_trans';...
        'double' [4 1] 'stars_shape_color';...
        'double' [2 1] 'stars_shape_scale';...
        'double' [2 1] 'stars_shape_trans';...
        'double' [2 1] 'stars_shape_vel';...
        'double' [1 1] 'stars_shape_coherence';...
        });
m2.Writable = true; 

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

m2.Data(1).shape_scale = [0.1; 0.1]; 
m2.Data(1).shape_color = [1; 0.7; 1; 1]; 
% m2.Data(1).stars_awesome = 1; 
% m2.Data(1).stars_fade = 0; 
% m2.Data(1).stars_size = 3.0; 
m2.Data(1).stars_shape_coherence = 0.5; 
fwrite(bmi5_in, 'go.'); 
code = fread(bmi5_out, 1, 'int');

n = 1000
tic
for i=1:n
	m2.Data(1).shape_trans = sin(toc()/10)*[sin(toc()); cos(toc())]; 
	m2.Data(1).stars_shape_vel = 0.1*[sin(toc()); cos(toc())]; 
	% tell bmi5 to set these parameters -- it's read is blocking.
	fwrite(bmi5_in, 'go.'); 
	% if bmi5 has to do anything, it will block on this read. 
	% could e.g. wait for vsync.
	msg = fread(bmi5_out, 3, 'uchar');
	disp(['frame ' num2str(m2.Data(1).frame)]); 
	disp(['ticks ' num2str(m2.Data(1).ticks)]); 
end
d = toc()
frame_rate = n/d

fclose(bmi5_in); 
fclose(bmi5_out); 