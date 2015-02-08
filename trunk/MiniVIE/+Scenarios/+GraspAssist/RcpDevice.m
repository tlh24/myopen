classdef RcpDevice < handle
    properties
        StrComPort      % Serial port for serial or serial-to-can commands
        UseThumbT = 0   % thumb is either VT or V3
        CanAddress
        RefreshRate = 0.1 % Time interval in seconds between updates
        SendAscii = 1   % send ascii velocity commands of int32 commands
        
        
        hTimer          % refesh timer
        hSerial = 1;    % serial device handle
    end
    properties (Access = private)
        iLast = 0;
        newHomeMessage = '';
        newThumbMessage = '';
        velocityCmd = [0 0 0];
    end
    methods
        function obj = RcpDevice(strComPort,canAddress)
            if nargin < 1
                strComPort = 'COM26';
            end
            if nargin < 2
                canAddress = '1FFFFFFF';
            end
            
            obj.StrComPort = strComPort;
            obj.CanAddress = canAddress;

            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            obj.hTimer.Period = obj.RefreshRate;
        
        end
        
        function initialize(obj)
            obj.hSerial = serialSetup(obj.StrComPort);
            obj.hSerial.Timeout = 0.2;
            
            % Perform Serial-CAN initialization
            canSpeed = 8;
            
            % Initialize can message wrapper
            Scenarios.GraspAssist.initializeSerialCanConverter(obj.hSerial,canSpeed)
            
            
        end
        
        function sendMsg(obj,msg)
            
            % Handle message routing
            
            % these are one and done position commands
            if strncmp(msg, 'HA', 2)
                obj.newHomeMessage = msg;
                return;
            elseif strncmp(msg, 'CTA', 3)
                obj.newThumbMessage = msg;
                return;
            elseif strncmp(msg, 'CTB', 3)
                obj.newThumbMessage = msg;
                return;
            elseif strncmp(msg, 'CTC', 3)
                obj.newThumbMessage = msg;
                return;
            end
            
            % these are continuous velocity commands
            try
                speed = str2double(msg(3:end));
            end
            
            if strncmp(msg, 'V1', 2)
                iFinger = 1;
            elseif strncmp(msg, 'V2', 2)
                iFinger = 2;
            elseif strncmp(msg, 'V3', 2) || strncmp(msg, 'VT', 2)
                iFinger = 3;
            end
            
            obj.velocityCmd(iFinger) = speed;
            
        end

        function setGrasp(obj, graspName, graspVelocity)
            
            VELOCITY_SCALE = 2500;

            graspVelocity = round(graspVelocity * VELOCITY_SCALE);
            
            graspVelocity = max(min(graspVelocity,1200),-1200);
            
            if graspVelocity < 0
                % move faster in the negative direction
                graspVelocity = round(graspVelocity * 1.2);
            end
            
            switch char(graspName)
                case 'Thumb'
                    obj.sendMsg(sprintf('V1%d',graspVelocity));
                    obj.sendMsg(sprintf('V20'));
                    obj.sendMsg(sprintf('V30'));
                case 'Middle'
                    obj.sendMsg(sprintf('V10'));
                    obj.sendMsg(sprintf('V20'));
                    obj.sendMsg(sprintf('V3%d',graspVelocity));
                case 'Index'
                    obj.sendMsg(sprintf('V10'));
                    obj.sendMsg(sprintf('V2%d',graspVelocity));
                    obj.sendMsg(sprintf('V30'));
                case 'HOME'
                    obj.sendMsg('P10');
                    obj.sendMsg('P20');
                    obj.sendMsg('P30');
                    obj.sendMsg('CTB');
                    
            end
        end
        
        function setIdle(obj)
            obj.velocityCmd = [0 0 0];
        end

        function setVelocity(obj,v)
            assert(length(v) == 3,'Expected a 3 element array')
            obj.velocityCmd = v;
        end

        function update(obj)
            % Called by timer object
            string2Can = @(x,y)Scenarios.GraspAssist.CanMessaging.string2Can(x,y);

            % process any home commands first
            if ~isempty(obj.newHomeMessage)
                fprintf(obj.hSerial,string2Can(obj.newHomeMessage,obj.CanAddress));
                obj.newHomeMessage = '';
                return
            end

            % process any thumb position commands
            if ~isempty(obj.newThumbMessage)
                fprintf(obj.hSerial,string2Can(obj.newThumbMessage,obj.CanAddress));
                obj.newThumbMessage = '';
                return
            end

            % finally, process velocity commands
            
            % rotate which joint gets updated
            obj.iLast = mod(obj.iLast,3) + 1;
            
            % convert joint to character id
            if obj.iLast == 3 && obj.UseThumbT
                jointId = 'T';
            elseif obj.iLast == 3 && ~obj.UseThumbT
                jointId = '3';
            else
                jointId = num2str(obj.iLast);    
            end
            
            % get speed for this iteration's finger
            speed = obj.velocityCmd(obj.iLast);
            
            % if binary or ascii velocity value
            if obj.SendAscii
                msg = string2Can(sprintf('V%c%d',...
                    jointId,speed),obj.CanAddress);
            else
                VRaw = typecast(int32(speed),'uint8');
                msg = string2Can(sprintf('V%c%c%c%c%c',...
                    jointId,VRaw(1),VRaw(2),VRaw(3),VRaw(4)),...
                    obj.CanAddress);
            end
            
            fprintf(obj.hSerial,msg); % send msg to comm port
            %fprintf(sprintf('%s\n',msg));   % echo msg to console
            
            % Read down serial buffer
            bytesAvailable = obj.hSerial.BytesAvailable;
            if bytesAvailable
                x = fread(obj.hSerial,bytesAvailable);
                fprintf('Reply: "%s"\n',char(x)); %#ok<FREAD>
            end

        end
    end
end

function s = serialSetup(strComPort)
% Setup matlab serial port.  Checks for existing ports first
% Usage: s = serialSetup('COM9')

% Check for existing ports
s = instrfind('Port',strComPort);
if isempty(s)
    s = serial(strComPort);
end
s.BaudRate = 57600;
% s.Timeout = 0.1;
s.Terminator = 'CR';

% Optional: Enable function to echo responses to console
% set(s, 'BytesAvailableFcn', @(src,evnt){fprintf(2,'[%s:%f]',mfilename,now); fprintf(2,'%c',uint8(fscanf(src))); fprintf('\r')} );

% Open port
if strcmpi(s.Status,'closed')
    fopen(s);
end
end
