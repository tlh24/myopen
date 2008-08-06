% Create a UDP object
try
	UDP_close(); 
catch
end
global udp_obj udp_data tcpip_obj; 

tcpip_obj  = tcpip('192.168.1.107',80);
udp_data = []; 
udp_obj = udp('192.168.1.107',4341,'LocalPort', 4340,'InputBufferSize',1028,'Terminator','');
%
fopen(udp_obj);
disp('UDP_setup!');
try
	fclose(tcpip_obj); 
catch
end
pause(0.1); 
fopen(tcpip_obj);
fprintf(tcpip_obj,'POST\r\ndata_stream=Enable');
disp('Data Stream Enabled on Myopen')
fclose(tcpip_obj); 