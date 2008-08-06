global udp_obj ;
global udp_data ; 
global tcpip_obj;

try
	disp('Data Stream Disabled on Myopen')
	fclose(udp_obj);
	delete(udp_obj);
catch end

