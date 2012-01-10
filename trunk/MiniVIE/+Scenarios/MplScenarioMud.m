classdef MplScenarioMud < Common.MiniVieObj
    % Scenario for controlling a rendered 3d virtual hand/arm
    % Depends on UiTools
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hTimer = [];
        hInput = [];
        hScenario = [];  % parent should hold source, classifier objects
        hMud = [];
        hSink = [];
        
        hOutput = [];
        hAxes = [];
        hFigure = [];
        hLegend = [];
        
        isLeftSide = 1;
        
        handAngles = repmat(45,1,4);

        AutoOpenSpeed = 5;
        CloseGain = [40 40 40 40];
        FingerCommand = [0 0 0 0];
        WristCommand = [0 0 0];
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
        
        hMPL = [];
        
        graspValue = 0;
        graspId = 0;
        
        % Controllable inputs
        hInputWristFlex = [];
        hInputWristExtend = [];
        
        EnableLimb = 0;
    end
    methods
        function obj = MplScenarioMud
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
            obj.hSink = VulcanXSink('127.0.0.1',9027);
            obj.hMud = MudCommandEncoder();
        end
        function close(obj)
            try
                stop(obj.hTimer);
                delete(obj.hTimer)
            end
            delete(obj.hFigure);
        end

        function setup_display(obj)
            hFig = UiTools.create_figure('Mini VIE Display','MiniVIEDisplay');
%             pos = get(hFigure,'Position');
%             pos(3) = 700;
%             set(hFigure,'Position',pos);

            set(hFig,'Color',[ 0.8706    0.9216    0.9804]);
            %set(obj.hFigure,'ToolBar','none');
            %set(obj.hFigure,'MenuBar','none');
            set(hFig,'CloseRequestFcn',@(src,evnt)close(obj))
            
            obj.hFigure = hFig;
            
            obj.hAxes = gca;
            view(obj.hAxes,0,0);
            axis(obj.hAxes,'equal')
            axis(obj.hAxes,'off')
            %axis([0 0.4 -0.4 0.4 0.3 0.7])
            if obj.isLeftSide
                axis(obj.hAxes,[0.15 0.25 -0.1 0.1 0.35 0.45]);
            else
                axis(obj.hAxes,[-0.25 -0.15 -0.1 0.1 0.35 0.45]);
            end
            %rotate3d(obj.hAxes,'on');
            
            set(obj.hAxes,'CameraUpVector',[0 0 -1]);
            if obj.isLeftSide
                set(obj.hAxes,'CameraPosition',[-0.5 -1 0.5]);
                camroll(-60);
            else
                set(obj.hAxes,'CameraPosition',[0.5 -1 0.5]);
                camroll(60);
            end
            set(obj.hAxes,'CameraViewAngle',6);
            camlight left
            
            obj.hOutput = Presentation.MiniV(obj.hAxes,obj.isLeftSide);
            obj.hOutput.isWireframe = 0;
            obj.hOutput.isTriad= 0;
            
        end
        function start(obj)
            if ~strcmpi(obj.hTimer.Running,'on')
                start(obj.hTimer);
            end
        end
    end
end

%Private
function closeRequestFcn(src,obj)
    stop(obj.hTimer);
    delete(obj.hTimer)
    delete(src);
end


function cb_data_timer(src,evnt,obj) %#ok<*INUSL>

hSignalSource = obj.hScenario.SignalSource;
hSignalClassifier = obj.hScenario.SignalClassifier;


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
    
    if strcmpi(hSignalClassifier.ClassNames{cursorMoveClass},'No Movement')
        cursorMoveClass = classOut;
    end
    
    
    fprintf('Class=%2d; Vote=%2d; Class = %10s',...
        classOut,voteDecision,hSignalClassifier.ClassNames{cursorMoveClass})
        
    virtualChannels = hSignalClassifier.virtual_channels(features2D,cursorMoveClass);

    speed = max(virtualChannels);
    gain = 40;
    obj.FingerCommand = zeros(1,4);
    
    graspGain = 1;
    wristGain = 4;
    graspChangeThreshold = 1;
    switch hSignalClassifier.ClassNames{cursorMoveClass}
        case 'No Movement'
%             objl..,.graspValue = obj.graspValue - (graspGain*speed*.3);
        case 'Hand Open'
            obj.FingerCommand(1:4) = -0.7*speed;
            obj.graspValue = obj.graspValue - (graspGain*speed*1.5);
        case 'Spherical Grasp'
            if obj.graspValue < graspChangeThreshold
                obj.graspId = 0;
            end
            obj.graspValue = obj.graspValue + (graspGain*speed*4.2);
        case 'Tip Grasp' 
            if obj.graspValue < graspChangeThreshold
                obj.graspId = 1;
            end
            obj.graspId = 7;
            obj.graspValue = obj.graspValue + (graspGain*speed);
        case 'Pointer Grasp' 
            if obj.graspValue < graspChangeThreshold
                obj.graspId = 6;
            end
            obj.graspValue = obj.graspValue + (graspGain*speed);
        case 'Cylindrical Grasp' 
            if obj.graspValue < graspChangeThreshold
                obj.graspId = 2;
            end
            obj.graspValue = obj.graspValue + (graspGain*speed);
        case 'Lateral Grasp' 
            if obj.graspValue < graspChangeThreshold
                obj.graspId = 3;
            end
            obj.graspValue = obj.graspValue + (graspGain*speed);
        case 'Hand Close'
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
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) + speed*wristGain*4;
        case {'Supinate' 'Wrist Rotate Out'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) - speed*wristGain*2;
        case {'Up' 'Hand Up'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) - speed*gain*10;
        case {'Down' 'Hand Down'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) + speed*gain*6;
        case {'Left' 'Wrist Flex' 'Wrist Flex In'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) + speed*gain*2;
        case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) - speed*gain*2;
        otherwise
    end
    
    obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),60),-60);
    obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-15);
    obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);
    
    obj.graspValue = max(min(obj.graspValue,1),0);
    w = zeros(1,3);
    w(1) = obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) * pi/180;
    w(2) = obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) * pi/180;
    w(3) = obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) * pi/180;
    msg = obj.hMud.ArmPosVelHandRocGrasps([zeros(1,4) w],zeros(1,7),1,obj.graspId,obj.graspValue,1);
    obj.hSink.putbytes(msg);

    fprintf('\tGrasp=%2d',obj.graspId);
    fprintf('\tEND\n');
        
catch ME
    stop(src)
    rethrow(ME)
end
end