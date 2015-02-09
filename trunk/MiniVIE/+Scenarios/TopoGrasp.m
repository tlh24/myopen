classdef TopoGrasp < handle
    properties
        EnableRecording = 0;
        
        % Handles
        hTimer = [];
        hInput = [];
        
        hHandState = [];
        
        hAviObj = [];
        
        hOutput = [];
        hAxes = [];
        hFigure = [];
        hLegend = [];
        
        isLeftSide = 1;
        
        HandCmd = [0 0];
        WristFECmd = 0;
        WristRotCmd = 0;
        WristDevCmd = 0;
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
    end
    methods
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
            
            set(obj.hFigure,'WindowKeyPressFcn',@(src,evt)cb_key_press(src,evt,obj));
            set(obj.hFigure,'WindowKeyReleaseFcn',@(src,evt)cb_key_release(src,evt,obj));
            
            obj.hOutput = Presentation.MiniV(obj.hAxes,obj.isLeftSide);
            obj.hOutput.isWireframe = 0;
            obj.hOutput.isTriad= 0;
            
            
        end
        function update_vcr(obj)
            if obj.EnableRecording
                if isempty(obj.hAviObj)
                    % Prompt to create a video file
                    [FileName,PathName,FilterIndex] = uiputfile('*.avi','Select As');
                    if isempty(FilterIndex)
                        % User Cancelled
                        obj.EnableRecording = 0;
                        obj.hAviObj = [];
                    else
                        obj.hAviObj = avifile(fullfile(PathName,FileName),'compression','None');
                    end
                else
                    % addframe to exisiting file
                    F = getframe(obj.hFigure);
                    obj.hAviObj = addframe(obj.hAviObj,F);
                end
            else
                % Ensure Recording is off
                if ~isempty(obj.hAviObj)
                    obj.hAviObj = close(obj.hAviObj);
                    obj.hAviObj = [];
                end
            end
            
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

function cb_key_press(src,evnt,obj) %#ok<*INUSL>

if any(strcmpi('shift',evnt.Modifier))
    obj.HandCmd = [0 0];
    switch evnt.Key
        case 'uparrow'
            obj.HandCmd = [0 1];
        case 'rightarrow'
            obj.HandCmd = [1 0];
        case 'leftarrow'
            obj.HandCmd = [-1 0];
        case 'downarrow'
            obj.HandCmd = [0 -1];
        otherwise
    end
elseif any(strcmpi('control',evnt.Modifier))
    obj.HandCmd = [0 0];
    switch evnt.Key
        case 'uparrow'
            obj.WristFECmd = 1;
        case 'rightarrow'
            obj.WristRotCmd = 1;
        case 'leftarrow'
            obj.WristRotCmd = -1;
        case 'downarrow'
            obj.WristFECmd = -1;
        otherwise
    end
else
    fprintf('[%s] "%s" Pressed, use Shift+Arrows for grasp, Ctrl+Arrows for Wrist\n',mfilename,evnt.Key);
end
end
function cb_key_release(src,evnt,obj)

obj.HandCmd = [0 0];
obj.WristFECmd = 0;
obj.WristRotCmd = 0;

end
%Private
function closeRequestFcn(src,obj)
try,stop(obj.hTimer);end
try,delete(obj.hTimer);end
try,delete(src);end
end
