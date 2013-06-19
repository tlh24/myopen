% mmap memory.  works okay with the default (java) matlab mmap code. 
m = memmapfile('/tmp/binned', 'Format', {'uint16' [10 194] 'x'}); 
A = m.Data(1).x;
n = 200; 
global bmi5_out bmi5_in b5 gtkclient_out gtkclient_in

gtkclient_out = fopen('/tmp/gtkclient_out.fifo', 'r'); 
gtkclient_in = fopen('/tmp/gtkclient_in.fifo', 'w'); 

bmi5_out = fopen('/tmp/bmi5_out.fifo', 'r');
bmi5_in  = fopen('/tmp/bmi5_in.fifo',  'w');

eval(bmi5_cmd('mmap'));

skip = 0;
prev = 0;
tic();
for i=1:n
	b5 = bmi5_mmap(b5); 
	fwrite(gtkclient_in, b5.time_o - 2, 'double');
	msg = fread(gtkclient_out, 3, 'uchar');
	if A(1,193) - prev ~= 1
		skip = skip + 1; 
	end
	prev = A(1,193); 
	if 1
		disp([num2str(i) ' ' num2str(A(1,193))]); 
		imagesc(A(:,1:192) ./ 128 .* 10); 
		ylabel('lag')
		xlabel('neuron'); 
		colormap gray
        %colorbar
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

fclose(bmi5_in); 
fclose(bmi5_out); 
