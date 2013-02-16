%% update training
% obj.TrainingInterface.NumRepetitions = 3;
obj.TrainingInterface.loadTrainingData();

%% Step 5: Train the classifier
obj.SignalClassifier.NumMajorityVotes = 11;
obj.SignalClassifier.setActiveChannels([1 2 3 4 5 6 7 8]);
obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
obj.SignalClassifier.train();
obj.SignalClassifier.computeError();
obj.SignalClassifier.computeGains();

return

%%
e = [];
c = [];
for i = 7
    ch = nchoosek(1:8,i)
    for j = 1:size(ch,1)
        obj.SignalClassifier.setActiveChannels(ch(j,:));
        obj.SignalClassifier.train();
        e = [e; obj.SignalClassifier.computeError()];
        c = [c; i];
    end
end


return

%%
filePrefix = 'EmgDataAndLabels';
defaultSaveName = [filePrefix '_' datestr(now,'yyyymmdd_HHMMSS') '.dataLog'];
s = instrfind('Port','COM13')
s.RecordName = defaultSaveName;
s.RecordMode = 'index';
s.RecordDetail = 'verbose';
%%
record(s)
%%
record(s,'off')
s.RecordName
%%
load(uigetfile('*.dat'),'-mat');
figure(99);
for i = 1:size(emgData,3)
    plot(emgData(:,:,i)');
    drawnow
end

