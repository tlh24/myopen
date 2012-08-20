classdef MsmsDisplayScenario < handle
    % Scenario for controlling a rendered 3d virtual hand/arm
    % Depends on UiTools
    %
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hTimer = [];
        hInput = [];
        hScenario = [];  % parent should hold source, classifier objects
        
        SignalSource;
        SignalClassifier;
        
        hOutput = [];
        hAxes = [];
        hFigure = [];
        hLegend = [];
        
        isLeftSide = 0;
        
        handAngles = repmat(45,1,4);
        
        AutoOpenSpeed = 5;
        CloseGain = [40 40 40 40];
        FingerCommand = [0 0 0 0];
        WristCommand = [0 0 0];
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
        
        hMPL = [];
        
        % Controllable inputs
        hInputWristFlex = [];
        hInputWristExtend = [];
        
        EnableLimb = 0;
    end
    methods
        function obj = MsmsDisplayScenario(SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
        end
        
        function initialize(obj)
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
            
            obj.hOutput = Scenarios.MSMS_ADL.MSMS_WRAMC_Model;
            %obj.isLeftSide = isLeftSide;
            obj.hOutput.isLeftSide = obj.isLeftSide;
            obj.hOutput.initialize;
        end
        function close(obj)
            try
                stop(obj.hTimer);
                delete(obj.hTimer)
            end
            delete(obj.hFigure);
        end
        
        function start(obj)
            if ~isRunning(obj)
                start(obj.hTimer);
            end
        end
        function stop(obj)
            if isRunning(obj)
                stop(obj.hTimer);
            end
        end
        function running = isRunning(obj)
            running = strcmpi(obj.hTimer.Running,'on');
        end
        function applyLimits(obj)
            
            constrain = @(x,a,b) min(max(x,a),b);
            
            obj.handAngles = obj.handAngles + obj.FingerCommand;
            
            obj.handAngles = max(min(obj.handAngles,80),0);
            
            % Apply finger angles to each finger segment
            id = [action_bus_enum.Index_MCP action_bus_enum.Index_DIP action_bus_enum.Index_PIP];
            obj.JointAnglesDegrees(id) = obj.handAngles(1);
            id = [action_bus_enum.Middle_MCP action_bus_enum.Middle_DIP action_bus_enum.Middle_PIP];
            obj.JointAnglesDegrees(id) = obj.handAngles(2);
            id = [action_bus_enum.Ring_MCP action_bus_enum.Ring_DIP action_bus_enum.Ring_PIP];
            obj.JointAnglesDegrees(id) = obj.handAngles(3);
            id = [action_bus_enum.Little_MCP action_bus_enum.Little_DIP action_bus_enum.Little_PIP];
            obj.JointAnglesDegrees(id) = obj.handAngles(4);

            
            % Apply Arm Limits
            obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE),-45,180);

            obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd),-90,45);

            obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot),-45,90);

            obj.JointAnglesDegrees(action_bus_enum.Elbow) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Elbow),-10,145);

            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),-80,80);
            
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),-20,35);
            
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = constrain(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),-90,90);
            
        end
    end
end

%Private

function cb_data_timer(src,evnt,obj) %#ok<*INUSL>

hSignalSource = obj.SignalSource;
hSignalClassifier = obj.SignalClassifier;


if isempty(hSignalSource)
    disp('No Input');
    return
end

try
    
    hSignalSource.NumSamples = hSignalClassifier.NumSamplesPerWindow;
    windowData = hSignalSource.getFilteredData();
    
    %     mVals = mean(abs(windowData));
    %     mVals(1:4)
    features2D = hSignalClassifier.extractfeatures(windowData);
    activeChannelFeatures = features2D(hSignalClassifier.ActiveChannels,:);
    [classOut voteDecision] = hSignalClassifier.classify(reshape(activeChannelFeatures',[],1));
    
    if hSignalClassifier.NumMajorityVotes > 1
        cursorMoveClass = voteDecision;
    else
        cursorMoveClass = classOut;
    end
    
    fprintf('Class Decision: %3d; Vote Decision: %3d; Class = %10s\n',...
        classOut,voteDecision,hSignalClassifier.ClassNames{cursorMoveClass})
    
    virtualChannels = hSignalClassifier.virtual_channels(features2D,cursorMoveClass);
    
    speed = max(virtualChannels);
    gain = 40;
    obj.FingerCommand = zeros(1,4);
    switch hSignalClassifier.ClassNames{cursorMoveClass}
        case 'No Movement'
        case 'Hand Open'
            obj.FingerCommand(1:4) = -0.7*speed;
        case {'Hand Close' 'Cylindrical Grasp'}
            obj.FingerCommand(1:4) = speed;
        case'Index'
            obj.FingerCommand(1) = speed;
        case 'Middle'
            obj.FingerCommand(2) = speed;
        case 'Ring'
            obj.FingerCommand(3) = speed;
        case 'Little'
            obj.FingerCommand(4) = speed;
        case {'Pronate' 'Wrist Rotate In'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) - speed*gain;
        case {'Supinate' 'Wrist Rotate Out'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) + speed*gain;
            
            
        case 'Shoulder Flexion'
            obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE) + speed*gain;
        case 'Shoulder Extension'
            obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_FE) - speed*gain;
        case 'Shoulder Adduction'
            obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd) = ...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd) + speed*gain;
        case 'Shoulder Abduction'
            obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd) = ...
                obj.JointAnglesDegrees(action_bus_enum.Shoulder_AbAd) - speed*gain;
        case 'Humeral Internal Rotation'
            obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot) + speed*gain;
        case 'Humeral External Rotation'
            obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Humeral_Rot) - speed*gain;
        case 'Elbow Flexion'
            obj.JointAnglesDegrees(action_bus_enum.Elbow) = ...
                obj.JointAnglesDegrees(action_bus_enum.Elbow) + speed*gain;
        case 'Elbow Extension'
            obj.JointAnglesDegrees(action_bus_enum.Elbow) = ...
                obj.JointAnglesDegrees(action_bus_enum.Elbow) - speed*gain;
        case {'Up' 'Hand Up'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) - speed*gain;
        case {'Down' 'Hand Down'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) + speed*gain;
        case {'Left' 'Wrist Flex' 'Wrist Flex In'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) + speed*gain;
        case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) - speed*gain;
        otherwise
    end
    
    obj.FingerCommand = obj.FingerCommand .* obj.CloseGain;
    
    if ~strcmpi('Hand Open',hSignalClassifier.ClassNames)
        obj.FingerCommand(obj.FingerCommand == 0) = -obj.AutoOpenSpeed;
    end

    obj.handAngles = obj.handAngles + obj.FingerCommand;

    % Apply finger angles to each finger segment
    id = [action_bus_enum.Index_MCP action_bus_enum.Index_DIP action_bus_enum.Index_PIP];
    obj.JointAnglesDegrees(id) = obj.handAngles(1);
    id = [action_bus_enum.Middle_MCP action_bus_enum.Middle_DIP action_bus_enum.Middle_PIP];
    obj.JointAnglesDegrees(id) = obj.handAngles(2);
    id = [action_bus_enum.Ring_MCP action_bus_enum.Ring_DIP action_bus_enum.Ring_PIP];
    obj.JointAnglesDegrees(id) = obj.handAngles(3);
    id = [action_bus_enum.Little_MCP action_bus_enum.Little_DIP action_bus_enum.Little_PIP];
    obj.JointAnglesDegrees(id) = obj.handAngles(4);

    
    % Special cases for thumb
    obj.JointAnglesDegrees(action_bus_enum.Thumb_IP) = obj.handAngles(1);
    obj.JointAnglesDegrees(action_bus_enum.Thumb_MCP) = 0.1*obj.handAngles(1) - 20;

    obj.JointAnglesDegrees(action_bus_enum.Thumb_FE) = -20;
    obj.JointAnglesDegrees(action_bus_enum.Thumb_AbAd) = obj.handAngles(1);
    
    % applyLimits
    applyLimits(obj);

    % applyOffsets
    msmsAngles = obj.JointAnglesDegrees;

    % 12/6/2011 RSA: Determined these empirically with WRAMC_Model.  L/R
    % confirmed
    if obj.isLeftSide
        msmsAngles(action_bus_enum.Shoulder_AbAd) = -msmsAngles(action_bus_enum.Shoulder_AbAd);
        msmsAngles(action_bus_enum.Shoulder_FE) = -msmsAngles(action_bus_enum.Shoulder_FE);
        msmsAngles(action_bus_enum.Humeral_Rot) = -msmsAngles(action_bus_enum.Humeral_Rot);
        msmsAngles(action_bus_enum.Wrist_Dev) = -msmsAngles(action_bus_enum.Wrist_Dev);
        msmsAngles(action_bus_enum.Wrist_Rot) = msmsAngles(action_bus_enum.Wrist_Rot) - 90;
        msmsAngles(action_bus_enum.Wrist_FE) = -msmsAngles(action_bus_enum.Wrist_FE);
    else
        msmsAngles(action_bus_enum.Wrist_Rot) = -msmsAngles(action_bus_enum.Wrist_Rot) + 90;
    end
    
    % send Values
    obj.hOutput.putdata(msmsAngles);
    
catch ME
    stop(src)
    rethrow(ME)
end
end