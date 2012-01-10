% One time setup of directories
% restoredefaultpath
clc
% addpath('c:\usr\MiniVIE')
% addpath('c:\usr\MiniVIE\Utilities\')
addpath('c:\usr\myopen\MiniVIE')
addpath('c:\usr\myopen\MiniVIE\Utilities\')
% addpath('C:\usr\WRAMC VIE Code')
%run('C:\usr\Common\addpath_Common.m');
run('C:\usr\RP2009\VRE\Common\addpath_Common.m');
disp('Setup Done');

%% Setup and load ADL file
obj = Scenarios.MSMS_ADL.EmgAdl;
% Comment out one of these lines to either interactively load or specify files
% setMotionFile(obj);  % interactive load
% setMotionFile(obj,'C:\MSMS\MSMS Beta 0.9.1\Sample Models\WRAMC_Model\Data');  %(exclude file extensions)
setMotionFile(obj,'C:\MSMS\Sample Models\WRAMC_Model\Data','LeftArmRun1'); %(exclude file extensions)

initialize(obj)
obj.ActiveChannels = [1:8 ]; % Note HW channels are 0-based
disp('Ready')

%% Preview the EMG Data (optional)
obj.preview;

%% Start the motions (save prompt at end)
start(obj.hDaq);


%% Read file and plot
load(uigetfile('*.dataLog'),'-mat')

clf

s1 = subplot(3,1,1);
title('Class Number');
plot(classTime,classLabels,...
    broadcastLog.BroadcastTime,broadcastLog.BroadcastTag);
ylim([min(classLabels)-1 max(classLabels)+1 ])
ylabel('Class #');

s2 = subplot(3,1,2);
title('EMG Data');
plot(emgTime,emgData(:,activeChannels));
%plot(emgTime,emgData(:,1:7));
ylabel('EMG, Volts');

s3 = subplot(3,1,3);
title('Joint Angles');
plot(broadcastLog.BroadcastTime,broadcastLog.BroadcastAngles);
ylabel('Angle, Degrees');

xlabel('Time, sec');

%% Pan Plot
tStart = 17;
tRange = 1; %sec
xlim(s1,[tStart tStart+tRange]);
xlim(s2,[tStart tStart+tRange]);
xlim(s3,[tStart tStart+tRange]);

