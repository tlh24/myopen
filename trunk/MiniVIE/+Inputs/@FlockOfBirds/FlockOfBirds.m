classdef FlockOfBirds < handle
    %FLOCKOFBIRDS Class based on bird_io_in_matlab interface for the
    %Ascension Flock Of Birds System
    %   Class for interfacing Flock of Birds System.  This uses the
    %   bird_io_in_matlab functions for basic communications.  A single
    %   serial port interface to the bird master is used.
    %
    %   See: obj = Inputs.FlockOfBirds.Demo;
    %
    %   Usage:
    %     obj = Inputs.FlockOfBirds;
    %     obj.initialize('COM1');
    %     [pos, ang] = obj.getBirdGroup;
    %
    %   Armiger 3/5/2012: Created
    
    properties
        Bird % handle to flock of birds object
        
        NumSensors = 3;
        IsSimulator = false; %Controls whether real data or random output is returned (debugging)
    end
    properties (SetAccess = private)
        isInitialized = false;
    end
    
    methods
        function obj = FlockOfBirds
            % Creator
        end
        function initialize(obj,strComPort)
            %obj.initialize(strComPort)
            % Create serial port
            % set FoB specific params
            % begin streaming
            
            if obj.isInitialized
                fprintf('Device already initialized\n');
                return
            end
            
            if nargin < 2
                strComPort = 'COM4';
            end
            
            % Setup port
            s = serial(strComPort);          % default = 'COM1'
            set(s,'BaudRate',115200);        % default = 9600
            set(s,'RequestToSend','off');    % default = on
            set(s,'DataTerminalReady','on'); % default = on
            set(s,'InputBufferSize',512*10); % default = 512
            set(s,'Timeout',0.5);            % default = 10
            
            % Pass back handle to serial port
            obj.Bird = s;
            
            % Open port
            fopen(s);

            numBirds = obj.NumSensors;
            
            % Set mode
            for i = 1:numBirds
                fwrite(s,[240+i 89]); % set to gather position and angles
            end
            
            % no light response
            % if error, blinking lights -- ensure another serial port not
            % holding RequestToSend high
            
            % Autoconfig
            pause(0.3);   % 300 misec delay required before AutoConfig commands (p. 83)
            fwrite(s,[240+1 80 50 numBirds]);  % autoconfig for Master => bird 1
            pause(0.3);   % 300 misec delay required after AutoConfig commands (p. 83)
            
            % lights should go on
            
            % GROUP MODE
            % PARAMETERnumber = 35
            % The GROUP MODE command is only used if you have multiple Birds working together
            % in a Master/Slave configuration and you want to get data from all the Birds by talking to
            % only the Master Bird.
            
            % turn group mode on if necessary
            fwrite(s,[240+1 80 35 1])
            
            % Start Stream
            fprintf(s,'@'); % Stream Start
            
            % Set init flag
            obj.isInitialized = true;
        end
        
        function [pos ang R] = getSingleBird(obj)
            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            error('deprecated');
            
            bird = obj.Bird;
            
            bird_bytes = bird_point_bytes(bird);  % gathers a point of data from a single bird, and returns gathered bytes as bird_bytes
            [pos, ang] = bird_bytes_2_data(bird_bytes,bird);   % converts bird_bytes to position and angle values (default units are meters and radians)
            [R] = birdR(ang);          % converts angles to Rotation matrix, where the columns of R are the axes of the bird coordinate systems (note R is the transpose of that used in Bird manual).
            
        end
        
        function [pos, ang] = getBirdGroup(obj)
            %[pos, ang] = getBirdGroup(obj)
            % get the position and angle of the flock of birds sensor(s).
            % This assumes that stream mode is active and that there is new
            % data available.

            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            
            if obj.IsSimulator
                pos = rand(3,obj.NumSensors);
                ang = rand(3,obj.NumSensors);
                %ang = makehgtform('xrotate',rand,'yrotate',rand,'zrotate',rand);
                return
            end
            
            s = obj.Bird;
            numBytes = 13;
            
            % Read available bytes
            numAvailable = s.BytesAvailable;
            if numAvailable > 0
                [streamBytes, numRead] = fread(s,numAvailable);
            else
                disp('No Data')
                streamBytes = [];
            end
            
            % fread returns bytes as double precision, convert to uint8 for
            % bitwise operations
            streamBytes = uint8(streamBytes);
            
            % find start bits
            startBits = bitget(streamBytes,8);
            
            numMsgs = sum(startBits);
            
            % get the messages with start bits
            %idxRecent = find(startBits,5,'last');
            idxRecent = find(startBits);
            
            % look for messages that have the right number of bytes
            %idxValid = find(diff(idxRecent) == numBytes,2,'last');
            idxValid = find(diff(idxRecent) == numBytes);
            
            pos = [];
            ang = [];
            group = [];
            
            for i = 1:length(idxValid)
                msgStart = idxRecent(idxValid(i));
                thisMessage = streamBytes(msgStart:msgStart+numBytes-1);
                
                % get messages
                
                [pos, ang, group] = Inputs.FlockOfBirds.parseBytesPositionAngles(thisMessage);
                
                %fprintf('Msg #%3d Bird %i\tX:%+6.3f\tY:%+6.3f\tZ:%+6.3f\t',i,group,pos);
                %fprintf('Rz:%+6.1f\tRy:%+6.1f\tRx:%+6.1f\n',ang*180/pi);
            end
            
            pos = pos';
            ang = ang';
            
        end
        
        function F = getframes(obj)
            %F = getframes(obj)
            % returns 4x4xobj.NumSensors frame transforms for Flock of
            % Birds
            %
            % This function calls the getBirdGroup method, but then
            % performs an additional step of converting the output to a 4x4
            % frame
            
            % call the actual data handling method: 
            % (Note, init status is checked within getBirdGroup
            [pos, ang] = getBirdGroup(obj);
            
            if isempty(pos)
                F = [];
                return
            end
            
            F = repmat(eye(4),[1 1 obj.NumSensors]);
            for i = 1:obj.NumSensors
                F(:,:,i) = makehgtform('translate',pos(i,:),...
                    'zrotate',ang(i,1),...
                    'yrotate',ang(i,2),...
                    'xrotate',ang(i,3));
            end
        end
        
        function preview(obj)
            
            F_ERT = eye(4);%obj.F_WCS_TRNS;
            
            tmr = timer;
            set(tmr,'Period',0.15); %% seconds
            set(tmr,'TimerFcn',@cb_plot_data);
            set(tmr,'ExecutionMode','fixedRate');
            
            % Setup plots
            hTriad = setup_plot(obj.NumSensors,F_ERT);
            fprintf('[%s] Starting Preview...\n',mfilename);
            cb_plot_data([],[])
            start(tmr);
            
            function cb_plot_data(src,evt) %#ok<INUSD>
                drawnow
                
                F_GCS_RB = obj.getframes();
                
                if isempty(F_GCS_RB)
                    return
                end
                
                if all(ishandle(hTriad))
                    for iSensor = 1:obj.NumSensors
                        %f_update_triad(F_GCS_RB(:,:,iSensor),hTriad(iSensor));
                        set(hTriad(iSensor),'Matrix',F_GCS_RB(:,:,iSensor));
                    end
                else
                    fprintf('[%s] Preview Stopped.\n',mfilename);
                    stop(src);
                    delete(src);
                end
            end %% plot_data
            
        end %% preview
        
        function close(obj)
            % cancel streaming, close and cleanup serial port
            
            % stop streaming
            try 
                % Stream stop
                fprintf(obj.Bird,'?'); % Stream Stop

                % Autoconfig
                pause(0.3);   % 300 misec delay required before AutoConfig commands (p. 83)
                fwrite(obj.Bird,[240+1 80 50 numBirds]);  % autoconfig for Master => bird 1
                pause(0.3);   % 300 misec delay required after AutoConfig commands (p. 83)
            end
            
            % close port
            try
                fclose(obj.Bird);
            end
            
            % remove port
            try 
                delete(obj.Bird);
            end
            
            % Set init flag
            obj.isInitialized = false;

        end
    end
    methods (Static = true)
        function obj = Demo
            % Requires MiniVIE Utilities
            obj = Inputs.FlockOfBirds;
            obj.NumSensors = 1;
            obj.initialize;
            obj.preview;
            %obj.IsSimulator = true;
            
            %             hPlot = LivePlot(9,100);
            %             StartStopForm([]);
            %             while StartStopForm
            %                 [pos, ang] = obj.getBirdGroup;
            %                 if isempty(pos)
            %                     continue;
            %                 end
            %                 hPlot.putdata(pos(:));
            %
            %                 for i = 1:obj.NumSensors
            %                     fprintf('Bird %i\t%+3.3f\t%+3.3f\t%+3.3f\t%+3.1f\t%+3.1f\t%+3.1f\n',i,pos(i,:),ang(i,:)*180/pi);
            %                 end
            %                 pause(0.05);
            %             end
        end
        function s = TestSession
            %% Example command-line session
            % This provides an example command-line session, independant of
            % the class object, using native matlab commands
            
            %% Setup Port
            s = serial('COM4');              % default = 'COM1'
            set(s,'BaudRate',115200);        % default = 9600
            set(s,'RequestToSend','off');    % default = on
            set(s,'DataTerminalReady','on'); % default = on
            set(s,'InputBufferSize',512*10); % default = 512
            set(s,'Timeout',0.5);            % default = 10
            
            fopen(s);
            
            %% Set initial mode
            numBirds = 3;
            
            % Set mode
            for i = 1:numBirds
                fwrite(s,[240+i 89]); % set to gather position and angles
            end
            
            % no light response
            % if error, blinking lights -- ensure another serial port not
            % holding RequestToSend high
            
            %% Autoconfig
            pause(0.3);   % 300 misec delay required before AutoConfig commands (p. 83)
            fwrite(s,[240+1 80 50 numBirds]);  % autoconfig for Master => bird 1
            pause(0.3);   % 300 misec delay required after AutoConfig commands (p. 83)
            
            % lights should go on
            
            %% GROUP MODE
            % PARAMETERnumber = 35
            % The GROUP MODE command is only used if you have multiple Birds working together
            % in a Master/Slave configuration and you want to get data from all the Birds by talking to
            % only the Master Bird.
            
            % turn group mode on if necessary
            fwrite(s,[240+1 80 35 1])
            
            %% Loop
            StartStopForm([]);
            while StartStopForm
                drawnow;
                %% Send Request
                % request data to be sent Point or Stream
                fprintf(s,'B'); % Point command
                
                % should receive 13*numBirds bytes
                
                %% Get response
                % In the POSITION/ANGLES mode, the outputs from the POSITION and ANGLES modes
                % are combined into one record containing the following twelve bytes:
                % MSB LSB
                % 7   6   5   4   3   2   1   0   BYTE #
                % 1   X8  X7  X6  X5  X4  X3  X2  #1  LSbyte X
                % 0   X15 X14 X13 X12 X11 X10 X9  #2  MSbyte X
                % 0   Y8  Y7  Y6  Y5  Y4  Y3  Y2  #3  LSbyte Y
                % 0   Y15 Y14 Y13 Y12 Y11 Y10 Y9  #4  MSbyte Y
                % 0   Z8  Z7  Z6  Z5  Z4  Z3  Z2  #5  LSbyte Z
                % 0   Z15 Z14 Z13 Z12 Z11 Z10 Z9  #6  MSbyte Z
                % 0   Z8  Z7  Z6  Z5  Z4  Z3  Z2  #7  LSbyte Zang
                % 0   Z15 Z14 Z13 Z12 Z11 Z10 Z9  #8  MSbyte Zang
                % 0   Y8  Y7  Y6  Y5  Y4  Y3  Y2  #9  LSbyte Yang
                % 0   Y15 Y14 Y13 Y12 Y11 Y10 Y9  #10 MSbyte Yang
                % 0   X8  X7  X6  X5  X4  X3  X2  #11 LSbyte Xang
                % 0   X15 X14 X13 X12 X11 X10 X9  #12 MSbyte Xang
                
                %  The GROUP MODE address byte is only present if
                % GROUP MODE is enabled (see change value GROUP MODE).
                numBytes = 13;
                % read binary data
                [birdBytes, numRead] = fread(s,numBytes*numBirds,'uint8');
                
                %% Parse response
                if numRead < numBytes*numBirds
                    msg = sprintf('The number of bytes read [%d] was fewer than required [%d] \n',...
                        numRead,numBytes*numBirds);
                    disp(msg)
                    continue
                end
                
                [pos, ang] = Inputs.FlockOfBirds.parseBytesPositionAngles(birdBytes);
                
                for i = 1:numBirds
                    fprintf('Bird %i\tX:%+6.3f\tY:%+6.3f\tZ:%+6.3f\t',i,pos(:,i));
                    fprintf('Rz:%+6.1f\tRy:%+6.1f\tRx:%+6.1f\n',ang(:,i)*180/pi);
                end
                
            end
            
            %% Test Stream mode
            fprintf(s,'@'); % Stream Start
            
            %% Stream stop
            fprintf(s,'?'); % Stream Stop
            
            %% Read available bytes
            numAvailable = s.BytesAvailable;
            if numAvailable > 0
                [streamBytes, numRead] = fread(s,numAvailable);
            else
                disp('No Data')
                streamBytes = [];
            end
            
            streamBytes = uint8(streamBytes);
            
            startBits = bitget(streamBytes,8);
            
            numMsgs = sum(startBits);
            
            % get the messages with start bits
            %idxRecent = find(startBits,5,'last');
            idxRecent = find(startBits);
            
            % look for messages that have the right number of bytes
            %idxValid = find(diff(idxRecent) == numBytes,2,'last');
            idxValid = find(diff(idxRecent) == numBytes);
            
            for i = 1:length(idxValid)
                msgStart = idxRecent(idxValid(i));
                thisMessage = streamBytes(msgStart:msgStart+numBytes-1);
                
                % get messages
                
                [pos, ang, group] = Inputs.FlockOfBirds.parseBytesPositionAngles(thisMessage);
                
                fprintf('Msg #%3d Bird %i\tX:%+6.3f\tY:%+6.3f\tZ:%+6.3f\t',i,group,pos);
                fprintf('Rz:%+6.1f\tRy:%+6.1f\tRx:%+6.1f\n',ang*180/pi);
            end
            
        end
        
        function [pos, ang, group, msg] = parseBytesPositionAngles(birdBytes,isGroupMode)
            
            % default outputs
            [pos, ang, group] = deal([]);
            
            msg = '';
            
            if nargin < 2
                isGroupMode = true;
            end
            
            % In the POSITION/ANGLES mode, the outputs from the POSITION and ANGLES modes
            % are combined into one record containing the following twelve bytes:
            % MSB LSB
            % 7 6 5 4 3 2 1 0 BYTE #
            % 1 X8 X7 X6 X5 X4 X3 X2 #1 LSbyte X
            % 0 X15 X14 X13 X12 X11 X10 X9 #2 MSbyte X
            % 0 Y8 Y7 Y6 Y5 Y4 Y3 Y2 #3 LSbyte Y
            % 0 Y15 Y14 Y13 Y12 Y11 Y10 Y9 #4 MSbyte Y
            % 0 Z8 Z7 Z6 Z5 Z4 Z3 Z2 #5 LSbyte Z
            % 0 Z15 Z14 Z13 Z12 Z11 Z10 Z9 #6 MSbyte Z
            % 0 Z8 Z7 Z6 Z5 Z4 Z3 Z2 #7 LSbyte Zang
            % 0 Z15 Z14 Z13 Z12 Z11 Z10 Z9 #8 MSbyte Zang
            % 0 Y8 Y7 Y6 Y5 Y4 Y3 Y2 #9 LSbyte Yang
            % 0 Y15 Y14 Y13 Y12 Y11 Y10 Y9 #10 MSbyte Yang
            % 0 X8 X7 X6 X5 X4 X3 X2 #11 LSbyte Xang
            % 0 X15 X14 X13 X12 X11 X10 X9 #12 MSbyte Xang
            
            %  The GROUP MODE address byte is only present if
            % GROUP MODE is enabled (see change value GROUP MODE).
            if isGroupMode
                numBytes = 13;
            else
                numBytes = 12;
                group = 1;
            end
            
            % Parse response
            
            birdBytes = uint8(birdBytes);
            birdBytes = reshape(birdBytes,numBytes,[]);
            
            % get high bit
            startBits = bitget(birdBytes,8);
            
            if any(startBits(1,:) ~= 1) || ~all(all(startBits(2:end,:) == 0))
                msg = sprintf('The message start bits are out of order\n');
                disp(msg)
                return
            end
            
            
            LSB = uint16(birdBytes(1:2:numBytes-1,:));
            MSB = uint16(birdBytes(2:2:end,:));
            
            % shift up and typecast to int16
            MSB = bitshift(MSB,9);
            LSB = bitshift(LSB,2);
            
            unsignedWords = bitor(MSB,LSB);
            
            V = double(typecast(unsignedWords(:),'int16'));
            V = reshape(V,6,[]);
            
            pos = V(1:3,:) * (36.0/32768.0)*2.54/100; % bird conversion factor for meters
            ang = V(4:6,:) * (180.0/32768.0)*pi/180; % bird conversion factor for radians
            
            group = double(birdBytes(end,:));
        end
    end
end

function hTriad = setup_plot(nSensors,F_ERT)
f = figure(9);
%f_setWindowState(f,'maximize');
clf(f)
hold on
hAxes = gca;
hTriad = zeros(nSensors,1);
for i = 1:nSensors
    scale = 0.1;
    % color = {'c-','m-','y-','k'}
    % hTriad(i) = f_plot_triad(eye(4),scale,color{i});
    %hTriad(i) = f_plot_triad(eye(4),scale);
    hTriad(i) = PlotUtils.triad(eye(4),scale,hAxes);
end

PlotUtils.triad(eye(4),1.0);
PlotUtils.triad(F_ERT,0.1);

axis equal
view(-75,20)
set(gca,'Projection','perspective');

xlabel('')
ylabel('')
zlabel('')

drawnow
end %% setup_plot

