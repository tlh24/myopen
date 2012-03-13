function [pos, ang] = bird_bytes_2_data(bird_bytes,bird)
%
% convert bytes recieved by bird into postion and angle cordinates for a single bird sensor
%
% Input:
%   bird_bytes => bytes gathered in a single record
%   bird => bird settings (structure, see bird_setting_default.m)
%
% Output:
%   pos => X, Y, Z data in meters
%   ang => angles X, Y, Z in radians


% check that start byte is first byte (has 1 in highest bit)
if bitget(bird_bytes(1),8)~=1
    bird_error('First Bird Byte Does Not Have a 1 in highest bit',bird);
else
    bird_bytes(1) = bitset(bird_bytes(1),8,0);  % set msbit to zero for calculations
end

i_lsb=1;  % index to least significant bit
i_msb=2;  % index to most significant bit
if (bitget(bird_bytes(i_msb),8)~=0) || (bitget(bird_bytes(i_lsb),8)~=0) 
    bird_error('Bird Byte Does Not Have a 0 in highest bit',bird);
end
lsb = bitset(bird_bytes(i_lsb),8,0);  % set msb to zero in case it is first byte
msb = bitshift(bird_bytes(i_msb),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    pos_in = -value_bin*bird.position_conv_fac;
else    
    pos_in = value_bin*bird.position_conv_fac;
end
posx_in = pos_in;

lsb = bitset(bird_bytes(3),8,0);  
msb = bitshift(bird_bytes(4),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    pos_in = -value_bin*bird.position_conv_fac;
else    
    pos_in = value_bin*bird.position_conv_fac;
end
posy_in = pos_in;

lsb = bitset(bird_bytes(5),8,0);  % set msb to zero in case it is first byte
msb = bitshift(bird_bytes(6),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    pos_in = -value_bin*bird.position_conv_fac;
else    
    pos_in = value_bin*bird.position_conv_fac;
end
posz_in = pos_in;

pos = [posx_in posy_in posz_in];

%disp([posx_in posy_in posz_in])

lsb = bitset(bird_bytes(7),8,0);  % set msb to zero in case it is first byte
msb = bitshift(bird_bytes(8),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    ang_value = -value_bin*bird.angle_conv_fac;
else    
    ang_value = value_bin*bird.angle_conv_fac;
end
ang_z = ang_value;


lsb = bitset(bird_bytes(9),8,0);  % set msb to zero in case it is first byte
msb = bitshift(bird_bytes(10),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    ang_value = -value_bin*bird.angle_conv_fac;
else    
    ang_value = value_bin*bird.angle_conv_fac;
end
ang_y = ang_value;


lsb = bitset(bird_bytes(11),8,0);  % set msb to zero in case it is first byte
msb = bitshift(bird_bytes(12),7);
value_bin = bitshift(msb+lsb,2);
if bitget(value_bin,16)     % negative number
    value_bin = bitcmp(value_bin,16);
    ang_value = -value_bin*bird.angle_conv_fac;
else    
    ang_value = value_bin*bird.angle_conv_fac;
end
ang_x = ang_value;

ang = [ang_x ang_y ang_z];

% Each record can be up to 32768 positive and negative
