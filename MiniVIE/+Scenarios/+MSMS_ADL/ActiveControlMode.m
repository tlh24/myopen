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

%% TrainingInterface: Collect Data
if 0
%%
TrainingInterface.NumRepetitions = 1;
TrainingInterface.ContractionLengthSeconds = 1;
TrainingInterface.DelayLengthSeconds = 1;

TrainingInterface.initialize(SignalSource,SignalClassifier);
TrainingInterface.collectdata();
end
%% TrainingInterface: Load Data
TrainingInterface.loadTrainingData();

%% Perform Training
SignalClassifier.TrainingData = TrainingInterface.getFeatureData;
SignalClassifier.TrainingDataLabels = TrainingInterface.getClassLabels;
SignalClassifier.train();
SignalClassifier.computeerror();

%%
hMSMS = Scenarios.MSMS_ADL.MsmsDisplayScenario(SignalSource,SignalClassifier);
isLeftSide = 0;
hMSMS.initialize(isLeftSide);

hMSMS.start
%%
return
%%
hMSMS.stop
hMSMS.close



