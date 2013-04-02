% bird_setting_default.m
%
% The bird default parameters are set in this file. 
% These parameters are used in bird_setup.m to initialize the bird, and in
% bird_change_value to set parameter values
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

ON=1; OFF=0;  % "CONSTANTS" (note: one must only use UPPER case when using ON or OFF)

bird.com_port = 'COM1';
bird.baud_rate = 115200;
bird.InputBufferSize = 512*10;  % default is 512, 512*100 allows capture of 5000 single points in 167 seconds
if ~isfield(bird,'nbird')
    bird.nbird = 3;   % number of birds in flock (can be set to one)
end
bird.stream_bunch = 20;  % number of records to read in a bunch during the stream mode
bird.base_add = 240;  % base address from dip switches, set to start at 1
bird.button_mode = OFF;  % button mode
bird.nbytes_rec = 13; % bytes per record for group mode
bird.nbytes_point = bird.nbytes_rec*bird.nbird; % bytes for one point (all birds)
if bird.button_mode==ON
    bird.nbytes_point = bird.nbytes_point + 1;
end

% The following items are set in bird_change_value
bird.hemisphere = 'forward';  % Valid inputs: 'forward', 'aft','upper','lower','left','right'
bird.sample_freq = 103.2969;  % Hz Default=103.2969,
    %Recomended sample frequencies for 60 Hz power line
    % 68.3, 76.2, 86.1, 93, 97.9, 103.3, 109.3, 112.9, 128, 132.8, 136.7, 137.6
bird.DC_Filter = ON;   % Default ON  {ON or OFF}
bird.AC_Wide_Filter = ON;   % Default ON  {ON or OFF}
bird.AC_Narrow_Filter = OFF;   % Default OFF  {ON or OFF}. Use this filter
bird.Sudden_Output_Change_Lock = OFF; % OFF or ON Default is OFF
bird.Error_Mask = 0; % {0,1,3} 0 => stop on error, 1 => pause on error, 3 => continue after error (see p. 77 for details)

% UNITS are METERS AND RADIANS
bird.position_conv_fac = (36.0/32768.0)*2.54/100; % bird conversion factor for meters
bird.angle_conv_fac = (180.0/32768.0)*pi/180; % bird conversion factor for radians
