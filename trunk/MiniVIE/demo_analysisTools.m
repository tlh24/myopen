% Assessment Tools

%%
hData = PatternRecognition.TrainingData();
hData.loadTrainingData('\\dom1\REDD\Programs\RP3\SENSITIVE_RESTRICTED_Patient_Data\JHMI\JH_TH02\*.trainingData')
%%
hData.ClassNames
hClassifier = SignalAnalysis.Lda
hClassifier.initialize(hData)
hClassifier.train
hClassifier.computeConfusion
hClassifier.computeError
w = hClassifier.Wg
c = hClassifier.Cg
%%
clf
plot(hData.getContinuousData)
hold on 
l = repmat(hData.getClassLabels,200,1);
plot(l(:))

%%
% change the active channels retrain and recompute
hData.ActiveChannels = 2:8
hClassifier.train
hClassifier.computeError
w = hClassifier.Wg
c = hClassifier.Cg

%%
obj = assessmentEval('\\dom1\REDD\Programs\RP3\SENSITIVE_RESTRICTED_Patient_Data\JHMI\JH_TH02\*.assessmentLog');

%%
f = hData.getFeatureData;
clf,plot(hData.getClassLabels),hold on
plot(squeeze(f(:,1,:))')


%%
hData.ClassNames
hClassifier = SignalAnalysis.Lda
hClassifier.initialize(hData)
hData.disableLabeledData(1:10)
hData.disableLabeledData(4)
hData.disableLabeledData(3)
hData.disableLabeledData(2)
hData.disableLabeledData(1)
hClassifier.train
hClassifier.computeConfusion
hClassifier.computeError

w = hClassifier.Wg
c = hClassifier.Cg


% Classify Training data
features3D = hData.getFeatureData();
feats = hClassifier.convertfeaturedata(features3D);

% Forward Classify
[classOut v vect]= hClassifier.classify(feats);

plot(classOut)


