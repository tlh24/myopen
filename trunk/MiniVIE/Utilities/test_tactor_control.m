function [ status ] = test_tactor_control( pnet_conn, motorid, onoff ) % 0 for mech tactor, 1 for vibration motor 1, 2 for vibration motor 2

error('superceeded by NfuUdp.tactorControl');

return
%onoff = 0 for off, 1 for on

%TEST_TACTOR_CONTROL Summary of this function goes here
%   Detailed explanation goes here

VIB_MOTOR_AMP = 50;
TACTOR_MOTOR_AMP = 300;

tactor_node = 0;
amp = 0;
if (motorid == 0)
    tactor_node = typecast(int32(2), 'uint8');
    if (onoff == 0)
        amp = 0;
    else
        amp = TACTOR_MOTOR_AMP;
    end
elseif (motorid == 1)
    tactor_node = typecast(int32(3), 'uint8');
    if (onoff == 0)
        amp = 0;
    else
        amp = VIB_MOTOR_AMP;
    end
elseif (motorid == 2)
    tactor_node = typecast(int32(4), 'uint8');
    if (onoff == 0)
        amp = 0;
    else
        amp = VIB_MOTOR_AMP;
    end
    
end

period = uint8(100);
dur = typecast(uint16(1000), 'uint8');
curr = typecast(uint16(200), 'uint8');
offset = typecast(int16(0), 'uint8');


tactor_control_Nfu = char( 60, reshape(tactor_node, length(tactor_node),1), period, reshape(amp, length(amp),1), reshape(dur, length(dur),1), reshape(curr, length(curr),1), reshape(offset, length(offset),1));

pnet( pnet_conn, 'write', tactor_control_Nfu );
status = 0;

end

