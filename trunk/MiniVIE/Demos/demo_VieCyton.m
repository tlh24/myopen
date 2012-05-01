obj = MiniVIE.Default();
obj.TrainingInterface.loadTrainingData('Sim_20120430_202658_TrainingData.dat');

% Step 5: Train the classifier
obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
obj.SignalClassifier.ActiveChannels = 1:4;
obj.SignalClassifier.NumSamplesPerWindow = 250;
obj.SignalClassifier.train();
obj.SignalClassifier.computeerror();
obj.SignalClassifier.computeGains();

hSignalSource = obj.SignalSource;
hSignalClassifier = obj.SignalClassifier;

import Presentation.CytonI.*
hCyton = CytonI;
%%
hCyton.hDisplay.showTriads(1);
hCyton.hDisplay.showSurfaces(1)

while StartStopForm
    drawnow
    
    ang = hCyton.hPlant.CurrentPosition;
    
    % Classify data
    hSignalSource.NumSamples = hSignalClassifier.NumSamplesPerWindow;
    windowData = hSignalSource.getFilteredData();
    
    features2D = hSignalClassifier.extractfeatures(windowData);
    activeChannelFeatures = features2D(hSignalClassifier.ActiveChannels,:);
    [classOut voteDecision] = hSignalClassifier.classify(reshape(activeChannelFeatures',[],1));
    
    virtualChannels = hSignalClassifier.virtual_channels(features2D,classOut);
    prSpeed = max(virtualChannels);
    
    fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
        classOut,voteDecision,hSignalClassifier.ClassNames{classOut},prSpeed);
    fprintf('\tEND\n');

    % Map the EMG data to angle movements of the robot
    strClass = hSignalClassifier.ClassNames{voteDecision};
    switch strClass
        case 'No Movement'
        case 'Hand Open'
            ang(8) = ang(8) + 0.1;
        case {'Spherical Grasp' 'Tip Grasp'}
            ang(8) = ang(8) - 0.1;
        case {'Pronate' 'Wrist Rotate In'}
            ang(5) = ang(5) + 0.1;
        case {'Supinate' 'Wrist Rotate Out'}
            ang(5) = ang(5) - 0.1;
        case {'Up' 'Hand Up'}
            ang(7) = ang(7) + 0.1;
        case {'Down' 'Hand Down'}
            ang(7) = ang(7) - 0.1;
        case {'Left' 'Wrist Flex' 'Wrist Flex In'}
            ang(6) = ang(6) + 0.1;
        case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
            ang(6) = ang(6) - 0.1;
    end
    hCyton.setJointParameters(ang);
    
end


