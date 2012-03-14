classdef ScenarioBase < Common.MiniVieObj
    %SCENARIOBASE Base class for scenario objects
    %   This class is basically a plant model that has a built in timer.
    %   When executed, it will get data from the signal source, classify it
    %   to extract intent, map the intent to the appropriate control
    %   variables (and apply rate limiting and range limiting) and then
    %   send the data to the appropriate sink
    %
    % Created: 1/17/2012 Armiger
    
    properties
        SignalSource;
        SignalClassifier;
        
        Timer = [];
        
        % For Grasp Based control
        GraspValue = 0;
        GraspId;
        GraspVelocity = 0;
        
        % For individual finger control
        AutoOpenSpeed = 5;
        CloseGain = 5*ones(1,4);
        FingerCommand = [0 0 0 0];
        FingerAngles = [45 45 45 45]; %degrees
        
        JointAnglesDegrees = zeros(size(action_bus_definition));
        JointVelocity = zeros(size(action_bus_definition));
        
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            obj.Timer.Period = 0.05;
            %obj.Timer.Period = 0.15;
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
        function applyRangeLimits(obj)
            % Apply Wrist Limits
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),60),-60);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-10);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);

        end
        function applyGlobalRateLimits(obj)
            % Apply global velocity limits
            constrain = @(X,minX,maxX) min(max(X,minX),maxX);
            
            globalVelocityMax = 5;
            globalVelocityMin = 2;

            velocity = obj.JointVelocity;

            velocity = constrain(velocity,-globalVelocityMax,globalVelocityMax);
            velocity = max(abs(velocity),globalVelocityMin) .* (velocity ~= 0) .* sign(velocity);
            
            obj.JointVelocity = velocity;
            
%             obj.JointAnglesDegrees = obj.JointAnglesDegrees + velocity;
%             [velocity(velocity~=0) newVelocity(newVelocity~=0)]
        end
        function update(obj)
            
            hSignalSource = obj.SignalSource;
            hSignalClassifier = obj.SignalClassifier;

            % Verify inputs
            if isempty(hSignalSource)
                disp('No Signal Source');
                return
            elseif isempty(hSignalClassifier)
                disp('No Signal Classifier');
                return
            end
            
            % Get intent from data stream
            [classOut,voteDecision,className,prSpeed]= getIntent(hSignalSource,hSignalClassifier);
            
            fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
                classOut,voteDecision,className,prSpeed);

            lastVelocity = obj.JointVelocity;
            desiredVelocity = zeros(size(obj.JointVelocity));
            
            switch className
                case 'No Movement'
                case {'Pronate' 'Wrist Rotate In'}
                    desiredVelocity(action_bus_enum.Wrist_Rot) = -prSpeed;
                case {'Supinate' 'Wrist Rotate Out'}
                    desiredVelocity(action_bus_enum.Wrist_Rot) = +prSpeed;
                case {'Up' 'Hand Up'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = -prSpeed;
                case {'Down' 'Hand Down'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = +prSpeed;
                case {'Left' 'Wrist Flex' 'Wrist Flex In'}
                    desiredVelocity(action_bus_enum.Wrist_FE) = +prSpeed;
                case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
                    desiredVelocity(action_bus_enum.Wrist_FE) = -prSpeed;
            end
            
            globalGain = 10;
            desiredVelocity = desiredVelocity .* globalGain;
            
            % Apply velocity change rate limiting
            dt = obj.Timer.InstantPeriod;
            maxDeltaV = 10*dt;  %max instantaneous velocity change
            newVelocity = min(abs(lastVelocity) + (maxDeltaV),abs(desiredVelocity)) .* sign(desiredVelocity);
            
            obj.JointVelocity = newVelocity;
            
            % Apply global velocity limits
            applyGlobalRateLimits(obj);
            
            obj.JointAnglesDegrees = obj.JointAnglesDegrees + obj.JointVelocity;
            
            applyRangeLimits(obj);
            
            %%%%%%%%%%%%%%%%%%%%%%%%
            % Process grasps
            %%%%%%%%%%%%%%%%%%%%%%%%
            graspGain = 0.5;
            graspChangeThreshold = 0.15;  % Normalized [0 1]
            graspName = className;
            lastGraspVelocity = obj.GraspVelocity;
            if strfind(className,'Grasp')
                graspName = strtrim(className(1:end-5));
            end
            [enumGrasp cellGrasps] = enumeration('Controls.GraspTypes');
            switch graspName
                case 'Hand Open'
                    % Change the grasp Value in grasp mode
                    desiredGraspVelocity = - prSpeed*graspGain;
                case cellGrasps
                    % Increment position along grasp trajectory
                    desiredGraspVelocity = prSpeed*graspGain;
                    if isempty(obj.GraspId) || (obj.GraspValue < graspChangeThreshold)
                        % Note the isempty check handles the transient case
                        % where a grasp is not yet selected on startup
                        % otherwise the grasp state is preserved
                        obj.GraspId = enumGrasp( strcmp(graspName,cellGrasps) );
                    end
                otherwise 
                    desiredGraspVelocity = 0;
            end
            
            maxGraspDeltaV = 0.1*dt;  %max instantaneous velocity change
            newGraspVelocity = min(abs(lastGraspVelocity) + (maxGraspDeltaV),...
                abs(desiredGraspVelocity)) .* sign(desiredGraspVelocity);
            obj.GraspVelocity = newGraspVelocity;
            

            % Apply global velocity limits
            constrain = @(X,minX,maxX) min(max(X,minX),maxX);
            
            globalGraspVelocityMax = 0.1;
            globalGraspVelocityMin = 0.01;

            velocity = obj.GraspVelocity;

            velocity = constrain(velocity,-globalGraspVelocityMax,globalGraspVelocityMax);
            velocity = max(abs(velocity),globalGraspVelocityMin) .* (velocity ~= 0) .* ...
                sign(velocity);
            
            obj.GraspVelocity = velocity;
            
            
            obj.GraspValue = obj.GraspValue + obj.GraspVelocity;
            
            obj.GraspValue = max(min(obj.GraspValue,1),0);

            if isempty(obj.GraspId)
                fprintf('\tGrasp=[]');
            else
                fprintf('\tGrasp=%12s',char(obj.GraspId));
            end
            fprintf('\tGraspVal=%6.4f',obj.GraspValue);
            
            %%%%%%%%%%%%%%%%%%%%%%%%
            % END grasps
            %%%%%%%%%%%%%%%%%%%%%%%%
            
            
            fprintf('\tEND\n');
            
            return
            
            
            
            gain = 15;
            graspGain = 0.5;
            graspChangeThreshold = 0.15;  % Normalized [0 1]
            obj.FingerCommand = zeros(1,4);
            
            [enumGrasp cellGrasps] = enumeration('Controls.GraspTypes');
            
            strClass = hSignalClassifier.ClassNames{cursorMoveClass};
            if strfind(strClass,'Grasp')
                strClass = strtrim(strClass(1:end-5));
            end
            
            constrain = @(X,minX,maxX) min(max(X,minX),maxX);
            
            dt = obj.Timer.InstantPeriod;

            lastVelocity = obj.JointVelocity;
            newVelocity = zeros(size(obj.JointVelocity));
            
            jointAngles = obj.JointAnglesDegrees;
            
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
                    
                    desiredVelocity = -prSpeed*gain*20;
                    maxIncrement = -20*dt;  %max instantaneous velocity change
                    % This allows immediate stop
                    dv = min(lastVelocity(action_bus_enum.Wrist_Rot) + maxIncrement,0);
                    
                    V = max(desiredVelocity,dv);
                    newVelocity(action_bus_enum.Wrist_Rot) = constrain(V,-10,10);
                case {'Supinate' 'Wrist Rotate Out'}
                    maxIncrement = +0.8;
                    dv = max(lastVelocity(action_bus_enum.Wrist_Rot) + maxIncrement,0);
                    %dv = -200;
                    dv = constrain(dv.^2.*sign(maxIncrement),-10,10);
                    newVelocity(action_bus_enum.Wrist_Rot) = dv;
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
            
            obj.JointAnglesDegrees = jointAngles + newVelocity;
            obj.JointVelocity = newVelocity;
            fprintf('\tV=%12f',newVelocity(action_bus_enum.Wrist_Rot));
            
            % Apply Wrist Limits
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),80),-80);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-10);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);
            
%             if isempty(obj.GraspId)
%                 fprintf('\tGrasp=[]');
%             else
%                 fprintf('\tGrasp=%12s',char(obj.GraspId));
%             end
%             fprintf('\tGraspVal=%6.4f',obj.GraspValue);
            
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
