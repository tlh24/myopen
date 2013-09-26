% Create a UDP object
try
	UDP_close(); 
catch end
global udp_obj ;
global udp_data; 
udp_data = []; 
udp_obj = udp('192.168.1.107',4341,'LocalPort', 4340,'InputBufferSize',1028,'Terminator','');
%
fopen(udp_obj);
disp('UDP_setup!');
