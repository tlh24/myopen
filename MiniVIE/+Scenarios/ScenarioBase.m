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
        
        ArmStateModel;
        
        Timer;
        
        % For Grasp Based control
        GraspId;
        GraspValue = 0;     % normalized position
        GraspVelocity = 0;
        GraspLocked = 0;
        
        % Counter for opening hand the remaining to full rest position
        GraspChangeCounter = 0;
        GraspChangeCount = 40;
        
        
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
            % initialize(obj,SignalSource,SignalClassifier)
            obj.SignalSource = SignalSource;
            obj.SignalClassifier = SignalClassifier;
            
            obj.ArmStateModel = Controls.ArmStateModel();
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            period = 0.05;
            fprintf('[%s] Setting timer refresh rate to %4.2f s\n',mfilename,period);
            obj.Timer.Period = period;
            
            jointAngles = UiTools.load_temp_file(obj.TempFileName);
            
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
                % call the update funciton once manually.  
                % if there is an error this will help debug
                obj.update();  
                start(obj.Timer);
            end
        end
        function stop(obj)
            % && ishandle(obj.Timer) <-- this is always false
            if ~isempty(obj.Timer) && strcmpi(obj.Timer.Running,'on')
                stop(obj.Timer);
            end
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
            end
            if isempty(obj.SignalClassifier)
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
            % assign velocities to the joint state model based on the
            % classified signal name
            if isempty(className)
                return
            end
            
            s = obj.ArmStateModel;
            globalGain = 3;
            prSpeed = prSpeed * globalGain;
            
            % ensure velocities are stopped
            s.velocity(1:7) = 0;

            % Note gains can/should be adjusted using guiAdjustGains
            %TODO: gain values overwritten on classifier retrain
            switch className
                case 'No Movement'
                case {'Shoulder Flexion'}
                    s.setVelocity(mpl_upper_arm_enum.SHOULDER_FE,+prSpeed);
                case {'Shoulder Extension'}
                    s.setVelocity(mpl_upper_arm_enum.SHOULDER_FE,-prSpeed);
                case {'Shoulder Abduction'}
                    s.setVelocity(mpl_upper_arm_enum.SHOULDER_ADAB,+prSpeed);
                case {'Shoulder Adduction'}
                    s.setVelocity(mpl_upper_arm_enum.SHOULDER_ADAB,-prSpeed);
                case {'Humeral External Rotation'}
                    desiredVelocity(action_bus_enum.Humeral_Rot) = prSpeed;
                case {'Humeral Internal Rotation'}
                    desiredVelocity(action_bus_enum.Humeral_Rot) = -prSpeed;
                case {'Elbow Flexion' 'Elbow Up'}
                    s.setVelocity(mpl_upper_arm_enum.ELBOW,+prSpeed);
                case {'Elbow Extension' 'Elbow Down'}
                    s.setVelocity(mpl_upper_arm_enum.ELBOW,-prSpeed);
                case {'Pronate' 'Wrist Rotate In'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_ROT,+prSpeed);
                case {'Supinate' 'Wrist Rotate Out'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_ROT,-prSpeed);
                case {'Up', 'Hand Up', 'Radial Deviation','Wrist Abduction'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_DEV,+prSpeed);
                case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_DEV,-prSpeed);
                case {'Left' 'Wrist Flex' 'Wrist Flex In'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_FE,+prSpeed);
                case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
                    s.setVelocity(mpl_upper_arm_enum.WRIST_FE,-prSpeed);
            end
            
        end
        function generateGraspCommand(obj,className,prSpeed)

            if isempty(className)
                return
            end

            % Get the decoded grasp name.  This is equivelant to the class
            % name, but if it is a 'Grasp' then a flag will be set that
            % this class can be used for 'hand close'
            isGraspClass = strfind(lower(className),'grasp');
            if isGraspClass
                % Strip off the 'Grasp' string and leave only the type
                graspName = strtrim(className(1:end-5));
            else
                graspName = className;
            end
            
            % Get a list of valid grasp types
            [enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes');
            
            % Handle special case for grasp auto open.  In this paradigm,
            % only hand close patterns are trained.  The hand opens only
            % during no movement classes
            % TODO: Implement
            %                         % Auto-open
            %                         if obj.AutoOpenSpeed > 0
            %                             desiredGraspVelocity = -obj.AutoOpenSpeed;
            %                         end
            
            s = obj.ArmStateModel;
            switch graspName
                case 'Hand Open'
                    s.setVelocity(s.RocStateId,-prSpeed);
                case cellGrasps
                    % Any valid grasp == Hand Close
                    graspId = enumGrasp( strcmp(graspName,cellGrasps) );
                    if obj.GraspValue < 0.2
                        s.setRocId(graspId);
                    end
                    s.setVelocity(s.RocStateId,+prSpeed);
                case {'No Movement','Rest'}
                    s.setVelocity(s.RocStateId,0);
                otherwise
                    s.setVelocity(s.RocStateId,0);
                    if isGraspClass
                        fprintf('[%s.m] Unmatched grasp: "%s"\n',mfilename,graspName);
                    end
            end
            
            % joint angles and grasp values fields are updated here for
            % backward comparatbility
            % update the state
            obj.ArmStateModel.update();
            state = obj.ArmStateModel.getValues();
            
            obj.JointAnglesDegrees(1:7) = state(1:7) * 180/pi;
            obj.GraspValue = state(8);
            obj.GraspId = s.structState(8).State;
            
            %generateGraspCommandTwoState(obj,className,prSpeed);
        end
        function generateGraspCommandTwoState(obj,className,prSpeed)
            
            if isempty(className)
                return
            end
                        
            %%%%%%%%%%%%%%%%%%%%%%%%
            % Process grasps
            %%%%%%%%%%%%%%%%%%%%%%%%
            
            % Implement a new grasp control paradign in which a barrier is
            % created between the grasp shaping portion (rest to
            % prehension) and then prehensino to fully closed.  Nominally
            % the threshold will be 20%
            %
            %
            % Starting from rest, decode grasps in real-time allowing
            % switching from the grasp type.  The max movement will be up
            % to 20% until a rest is received.  The grasp will then be
            % 'locked' in the current grasp state.  The next grasp decoded
            % after no movement will close the hand in the locked grasp
            % conformation.  Any hand close command will result in the hand
            % closing in the locked grasp type, allowing for
            % misclassificaiton.  Hand open and close commands will then
            % only move the hand along the prescribed grasp trajectory
            % (from 20% to 100%).  
            %
            % To return to the rest position, the hand must start at or
            % close to 20% (or 25%), and then a sustained hand open command
            % must be issued.  
            

            
            % Get the decoded grasp name.  This is equivelant to the class
            % name, but if it is a 'Grasp' then a flag will be set that
            % this class can be used for 'hand close'
            isGraspClass = strfind(lower(className),'grasp');
            if isGraspClass
                % Strip off the 'Grasp' string and leave only the type
                graspName = strtrim(className(1:end-5));
            else
                graspName = className;
            end
            
            % Get a list of valid grasp types
            [enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes');

            
            % Handle special case for grasp auto open.  In this paradigm,
            % only hand close patterns are trained.  The hand opens only
            % during no movement classes
            % TODO: Implement
            %                         % Auto-open
            %                         if obj.AutoOpenSpeed > 0
            %                             desiredGraspVelocity = -obj.AutoOpenSpeed;
            %                         end
            
            
            
            switch graspName
                case 'Hand Open'
                    desiredGraspVelocity = -prSpeed*0.5;
                case cellGrasps
                    % Any valid grasp == Hand Close
                    desiredGraspVelocity = +prSpeed*0.5;
                    
                    if obj.GraspValue < 0.2
                        % only change grasp Ids if the hand is mostly open
                        obj.GraspId = enumGrasp( strcmp(graspName,cellGrasps) );
                    end
                    
                case {'No Movement','Rest'}
                    desiredGraspVelocity = 0;
                otherwise
                    desiredGraspVelocity = 0;
                    if isGraspClass
                        fprintf('[%s.m] Unmatched grasp: "%s"\n',mfilename,graspName);
                    end
            end

            % override

            % Limit the max velocity
            graspGain = 0.05;
            obj.GraspVelocity = obj.constrain(desiredGraspVelocity*graspGain,-0.1,0.1);

            % Limit the grasp range
            obj.GraspValue = obj.constrain(obj.GraspValue + obj.GraspVelocity, 0.0, 1.0);
            
            
            % Traditional grasp movement
            obj.GraspVelocity = obj.constrain(desiredGraspVelocity,-0.1,0.1);
            % Limit the grasp range
            obj.GraspValue = obj.constrain(obj.GraspValue + obj.GraspVelocity, 0.0, 1.0);
            return
            
            
            return

            %obj.GraspValue = max(obj.GraspValue,.21);
            obj.GraspLocked = 1;

%             fprintf('[%s] Grasp Locked==%d; Counter==%2d; Value==%4.1f\n',...
%                 mfilename,obj.GraspLocked,obj.GraspChangeCounter,obj.GraspValue);

            if obj.GraspLocked
                % Range is 20% to 100%, no grasp changes allowed

                if strcmpi(graspName,{'Hand Open'})
                    obj.GraspChangeCounter = obj.GraspChangeCounter + 1;
                else
                    obj.GraspChangeCounter = 0;
                end
                
                if obj.GraspChangeCounter > obj.GraspChangeCount
                    % unlock hand
                    obj.GraspLocked = 0;
                    obj.GraspValue = 0.2;
                    obj.GraspVelocity = 0;
                    obj.GraspChangeCounter = 0;
                    return
                else
                    % keep hand locked and move within confined trajectory
                    obj.GraspLocked = 1;

                    % Limit the max velocity
                    obj.GraspVelocity = obj.constrain(desiredGraspVelocity,-0.1,0.1);
                    v = obj.GraspVelocity;
                    % Limit the grasp range
                    obj.GraspValue = obj.constrain(obj.GraspValue + obj.GraspVelocity, 0.2, 1.0);
                end
                
            else
                % Grasp is unlocked, range limited to 0% to 20%, grasp
                % changes allowed
                
                switch graspName
                    case cellGrasps
                        % Increment position along grasp trajectory
                        obj.GraspId = enumGrasp( strcmp(graspName,cellGrasps) );
                        % Limit the max velocity
                        obj.GraspVelocity = obj.constrain(desiredGraspVelocity,-0.1,0.1);
                        % Limit the grasp range
                        obj.GraspValue = obj.constrain(obj.GraspValue + obj.GraspVelocity, 0.0, 0.2);
                end
                
                % Count how long a grasp close is given
                if isGraspClass
                    obj.GraspChangeCounter = obj.GraspChangeCounter + 1;
                else
                    obj.GraspChangeCounter = 0;
                end
                
                if obj.GraspChangeCounter > obj.GraspChangeCount
                    % lock hand
                    obj.GraspLocked = 1;
                    obj.GraspValue = 0.2;
                    obj.GraspVelocity = 0;
                    obj.GraspChangeCounter = 0;
                    return
                else
                    % keep hand unlocked and move within prehension trajectory
                    obj.GraspLocked = 0;

                    % Limit the max velocity
                    obj.GraspVelocity = obj.constrain(desiredGraspVelocity,-0.1,0.1);
                    % Limit the grasp range
                    obj.GraspValue = obj.constrain(obj.GraspValue + obj.GraspVelocity, 0.0, 0.2);
                end
            end
            
        end
        function update(obj)
            %update(obj)
            % Called by timer function, Get intent and update arm
            
            % Use a try block to display more info if an error occurs
            try
                % Step 1: Get Intent
                [className,prSpeed] = getIntentSignals(obj);
                
                % Step 2: Convert Intent to limb commands
                obj.generateUpperArmCommand(className,prSpeed);
                obj.generateGraspCommand(className,prSpeed);
            catch ME
                UiTools.display_error_stack(ME);
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
