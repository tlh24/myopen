%classdef MiniVDisplayScenario < Scenarios.ScenarioBase
classdef MiniVDisplayScenario < Scenarios.OnlineRetrainer
    % Scenario for controlling a rendered 3d virtual hand/arm
    % Depends on UiTools
    %
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hOutput = [];
        hAxes = [];
        hFigure = [];
        hLegend = [];
        
        isLeftSide = 1;
        
    end
    methods
        function obj = MiniVDisplayScenario
            %obj.hMPL = UdpSink('192.168.139.100',8085);
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Call superclass initialize method
            %initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            obj.setup_display;

            % Override timer rate for rendering intensive function:
            period = 0.1;  %s
            fprintf('[%s] Setting timer refresh rate to %4.2f s\n',mfilename,period);
            obj.Timer.Period = period;
        end
        function setup_display(obj)
            
            hFig = UiTools.create_figure('Mini VIE Display','MiniVIEDisplay');
            %             pos = get(hFigure,'Position');
            %             pos(3) = 700;
            %             set(hFigure,'Position',pos);
            
            set(hFig,'Color',[ 0.8706    0.9216    0.9804]);
            set(hFig,'ToolBar','Figure');
            %set(obj.hFigure,'MenuBar','none');
            set(hFig,'CloseRequestFcn',@(src,evnt)close(obj))
            
            obj.hFigure = hFig;
            
            obj.hAxes = axes('Parent',hFig);
            view(obj.hAxes,0,0);
            axis(obj.hAxes,'equal')
            axis(obj.hAxes,'off')
            
            % View Whole [Left] Arm, Frontal
            axis([0 0.4 -0.4 0.4 0.3 0.7])
            
            % Zoom to hand
%             if obj.isLeftSide
%                 axis(obj.hAxes,[0.15 0.25 -0.1 0.1 0.35 0.45]);
%             else
%                 axis(obj.hAxes,[-0.25 -0.15 -0.1 0.1 0.35 0.45]);
%             end
            %rotate3d(obj.hAxes,'on');
            
            % Hand and Forearm
%             set(obj.hAxes,'CameraUpVector',[0 0 -1]);
%             if obj.isLeftSide
%                 set(obj.hAxes,'CameraPosition',[-0.5 -1 0.5]);
%                 camroll(obj.hAxes,-60);
%             else
%                 set(obj.hAxes,'CameraPosition',[0.5 -1 0.5]);
%                 camroll(obj.hAxes,60);
%             end
%             set(obj.hAxes,'CameraViewAngle',6);
            hLight = light('Parent',obj.hAxes);
            camlight(hLight,'left');
            
            obj.hOutput = Presentation.MiniV(obj.hAxes,obj.isLeftSide);
            obj.hOutput.isWireframe = 0;
            obj.hOutput.isTriad= 0;
            
        end        
        function update(obj)
            %update@Scenarios.ScenarioBase(obj); % Call superclass update method
            update@Scenarios.OnlineRetrainer(obj); % Call superclass update method
            
            s = obj.ArmStateModel.structState(obj.ArmStateModel.RocStateId);
            if ~isempty(s.State)
                handAngles = Controls.graspInterpolation(s.Value, s.State);
                obj.hOutput.set_hand_angles_degrees(handAngles);
            end
            
            ang = obj.JointAnglesDegrees;
            obj.hOutput.set_upper_arm_angles_degrees(ang);
            
            if ishandle(obj.hAxes)
                obj.hOutput.redraw();
            end
            
            if obj.Verbose
                fprintf('\b\n');
            end

        end
        function close(obj)
            %close@Scenarios.ScenarioBase(obj); % Call superclass update method
            close@Scenarios.OnlineRetrainer(obj); % Call superclass update method
            
            if ishandle(obj.Timer) && strcmpi(obj.Timer.Running,'on')
                try
                    stop(obj.Timer);
                    delete(obj.Timer);
                end
            end
            if ishandle(obj.hFigure)
                delete(obj.hFigure);
            end
        end
    end
end

%Private
function closeRequestFcn(src,obj)
fprintf('Closing %s', mfilename);
stop(obj.Timer);
delete(obj.Timer)
delete(src);
end

