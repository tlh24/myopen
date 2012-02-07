classdef ScenarioBase < Common.MiniVieObj
    %SCENARIOBASE Base class for scenario objects
    %   Detailed explanation goes here
    % Created: 1/17/2012 Armiger
    
    properties
        SignalSource;
        SignalClassifier;
        
        Timer = [];
        
        % For Grasp Based control
        GraspValue = 0;
        GraspId;
        
        % For individual finger control
        AutoOpenSpeed = 5;
        CloseGain = 5*ones(1,4);
        FingerCommand = [0 0 0 0];
        FingerAngles = [45 45 45 45]; %degrees
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
        
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            obj.Timer.Period = 0.05;
        end
        function start(obj)
            if strcmpi(obj.Timer.Running,'off')
                start(obj.Timer);
            end
        end
        function stop(obj)
            if strcmpi(obj.Timer.Running,'on')
                stop(obj.Timer);
            end
        end
        function update(obj)
            
            hSignalSource = obj.SignalSource;
            hSignalClassifier = obj.SignalClassifier;
            
            if isempty(hSignalSource)
                disp('No Input');
                return
            end
            
            hSignalSource.NumSamples = hSignalClassifier.NumSamplesPerWindow;
            windowData = hSignalSource.getFilteredData();
            
            features2D = hSignalClassifier.extractfeatures(windowData);
            activeChannelFeatures = features2D(hSignalClassifier.ActiveChannels,:);
            [classOut voteDecision] = hSignalClassifier.classify(reshape(activeChannelFeatures',[],1));
            
            if hSignalClassifier.NumMajorityVotes > 1
                cursorMoveClass = voteDecision;
            else
                cursorMoveClass = classOut;
            end
            
            virtualChannels = hSignalClassifier.virtual_channels(features2D,cursorMoveClass);
            prSpeed = max(virtualChannels);
            
            fprintf('Class=%2d; Vote=%2d; Class = %16s; V=%6.4f',...
                classOut,voteDecision,hSignalClassifier.ClassNames{cursorMoveClass},prSpeed);
            
            gain = 15;
            graspGain = 0.5;
            graspChangeThreshold = 0.15;  % Normalized [0 1]
            obj.FingerCommand = zeros(1,4);
            
            [enumGrasp cellGrasps] = enumeration('Controls.GraspTypes');
            
            strClass = hSignalClassifier.ClassNames{cursorMoveClass};
            if strfind(strClass,'Grasp')
                strClass = strtrim(strClass(1:end-5));
            end
            switch strClass
                case 'No Movement'
                case 'Hand Open'
                    % Open the fingers in Finger mode
                    obj.FingerCommand(1:4) = -prSpeed;
                    % Change the grasp Value in grasp mode
                    obj.GraspValue = obj.GraspValue - prSpeed*graspGain;
                case cellGrasps
                    obj.GraspValue = obj.GraspValue + prSpeed*graspGain;
                    if isempty(obj.GraspId) || (obj.GraspValue < graspChangeThreshold)
                        obj.GraspId = enumGrasp( strcmp(strClass,cellGrasps) );
                    end
                case 'Hand Close'
                    obj.FingerCommand(1:4) = prSpeed;
                case'Index'
                    obj.FingerCommand(1) = prSpeed;
                case 'Middle'
                    obj.FingerCommand(2) = prSpeed;
                case 'Ring'
                    obj.FingerCommand(3) = prSpeed;
                case 'Little'
                    obj.FingerCommand(4) = prSpeed;
                case {'Pronate' 'Wrist Rotate In'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) - prSpeed*gain*2;
                case {'Supinate' 'Wrist Rotate Out'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) + prSpeed*gain*5;
                case {'Up' 'Hand Up'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) - prSpeed*gain*1;
                case {'Down' 'Hand Down'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) + prSpeed*gain*1;
                case {'Left' 'Wrist Flex' 'Wrist Flex In'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) + prSpeed*gain*2;
                case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
                    obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = ...
                        obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) - prSpeed*gain*2;
%                     obj.GraspValue = obj.GraspValue - prSpeed*graspGain;
                otherwise
                    fprintf('\tUnmatched Class: %s\n',strClass);
                    return
            end
            
            if isempty(obj.GraspId)
                % Individual finger control
                obj.FingerCommand = obj.FingerCommand .* obj.CloseGain;
                
                if ~strcmpi('Hand Open',hSignalClassifier.ClassNames)
                    obj.FingerCommand(obj.FingerCommand == 0) = -obj.AutoOpenSpeed;
                end
                
                obj.FingerAngles = obj.FingerAngles + obj.FingerCommand;
                obj.FingerAngles = max(min(obj.FingerAngles,80),0);
                
                % Apply finger angles to each finger segment
                id = [action_bus_enum.Index_MCP action_bus_enum.Index_DIP action_bus_enum.Index_PIP];
                obj.JointAnglesDegrees(id) = obj.FingerAngles(1);
                id = [action_bus_enum.Middle_MCP action_bus_enum.Middle_DIP action_bus_enum.Middle_PIP];
                obj.JointAnglesDegrees(id) = obj.FingerAngles(2);
                id = [action_bus_enum.Ring_MCP action_bus_enum.Ring_DIP action_bus_enum.Ring_PIP];
                obj.JointAnglesDegrees(id) = obj.FingerAngles(3);
                id = [action_bus_enum.Little_MCP action_bus_enum.Little_DIP action_bus_enum.Little_PIP];
                obj.JointAnglesDegrees(id) = obj.FingerAngles(4);
                
            else
                % Grasp control
                
                % TODO: this is MiniV Specific
                handAngles = Controls.graspInterpolation(obj.GraspValue, obj.GraspId);
                obj.JointAnglesDegrees(8:end) = handAngles(8:end);
            end
            
            obj.GraspValue = max(min(obj.GraspValue,1),0);
            
            % Apply Wrist Limits
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),80),-80);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-10);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);
            
            if isempty(obj.GraspId)
                fprintf('\tGrasp=[]');
            else
                fprintf('\tGrasp=%12s',char(obj.GraspId));
            end
            fprintf('\tGraspVal=%6.4f',obj.GraspValue);
            
            fprintf('\tEND\n');
        end
        function close(obj)
            try
                stop(obj.Timer);
                delete(obj.Timer);
            end
        end
        
    end
end
