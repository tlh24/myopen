classdef MiniVDisplayScenario < Common.MiniVieObj
    % Scenario for controlling a rendered 3d virtual hand/arm
    % Depends on UiTools
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hTimer = [];
        hInput = [];
        hScenario = [];  % parent should hold source, classifier objects
        
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
        
        % Controllable inputs
        hInputWristFlex = [];
        hInputWristExtend = [];
        
        EnableLimb = 0;
    end
    methods
        function obj = MiniVDisplayScenario
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
            
            %obj.hMPL = UdpSink('192.168.139.100',8085);
            
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
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) - speed*gain;
        case {'Supinate' 'Wrist Rotate Out'}
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) + speed*gain*2;
        case 'Up'
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) - speed*gain;
        case 'Down'
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
        
    % Apply Wrist Limits
    obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),80),-80);
    obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-10);
    obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
        obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);
    
    
    obj.hOutput.set_hand_angles_degrees(obj.JointAnglesDegrees);
    obj.hOutput.set_upper_arm_angles_degrees(obj.JointAnglesDegrees);
    
    if obj.EnableLimb
        mplAnglesRadians = obj.JointAnglesDegrees .* pi ./ 180;
        mplAnglesRadians(action_bus_enum.Wrist_Rot) = -mplAnglesRadians(action_bus_enum.Wrist_Rot);
        %obj.hMPL.putdata(mplAnglesRadians);
    end
    
    obj.hOutput.redraw();
        
catch ME
    stop(src)
    rethrow(ME)
end
end