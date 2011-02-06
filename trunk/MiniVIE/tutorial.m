% MinivVIE tutorial
% 1/25/2011  - At present the MiniVIE is more of a software API, rather
% than a turn-key application.  If you are not already with object oriented
% in Matlab, please review the articles "Object-Oriented Programming" in
% the Matlab User's Guide

%% Add Paths
% Adding paths is like a #include in formal languages.  add the Utilitiles
% path to gain access.  Note that the Class Packages (indicated by '+' in
% the directory name are part of the MiniVIE directory, so you have
% immediate access when you are in that directory, or if it is on the path
addpath('Utilities');

%% Create handle to input 
%  Signal inputs are designed to be modular and must inherit from the
%  Inputs.SignalInput base class.

hSignalSource = Inputs.SignalSimulator();
% hSignalSource = Inputs.UsbDaq();

% The device must be initialized prior to use
hSignalSource.initialize();

% If using the simulator, the box that open allows you to press keys to
% change the output pattern.  'asdf' selects patterns '1234'

%% Preview Raw Data
% Verify this by previewing channels 1 to 4.
hSignalSource.preview(1:4)

%% Add filters
% You can also associate filters with the input source
hSignalSource.addfilter(Inputs.HighPass);
hSignalSource.addfilter(Inputs.Notch);
hSignalSource.addfilter(Inputs.LowPass);
% hSignalSource.addfilter(Inputs.MAV);

%% Preview Filterd Data
% Verify this by previewing filtered channels 1 to 4.
hSignalSource.previewFiltered(1:4)

%%

% Scenario will each have their own inputs which need to be mapped to
% virtual channels.

% E.g. JP app has Up Down Left Right, NM
% AGH has I, M, R
% Breakout has Left Right, NM






