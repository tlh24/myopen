% Communications with the tactors are over a USB serial link.
% Command are five-byte messages.
% 
% === Message 1: Vibration command =========================
% Byte 1: (101) % Begin vibration command
% Byte 2: Thumb vibration frequency
% Byte 3: Index finger vibration frequency
% Byte 4: Middle finger vibration frequency
% Byte 5: (102) % End command
% 
% Vibration frequencies are integer values, and 
% must be in the range 0-30 Hz. Note: not all 
% frequencies within the 0-30 Hz range can be 
% accurately produced.
% 
% === Message 2: Amplitude command =========================
% Byte 1: (111) % Begin amplitude command
% Byte 2: Thumb vibration amplitude
% Byte 3: Index finger vibration amplitude
% Byte 4: Middle finger vibration amplitude
% Byte 5: (112) % End command
% 
% Vibration amplitudes are integer values, and 
% must be in the range 0-100 %. 
% 
% === Message 3: Static PWM command ========================
% Byte 1: (201) % Begin static PWM command
% Byte 2: Thumb static PWM
% Byte 3: Index finger static PWM
% Byte 4: Middle finger static PWM
% Byte 5: (202) % End command
% 
% Static PWM values are integer values, and 
% must be in the range 0-100 %. 
% 
% === Message 4: Clear comm. errors  =================
% Byte 1: (150) % Begin/end command
% 
% This message resets the counters of invalid commands
% received by the motor controllers, and is only one byte
% in length.

%% Open serial COM port
hPort = serial('COM9');
set(hPort,'Name','tactors');
set(hPort,'BaudRate',57600);
% set(hPort,'Timeout',0.2);
fopen(hPort);

%% Command thumb tactor with ramping freq.
tic
while toc < 10
    val = ceil(toc * 3);
    fwrite(hPort,uint8([101 val 0 0 102]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command index finger tactor with ramping freq.
tic
while toc < 10
    val = ceil(toc * 3);
    fwrite(hPort,uint8([101 0 val 0 102]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command middle finger tactor with ramping freq.
tic
while toc < 10
    val = ceil(toc * 3);
    fwrite(hPort,uint8([101 0 0 val 102]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command tactors with ramping PWM
tic
while toc < 25
    val = ceil(toc * 4);
    fwrite(hPort,uint8([201 val val val 202]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([201 0 0 0 202]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command tactors with sinusoidal PWM
tic
while toc < 25
    val = -50*cos(toc/2) + 50;
    fwrite(hPort,uint8([201 val val val 202]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([201 0 0 0 202]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command tactors with ramping amplitude
tic
while toc < 25
    val = ceil(toc * 4);
    fwrite(hPort,uint8([111 val val val 112]));
    fwrite(hPort,uint8([101 20 20 20 102]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([111 100 100 100 112]));
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command tactors with sinusoidal amplitude
tic
while toc < 25
    val = -50*cos(toc/2) + 50;
    fwrite(hPort,uint8([111 val val val 112]));
    fwrite(hPort,uint8([101 20 20 20 102]));
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([111 100 100 100 112]));
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%% Command tactors with min & max amplitude
pause(.01);
tic
while toc < 6
    val = ceil(toc * 16.67);
    fwrite(hPort,uint8([111 val val val 112]));
    fwrite(hPort,uint8([121 100 100 100 122]));
    fwrite(hPort,uint8([101 20 20 20 102]));
    fprintf('[%d, 100]\n',val);
    pause(.02);
end
tic
while toc < 6
    val = 100 - ceil(toc * 16.67);
    fwrite(hPort,uint8([111 0 0 0 112]));
    fwrite(hPort,uint8([121 val val val 122]));
    fwrite(hPort,uint8([101 30 30 30 102]));
    fprintf('[0, %d]\n',val);
    pause(.02);
end
for i = 1:10
    fwrite(hPort,uint8([111 100 100 100 112]));
    fwrite(hPort,uint8([101 0 0 0 102]));
    pause(.02);
end
fwrite(hPort,uint8(150));

%%
fclose(hPort);
clear hPort