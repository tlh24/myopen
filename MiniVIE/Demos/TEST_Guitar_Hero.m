% Guitar hero test

addpath('Utilities');

SignalSource = Inputs.DaqHwDevice('mcc','0');
% SignalSource = Inputs.SignalSimulator();
SignalSource.initialize();
SignalSource.addfilter(Inputs.HighPass());
% SignalSource.addfilter(Inputs.LowPass());
% SignalSource.addfilter(Inputs.Notch());
SignalSource.NumSamples = 2000;

SignalClassifier = SignalAnalysis.Lda();
SignalClassifier.ActiveChannels = 1:4;  % <-- Update active channels
SignalClassifier.initialize();
SignalClassifier.ClassNames = GUIs.guiClassifierChannels.getSavedDefaults();

TrainingInterface = PatternRecognition.SimpleTrainer(SignalSource,SignalClassifier);
if 0
    %%
    TrainingInterface.NumRepetitions = 2;  % <-- Adjust (2 to 3 typical)
    TrainingInterface.ContractionLengthSeconds = 2; % <-- Time to hold contraction (avoid muscle fatigue)
    TrainingInterface.DelayLengthSeconds = 3; % <-- Recovery Time in seconds between contractions
    TrainingInterface.initialize();
    TrainingInterface.collectdata();
end
TrainingInterface.loadTrainingData('20110905_205558_AGHSimReversed.dat');

SignalClassifier.TrainingData = TrainingInterface.getFeatureData;
SignalClassifier.TrainingDataLabels = TrainingInterface.getClassLabels;
SignalClassifier.train();
SignalClassifier.computeerror();

%%
obj = Presentation.AirGuitarHero.AirGuitarHeroEmg(SignalSource,SignalClassifier);
