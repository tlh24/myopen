classdef TopoGraspEmg < Scenarios.TopoGrasp
    properties
        Verbose = 1;
        EnableJoystick = 1;
        
        SignalSource;
        EmgClassifier;
        TrainingInterface;
    end
    methods
        function obj = TopoGraspEmg(isLeft)
            if nargin < 1
                obj.isLeftSide = 1;
            else
                obj.isLeftSide = isLeft;
            end
            obj.hHandState = Controls.HandState;
            
            obj.hTimer = obj.create_timer('TopoGraspVIEMachine',@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
            
            if obj.EnableJoystick
                try
                    obj.hInput = JavaJoystick.Joystick;
                catch ME
                    obj.EnableJoystick = 0;
                    fprintf(2,'Unable to configure Joystick: "%s"\n',ME.message);
                end
            end
            
            setup_display(obj);
            
        end
        function initialize(obj)
            obj.SignalSource = Inputs.UsbDaq('mcc',0);
            obj.SignalSource.initialize();
            obj.SignalSource.addfilter(Inputs.HighPass());
            obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch());
            
            obj.EmgClassifier = PatternRecognition.Classifier();
            obj.EmgClassifier.ClassNames = {'No Movement' 'Up' 'Down' 'Left' 'Right'};
            obj.EmgClassifier.ActiveChannels = 1:4;
            obj.EmgClassifier.NumMajorityVotes = 7;
            obj.EmgClassifier.initialize();
        end
        function begin_training(obj)
            obj.TrainingInterface = PatternRecognition.SimpleTrainer;
            obj.TrainingInterface.NumRepetitions = 2;
            obj.TrainingInterface.ContractionLengthSeconds = 3;
            obj.TrainingInterface.DelayLengthSeconds = 2;
            
            [features3D classLabelId] = obj.TrainingInterface.collectdata(obj.SignalSource,obj.EmgClassifier);
            
            obj.TrainingInterface.saveTrainingData(features3D,classLabelId);
            
            obj.EmgClassifier.TrainingData = features3D;
            obj.EmgClassifier.TrainingDataLabels = classLabelId;
            obj.EmgClassifier.train();
            obj.EmgClassifier.computeerror();
        end
    end
end


function cb_data_timer(src,evnt,obj) %#ok<*INUSL>

try
    obj.SignalSource.NumSamples = obj.EmgClassifier.NumSamplesPerWindow;
    windowData = obj.SignalSource.getFilteredData();
    features2D = obj.EmgClassifier.extractfeatures(windowData);
    activeChannelFeatures = features2D(obj.EmgClassifier.ActiveChannels,:);
    [classOut voteDecision] = obj.EmgClassifier.classify(reshape(activeChannelFeatures',[],1));
    
    if obj.EmgClassifier.NumMajorityVotes > 1
        cursorMoveClass = voteDecision;
    else
        cursorMoveClass = classOut;
    end
    
    virtualChannels = obj.EmgClassifier.virtual_channels(features2D,cursorMoveClass);
    
    speed = max(virtualChannels);
    
    obj.HandCmd = [0 0];
    switch obj.EmgClassifier.ClassNames{cursorMoveClass}
        case 'No Movement'
        case'Right'
            obj.HandCmd(1) = speed;
        case 'Left'
            obj.HandCmd(1) = -speed;
        case 'Down'
            obj.HandCmd(2) = -speed;
        case 'Up'
            obj.HandCmd(2) = speed;
        otherwise
    end
    
    obj.hHandState.updateState();
    obj.hHandState.putdata(obj.HandCmd/5);
    handAngles = obj.hHandState.graspToJointAngles();
    
    obj.hOutput.set_hand_angles_degrees(handAngles);
    obj.hOutput.redraw();
    
    obj.update_vcr();
    
catch ME
    stop(src)
    if ~isempty(obj.hAviObj)
        obj.hAviObj = close(obj.hAviObj);
        obj.hAviObj = [];
    end
    rethrow(ME)
end
end

