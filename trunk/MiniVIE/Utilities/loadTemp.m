%% update training
% obj.TrainingInterface.NumRepetitions = 3;
obj.TrainingInterface.loadTrainingData();

%% Step 5: Train the classifier
obj.SignalClassifier.NumMajorityVotes = 5;
obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
obj.SignalClassifier.train();
obj.SignalClassifier.computeerror();
obj.SignalClassifier.computeGains();
