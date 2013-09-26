%% Active Control

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

%% Step 1: Setup Input Device
% SignalSource = Inputs.SignalSimulator();
% SignalSource = Inputs.UsbDaq('mcc','0');
SignalSource = Inputs.DaqHwDevice('nidaq','Dev2');

SignalSource.addfilter(Inputs.HighPass());
SignalSource.addfilter(Inputs.LowPass());
SignalSource.addfilter(Inputs.Notch());
SignalSource.NumSamples = 2000;
SignalSource.initialize();

%% Optional Step, preview signals. Close window when finished viewing
GUIs.guiSignalViewer(SignalSource); % <-- Use this to visualize signals

%% Step 3: Setup Classifier, Select Channels in use
SignalClassifier = SignalAnalysis.Lda();
SignalClassifier.setActiveChannels(1:8);  % <-- Update active channels
SignalClassifier.NumMajorityVotes = 0;
SignalClassifier.initialize();

SignalClassifier.uiEnterClassNames

%% Step 4: Setup TrainingInterface
TrainingInterface = PatternRecognition.SimpleTrainer();

%% Step 4a: Collect New Data
TrainingInterface.NumRepetitions = 4;  % <-- Adjust (2 to 3 typical)
TrainingInterface.ContractionLengthSeconds = 2; % <-- Time to hold contraction (avoid muscle fatigue)
TrainingInterface.DelayLengthSeconds = 3; % <-- Recovery Time in seconds between contractions

TrainingInterface.initialize(SignalSource,SignalClassifier);
TrainingInterface.collectdata();

%% Step 4b: Load Saved Data
TrainingInterface.loadTrainingData();

%% Step 5: Train the classifier
SignalClassifier.TrainingData = TrainingInterface.getFeatureData;
SignalClassifier.TrainingDataLabels = TrainingInterface.getClassLabels;
SignalClassifier.train();
SignalClassifier.computeError();

%% Step 6: Send data to MSMS for visualization
hMSMS = Scenarios.MSMS_ADL.MsmsDisplayScenario(SignalSource,SignalClassifier);
isLeftSide = 1;   % <---- Use this parameter to select Left=1/Right=0
hMSMS.initialize(isLeftSide);

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

