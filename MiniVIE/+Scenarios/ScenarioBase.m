classdef ScenarioBase < Common.MiniVieObj
    %SCENARIOBASE Base class for scenario objects
    %   This class is basically a plant model that has a built in timer.
    %   When executed, it will get data from the signal source, classify it
    %   to extract intent, map the intent to the appropriate control
    %   variables (and apply rate limiting and range limiting) and then
    %   send the data to the appropriate sink
    %
    % Note that the joint angles will be saved on closed and loaded on init
    % in the user's tempdir directory
    % 
    % Note for finger only classification set the AutoOpenSpeed parameter
    % to > 0 to release automatically
    %
    % 17Jan2012 Armiger: Created
    % 15Jul2012 Armiger: Added load/save from tempdir
    
    properties
        SignalSource;
        SignalClassifier;
        
        Timer;
        
        % For Grasp Based control
        GraspId;
        GraspValue = 0;     % normalized position
        GraspVelocity = 0;
        
        % For opening hand without Hand Open class:
        AutoOpenSpeed = 0;

        % Store joint state parameters
        JointAnglesDegrees;
        JointVelocity;
        
        TempFileName = 'jointAngles';
        
        Verbose = 1;
        
    end
    
    properties (Constant = true)
        constrain = @(X,minX,maxX) min(max(X,minX),maxX);
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            period = 0.05;
            fprintf('[%s] Setting timer refresh rate to %4.2f s\n',mfilename,period);
            obj.Timer.Period = period;
            %obj.Timer.Period = 0.15;
            
            jointAngles = UiTools.load_temp_file(obj.TempFileName);
            %jointAngles = [];
            
            if isempty(jointAngles)
                obj.JointAnglesDegrees = zeros(size(action_bus_definition));
            else
                obj.JointAnglesDegrees = jointAngles;
            end
            obj.JointVelocity = zeros(size(action_bus_definition));

            
        end
        function start(obj)
            % && ishandle(obj.Timer) <-- this is always false
            if ~isempty(obj.Timer) && strcmpi(obj.Timer.Running,'off')
                start(obj.Timer);
            end
        end
        function stop(obj)
            % && ishandle(obj.Timer) <-- this is always false
            if ~isempty(obj.Timer) && strcmpi(obj.Timer.Running,'on')
                stop(obj.Timer);
            end
        end
        function applyRangeLimits(obj)
            % Apply Elbow Limits
            obj.JointAnglesDegrees(action_bus_enum.Elbow) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Elbow),125),5);
            % Apply Wrist Limits
            obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_FE),60),-60);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev),45),-45);
            obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot),90),-90);
        end
        function applyGlobalRateLimits(obj)
            % Apply global velocity limits
            
            globalVelocityMax = 10;
            globalVelocityMin = 2;

            velocity = obj.JointVelocity;

            velocity = obj.constrain(velocity,-globalVelocityMax,globalVelocityMax);
            velocity = max(abs(velocity),globalVelocityMin) .* (velocity ~= 0) .* sign(velocity);
            
            obj.JointVelocity = velocity;
            
%             obj.JointAnglesDegrees = obj.JointAnglesDegrees + velocity;
%             [velocity(velocity~=0) newVelocity(newVelocity~=0)]
        end
        function [className,prSpeed,rawEmg,windowData,features2D,voteDecision] = getIntentSignals(obj)
            % Perform classification with error checking

            % Init output variables
            [className,prSpeed,rawEmg,windowData,features2D,voteDecision] = deal([]);

            % Verify inputs
            if isempty(obj.SignalSource)
                if obj.Verbose > 0
                    disp('No Signal Source');
                end
                return
            elseif isempty(obj.SignalClassifier)
                if obj.Verbose > 0
                    disp('No Signal Classifier');
                end
                return
            end
            
            % Get intent from data stream
            [classOut,voteDecision,className,prSpeed,rawEmg,windowData,features2D] ...
                = getIntent(obj.SignalSource,obj.SignalClassifier);
            
            if obj.Verbose > 0
                fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
                    classOut,voteDecision,className,prSpeed);
            end
            
        end
        function generateUpperArmCommand(obj,className,prSpeed)
            if isempty(className)
                return
            end
            
            lastVelocity = obj.JointVelocity;
            desiredVelocity = zeros(size(obj.JointVelocity));
            
            % Note gains can/should be adjusted using guiAdjustGains
            %TODO: gain values overwritten on classifier retrain
            switch className
                case 'No Movement'
                case {'Elbow Flexion' 'Elbow Up'}
                    desiredVelocity(action_bus_enum.Elbow) = prSpeed;
                case {'Elbow Extension' 'Elbow Down'}
                    desiredVelocity(action_bus_enum.Elbow) = -prSpeed;
                case {'Pronate' 'Wrist Rotate In'}
                    desiredVelocity(action_bus_enum.Wrist_Rot) = prSpeed*1.5;
                case {'Supinate' 'Wrist Rotate Out'}
                    desiredVelocity(action_bus_enum.Wrist_Rot) = -prSpeed*1.5;
                case {'Up' 'Hand Up'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = prSpeed;
                case {'Down' 'Hand Down'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = -prSpeed;
                case {'Left' 'Wrist Flex' 'Wrist Flex In'}
                    desiredVelocity(action_bus_enum.Wrist_FE) = +prSpeed;
                case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
                    desiredVelocity(action_bus_enum.Wrist_FE) = -prSpeed;
            end
            
            globalGain = 3;
            desiredVelocity = desiredVelocity .* globalGain;
            
            % Apply velocity change rate limiting
            dt = obj.Timer.InstantPeriod;
            maxDeltaV = 15*dt;  %max instantaneous velocity change
            newVelocity = min(abs(lastVelocity) + (maxDeltaV),abs(desiredVelocity)) .* sign(desiredVelocity);
            
            obj.JointVelocity = newVelocity;
            
            % Apply global velocity limits
            applyGlobalRateLimits(obj);
            
            obj.JointAnglesDegrees = obj.JointAnglesDegrees + obj.JointVelocity;
            
            applyRangeLimits(obj);
            
        end
        function generateGraspCommand(obj,className,prSpeed)
            
            if isempty(className)
                return
            end
            
            % TODO: Override hand close speed
            prSpeed = 0.2;
            
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%
            % Process grasps
            %%%%%%%%%%%%%%%%%%%%%%%%
            graspGain = 0.1;
            graspChangeThreshold = 0.2;  % Normalized [0 1]
            graspName = className;
            lastGraspVelocity = obj.GraspVelocity;
            
            isGraspClass = strfind(className,'Grasp');
            if isGraspClass
                graspName = strtrim(className(1:end-5));
            end
            [enumGrasp cellGrasps] = enumeration('Controls.GraspTypes');
            switch graspName
                case 'Hand Open'
                    % Change the grasp Value in grasp mode
                    desiredGraspVelocity = - prSpeed*graspGain*1;
                case cellGrasps
                    % Increment position along grasp trajectory
                    desiredGraspVelocity = prSpeed*graspGain;
                    if isempty(obj.GraspId) || (obj.GraspValue < graspChangeThreshold)
                        % Note the isempty check handles the transient case
                        % where a grasp is not yet selected on startup
                        % otherwise the grasp state is preserved
                        obj.GraspId = enumGrasp( strcmp(graspName,cellGrasps) );
                    end
                case {'No Movement','Rest'}
                    desiredGraspVelocity = 0;
                    % Auto-open
                    if obj.AutoOpenSpeed > 0
                        desiredGraspVelocity = - prSpeed*graspGain*2;
                    end
                otherwise
                    desiredGraspVelocity = 0;
                    if isGraspClass
                        fprintf('[%s.m] Unmatched grasp: "%s"\n',mfilename,graspName);
                    end
            end
            
            dt = obj.Timer.InstantPeriod;
            maxGraspDeltaV = 2*dt;  %max instantaneous velocity change
            newGraspVelocity = min(abs(lastGraspVelocity) + (maxGraspDeltaV),...
                abs(desiredGraspVelocity)) .* sign(desiredGraspVelocity);
            obj.GraspVelocity = newGraspVelocity;
            

            % Apply global velocity limits
            constrain = @(X,minX,maxX) min(max(X,minX),maxX);
            
            globalGraspVelocityMax = 0.1;
            globalGraspVelocityMin = 0.0001;

            velocity = obj.GraspVelocity;

            velocity = constrain(velocity,-globalGraspVelocityMax,globalGraspVelocityMax);
            velocity = max(abs(velocity),globalGraspVelocityMin) .* (velocity ~= 0) .* ...
                sign(velocity);
            
            obj.GraspVelocity = velocity;
            
            obj.GraspValue = obj.GraspValue + obj.GraspVelocity;
            
            obj.GraspValue = max(min(obj.GraspValue,1),0);

            if obj.Verbose
                
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
            end
            
            
        end
        function update(obj)
            
            % Step 1: Get Intent
            [className,prSpeed] = getIntentSignals(obj);
            
            % Step 2: Convert Intent to limb commands
            obj.generateUpperArmCommand(className,prSpeed);
            obj.generateGraspCommand(className,prSpeed);
            
        end
        function close(obj)
            try
                stop(obj.Timer);
                delete(obj.Timer);
                
                UiTools.save_temp_file(obj.TempFileName,obj.JointAnglesDegrees);
                
            end
        end
        
    end
end
