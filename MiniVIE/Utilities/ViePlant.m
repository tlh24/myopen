classdef ViePlant < hgsetget
    % Class for maintaining simulated state of VIE
    %
    % Example Usage:
    %     obj = ViePlant; 
    %     start(obj);
    %     tic
    %     obj.setDesiredPosition(rand(8,1));
    %     while ~all(isMoveComplete(obj))
    %         pause(0.1)
    %     end
    %     toc
    % Move should take about 1 second
    
    % 2012Mar25 Armiger: Adapted CytonPlant to generic arm model
    %
    %
    % Note: joint speeds support a per-joint array
    properties
        Verbose = 0;
        ApplyLimits = true;
        MaxSpeed = 2;       % rad/s
    end
    properties (SetAccess = private)
        hTimer
        hDevice

        CurrentPosition;    % radians
        DesiredPosition     % radians
        DesiredSpeed        % rad / s
        
        %JointLimits = [-pi/2 pi/2];
        GraspLimits = [0 1];
        GraspId = 0;
    end

    properties (Constant = true)
        NumJoints = 8;
        DefaultPosition = 0;    %radians
        DefaultSpeed = 1;   %rad/s
    end
    methods
        function obj = ViePlant()
            reset(obj);
        end
        function value = isRunning(obj)
            value = strcmpi(obj.hTimer.Running,'on');
        end
        function setDesiredSpeed(obj,Value)
            s = reshape(Value,1,[]); % force size [1 N]
            obj.DesiredSpeed = max(min(s,obj.MaxSpeed),0);
        end
        function setGraspId(obj,Value)
            % Grasp id should be a scalar integer >= 0
            assert(isscalar(Value),'GraspId must be scalar');
            assert(~mod(Value,1),'GraspId must be an integer');
            assert(Value >= 0,'GraspId must be greater than or equal to zero');
            obj.GraspId = Value;
        end
        function setDesiredPosition(obj,Value)
            p = reshape(Value,1,[]); % force size [1 N]
            obj.DesiredPosition = p;  
            
            if obj.ApplyLimits
                %obj.DesiredPosition(1:7) = ...
                %    min(max(obj.DesiredPosition(1:7),obj.JointLimits(1)),obj.JointLimits(2));
                obj.DesiredPosition(8) = ...
                    min(max(obj.DesiredPosition(8),obj.GraspLimits(1)),obj.GraspLimits(2));
            end
            
            update_state(obj);
        end
        
        function connectToHardware(obj,ipAddress,udpPort)
            local = 56789;
            obj.hDevice.hSink = PnetClass(local,udpPort,ipAddress);
            obj.hDevice.hMud = MPL.MudCommandEncoder();
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
            obj.DesiredSpeed = obj.DefaultSpeed*ones(1,obj.NumJoints);
            obj.DesiredPosition = obj.DefaultPosition*ones(1,obj.NumJoints);
            obj.CurrentPosition = obj.DefaultPosition*ones(1,obj.NumJoints);
            
            obj.hTimer = UiTools.create_timer('ViePlant',@(src,evt)update_state(obj));
            obj.hTimer.Period = 0.02;
        end
        function allComplete = allMovesComplete(obj)
            allComplete = all(isMoveComplete(obj));
        end
        function isComplete = isMoveComplete(obj)
            isComplete = (obj.CurrentPosition == obj.DesiredPosition);
        end
        function update_state(obj)
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
            
            % Get time step
            dt = obj.hTimer.InstantPeriod;
            if isnan(dt)
                dt = obj.hTimer.Period;
            end
            
            err = obj.CurrentPosition - obj.DesiredPosition;
            
            maxMove = obj.DesiredSpeed * dt;
            
            ds = min(abs(err),abs(maxMove)) .* sign(err);
            obj.CurrentPosition = obj.CurrentPosition - ds;
            
            % Check for real hardware
            isConnected = ~isempty(obj.hDevice);
            
            if isConnected
                armJoints = obj.CurrentPosition(1:7);
                graspValue = obj.CurrentPosition(8);
                
                % Send to vulcanX
                msg = obj.hDevice.hMud.ArmPosVelHandRocGrasps(armJoints,...
                    zeros(1,7),1,obj.GraspId,graspValue,1);
                obj.hDevice.hSink.putData(msg);
            end
        end
    end
end
