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
    % 17Jan2012 Armiger: Created
    % 15Jul2012 Armiger: Added load/save from tempdir
    
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
        
        JointAnglesDegrees;
        JointVelocity = zeros(size(action_bus_definition));
        
        TempFileName = 'jointAngles';
        
        Verbose = 1;
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            obj.Timer.Period = 0.05;
            %obj.Timer.Period = 0.15;
            
            jointAngles = UiTools.load_temp_file(obj.TempFileName);
            
            if isempty(jointAngles)
                obj.JointAnglesDegrees = zeros(size(action_bus_definition));
            else
                obj.JointAnglesDegrees = jointAngles;
            end
            
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

            obj.JointAnglesDegrees(action_bus_enum.Elbow) = max(min(...
                obj.JointAnglesDegrees(action_bus_enum.Elbow),120),5);
            
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
            
            globalVelocityMax = 10;
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
                if obj.Verbose > 0
                    disp('No Signal Source');
                end
                return
            elseif isempty(hSignalClassifier)
                %disp('No Signal Classifier');
                return
            end
            
            % Get intent from data stream
            [classOut,voteDecision,className,prSpeed]= getIntent(hSignalSource,hSignalClassifier);
            
            if obj.Verbose > 0
                fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
                    classOut,voteDecision,className,prSpeed);
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
                    desiredVelocity(action_bus_enum.Wrist_Rot) = -prSpeed*3;
                case {'Supinate' 'Wrist Rotate Out'}
                    desiredVelocity(action_bus_enum.Wrist_Rot) = +prSpeed*3;
                case {'Up' 'Hand Up'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = -prSpeed;
                case {'Down' 'Hand Down'}
                    desiredVelocity(action_bus_enum.Wrist_Dev) = +prSpeed;
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
            
            %%%%%%%%%%%%%%%%%%%%%%%%
            % Process grasps
            %%%%%%%%%%%%%%%%%%%%%%%%
            graspGain = 0.05;
            graspChangeThreshold = 0.2;  % Normalized [0 1]
            graspName = className;
            lastGraspVelocity = obj.GraspVelocity;
            if strfind(className,'Grasp')
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
                otherwise 
                    desiredGraspVelocity = 0;
                    % Auto-open
                    %desiredGraspVelocity = - prSpeed*graspGain*2;
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
        function close(obj)
            try
                stop(obj.Timer);
                delete(obj.Timer);
                
                UiTools.save_temp_file(obj.TempFileName,obj.JointAnglesDegrees);
                
            end
        end
        
    end
end
