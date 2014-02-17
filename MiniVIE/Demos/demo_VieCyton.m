obj = MiniVIE.Default();
obj.TrainingData.loadTrainingData('Sim_20120430_202658_TrainingData.dat');

% Step 5: Train the classifier
obj.SignalClassifier.setActiveChannels(1:4);
% obj.SignalClassifier.NumSamplesPerWindow = 250;
obj.SignalClassifier.train();
obj.SignalClassifier.computeError();
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
    [classDecision,voteDecision,className,prSpeed,rawSignals,filteredSignals,features2D] ...
        = getIntent(hSignalSource,hSignalClassifier);

    fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
        classDecision,voteDecision,className,prSpeed);
    fprintf('\tEND\n');

    % Map the EMG data to angle movements of the robot
    switch className
        case 'No Movement'
        case 'Hand Open'
            ang(8) = ang(8) + 0.1;
        case {'Spherical Grasp' 'Tip Grasp'}
            ang(8) = ang(8) - 0.1;
        case {'Pronate' 'Wrist Rotate In'}
            ang(5) = ang(5) + 0.1;
        case {'Supinate' 'Wrist Rotate Out'}
            ang(5) = ang(5) - 0.1;
        case {'Up','Hand Up', 'Radial Deviation','Wrist Abduction'}
            ang(7) = ang(7) + 0.1;
        case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
            ang(7) = ang(7) - 0.1;
        case {'Left' 'Wrist Flex' 'Wrist Flex In'}
            ang(6) = ang(6) + 0.1;
        case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
            ang(6) = ang(6) - 0.1;
    end
    hCyton.setJointParameters(ang);    
end
