addpath('Utilities')

%% Create an input source
% hSignalSource = Inputs.UsbDaq('mcc','0');
hSignalSource = Inputs.SignalSimulator();
hSignalSource.addfilter(Inputs.HighPass());
hSignalSource.addfilter(Inputs.LowPass());
hSignalSource.addfilter(Inputs.Notch());
% hSignalSource.addfilter(Inputs.MAV(150));
hSignalSource.NumSamples = 2000;
hSignalSource.initialize();

hSignalSource.previewFiltered(1:4)
% hSignalSource.preview(1:4)
%%
hSignalSource.previewFeatures(1:4)
%%
hSignalSource.audiopreview(1)
%%
stop(hSignalSource)

%% Create a Signal Analysis Module

hEmgClassifier = SignalAnalysis.Classifier();
hEmgClassifier.ClassNames = {'No Movement' 'Up' 'Down' 'Left' 'Right'};
hEmgClassifier.ActiveChannels = 1:4;
hEmgClassifier.NumMajorityVotes = 7;
hEmgClassifier.initialize();

%% Create a training interface
hTrainingInterface = PatternRecognition.SimpleTrainer;
hTrainingInterface.NumRepetitions = 2;
hTrainingInterface.ContractionLengthSeconds = 1;
hTrainingInterface.DelayLengthSeconds = 2;

%% Combine pieces to make a scenario (EMG Painting)
hPollock = Scenarios.EmgJacksonPollock;
hPollock.SignalSource = hSignalSource;
hPollock.EmgClassifier = hEmgClassifier;
hPollock.TrainingInterface = hTrainingInterface;
hPollock.begin_training

%% Run the Scenario
hPollock.run

%% Combine pieces differently to create an interactive training module (periodically updates classifier)
hEmgClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring' 'Little'};
hEmgClassifier.reset();

hMiniAGH = Scenarios.GuitarHeroTrainer;
hMiniAGH.SignalSource = hSignalSource;
hMiniAGH.EmgClassifier = hEmgClassifier;
hMiniAGH.ResetClassifierOnInitialization = 1;
hMiniAGH.initialize();
hMiniAGH.run


%% Once Classifier is trained
hMiniV = Scenarios.MiniVDisplayScenario;
hMiniV.setup_display;
hMiniV.EmgClassifier = hEmgClassifier;
hMiniV.SignalSource = hSignalSource;
hMiniV.CloseGain = [80 100 80 80];
start(hMiniV.hTimer);

%% Adjust Gains as needed
hMiniV.CloseGain = [80 100 80 80];

%% Yet another Scenario that allows you to play wii with a video capture device
obj = Presentation.AirGuitarHero.AirGuitarHeroEmg;
