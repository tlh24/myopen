% Guitar hero test

addpath('Utilities');

%SignalSource = Inputs.DaqHwDevice('mcc','0');
SignalSource = Inputs.SignalSimulator();
SignalSource.initialize();
SignalSource.addfilter(Inputs.HighPass());
% SignalSource.addfilter(Inputs.LowPass());
% SignalSource.addfilter(Inputs.Notch());
SignalSource.NumSamples = 2000;

TrainingData =  PatternRecognition.TrainingData();

SignalClassifier = SignalAnalysis.Lda();
SignalClassifier.initialize(TrainingData);
SignalClassifier.setActiveChannels(1:4);  % <-- Update active channels
SignalClassifier.setClassNames(GUIs.guiClassifierChannels.getSavedDefaults);

TrainingInterface = PatternRecognition.SimpleTrainer();
if 0
    %%
    TrainingInterface.NumRepetitions = 2;  % <-- Adjust (2 to 3 typical)
    TrainingInterface.ContractionLengthSeconds = 2; % <-- Time to hold contraction (avoid muscle fatigue)
    TrainingInterface.DelayLengthSeconds = 3; % <-- Recovery Time in seconds between contractions
    TrainingInterface.initialize();
    TrainingInterface.collectdata();
end
TrainingData.loadTrainingData('*.trainingData');

SignalClassifier.train();
SignalClassifier.computeError();

%%
obj = Presentation.AirGuitarHero.AirGuitarHeroEmg(SignalSource,SignalClassifier);
