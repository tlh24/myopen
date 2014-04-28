classdef FlockOfBirds < handle
    %FLOCKOFBIRD Class based on bird_io_in_matlab interface for the
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
    
    methods
        function obj = FlockOfBirds
        end
        function initialize(obj,strComPort)
            
            bird.nbird = obj.NumSensors;   % number of birds in flock (can be set to one)

            bird_setting_default; % holds default bird settings

            if nargin < 2
                bird.com_port = 'COM1';
            else
                bird.com_port = strComPort;
            end

            bird = bird_setup(bird);          % setups up serial port and bird settings (bird.bird_port is the serial port object which is returned)
            
            obj.Bird = bird;
            
        end
        
        function [pos ang R] = getSingleBird(obj)
            
            bird = obj.Bird;
            
            bird_bytes = bird_point_bytes(bird);  % gathers a point of data from a single bird, and returns gathered bytes as bird_bytes
            [pos, ang] = bird_bytes_2_data(bird_bytes,bird);   % converts bird_bytes to position and angle values (default units are meters and radians)
            [R] = birdR(ang);          % converts angles to Rotation matrix, where the columns of R are the axes of the bird coordinate systems (note R is the transpose of that used in Bird manual).
            
        end
        
        function [pos, ang] = getBirdGroup(obj)
            
            if obj.IsSimulator
                pos = rand(3,obj.NumSensors);
                ang = rand(3,obj.NumSensors);
                %ang = makehgtform('xrotate',rand,'yrotate',rand,'zrotate',rand);
                return
            end
            
            bird = obj.Bird;
            
            [bird_bytes] = bird_group_bytes(bird);   % will read position of all birds in flock
            if isempty(bird_bytes);
                fprintf('Read Failed\n');
                [pos, ang] = deal([]);
                return
            end
            try
                [pos, ang] = bird_group_bytes_2_data(bird_bytes,bird);   % will convert bytes off all birds in flock
            catch ME
                fprintf('Caught Error: %s\n',ME.message);
                [pos, ang] = deal([]);
                return
            end
        end
        
        function F = getframes(obj)
            %F = getframes(obj)
            % returns 4x4xobj.NumSensors frame transforms for Flock of
            % Birds
            
            [pos, ang] = getBirdGroup(obj);
            
            if isempty(pos)
                F = [];
                return
            end
            
            F = repmat(eye(4),[1 1 obj.NumSensors]);
            for i = 1:obj.NumSensors
%                 [R] = birdR(ang(i,:));
%                 F(1:3,1:3,i) = R;
%                 F(1:3,4,i) = pos(i,:);
                
                F(:,:,i) = makehgtform('translate',pos(i,:),...
                    'zrotate',ang(i,3),...
                    'yrotate',ang(i,2),...
                    'xrotate',ang(i,1));
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
        
    end
    methods (Static = true)
        function obj = Demo
            % Requires MiniVIE Utilities
            obj = Inputs.FlockOfBirds;
            obj.NumSensors = 2;
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
            s = serial('COM1');
            set(s,'BaudRate',115200);
            set(s,'RequestToSend','off');
            set(s,'DataTerminalReady','on');
            set(s,'InputBufferSize',512*10);
            
            % Set timeout for serial read
            set(s,'Timeout',0.5);
            
            fopen(s);
            pause(.5)

            numBirds =3;
            
            % Set mode
            for i = 1:numBirds
                fwrite(s,[240+i 89]); % set to gather position and angles
            end
            
            
            pause(0.6);   % 300 misec delay required before AutoConfig commands (p. 83)
            fwrite(s,[240+1 80 50 numBirds]);  % autoconfig for Master => bird 1
            pause(0.6);   % 300 misec delay required after AutoConfig commands (p. 83)

            % GROUP MODE
            % PARAMETERnumber = 35
            % The GROUP MODE command is only used if you have multiple Birds working together
            % in a Master/Slave configuration and you want to get data from all the Birds by talking to
            % only the Master Bird.

            % turn group mode on if necessary
            fwrite(s,[240+1 80 35 1])

            % request data to be sent Point or Stream
            fprintf(s,'B'); % Point command
            
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

            % Shift everything up 1 bit:
            bitshift(uint8([2 0 3 0]),1)
            
            % typecast to int16
            typecast(uint8([2 0 3 0]),'int16')
            
            % scale
            
            
            nbytes = 12;
            % read binary data
            bird_bytes = fread(s,nbytes,'uint8');

            % convert to position and angles
            nrec_bytes = 13;   % bytes per record
            
            for ibird=1:numBirds
                byte_start = (ibird-1)*nrec_bytes + 1;    % start of nrec segment
                byte_end = byte_start + nrec_bytes - 1;   % stop of nrec segment
                % last byte of each data record contains bird number
                % check that the correct bird is read in
                if ibird~=bird_bytes(byte_end)
                    error('Bird Record in Group Does Not Correspond to Bird Number')
                end
                % set indivudal data record - without bird number
                bird_bytes_ibird = bird_bytes(byte_start:byte_end-1);
                
                
                
                
                if bitget(bird_bytes(1),8)~=1
                    bird_error('First Bird Byte Does Not Have a 1 in highest bit',ibird);
                else
                    bird_bytes(1) = bitset(bird_bytes(1),8,0);  % set msbit to zero for calculations
                end
                
                i_lsb=1;  % index to least significant bit
                i_msb=2;  % index to most significant bit
                if (bitget(bird_bytes(i_msb),8)~=0) || (bitget(bird_bytes(i_lsb),8)~=0)
                    bird_error('Bird Byte Does Not Have a 0 in highest bit',bird);
                end
                lsb = bitset(bird_bytes(i_lsb),8,0);  % set msb to zero in case it is first byte
                msb = bitshift(bird_bytes(i_msb),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    pos_in = -value_bin*bird.position_conv_fac;
                else
                    pos_in = value_bin*bird.position_conv_fac;
                end
                posx_in = pos_in;
                
                lsb = bitset(bird_bytes(3),8,0);
                msb = bitshift(bird_bytes(4),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    pos_in = -value_bin*bird.position_conv_fac;
                else
                    pos_in = value_bin*bird.position_conv_fac;
                end
                posy_in = pos_in;
                
                lsb = bitset(bird_bytes(5),8,0);  % set msb to zero in case it is first byte
                msb = bitshift(bird_bytes(6),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    pos_in = -value_bin*bird.position_conv_fac;
                else
                    pos_in = value_bin*bird.position_conv_fac;
                end
                posz_in = pos_in;
                
                pos = [posx_in posy_in posz_in];
                
                %disp([posx_in posy_in posz_in])
                
                lsb = bitset(bird_bytes(7),8,0);  % set msb to zero in case it is first byte
                msb = bitshift(bird_bytes(8),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    ang_value = -value_bin*bird.angle_conv_fac;
                else
                    ang_value = value_bin*bird.angle_conv_fac;
                end
                ang_z = ang_value;
                
                
                lsb = bitset(bird_bytes(9),8,0);  % set msb to zero in case it is first byte
                msb = bitshift(bird_bytes(10),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    ang_value = -value_bin*bird.angle_conv_fac;
                else
                    ang_value = value_bin*bird.angle_conv_fac;
                end
                ang_y = ang_value;
                
                
                lsb = bitset(bird_bytes(11),8,0);  % set msb to zero in case it is first byte
                msb = bitshift(bird_bytes(12),7);
                value_bin = bitshift(msb+lsb,2);
                if bitget(value_bin,16)     % negative number
                    value_bin = bitcmp(value_bin,16);
                    ang_value = -value_bin*bird.angle_conv_fac;
                else
                    ang_value = value_bin*bird.angle_conv_fac;
                end
                ang_x = ang_value;
                
                ang = [ang_x ang_y ang_z];
                
                % Each record can be up to 32768 positive and negative
                
                
                
                [pos_flock(ibird,:), ang_flock(ibird,:)] = bird_bytes_2_data(bird_bytes_ibird,bird);
            end
            
            

            
            
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
