function [ obj ] = RunMpl

p.guiName = 'MiniVIE-NFU-MPL';
p.filePrefix = 'WR_TR01_L_';

p.hSource = Inputs.NfuInput;

p.Scenario = MPL.MplScenarioMud;
p.Scenario.enableNfu = 1;
p.Scenario.VulcanXAddress = '192.168.1.111';
p.Scenario.VulcanXDestinationPort = 9027;
p.Scenario.VulcanXLocalPort = 56010;
p.Scenario.JoystickId = 0;
p.Scenario.UdpArmTrackingPort = [];
p.Scenario.EnableFeedback = 1;
p.Scenario.TactorIds = [5 6 7];
p.Scenario.enableMicroStrain = 0;

ip = p.Scenario.VulcanXAddress;
fprintf('Trying to connect to %s...\n',ip);
pingOk = false;
while ~pingOk
    strPing = sprintf('!ping %s -n 1',ip);
    strSuccess = sprintf('Reply from %s: bytes=32',ip);
    response = evalc(strPing);
    foundId = strfind(response,strSuccess);
    pingOk = ~isempty(foundId);
    
    if ~pingOk
        fprintf('Ping Failed\n')
    end
end

obj = foo(p);

return;
end

function obj = foo(p)
obj = MiniVIE;
set(obj.hg.Figure,'Name',p.guiName);
obj.FilePrefix = p.filePrefix;

%% Inputs
%h = Inputs.CpchSerial(bimanParams.cpchComPort,hex2dec('FFFF'),hex2dec('FFFF'));
h = p.hSource;
h.NumSamples = 4000;
h.initialize();

% Enable buttons
set(obj.hg.SignalSourceButtons(:),'Enable','on');
set(obj.hg.popups(1),'Value',6);

% Setup filters and remaining properties
obj.println('Adding Filters',1);
Fs = h.SampleFrequency;
h.addfilter(Inputs.HighPass(15,3,Fs));
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
obj.SignalSource = h;

% f = GUIs.guiSignalViewer(h);
% uiwait(f.hg.Figure);

%% Signal Analysis
h = SignalAnalysis.Lda();

% Enable Buttons
set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
set(obj.hg.popups(2),'Value',2);

h.NumMajorityVotes = 0;

NumSamplesPerWindow = 200;
fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
h.NumSamplesPerWindow = NumSamplesPerWindow;

%obj.TrainingData = PatternRecognition.TrainingData();
obj.TrainingData = TrainingDataAnalysis();
ok = obj.TrainingData.loadTrainingData([]);
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
h = p.Scenario;
h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
h.Verbose = 0;
h.update();

start(h.Timer);
obj.println('Presentation setup complete',1);

% Enable buttons
set(obj.hg.PresentationButtons(:),'Enable','on');
set(obj.hg.popups(5),'Value',5);

obj.Presentation = h;

end
