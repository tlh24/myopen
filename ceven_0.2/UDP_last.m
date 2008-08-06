function data = UDP_last(dz, bleed)
global udp_obj; 
% first, bleed whatever buffer may have. 
bc = 0; 
doAnother = 1; 
while 1
	tic(); 
	data = fread(udp_obj, 1028, 'uchar');
	time = toc(); 
	disp(['delta t:' num2str(time)]); 
end
if(bleed)
	while(doAnother || bc < 12)
		if udp_obj.BytesAvailable > 0
			data = fread(udp_obj, 1028, 'uchar');
			disp(['bleed ' num2str(bc)]); 
			doAnother = 1; 
		else
			doAnother = 0; 
		end
		bc = bc + 1; 
		pause(0.001); 
	end
end
% dz should be 128 * 16. 
close all
f = figure; 
frames = 0; 
tic;  
while(1)
	n = 0; 
	while(n<4)
		while(udp_obj.BytesAvailable > 0)
			data = fread(udp_obj, 1028, 'uchar'); 
			data = data(5:end);
			data = reshape(data, 2, 512);
			data = data(1,:) + (data(2,:)-(floor(data(2,:)/128)*-256))*256;
			data = (reshape(data, 16, 32)')/2^15;
			dz(n*32+1:n*32+32, :) = data; 
			n = n+1; 
		end
		if( udp_obj.BytesAvailable == 0)
			pause(0.001); 
		end
	end
	plot(dz); 
	axis([0, 128, 0, 1]); 
	frames = frames + 128; %128 samples
	
	rate = frames / (toc()); 
	disp(['rate: ' num2str(rate)]); 
	drawnow
end