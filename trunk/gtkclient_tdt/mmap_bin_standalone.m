% mmap memory.  works okay with the default (java) matlab mmap code. 
m = memmapfile('/tmp/binned', 'Format', {'uint16' [10 194] 'x'}); 
A = m.Data(1).x;
n = 1e4; 
global gtkclient_out gtkclient_in

gtkclient_out = fopen('/tmp/gtkclient_out.fifo', 'r'); 
gtkclient_in = fopen('/tmp/gtkclient_in.fifo', 'w'); 

skip = 0;
prev = 0;
tic();
for i=1:n
	fwrite(gtkclient_in, -1, 'double'); %sample now.
	msg = fread(gtkclient_out, 3, 'uchar');
	if A(1,193) - prev ~= 1
		skip = skip + 1; 
	end
	prev = A(1,193); 
	if 0
		disp([num2str(i) ' ' num2str(A(1,193))]); 
		imagesc(A(:,1:192)/128); 
		ylabel('lag')
		xlabel('neuron'); 
		colormap gray
		drawnow
	end
	dat(:, i) = A(:, 1); 
	time(:,i) = toc(); 
end
d = toc(); 
frame_rate = n/d
skip %skipped frames.

fclose(gtkclient_in); 
fclose(gtkclient_out); 

plot(dat'); 