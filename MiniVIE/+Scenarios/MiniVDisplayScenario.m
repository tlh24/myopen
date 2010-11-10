classdef MiniVDisplayScenario < handle
    % Scenario for controlling a rendered 3d virtual hand/arm
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hTimer = [];
        hInput = [];
        
        SignalSource;
        EmgClassifier;
        
        hOutput = [];
        hAxes = [];
        hFigure = [];
        hLegend = [];
        
        isLeftSide = 1;
        
        handAngles = repmat(45,1,4);

        AutoOpenSpeed = 5;
        CloseGain = [40 40 40 40];
        FingerCommand = [0 0 0 0];
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
    end
    methods
        function obj = MiniVDisplayScenario
            obj.hTimer = obj.create_timer(mfilename,@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
        end
        function setup_display(obj)
            obj.hFigure = figure(10);
            clf(obj.hFigure);
            set(obj.hFigure,'Name','Mini VIE');
            set(obj.hFigure,'NumberTitle','off');
            set(obj.hFigure,'Color',[ 0.8706    0.9216    0.9804]);
            %set(obj.hFigure,'ToolBar','none');
            %set(obj.hFigure,'MenuBar','none');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)closeRequestFcn(src,obj))
            
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
    methods (Static = true)
        function hTimer = create_timer(timerName,TimerFcn)
            
            hExisting = timerfindall('Name',timerName);
            delete(hExisting);
            
            t = timer;
            t.Name = timerName;
            t.ExecutionMode = 'fixedRate';
            t.TimerFcn = TimerFcn;
            t.StartFcn = @(src,evt)fprintf('Started: %s\tPeriod: %f\n',timerName,t.Period);
            t.StopFcn = @(src,evt)fprintf('Stopped: %s\tPeriod: %f\tAveragePeriod: %f\n',timerName,t.Period,t.AveragePeriod);
            
            hTimer = t;
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
    
    % obj.EmgClassifier.ClassNames{cursorMoveClass}
    
    virtualChannels = obj.EmgClassifier.virtual_channels(features2D,cursorMoveClass);

    speed = max(virtualChannels);
    
    obj.FingerCommand = zeros(1,4);
    switch obj.EmgClassifier.ClassNames{cursorMoveClass}
        case 'No Movement'
        case'Index'
            obj.FingerCommand(1) = speed;
        case 'Middle'
            obj.FingerCommand(2) = speed;
        case 'Ring'
            obj.FingerCommand(3) = speed;
        case 'Little'
            obj.FingerCommand(4) = speed;
        otherwise
    end

    obj.FingerCommand = obj.FingerCommand .* obj.CloseGain;
    
    obj.FingerCommand(obj.FingerCommand == 0) = -obj.AutoOpenSpeed;
    
    obj.handAngles = obj.handAngles + obj.FingerCommand;
        
    obj.handAngles = max(min(obj.handAngles,80),0);
    
    jointAngles = zeros(size(action_bus_definition));
    
    id = [action_bus_enum.Index_MCP action_bus_enum.Index_DIP action_bus_enum.Index_PIP];
    jointAngles(id) = obj.handAngles(1);
    id = [action_bus_enum.Middle_MCP action_bus_enum.Middle_DIP action_bus_enum.Middle_PIP];
    jointAngles(id) = obj.handAngles(2);
    id = [action_bus_enum.Ring_MCP action_bus_enum.Ring_DIP action_bus_enum.Ring_PIP];
    jointAngles(id) = obj.handAngles(3);
    id = [action_bus_enum.Little_MCP action_bus_enum.Little_DIP action_bus_enum.Little_PIP];
    jointAngles(id) = obj.handAngles(4);
    
    obj.hOutput.set_hand_angles_degrees(jointAngles);
    obj.hOutput.redraw();
        
catch ME
    stop(src)
    rethrow(ME)
end
end