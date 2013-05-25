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

%%
hUdp = PnetClass(12345,4432,'127.0.0.1');
hUdp.initialize()

%%
accel = single([0 0 0]);
buttons = uint32(0);
ir = single([0 0 0 0]);
msg = [
uint8(hex2dec('de')) ...
uint8(bin2dec('00010')) ...
typecast(accel,'uint8') ...
typecast(buttons,'uint8') ...
typecast(ir,'uint8') ...
]

%%
buttons = uint32(11);
ir = single([0 0 0 0]);

msg = [
uint8(hex2dec('de')) ...
uint8(bin2dec('00110')) ...
typecast(buttons,'uint8') ...
typecast(ir,'uint8')
]
hUdp.putData(msg)
%%
%%

accel = single([0 0 0]);
buttons = uint32(7);

msg = [
uint8(hex2dec('de')) ...
uint8(hex2dec('00')) ...
uint8(bin2dec('00011')) ...
typecast(accel,'uint8') ...
typecast(buttons,'uint8')
]
hUdp.putData(msg)
%%



%%
tic
while StartStopForm% toc < 0.5
    drawnow
accel = int32([0 0 0]*1024*1024)
buttons = uint32(3);

msg = [
uint8(hex2dec('de')) ...uint8(hex2dec('00')) ...
uint8(hex2dec('00')) ...
uint8(bin2dec('00011')) ...
typecast(swapbytes(accel),'uint8') ...
typecast(buttons,'uint8')%typecast(swapbytes(buttons),'uint8')
]
hUdp.putData(msg,'127.0.0.1',4432);
end
%%
%%
tic
while StartStopForm% toc < 0.5
    drawnow
accel = int32(0*[rand rand rand]*1024*1024)
buttons = uint32(15);
ir = int32(1000*[rand rand]*1024*1024)

msg = [
uint8(hex2dec('de')) ...uint8(hex2dec('00')) ...
uint8(hex2dec('00')) ...
uint8(bin2dec('00111')) ...
typecast(swapbytes(accel),'uint8') ...
typecast(swapbytes(buttons),'uint8'),...%typecast(swapbytes(buttons),'uint8')
typecast(swapbytes(ir),'uint8')%typecast(swapbytes(buttons),'uint8')
]
hUdp.putData(msg,'192.168.1.4 ',4432);
end
%%
