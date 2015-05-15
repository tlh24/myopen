classdef CytonPlant < hgsetget
    % Class for maintaining simulated state of Cyton Robot
    %
    % Example Usage:
    %     obj = CytonPlant; 
    %     start(obj);
    %     tic
    %     obj.setDesiredPosition(rand(8,1));
    %     while ~all(isMoveComplete(obj))
    %         pause(0.1)
    %     end
    %     toc
    % Move should take about 1 second
    %
    % Note the scalar property "GlobalMaxSpeed" applies to and limits the
    % DesiredSpeed array. This prevents the plant from running at
    % unrealistic speeds which the actual robot can't achieve.  In
    % cases where instant move are required, the plant should simply be
    % turned off
    
    % 2011Feb07 Armiger: Created
    % 2012Mar05 Armiger: Updated comments
    %
    properties
        Verbose = 0;
        ApplyLimits = true;
        Name
        
        GlobalMaxSpeed = 2;       % rad/s 
    end
    properties (SetAccess = private)
        hTimer
        hCytonSerial

        CurrentPosition;    % radians
        DesiredPosition     % radians
        DesiredSpeed        % rad / s
        
        JointLimits = [
            -pi/2 pi/2
            -pi/2 pi/2
            -pi/2 pi/2
            -pi/2 pi/2
            -pi/2 pi/2
            -pi/2 pi/2
            -pi/2 pi/2
             0 1
            ];
        
        IsLimit = zeros(1,Presentation.CytonI.CytonPlant.NumJoints);
        %GripperLimits = [0 1];
    end
    properties (Dependent = true)
        GripperLimits = [0 1];
    end
    properties (Constant = true)
        NumJoints = 8;
        DefaultPosition = 0;    %radians
        DefaultSpeed = 1;   %rad/s
    end
    methods
        function obj = CytonPlant(name)
            obj.Name = name;
            reset(obj);
        end
        function val = get.GripperLimits(obj)
            val = obj.JointLimits(8,:);
        end
        function value = isRunning(obj)
            value = strcmpi(obj.hTimer.Running,'on');
        end
        function setDesiredSpeed(obj,Value)
            obj.DesiredSpeed = max(min(Value(:),obj.GlobalMaxSpeed),0);
        end
        function setDesiredPosition(obj,Value)
            % Sets the desired velocity of the cyton robot joints.  
            % Usage: 
            % % Set joint speed globally
            %   obj.hPlant.setDesiredSpeed(1); % rad/s (globally)
            % % Set speeds on a per joint basis
            %   obj.hPlant.setDesiredSpeed([1 0.2 0.3 0.4 0.5 0.6 0.7 0.8]); % rad/s (globally)
            obj.DesiredPosition = Value(:);
            
            if obj.ApplyLimits
                
                for iJoint = 1:obj.NumJoints
                    
                    limitVal = obj.JointLimits(iJoint,:);
                    
                    % Check each joint and set flag
                    if obj.DesiredPosition(iJoint) >= limitVal(2)
                        obj.DesiredPosition(iJoint) = limitVal(2);
                        obj.IsLimit(iJoint) = 1;
                    elseif obj.DesiredPosition(iJoint) <= limitVal(1)
                        obj.DesiredPosition(iJoint) = limitVal(1);
                        obj.IsLimit(iJoint) = -1;
                    else
                        obj.IsLimit(iJoint) = 0;
                    end
                end
            end
            
            update(obj);
        end
        
        function connectToHardware(obj,strComPort)
            obj.hCytonSerial = Presentation.CytonI.CytonSerial(strComPort);
        end
        
        function success = start(obj)
            % Note that these output arguments support use of || && 
            if strcmpi(obj.hTimer.Running,'off')
                start(obj.hTimer);
            end
            success = true;
        end
        function success = stop(obj)
            % Note that these output arguments support use of || && 
            if strcmpi(obj.hTimer.Running,'on')
                stop(obj.hTimer);
            end
            success = true;
        end
        function reset(obj)
            obj.DesiredSpeed = obj.DefaultSpeed*ones(obj.NumJoints,1);
            obj.DesiredPosition = obj.DefaultPosition*ones(obj.NumJoints,1);
            obj.CurrentPosition = obj.DefaultPosition*ones(obj.NumJoints,1);
            
            obj.hTimer = UiTools.create_timer(strcat('CytonPlant','-',obj.Name),@(src,evt)update(obj));
            obj.hTimer.Period = 0.02;
        end
        function allComplete = allMovesComplete(obj)
            % Check to see if position commands have yet to complete (due
            % to velocity limiting)
            allComplete = all(isMoveComplete(obj));
        end
        function isComplete = isMoveComplete(obj)
            isComplete = (obj.CurrentPosition == obj.DesiredPosition);
        end
        function update(obj)
            % This function is called by the timer and incrementally
            % updates the current positions based on the current speed
            if obj.Verbose
                fprintf('Current Position:');
                fprintf(' %6.2f',obj.CurrentPosition);
                fprintf('\n');
            end
            
            % If timer is off, moves will be immediate
            if isempty(obj.hTimer) || strcmpi(obj.hTimer.Running,'off')
                obj.CurrentPosition = obj.DesiredPosition;
                return
            end
            
            dt = obj.hTimer.Period;
            err = obj.CurrentPosition - obj.DesiredPosition;
            
            maxMove = obj.DesiredSpeed * dt;
            
            ds = min(abs(err),abs(maxMove)) .* sign(err);
            obj.CurrentPosition = obj.CurrentPosition - ds;
            
            % Check for real hardware
            isConnected = ~isempty(obj.hCytonSerial);
            
            if isConnected
                obj.hCytonSerial.setPosition(obj.CurrentPosition);
            end
        end
    end
end
