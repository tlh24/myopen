classdef CytonSerial < handle
    % Class definition for controlling the Cyton I robot via serial port
    %
    % 2-Apr-2013 Armiger: deprecated old cyton_cmd and moved to parse_lynxterm_cmd which
    %             handles single or multiple joint string commands using regexp
    properties
        strComPort = '/dev/tty.PL2303-00001004';  % default port
        
        Verbose = false;
        
        PwmMax = 2500;
        PwmMin = 500;
        
        % See the calibration function below to tune
        %         CalibrationPoints = {
        %             [0 -pi/2] [1510 2300];
        %             [0 -pi/2] [1420 2300];
        %             [0  pi/2] [1460 620];
        %             [0 -pi/2] [1640 2400];
        %             [0 -pi/2] [1500 2400];
        %             [0 -pi/2] [1320 2140];
        %             [0  pi/2] [1400 2260];
        %             [0 1] [600 1900];
        %             }
        
        
        % RSA 11/5/2012: Manually Calibrated CytonI RObot #1
        CalibrationPoints = {
            [0 -pi/2] [1310 2160];
            [0 -pi/2] [1440 2250];
            [0  pi/2] [1530 620];
            [0 -pi/2] [1590 2400];
            [0 -pi/2] [1350 2400];
            [0 -pi/2] [1190 2140];
            [0  pi/2] [1500 2260];
            [0 1] [600 1900];
            };
    end
    properties (SetAccess = private)
        hPort = [];     % port handle
    end
    methods
        function obj = CytonSerial(strComPort)
            % Creator method: Open Serial
            if nargin > 0
                % User specified serial port
                obj.strComPort = strComPort;
            end
            
            setup_serial(obj);
        end
        function setup_serial(obj)
            % Initialize serial port, open, and return handle
            
            % check for existing ports
            hExisting = instrfind('Port',obj.strComPort);
            
            if ~isempty(hExisting)
                delete(hExisting);
            end
            
            obj.hPort = serial(obj.strComPort);
            obj.hPort.BaudRate = 115200;
            %obj.hPort.Terminator = 'CR';
            obj.hPort.Terminator = {0, 13};
            obj.hPort.Timeout = 2; %seconds
            
            fopen(obj.hPort);
        end
        function disconnect(obj)
            send_servo_command(obj,0:7,zeros(8,1));
        end
        function cmdString = send_servo_command(obj,channelNum,pulseWidth,movementSpeed)
            % channelNum, 0-31
            % pulseWidth in microseconds, 500-2500
            % movementSpeed in uS per second (optional)
            %
            % Use this command to create a servo of group move
            % Example Usage:
            %   send_servo_command(obj,0,1500);
            %   send_servo_command(obj,[0 3],[1500 1300]);
            %   send_servo_command(obj,[5 10],[1600 750],[500 600]);
            
            import Presentation.CytonI.* 
            
            % ensure pulse width command is within bounds
            pulseWidth = max(min(pulseWidth,obj.PwmMax),obj.PwmMin);
            
            % format message
            if nargin > 3
                
                cmdString = CytonSerial.encode_lynxterm_cmd(channelNum,pulseWidth,movementSpeed);
            else
                cmdString = CytonSerial.encode_lynxterm_cmd(channelNum,pulseWidth);
            end
            
            % write full string command
            fprintf(obj.hPort,cmdString);
            
            if obj.Verbose
                disp(cmdString)
            end
            
        end
        function cmdString = discrete_output(obj, channel, output_high)
            if (channel >= 0) && (channel <= 31)
                if output_high
                    cmdString = sprintf('#%d H', channel);
                else
                    cmdString = sprintf('#%d L', channel);
                end
                fprintf(obj.hPort,cmdString);
            end
        end
        function response = read_digital_inputs(obj)
            fprintf(obj.hPort, 'A B C D AL BL CL DL ');
            response_ = fscanf(obj.hPort,'%c',8);
            response = response_ == '1';
        end
        function response = read_analog_inputs(obj)
            % doesn't seem happy to read more than 3 @once so 1 @ a time
            
            fprintf(obj.hPort, 'VA ');
            pause(0.1);
            va = fscanf(obj.hPort,'%c',1);
            
            fprintf(obj.hPort, 'VB ');
            pause(0.1);
            vb = fscanf(obj.hPort,'%c',1);
            
            fprintf(obj.hPort, 'VC ');
            pause(0.1);
            vc = fscanf(obj.hPort,'%c',1);
            
            fprintf(obj.hPort, 'VD ');
            pause(0.1);
            vd = fscanf(obj.hPort,'%c',1);
            
            response = 5/256 * [va vb vc vd];
            
        end
        function response = query_movement_status(obj)
            % query movement status
            fprintf(obj.hPort,'Q');
            response = fscanf(obj.hPort,'%c',1);
        end
        function response = query_position_status(obj)
            % query movement status
            fprintf(obj.hPort,'QP0QP1QP2QP3QP4QP5QP6QP7');
            pause(0.02);
            %response = fscanf(obj.hPort,'%8c',1)
            response = fread(obj.hPort,8);
        end
        
        function isComplete = is_movement_complete(obj)
            reply = query_movement_status(obj);
            
            if strcmpi(reply,'+')
                isComplete = false;
            elseif strcmpi(reply,'.')
                isComplete = true;
            else
                fprintf(2,'Unknown reply: %d ',reply);
                isComplete=false;
            end
            pause(0.01);
        end
        
        function isComplete = wait_until_complete(obj,timeout)
            % Query movement status with timeout (seconds)
            
            if nargin < 2
                timeout = 15; %seconds
            end
            
            tic
            isComplete = is_movement_complete(obj);
            while ~isComplete && (toc <= timeout)
                isComplete = is_movement_complete(obj);
            end
            
            if isComplete
                disp('Move complete')
            else
                disp('Query timed out')
            end
            
            POSITIONS=query_position_status(obj)*10
            
        end
        function close(obj)
            % cleanup by removing serial port
            delete(obj.hPort);
            obj.hPort = [];
        end
        function setPosition(obj,jointPosition)
            % Set the PWM of the servos based on the desired position in
            % radians (or mm)
            
            numJoints = size(obj.CalibrationPoints,1);
            
            if ~isequal(length(jointPosition),numJoints)
                error('Expected an array of %d joints',numJoints);
            end
            
            % force end effector to range 0-1
            jointPosition(8) = max(min(jointPosition(8),1),0);
            
            % RSA Updated for rewired Cyton servos.  Servo id 3 was placed
            % on a dedicated power bank
            jointIds = [0 1 2 16 4 5 6 7];  % map joints to servo ids
            
            pwmVals = 1500.*ones(numJoints,1);
            for i = 1:numJoints
                % Map PWM based on Calibration PWM points
                pwmVals(i) = interp1(obj.CalibrationPoints{i,1},obj.CalibrationPoints{i,2},...
                    jointPosition(i),'linear','extrap');
            end
            
            PWM = max(min(round(pwmVals),obj.PwmMax),obj.PwmMin);
            obj.send_servo_command(jointIds,PWM);
            
        end
    end
    methods (Static = true)
        function calibration
            % Use this function to adjust the Cyton position with respect
            % to the virtual model in real time with hardware connected
            %
            % Once finished, copy the updated values to the default
            % calibration params for your robot
            obj = CytonI;
            obj.connectToHardware('COM15')
            %% Re-evaluate this cell to adjust the gain and offset of the PWM
            calibrationPoints = {
                [0 -pi/2] [1310 2160];
                [0 -pi/2] [1440 2250];
                [0  pi/2] [1530 620];
                [0 -pi/2] [1590 2400];
                [0 -pi/2] [1350 2400];
                [0 -pi/2] [1190 2140];
                [0  pi/2] [1500 2260];
                [0 1] [600 1900];
                };
            obj.hPlant.hCytonSerial.CalibrationPoints = calibrationPoints;
            
        end
        function theta = cyton_serial_cmd2theta(cmd_str, oldTheta)
            error('Deprecated. See "parse_lynxterm_cmd"');
            %Routine to convert a command string to the robot into angles for each
            %joint.  Result can be sent to VIE to draw robot position.
            %Cmd_str must have form "#0 Pnnnn Snnnn #1 Pnnnn Snnnn ... #7 Pnnnn Snnnn"
            %with a position and speed command for all joints
            
            speed=[0,0,0,0,0,0,0];
            %Conversion from pos in us to radians is 0.0016 rad/us
            
            theta=oldTheta
            a=sscanf(cmd_str,'%*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d %*1c%1d%*2c%d%*2c%d')
            length(a)
            
            
            
            for i=1:length(a)/3
                if a(1+(i-1)*3)<7 theta(a(1+(i-1)*3)+1)=(a(3*i-1)-1500)*0.0016
                end
                if a(1+(i-1)*3)==7 theta(a(1+(i-1)*3)+1)=a(3*1-1)*0.0016;
                end
            end
            
            %theta(1)=(a(2)-1500)*0.0016;
            %theta(2)=(a(5)-1500)*0.0016;
            %theta(3)=(a(8)-1500)*0.0016;
            %theta(4)=(a(11)-1500)*0.0016;
            %theta(5)=(a(14)-1500)*0.0016;
            %theta(6)=(a(17)-1500)*0.0016;
            %theta(7)=(a(20)-1500)*0.0016;
            %theta(8)=(a(23))*0.0016 % Gripper is 0 to 90
            
            %speed(1)=a(3); speed(2)=a(6); speed(3)=a(9);
            
        end
        function theta = parse_lynxterm_cmd(cmd_str)
            %Parse a lynxterm message in the format #[ID] P[PWM] S[SPEED].
            %Returns the updated joint angles and nan otherwise
            % Example string:
            %   cmd_str = '#0 P1000 #6 P1200';
            %   newTheta = CytonSerial.parse_lynxterm_cmd(cmd_str);
            %   %update only new values
            %   theta = hCyton.JointParameters;
            %   theta(~isnan(newTheta)) = newTheta(~isnan(newTheta))
            %
            % 2-Apr-2013 Armiger: Created; First rev doesn't change speed
            
            %parse commanded joints:
            theta = nan(1,8);
            
            % look for a single digit /d behind (?<=) '#'
            jointIds = regexp(cmd_str,'(?<=#)\d','match');
            
            % look for multiple digits /d* behind (?<=) 'P'
            jointPositions = regexp(cmd_str,'(?<=P)\d*','match');
            
            % look for multiple digits /d* behind (?<=) 'S'
            jointSpeeds = regexp(cmd_str,'(?<=S)\d*','match');
            
            if ~isempty(jointSpeeds)
                disp('Speeds not yet implemented')
            end
            
            assert(length(jointIds) == length(jointPositions));
            
            idx = 1 + cellfun(@str2num,jointIds); % 0 based input to 1 based
            jointAngles = cellfun(@str2num,jointPositions);
            theta(idx) = jointAngles;
            
            % convert to radians:
            % TODO: this should be on a per joint basis and should be
            % updated for gripper position
            theta = (theta - 1500) * pi / 1000;
            
        end
        function cmdString = encode_lynxterm_cmd(channelId,pulseWidth,movementSpeed)
            % cmdString = encode_lynxterm_cmd(channelId,pulseWidth,movementSpeed)
            %
            % Use this command to create a servo command for the lynxtem
            % PWM controller board
            %
            % Inputs:
            % channelNum, 0-31
            % pulseWidth in microseconds, 500-2500
            % movementSpeed in uS per second (optional)
            %
            % Outputs:
            % command string to be transmitted
            %
            %
            % Example Usage:
            %
            %   % Send position command to a single servo
            %   CytonSerial.encode_lynxterm_cmd(0,1500);
            %
            %   % Send position command to a group of servos
            %   CytonSerial.encode_lynxterm_cmd([0 3],[1500 1300]);
            %
            %   % Send position and velocity commands to a group of servos
            %   CytonSerial.encode_lynxterm_cmd([5 10],[1600 750],[500 600]);
            %
            %   % Send position commands to a group of servos with a
            %   % single velocity
            %   CytonSerial.encode_lynxterm_cmd([5 10],[1600 750],500);
            
            % check if velocity provided
            isVelocityProvided = (nargin >= 3);
            
            % get number of channels
            numChannels = length(channelId);
            
            if (numChannels > 1) && isscalar(pulseWidth)
                % expand pulseWidth command
                pulseWidth = repmat(pulseWidth,size(channelId));
            end
            % array sizes must be equal
            assert(isequal(numChannels,length(pulseWidth)),...
                'Array sizes for channelIds and pulseWidth must be equal for nonscalar inputs');
            
            if isVelocityProvided
                % check velocity
                if (numChannels > 1) && isscalar(movementSpeed)
                    % expand movementSpeed command
                    movementSpeed = repmat(movementSpeed,size(channelId));
                end
                % array sizes must be equal
                assert(isequal(numChannels,length(movementSpeed)),...
                    'Array sizes for channelIds and movementSpeed must be equal for nonscalar inputs');
            end
            
            % Create command string
            cmdString = '';
            for iChannel = 1:numChannels
                
                % format message with or without velocity
                if isVelocityProvided
                    servoCmd = sprintf('#%d P%d S%d ',channelId(iChannel),pulseWidth(iChannel),movementSpeed(iChannel));
                else
                    servoCmd = sprintf('#%d P%d ',channelId(iChannel),pulseWidth(iChannel));
                end
                
                % append commands for group move
                cmdString = cat(2,cmdString,servoCmd); %#ok<*AGROW>
            end
        end % encode_lynxterm_cmd
    end
end
