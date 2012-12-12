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

ake 