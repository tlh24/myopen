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
	'double' [1 1] 'frame'; ...
	'double' [1 1] 'ticks'; ... % TDT time!!
	'double' [2 1] 'cursor_position'; ...
	'double' [2 1] 'cursor_size'; ...
	'double' [4 1] 'cursor_color'; ...
	'double' [2 1] 'target_position'; ...
	'double' [2 1] 'target_size'; ...
	'double' [4 1] 'target_color'; ...
	'double' [2 1] 'stars_velocity'; ...
	'double' [1 1] 'stars_coherence'; ...
	'double' [1 1] 'stars_size'; ...
	'double' [1 1] 'stars_awesome'; ...
	'double' [1 1] 'stars_fade'; ...
	'double' [3 1] 'polhemus';  }); 
m2.Writable = true; 

bmi5_out = fopen('/bmi5_out', 'r'); 
bmi5_in = fopen('bmi5_in', 'w'); 

% initial settings. 
m2.Data(1).cursor_size = [0.1; 0.1]; 
m2.Data(1).cursor_color = [1; 1; 1; 1]; 
m2.Data(1).stars_awesome = 1; 
m2.Data(1).stars_fade = 0; 
m2.Data(1).stars_size = 3.0; 
m2.Data(1).stars_coherence = 0.5; 
fwrite(bmi5_in, 'go.'); 
msg = fread(bmi5_out, 3, 'uchar');

n = 5000
tic
for i=1:n
	m2.Data(1).cursor_position = sin(toc()/10)*[sin(toc()); cos(toc())]; 
	m2.Data(1).stars_velocity = 0.1*[sin(toc()); cos(toc())]; 
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