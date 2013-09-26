% MATLAB supports M-Series, E-Series, and USB hardware from 
% National Instruments with the Data Acquisition Toolbox.  This basic code 
% example shows you how to use MATLAB to acquire and analyze data from 
% National Instrument hardware in 10 commands.  Additional commands you 
% may find useful are included here but commented out.

% Use this command to determine Board IDs in system, if needed
hw = daqhwinfo('nidaq')
hw.InstalledBoardIds
hw.BoardNames

% Create an analog input object using Board ID "Dev6".
ai = analoginput('nidaq','Dev1');

% Data will be acquired from hardware channel 3
addchannel(ai, 3);

% Review the basic configuration of the acquisition by typing 
% the name of the variable.
% ai

% Use this command to see properties that can be configured
% set(ai)

% Use this comment to get a listing of all object properties and 
% their current settings
% get(ai)

% Configure the analog input for single-ended or differential mode
% set(ai,'InputType','SingleEnded');
% set(ai,'InputType','Differential');

% Set the sample rate and samples per trigger
ai.SampleRate = 10000;
ai.SamplesPerTrigger = 10000;

% Start the acquisition
start(ai);

% Wait up to 2 seconds for the acquisition to complete
wait(ai,2); 

% Acquire data into the MATLAB workspace
data = getdata(ai);

% Graphically plot the results
plot(data);

% Clean up
stop(ai);
delete(ai);


