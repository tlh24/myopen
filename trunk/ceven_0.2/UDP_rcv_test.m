tic;
samples = 0; 
while(1)
	UDP_receive(512,0); 
	samples = samples + 512; 
	rate = samples / toc(); 
	disp(rate); 
end