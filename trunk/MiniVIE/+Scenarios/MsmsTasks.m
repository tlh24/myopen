classdef MsmsTasks < Scenarios.OnlineRetrainer
    % Scenario for controlling MSMS tasks (clothspins, etc)
    % Depends on UiTools
    %
    % 01-Apr-2013 Armiger: Created
    properties
        % Handles
        hSink = [];
    end
    methods
        function obj = MsmsTasks
        end
        function close(obj)
            close@Scenarios.OnlineRetrainer(obj); % Call superclass update method
            
            if ishandle(obj.Timer) && strcmpi(obj.Timer.Running,'on')
                try
                    stop(obj.Timer);
                    delete(obj.Timer);
                end
            end
        end
        
        function update(obj)
            update@Scenarios.OnlineRetrainer(obj); % Call superclass update method
            
            if ~isempty(obj.GraspId)
                % Create P1 grasp pattern
                iVal = obj.GraspValue;
                
                a = action_bus_enum;
                id = [a.Index_MCP a.Middle_MCP a.Ring_MCP a.Little_MCP];
                obj.JointAnglesDegrees(id) = iVal * 40;
                
                obj.JointAnglesDegrees(a.Thumb_Rot) = 140;
                obj.JointAnglesDegrees(a.Thumb_IP) = iVal * 30;
            end
            
            ang = obj.JointAnglesDegrees;

            obj.hSink.putdata(ang*pi/180);
            
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Call superclass initialize method
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            obj.hSink = Presentation.OdeSink('127.0.0.1',25000,25001);
        end
    end
end
