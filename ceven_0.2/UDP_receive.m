function dataout = UDP_receive(datasize, peek)
global udp_obj ; 
global udp_data ;  %add to it when we peek! 
if( exist('udp_obj', 'var')
	if(peek)
		disp('UDP_peek!'); 
	   % then get one packet, append to buffer. 
	   dataout = UDP_packet();
	else
		%disp(['UDP_receive size ' num2str(datasize)]); 
		dataout = zeros(datasize, 16); 
		% not enough - get some packets. 
		packets = ceil(datasize/32); 
		n = 0; 
		while(n < packets)
			if(udp_obj.BytesAvailable > 0)
				dataout(n*32+1:n*32+32,:) = UDP_packet(); 
				n = n+1; 
			else 
				pause(0.001); 
			end
		end
		% dataout = UDP_pop(datasize); % since we'll have enough at this point! 
		dataout = dataout(1:datasize, :); % yes throw away some! 
	end
else
	dataout = zeros(datasize, 16); 
end

function data = UDP_packet 
global udp_data; 
global udp_obj; 
data = fread(udp_obj, 1028, 'uchar'); 
data = data(5:end);
data = reshape(data, 2, 512);
data = data(1,:) + (data(2,:)-(floor(data(2,:)/128)*-256))*256;
data = (reshape(data, 16, 32)')/2^15;
% save it while we have it here..
% udp_data = [udp_data ; data]; 

function dataout = UDP_pop(datasize)
global udp_data; 
dataout = udp_data(1:datasize, :); 
% and remove these samples. 
udp_data = udp_data(datasize+1:end, :); 