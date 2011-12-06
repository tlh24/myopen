%% active control

%% Input:
SignalSource = Inputs.SignalSimulator();
%SignalSource = Inputs.UsbDaq('mcc','0');

SignalSource.addfilter(Inputs.HighPass());
SignalSource.addfilter(Inputs.LowPass());
SignalSource.addfilter(Inputs.Notch());
SignalSource.NumSamples = 2000;
SignalSource.initialize();

%% Classifier:
SignalClassifier = SignalAnalysis.Classifier();
SignalClassifier.ActiveChannels = 1:4;
SignalClassifier.NumMajorityVotes = 0;
SignalClassifier.initialize();

SignalClassifier.uiEnterClassNames

%% TrainingInterface
TrainingInterface = PatternRecognition.SimpleTrainer();
TrainingInterface.initialize(SignalSource,SignalClassifier);

%% TrainingInterface: Collect Data
% TrainingInterface.NumRepetitions = 1;
% TrainingInterface.ContractionLengthSeconds = 1;
% TrainingInterface.DelayLengthSeconds = 1;
% 
% TrainingInterface.initialize();
% TrainingInterface.collectdata();
% TrainingInterface.saveTrainingData();

%% TrainingInterface: Load Data
TrainingInterface.loadTrainingData();

%% Perform Training
SignalClassifier.TrainingData = TrainingInterface.Features3D(:,:,1:TrainingInterface.SampleCount);
SignalClassifier.TrainingDataLabels = TrainingInterface.ClassLabelId(1:TrainingInterface.SampleCount);
SignalClassifier.train();
SignalClassifier.computeerror();

%%
hMSMS = MsmsDisplayScenario(SignalSource,SignalClassifier);
isLeftSide = 1;
hMSMS.initialize(isLeftSide);
%%

%%
hMSMS.start
%%
return
%%
hMSMS.stop
%%
hMSMS.close



