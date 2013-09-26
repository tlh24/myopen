
hUdp = PnetClass(34520);
hUdp.initialize();

hJoy = JoyMexClass(0);

%%
while StartStopForm
    
    drawnow
    hJoy.getdata();
    
    accelVal = 20*[hJoy.axisVal(3) hJoy.axisVal(4) hJoy.axisVal(2)]
    accel = int32(accelVal*1024*1024);
    % 4 == A, 5, 6
    % 8 == B
    
    B1 = uint32(hJoy.buttonVal(1));
    B2 = uint32(hJoy.buttonVal(4));
    BA = uint32(hJoy.buttonVal(3));
    BB = uint32(hJoy.buttonVal(2));
    BP = uint32(hJoy.buttonVal(5));
    BM = uint32(hJoy.buttonVal(6));
    BH = uint32(hJoy.buttonVal(7));
    BU = uint32(hJoy.buttonVal(8));
    BD = uint32(hJoy.buttonVal(9));
    BL = uint32(hJoy.buttonVal(10));
    BR = uint32(hJoy.buttonVal(11));
    
    
    buttons = uint32(...
        B1*2^0 + B2*2^1 + BA*2^2 + BB*2^3 +...
        BP*2^4 + BM*2^5 + BH*2^6 + BU*2^7 +...
        BD*2^8 + BL*2^9 + BR*2^10);
    buttons
    ir = int32(1*[hJoy.axisVal(1) hJoy.axisVal(2)]*1024*1024);
    
    msg = [
        uint8(hex2dec('de')) ...uint8(hex2dec('00')) ...
        uint8(hex2dec('00')) ...
        uint8(bin2dec('00011')) ...
        typecast(swapbytes(accel),'uint8') ...
        typecast(swapbytes(buttons),'uint8')%typecast(swapbytes(buttons),'uint8') typecast(swapbytes(ir),'uint8')%typecast(swapbytes(buttons),'uint8')
        ]
    hUdp.putData(msg,'127.0.0.1',4432);
end
%%


% UDP dolphin protocol:
%
% IMPLEMENTATION DETAILS:
%
% you send UDP packets to Dolphin like this:
% 0xde -- signature
% 0xXX -- or-ed flags:
% (1<<0) means accelerometer
% (1<<1) means buttons
% (1<<2) means IR
% (1<<3) means nunchuk
% (1<<4) means nunchuk accel data
% if flag&accelerometer:
% 0xXX 0xXX 0xXX 0xXX -- 32bit signed ints in network byte order
% 0xYY 0xYY 0xYY 0xYY -- (s32)(float_value*1024*1024)
% 0xZZ 0xZZ 0xZZ 0xZZ
% if flag&buttons:
% 0xBB 0xBB 0xBB 0xBB -- 32bit int in net byte order. or-ed flags (see UDPWiimote.h for meaning)
% if flags&IR
% 0xXX 0xXX 0xXX 0xXX -- 32bit signed ints in network byte order
% 0xYY 0xYY 0xYY 0xYY -- (s32)(float_value*1024*1024)
% if flags&nunchuk
% 0xBB -- 8bit int flag (c-bit0 and z-bit1 buttons, 1-active)
% 0xXX 0xXX 0xXX 0xXX -- 32bit signed ints in network byte order (analog stick)
% 0xYY 0xYY 0xYY 0xYY -- (s32)(float_value*1024*1024)
% if flags&nunchuk_accel
% 0xXX 0xXX 0xXX 0xXX -- 32bit signed ints in network byte order
% 0xYY 0xYY 0xYY 0xYY -- (s32)(float_value*1024*1024)
% 0xZZ 0xZZ 0xZZ 0xZZ
%
% Dolphin broadcasts it's presence over IPv4.
% Packets are sent to 255.255.255.255 with this format:
% 0xdf -- signature
% 0xXX 0xXX -- 16-bit random number unique per-wiimote
% 0xXX -- wiimote index (from 0 to 3)
% 0xXX 0xXX -- network-order 16-bit unsigned int, the port witch I am advertising
% 0xXX -- display name length (max 255)
% 0xXX ..... the display name (length specified one byte before)
%
