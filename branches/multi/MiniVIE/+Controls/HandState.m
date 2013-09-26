classdef HandState < handle
    properties
        Verbose = 1;
        MotionCommandThreshold = 0.005;
        CurrentState = Controls.HandStateEnum.Platform;
        
        Name = mfilename;
        
        Actuators = struct();
        ActiveJoints = [];
        
        EnableRecording = 0;
    end
    properties (Constant = true)
        Input = struct('LEFT_RIGHT',1,'UP_DOWN',2);
        
        NumJointAngles = length(fieldnames(action_bus_enum));
        
        % Stores the index mapping from grasp space to joint space
        IdxIndex = [
            action_bus_enum.Index_MCP
            action_bus_enum.Index_PIP
            action_bus_enum.Index_DIP];
        
        IdxMiddleRingLittle = [
            action_bus_enum.Middle_MCP
            action_bus_enum.Middle_PIP
            action_bus_enum.Middle_DIP
            action_bus_enum.Ring_MCP
            action_bus_enum.Ring_PIP
            action_bus_enum.Ring_DIP
            action_bus_enum.Little_MCP
            action_bus_enum.Little_PIP
            action_bus_enum.Little_DIP];
        
        IdxThumbFE = [
            action_bus_enum.Thumb_FE
            action_bus_enum.Thumb_IP
            action_bus_enum.Thumb_MCP];
        
        IdxThumbAbAd = action_bus_enum.Thumb_AbAd;
    end
    events
        StateChange
    end
    methods (Abstract)
        updateState(obj)
        setState(obj, newState)
    end
    methods
        function initialize(obj)
            obj.Actuators = struct(...
                'Index',obj.CreateActuatorStruct(1),...
                'MiddleRingLittle',obj.CreateActuatorStruct(2),...
                'ThumbAdAb',obj.CreateActuatorStruct(3),...
                'ThumbFE',obj.CreateActuatorStruct(4));
            
            obj.Actuators.Index.Gain = 1;
            obj.Actuators.MiddleRingLittle.Gain = 1;
            obj.Actuators.ThumbFE.Gain = 2;
            obj.Actuators.ThumbAdAb.Gain = 4;

            setState(obj, Controls.HandStateEnum.Platform);
        end
        function setInactive(obj)
            obj.Actuators.Index.InputSrc = [];
            obj.Actuators.MiddleRingLittle.InputSrc = [];
            obj.Actuators.ThumbAdAb.InputSrc = [];
            obj.Actuators.ThumbFE.InputSrc = [];
        end
        function setDefaultRange(obj)
            obj.Actuators.Index.Max = 1;
            obj.Actuators.Index.Min = 0;
            obj.Actuators.MiddleRingLittle.Max = 1;
            obj.Actuators.MiddleRingLittle.Min = 0;
            obj.Actuators.ThumbAdAb.Max = 1;
            obj.Actuators.ThumbAdAb.Min = 0;
            obj.Actuators.ThumbFE.Max = 1;
            obj.Actuators.ThumbFE.Min = 0;
        end
        function putdata(obj,inputCmd)
            if ~isequal(size(inputCmd),[2 1]) && ~isequal(size(inputCmd),[1 2])
                error('Expected a 2 element array');
            end
            
            actuatorNames = fieldnames(obj.Actuators);
            
            if (obj.Verbose > 1),fprintf('[%s] Current Grasp: %s',mfilename,obj.getStateName(obj.CurrentState));end
            
            for i = 1:length(actuatorNames)
                thisActuatorName = actuatorNames{i};
                thisActuator = obj.Actuators.(thisActuatorName);
                if (obj.Verbose > 1),fprintf('\t%s=%4.1f',thisActuatorName,thisActuator.Position);end
                
                if isempty(thisActuator.InputSrc)
                    continue
                else
                    motionCommand = inputCmd(abs(thisActuator.InputSrc)) * sign(thisActuator.InputSrc);
                end
                if abs(motionCommand) > obj.MotionCommandThreshold
                    thisActuator.Position = thisActuator.Position + thisActuator.Gain*motionCommand;
                    thisActuator.Position = max(min(thisActuator.Position,thisActuator.Max),thisActuator.Min);
                end
                
                obj.Actuators.(thisActuatorName) = thisActuator;
            end
            if (obj.Verbose > 1),fprintf('\n');end
        end
        function jointAnglesDegrees = graspToJointAngles(obj)
            % convert from grasp space to joint space
            jointAnglesDegrees = zeros(obj.NumJointAngles,1);
            
            jointAnglesDegrees(obj.IdxIndex) = ...
                85*obj.Actuators.Index.Position;
            
            jointAnglesDegrees(obj.IdxMiddleRingLittle) = ...
                85*obj.Actuators.MiddleRingLittle.Position;
            
            jointAnglesDegrees(obj.IdxThumbFE) = ...
                50*obj.Actuators.ThumbFE.Position - 10;
            
            jointAnglesDegrees(obj.IdxThumbAbAd) = ...
                -65*obj.Actuators.ThumbAdAb.Position;

            jointAnglesDegrees(action_bus_enum.Thumb_Rot) = ...
                -40*obj.Actuators.ThumbAdAb.Position;
        end
    end
    
    methods (Static = true)
        function actStruct = CreateActuatorStruct(id)
            actStruct = struct('ID',id,'Gain',[],'Position',0,'Max',[],'Min',[],'InputSrc',[]);
        end
    end
end
