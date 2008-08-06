function UDP_bleed()
global udp_obj; 
time = 0; 
bc = 0; 
while time < 0.032
	tic(); 
	data = fread(udp_obj, 1028, 'uchar');
	time = toc(); 
	% disp(['delta t:' num2str(time)]); 
	bc = bc + 1; 
end
disp(['UDP bled ' num2str(bc * 32 / 1000) ' secs of data']); 