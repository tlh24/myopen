function obj = RUN_MINIVIE()

%% Step 1: Setup signal source
% SignalSource = Inputs.DaqHwDevice('nidaq','Dev1');
% SignalSource = Inputs.DaqHwDevice('mcc','0');
SignalSource = Inputs.SignalSimulator();

% The device must be initialized prior to use
SignalSource.initialize();

%% Step 2: Add input filters
Fs = SignalSource.SampleFrequency;                     % 1000 Hz
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
% h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
SignalSource.addfilter(Inputs.HighPass(20,3,Fs));      % 20Hz 3rd order butter
SignalSource.addfilter(Inputs.MinLimitFilter(0.2));    % min limit
SignalSource.addfilter(Inputs.ConstraintFilter(-5,5)); % range limit

%% Step 3: Setup Classifier, Select Channels in use
SignalClassifier = SignalAnalysis.Lda();
TrainingData = PatternRecognition.TrainingData();
SignalClassifier.initialize(TrainingData);

SignalClassifier.setActiveChannels(1:8);  % <-- Update active channels

which_movements = {'Rest','Open','Close','Index_Point','Hook','Fine_Pinch','Jaw_Chuck',...
    'Key','Palmar','Cylindrical','Spherical','Pronate','Supinate','Wrist_Flex','Wrist_Extend',...
    'Radial_Dev','Ulnar_Dev','Elbow_Flex','Elbow_Extend','Shoulder_Flex','Shoulder_Extend',...
    'Medial_Rot','Lateral_Rot','Abduction','Adduction',...
    'Thumb','Index','Middle','Ring','Little','Park'};

SignalClassifier.setClassNames(which_movements);

Presentation = MPL.MplVulcanX;
Presentation.EnableJoystick = false;
Presentation.initialize(SignalSource, SignalClassifier, TrainingData);

obj.SignalSource = SignalSource;
obj.SignalClassifier = SignalClassifier;
obj.TrainingData = TrainingData;
obj.TrainingInterface = [];
obj.Presentation = Presentation;
