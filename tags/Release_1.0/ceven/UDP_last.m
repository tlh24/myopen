function data = UDP_last()
global udp_obj; 
while(udp_obj.BytesAvailable == 0)
	pause(0.01); 
end
while(udp_obj.BytesAvailable > 0)
    data = fread(udp_obj, 1028, 'uchar');
    data = fread(udp_obj, 1028, 'uchar'); 
    data = data(5:end);
    data = reshape(data, 2, 512);
    data = data(1,:) + (data(2,:)-(floor(data(2,:)/128)*-256))*256;
    data = (reshape(data, 16, 32)')/2^15;
end