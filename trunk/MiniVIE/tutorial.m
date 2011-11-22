% MinivVIE tutorial
% 1/25/2011  - At present the MiniVIE is more of a software API, rather
% than a turn-key application.  If you are not already with object oriented
% in Matlab, please review the articles "Object-Oriented Programming" in
% the Matlab User's Guide

%% Step 0: Setup VIE software
% Adding paths is like a #include in formal languages.  add the Utilitiles
% path to gain access.  Note that the Class Packages (indicated by '+' in
% the directory name are part of the MiniVIE directory, so you have
% immediate access when you are in that directory, or if it is on the path
addpath('Utilities');

%% Step 1: Setup Input Device
%  Signal inputs are designed to be modular and must inherit from the
%  Inputs.SignalInput base class.

% SignalSource = Inputs.DaqHwDevice();
SignalSource = Inputs.SignalSimulator();

% If using the simulator, the box that opens up allows you to press keys to
% change the output pattern.  'asdf' selects patterns '1234'

% The device must be initialized prior to use
SignalSource.initialize();

%% Step 2: Add input filters
% Associate filters with the input source
% TODO: This really should be on a per-channel basis
SignalSource.addfilter(Inputs.HighPass());
SignalSource.addfilter(Inputs.LowPass());
SignalSource.addfilter(Inputs.Notch());
% SignalSource.addfilter(Inputs.MAV);
SignalSource.NumSamples = 2000;

%% Optional Step, preview signals. Close window when finished viewing
GUIs.SignalViewer(SignalSource); % <-- Use this to visualize signals

%% Step 3: Setup Classifier, Select Channels in use
SignalClassifier = SignalAnalysis.Classifier();
SignalClassifier.ActiveChannels = 1:8;  % <-- Update active channels
SignalClassifier.initialize();
SignalClassifier.uiEnterClassNames

% Scenario will each have their own inputs which need to be mapped to
% virtual channels.

% E.g. JP app has Up Down Left Right, NM
% AGH has I, M, R
% Breakout has Left Right, NM

%% Step 4: Setup TrainingInterface
TrainingInterface = PatternRecognition.SimpleTrainer();

%% Step 4a: Collect New Data
TrainingInterface.NumRepetitions = 2;  % <-- Adjust (2 to 3 typical)
TrainingInterface.ContractionLengthSeconds = 2; % <-- Time to hold contraction (avoid muscle fatigue)
TrainingInterface.DelayLengthSeconds = 3; % <-- Recovery Time in seconds between contractions

TrainingInterface.initialize(SignalSource,SignalClassifier);
TrainingInterface.collectdata(); % save prompt at end

%% Step 4b: Load Saved Data
TrainingInterface.loadTrainingData();

%% Step 5: Train the classifier
SignalClassifier.TrainingData = TrainingInterface.getFeatureData;
SignalClassifier.TrainingDataLabels = TrainingInterface.getClassLabels;
SignalClassifier.train();
SignalClassifier.computeerror();

%% Step 6: Send data to MSMS for visualization
hMSMS = MsmsDisplayScenario(SignalSource,SignalClassifier);
hMSMS.start

%%
return

%% Cleanup MSMS
hMSMS.stop
hMSMS.close

%% Optional: Adjust the size of output filter (can be done during animation)
SignalClassifier.NumMajorityVotes = 5; % <-- Adjust majority votes [0 15]
%% Optional: Play Breakout (uses wrist flex and extend)
Presentation.MiniBreakout(SignalSource,SignalClassifier)
%% Optional: Guitar Hero Simulator








