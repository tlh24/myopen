function [bird] = bird_setup(bird)
%
% Sets up bird for data aquistion
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/2001
%
% Input: bird measurment parameters (see bird_setting_default.m)
%
% Output: bird.bird_port (serial port object)
%
% If one gets an error message "port not availabe"  implement
% instrresest (requires instrument toolbox)
% Make sure to close, delete, and clear serial port when done to avoid this problem



% ************************ Bird Communication Summary

% References to manual 910007-A Rev A. 

% Description of Bird RS232 Interface. Section 4, page 19

% Change Examine Value => Page 68

% If you use a single RS232 to talk to all Birds in flock, 
% then you must preface each RS232 command with the RS232 TO FBB command
% From: page 19 in manual 910007-A Rev A. 

% ************************* Summary Serial port Input/Output Commands using Matlab
%
% Output:
% fwrite => sends serial output by using decimal input
%   e.g. fwrite(bird_port,[6 0]);
% fprintf => sends serial output by using string or ASCII input
% e.g.      fprintf(bird_port,'L'); 
% NOTE: fprintf autotically adds a terminator value at the end of the string. 
% Accordingly, DO NOT use seperate fprintf statements, or fprintf followed by
% fwrite if you want to send a single command
%
% for more info on Matlab's serial port communication see:
% help serial/fprintf.m


ON=1; OFF=0;  % "CONSTANTS"

% reset serial posrt (requires Instrumentation toolbox)
if exist('instrreset')~=0
    instrreset
else
    beep;
    disp('Instrument Toolbox Not Found - Serial Port Not Reset')
end

% setup serial port


% The Bird's 9-pin RS-232C connector is arranged as follows:
% PIN RS232 SIGNAL1 DIRECTION
% 1 Carrier Detect Bird to host
% 2 Receive Data Bird to host
% 3 Transmit Data host to Bird
% 4 Data Terminal Rdy Host to Bird
% 5 Signal Ground Bird to host
% 6 Data Set Ready Bird to host
% 7 Request to Send host to Bird
% 8 Clear to Send Bird to host
% 9 Ring Indicator No Connect
% Notes:
% 1) These are the EIA RS232 signals names. The Bird is configured as Data
% Communication equipment (DCE) and therefore Transmit Data is an input and
% Receive Data is an output.
% 
% RS-232C signal description:
% SIGNAL DESCRIPTION
% Carrier Detect Indicates The Bird is FLYing when high1
% Receive Data Serial data output from The Bird to the host
% Transmit Data Serial data output from the host to The Bird
% Data Terminal Rdy Host data flow control, suspends all data transmission from
% The Bird when low (internally pulled high to +12V).
% Signal Ground Signal reference
% Data Set Ready Indicates The Bird is FLYing when high1
% Request to Send Holds The Bird in standby when high, Bird Flies when low
% Clear to Send Indicates The Bird is FLYing when high1
% Ring Indicator Signal is not used
% Notes:
% 1) These signals are high when The Bird is NOT in the reset (standby) condition.
% There are two ways by which The Bird can be placed in the reset condition:
% when the front panel switch is in Standby, or when the RS232 Request to Send
% signal is high. You can disable the Request to Send reset by removing JPR 18.
% 

bird.bird_port = serial(bird.com_port);
bird_port = bird.bird_port;
set(bird_port,'BaudRate',bird.baud_rate);
set(bird_port,'RequestToSend','off');
set(bird_port,'DataTerminalReady','on');
set(bird_port,'InputBufferSize',bird.InputBufferSize);

% Set timeout for serial read
set(bird_port,'Timeout',0.5);

fopen(bird_port);
pause(.5)

% Change bird paramter values
bird_change_value(bird); 

bird.group_mode = OFF;   % start with mode off (flag to keep track of group mode status)

% Set all birds to Position and Angle Output
if bird.nbird>1    
    for ibird=1:bird.nbird
        fwrite(bird_port,[bird.base_add+ibird 89]); % set to gather position and angles
    end    
else   % single bird operation (no need for base address)
    fprintf(bird_port,'Y'); % set to gather position and angles
end


% Send AutoConfig Command to Master Only (or to single bird)
pause(.3);   % 300 misec delay required before AutoConfig commands (p. 83)
if bird.nbird>1    
    fwrite(bird_port,[bird.base_add+1 80 50 bird.nbird]);  % autoconfig for Master => bird 1
else   % single bird operation (no need for base address)
    fwrite(bird_port,[80 50 bird.nbird]);  % autoconfig for Master => bird 1
end
pause(.3);   % 300 misec delay required after AutoConfig commands (p. 83)
