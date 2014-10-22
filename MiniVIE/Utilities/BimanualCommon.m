function [ obj ] = BimanualCommon( bimanParams )

obj = MiniVIE;
set(obj.hg.Figure,'Name',bimanParams.guiName);
obj.FilePrefix = bimanParams.filePrefix;

%% Inputs
%h = Inputs.CpchSerial(bimanParams.cpchComPort,hex2dec('FFFF'),hex2dec('FFFF'));
h = bimanParams.hSource;
h.NumSamples = 4000;
pause(0.5);
h.initialize();
pause(0.5);

% Enable buttons
set(obj.hg.SignalSourceButtons(:),'Enable','on');
set(obj.hg.popups(1),'Value',5);

% Setup filters and remaining properties
obj.println('Adding Filters',1);
Fs = h.SampleFrequency;
h.addfilter(Inputs.HighPass(15,3,Fs));
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
obj.SignalSource = h;

%% Signal Analysis
h = SignalAnalysis.Lda();

% Enable Buttons
set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
set(obj.hg.popups(2),'Value',2);

h.NumMajorityVotes = 0;

NumSamplesPerWindow = 200;
fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
h.NumSamplesPerWindow = NumSamplesPerWindow;

obj.TrainingData = PatternRecognition.TrainingData();
ok = obj.TrainingData.loadTrainingData();
if ~ok
    obj.TrainingData.initialize(obj.SignalSource.NumChannels,h.NumSamplesPerWindow);
end

set(obj.hg.TrainingButtons(:),'Enable','on');

% Initialize Classifier with data object
h.initialize(obj.TrainingData);

% TODO: Note signals only updated on classifier
% creation
defaultChannels = GUIs.guiChannelSelect.getLastChannels();
if isempty(defaultChannels)
    msg = 'No channels are active.  Enable channels in Signal Viewer';
    %errordlg(msg);
    error(msg);
end
h.setActiveChannels(defaultChannels);

% load('TR_Basic.classNames','-mat')
classNames = GUIs.guiClassifierChannels.getSavedDefaults();
if (isempty(classNames))
    classNames = GUIs.guiClassifierChannels.getDefaultNames;
end
h.setClassNames(classNames);

obj.SignalClassifier = h;


%% Setup Presentation

h = MPL.MplNfu;
h.enableNfu = 0;
h.VulcanXAddress = bimanParams.VulcanXAddress;
h.VulcanXDestinationPort = bimanParams.VulcanXDestinationPort;
h.VulcanXLocalPort = bimanParams.VulcanXLocalPort;
h.JoystickId = bimanParams.JoystickId;
h.UdpArmTrackingPort = bimanParams.UdpArmTrackingPort;
h.EnableFeedback = 0;
h.TactorIds = [3 4 5];

h.enableMicroStrain = 0;

h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
h.update();
h.Verbose = 0;
start(h.Timer);
obj.println('Presentation setup complete',1);

% Enable buttons
set(obj.hg.PresentationButtons(:),'Enable','on');
set(obj.hg.popups(5),'Value',5);

obj.Presentation = h;

end
