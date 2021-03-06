function [ obj ] = RunMpl

% Set patient parameter set
UserConfig.getInstance('MPL_05_TR_R_user_config.xml');

p.guiName = 'MiniVIE-NFU-MPL';
p.filePrefix = UserConfig.getUserConfigVar('userFilePrefix','NEW_USER_');
strNfuIp = UserConfig.getUserConfigVar('mplNfuIp','192.168.1.111');

UiTools.save_temp_file('defaultFilePrefix',p.filePrefix)

diaryFile = [datestr(now,'yyyymmdd_HHMMSS') '_diary.txt'];
diary(diaryFile);

% define input source
p.hSource = Inputs.NfuInput;
%h = Inputs.CpchSerial(bimanParams.cpchComPort,hex2dec('FFFF'),hex2dec('FFFF'));

p.Scenario = MPL.MplNfu;
p.Scenario.JoystickId = 0;

% Haptics need to be configured here, and in 
p.Scenario.EnableFeedback = 1;
% p.Scenario.TactorIds = [5 6 7];
p.Scenario.TactorIds = [3 4];  % JH_TH_01

% perform windows ping prior to further initialization
wait_for_ping_response(strNfuIp);

obj = foo(p);

end

function wait_for_ping_response(ip)
% Function blocks until a successful ping from the specified device

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
end % while
end % wait_for_ping_response

function obj = foo(p)
obj = MiniVIE;
set(obj.hg.Figure,'Name',p.guiName);
obj.FilePrefix = p.filePrefix;

%% Inputs
h = p.hSource;
h.NumSamples = 4000;
h.initialize();

% Enable buttons
set(obj.hg.SignalSourceButtons(:),'Enable','on');
set(obj.hg.popups(1),'Value',6);    % select the NFU input source

% Setup filters and remaining properties
obj.println('Adding Filters',1);
Fs = h.SampleFrequency;
h.addfilter(Inputs.HighPass(20,3,Fs));
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
% h.addfilter(Inputs.Notch([120 240 360],64,1,1000));

Fs = h.SampleFrequency;                     % 1000 Hz
h.addfilter(Inputs.HighPass(20,3,Fs));      % 20Hz 3rd order butter
h.addfilter(Inputs.MinLimitFilter(0.2));    % min limit
h.addfilter(Inputs.ConstraintFilter(-5,5)); % range limit

obj.SignalSource = h;

% f = GUIs.guiSignalViewer(h);
% uiwait(f.hg.Figure);

%% Signal Analysis
h = SignalAnalysis.Lda();

% Enable Buttons
set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
set(obj.hg.popups(2),'Value',2);

h.NumMajorityVotes = 3;

NumSamplesPerWindow = 250;
fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
h.NumSamplesPerWindow = NumSamplesPerWindow;

%obj.TrainingData = PatternRecognition.TrainingData();
obj.TrainingData = TrainingDataAnalysis();
if ~obj.TrainingData.loadTrainingData([])
    % Initialize with defaults
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
    errordlg(msg);
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
obj.SignalClassifier.train();

%% Setup Presentation
h = p.Scenario;
h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
h.Verbose = 0;
h.update();

start(h.Timer);
obj.println('Presentation setup complete',1);

% Enable buttons
set(obj.hg.PresentationButtons(:),'Enable','on');
set(obj.hg.popups(5),'Value',6);

obj.Presentation = h;

end
