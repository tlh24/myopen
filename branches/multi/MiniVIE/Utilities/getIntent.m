function [classDecision,voteDecision,className,prSpeed,rawSignals,filteredSignals,features2D] ...
    = getIntent(hSignalSource,hSignalClassifier)
% Given a signal source and a classifier, derive intent based on the
% current signal state

% Initialize output
[classDecision,voteDecision,className,prSpeed] = deal([]);

% Verify inputs
if isempty(hSignalSource)
    disp('No Signal Source');
    return
elseif isempty(hSignalClassifier)
    disp('No Signal Classifier');
    return    
end

% Get the appropriate number of samples
numSamples = hSignalClassifier.NumSamplesPerWindow;
hSignalSource.NumSamples = numSamples;


numPad = 250;
rawSignals = hSignalSource.getData(numSamples+numPad);
filteredSignals = hSignalSource.applyAllFilters(rawSignals);
filteredSignals = filteredSignals(end-numSamples+1:end,:);


% Extract features and classify
features2D = hSignalClassifier.extractfeatures(filteredSignals);
activeChannelFeatures = features2D(hSignalClassifier.getActiveChannels,:);
[classDecision, voteDecision] = hSignalClassifier.classify(reshape(activeChannelFeatures',[],1));

if hSignalClassifier.NumMajorityVotes > 1
    cursorMoveClass = voteDecision;
else
    cursorMoveClass = classDecision;
end

virtualChannels = hSignalClassifier.virtual_channels(features2D,cursorMoveClass);
prSpeed = max(virtualChannels);

% fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
%     classOut,voteDecision,hSignalClassifier.ClassNames{cursorMoveClass},prSpeed);
classNames = hSignalClassifier.getClassNames;
className = classNames{cursorMoveClass};
