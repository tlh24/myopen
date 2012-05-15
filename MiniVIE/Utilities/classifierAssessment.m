obj = MiniVIE.Default();
obj.TrainingInterface.loadTrainingData('Sim_20120202_110041_TrainingData.dat');

% Step 5: Train the classifier
obj.SignalClassifier.NumMajorityVotes = 5;
obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
obj.SignalClassifier.train();
obj.SignalClassifier.computeerror();
obj.SignalClassifier.computeGains();

%%
hSignalSource = obj.SignalSource;
hSignalClassifier = obj.SignalClassifier;

classToTest = 1:7;
for iClass = 1:length(classToTest)
    trialLog = assessClass(hSignalSource,hSignalClassifier,classToTest(iClass));
    structTrialLog(iClass) = trialLog;
end

filePrefix = 'WR_TR01_';
defaultSaveName = [filePrefix datestr(now,'yyyymmdd_HHMMSS') '.assessmentLog'];
[FileName,PathName,FilterIndex] = ...
    uiputfile('*.assessmentLog','Select Log file to Save',defaultSaveName);

if FilterIndex > 0
    save(fullfile(PathName,FileName),...
        'structTrialLog','-mat');
end
