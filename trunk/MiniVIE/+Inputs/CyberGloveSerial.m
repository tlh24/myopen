classdef CyberGloveSerial < handle
    % Class file for direct interface with Cyber Glove without Device manager
    % Usage: h = CyberGloveSerial(comPortName,handleName);
    %
    % h.initialize()
    % h.getRawData()
    %
    %
    %     raw = obj.hCyberGlove.getRawData()';
    %     val = obj.mudFormat(raw);
    %     q_arm = obj.hMicroStrain.getdata();
    % 
    %     q = obj.adjustForMPL(q_arm, val);
    % 
    
    % $Log: CyberGloveSerial.m  $
    % Revision 1.3 2010/09/24 17:19:05EDT Armiger, Robert S. (ArmigRS1-a)
    % comments updated
    % Revision 1.2 2010/07/14 15:24:12EDT armigrs1-a
    % Created by Robert Armiger, JHUAPL
    properties
        hPort;
        id;
        nSensors;
        isRightHanded;
        hardwareMask;
    end
    properties (SetAccess = protected)
        maxGlove = [  0     0     0     0     0   144   164   182   149   172   232     0   183   166   238   104   170   147   199    74   170   205   231   170   167   174   219 ];
        minGlove = [  0     0     0     0     0    67     1   124    66    66    48     0    69    84    63   155    60    75    74   151    66    89    95   108    88    63    69 ];
    end
    methods
        function obj = CyberGloveSerial(comPortName,handleName)
            % CyberGloveSerial - for direct serial control of glove
            % Constructor.
            
            if nargin < 1
                comPortName = 'COM1';
            end
            if nargin < 2
                handleName = 'CyberGlove';
            end
            
            obj.hPort = setup_serial(comPortName,handleName);
            
            obj.id = fix(2^16*rand);
        end
        function initialize(obj)
            obj.nSensors = queryCmd(obj,'?S',4);
            if isempty(obj.nSensors)
                error('No response from device')
            end
            
            obj.isRightHanded = queryCmd(obj,'?R',4);
            obj.hardwareMask = getHardwareMask(obj);
        end
        
        function clear(obj)
            delete(obj.hPort);
            obj.hPort = [];
        end
        function close(obj)
            fclose(obj.hPort);
        end
        function actionBusAngles = getdata(obj)
            
            degreesPerCount = 0.5; % ref CyberGlove Manual
            
            gloveData = zeros(1,length(obj.hardwareMask));
            gloveData(obj.hardwareMask) = getRawData(obj);
            
            if obj.nSensors == 18;
                % copy DIP joints from PIP
                gloveData(7) = gloveData(6);
                gloveData(11) = gloveData(10);
                gloveData(15) = gloveData(14);
                gloveData(19) = gloveData(18);
            end
            
            
            anglesDegrees = gloveData * degreesPerCount;
            
            anglesRadians = anglesDegrees * pi / 180;
            
            % initialize angles with zero
            nActionBusAngles = 29;
            actionBusAngles = zeros(1,nActionBusAngles);
            
            % assign values
            actionBusAngles(6) = -anglesRadians(22);   %% Wrist_FE
            actionBusAngles(7) = anglesRadians(23);    %% Wrist_Dev
            
            actionBusAngles(8) = -anglesRadians(5);    %% Index_MCP
            actionBusAngles(9) = -anglesRadians(6);    %% Index_PIP
            actionBusAngles(10) = -anglesRadians(7);   %% Index_DIP
            actionBusAngles(11) =  anglesRadians(12);  %% Index_AbAd
            
            actionBusAngles(12) = -anglesRadians(9);   %% Middle_MCP
            actionBusAngles(13) = -anglesRadians(10);   %% Middle_PIP
            actionBusAngles(14) = -anglesRadians(11);   %% Middle_DIP
            %actionBusAngles(15) = 0;               %% Middle_AbAd
            
            actionBusAngles(16) = -anglesRadians(13);  %% Ring_MCP
            actionBusAngles(17) = -anglesRadians(14);  %% Ring_PIP
            actionBusAngles(18) = -anglesRadians(15);  %% Ring_DIP
            actionBusAngles(19) =  anglesRadians(16);  %% Ring_AbAd
            
            actionBusAngles(20) = -anglesRadians(17);  %% Little_MCP
            actionBusAngles(21) = -anglesRadians(18);  %% Little_PIP
            actionBusAngles(22) = -anglesRadians(19);  %% Little_DIP
            actionBusAngles(23) =  anglesRadians(20);  %% Little_AbAd
            
            actionBusAngles(24) = -anglesRadians(4);   %% Thumb_AbAd
            %actionBusAngles(25) = 0;               %% Thumb_FE
            actionBusAngles(26) = -anglesRadians(1);   %% Thumb_Rot
            actionBusAngles(27) = -anglesRadians(2);   %% Thumb_MCP
            actionBusAngles(28) = -anglesRadians(3);   %% Thumb_IP
            
            actionBusAngles(29) = -anglesRadians(21);  %% Palm_Arch
            
            
            % Raw data from cyberglove is as follows:
            % Thumb Roll Sensor/TMJ (angle of thumb across palm)
            % Thumb inner joint sensor/MPJ
            % Thumb outer joint sensor/IJ
            % Thumb-index adbuction sensor
            % Index finger inner joint sensor
            % Index finger middle joint sensor
            % Index finger outer joint sensor
            % Index-Middle abduction sensor
            % Middle finger inner joint sensor
            % Middle finger middle joint sensor
            % Middle finger outer joint sensor
            % Ring finger inner joint sensor
            % Ring finger middle joint sensor
            % Ring finger outer joint sensor
            % Middle-Ring abduction sensor
            % Pinky finger inner joint sensor
            % Pinky finger middle joint sensor
            % Pinky finger outer joint sensor
            % Ring-Pinky abduction sensor
            % Palm arch sensor
            % Wrist flexion sensor
            % Wrist abduction sensor
        end
        function rawData = getRawData(obj)
            fwrite(obj.hPort,'G');
            nBytes = obj.nSensors + 2;
            [A, count] = fread(obj.hPort,nBytes,'uint8');
            
            if count == 0
                %retry command
                fwrite(obj.hPort,'G');
                [A, count] = fread(obj.hPort,nBytes,'uint8');
            end
            
            assert(count > 0)
            assert(A(1) == uint8('G'))
            assert(count == nBytes);
            
            rawData = A(2:end-1);
            
            clear_buffer(obj);
        end
        function calibrateGlove(obj)
            fprintf('extend Fingers\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove([9 10 11 13 14 15 17 18 19 21 22 23]) = val([9 10 11 13 14 15 17 18 19 21 22 23]);

            fprintf('flex Fingers\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove([9 10 11 13 14 15 17 18 19 21 22 23]) = val([9 10 11 13 14 15 17 18 19 21 22 23]);

            fprintf('extend Finger AbAds and Thumb FE\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove([16 20]) = val([16 20]);
            obj.minGlove([8 25]) = val([8 25]);

            fprintf('flex Finger AbAds and Thumb FE\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove([16 20]) = val([16 20]);
            obj.maxGlove([8 25]) = val([8 25]);
            
            fprintf('extend distal Thumb\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove([26 27]) = val([26 27]);

            fprintf('flex distal Thumb\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove([26 27]) = val([26 27]);
            
            fprintf('extend Thumb AbAd\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove(24) = val(24);

            fprintf('flex Thumb AbAd\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove(24) = val(24);
            
            fprintf('extend Wrist Flexor\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove(7) = val(7);

            fprintf('flex Wrist Flexor\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove(7) = val(7);
            
            fprintf('extend Wrist Deviator\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.minGlove(6) = val(6);

            fprintf('flex Wrist Deviator\n');pause;
            val = obj.mudFormat(obj.getRawData()');
            obj.maxGlove(6) = val(6);
        end
        function q = adjustForMPL(obj, q_arm, val)
            q = obj.minLim + (obj.maxLim - obj.minLim) .* ( (val - obj.minGlove) ./ (obj.maxGlove - obj.minGlove) );
            
            q(20) = ( q(16) + q(20) ) / 2;      % unified Ring/Little AbAd
            q(16) = q(20);                      % /
            q(25) = q(25) + 0.9 * q(24) - 0.2;  % adjust for Thumb FE
            q(1:5) = q_arm(1:5);                % upper arm Microstrain
            q(5) = q(5) * 1.2;                  % increase scale for Wrist Rot
            
            q = max(obj.minLim, min(obj.maxLim,q));
        end
        
        function clear_buffer(obj)
            % read leftover bytes if there are any
            if obj.hPort.BytesAvailable > 0
                fread(obj.hPort,obj.hPort.BytesAvailable);
            end
        end
        function switchVal = getswitch(obj)
            fwrite(obj.hPort,'?W');
            [A count] = fread(obj.hPort,4,'uint8');
            
            assert(isequal(A(1:2),uint8('?W')'))
            assert(count == 4);
            
            switchVal = A(3);
            
            clear_buffer(obj);
        end
        function preview(obj)
            tmr = timer;
            set(tmr,'Period',0.1);
            set(tmr,'TimerFcn',@plot_data);
            set(tmr,'ExecutionMode','fixedRate');
            
            tmpSample = getRawData(obj);
            
            nJoints = length(tmpSample);
            nSamples = 100;
            
            data = zeros(nSamples,nJoints);
            
            figure(83);
            clf;
            hLines = plot(data);
            offset = linspace(0,100,nJoints);
            
            hText = zeros(size(hLines));
            for i = 1:nJoints
                hText(i) = text(1.05*nSamples,0,num2str(i));
                set(hText(i),'Color',get(hLines(i),'Color'));
            end
            
            
            start(tmr);
            
            function plot_data(src,evt) %#ok<INUSD>
                try
                    newSample = getRawData(obj);
                    % shift buffer left
                    data = [data(2:end,:); newSample(:)'];
                    for iJnt = 1:nJoints
                        set(hLines(iJnt),'XData',1:nSamples);
                        pltData = data(:,iJnt) + offset(iJnt);
                        set(hLines(iJnt),'YData',pltData);
                        pos = get(hText(iJnt),'Position');
                        set(hText(iJnt),'Position',[pos(1) mean(pltData(end-5:end)) pos(3)])
                    end
                    drawnow
                catch ME %#ok<NASGU>
                    stop(src);
                    delete(src);
                end
            end %% plot_data
        end %% preview
        function mask = getmask(obj) %#ok<MANU>
            % RSA: Note object handle not used.  We could make this method static,
            % but then you cannot call as getmask(obj); only obj.getmask
            nActionBusAngles = 29;
            mask = zeros(1,nActionBusAngles);
            
            validIds = [6:14 16:24 26:29];
            mask(validIds) = 1;
        end
        function bitMask = getHardwareMask(obj)
            maskBytes = obj.queryCmd('?K',6);
            
            bitMask = logical([...
                dec2binvec(maskBytes(1),8) ...
                dec2binvec(maskBytes(2),8) ...
                dec2binvec(maskBytes(3),8)]);
            
            assert(sum(bitMask) == obj.nSensors);
            
            clear_buffer(obj);
        end
        function result = queryCmd(obj,cmd,nOut)
            fwrite(obj.hPort,cmd);
            [A count] = fread(obj.hPort,nOut,'uint8');
            
            isValid = @(A,count) (count == nOut) && isequal(A(1:2),uint8(cmd)');
            
            iRetry = 0;
            while ~isValid(A,count) && iRetry < 1
                % try again
                [A count] = fread(obj.hPort,nOut,'uint8');
                iRetry = iRetry + 1;
            end
            
            result = A(1+length(cmd):end-1);
            
            clear_buffer(obj);
        end
        
    end
    methods (Static = true)
        function val = mudFormat(raw)
            val = zeros(1,27);
            val([ 6  7]) = raw([22 21]);
            val([ 8  9 10 11]) = raw([11 5 6 7]);      % index finger
            val([13 14 15])    = raw([8 9 10]);      % middle finger
            val([16 17 18 19]) = raw([15 12 13 14]);  % ring finger
            val([20 21 22 23]) = raw([19 16 17 18]);  % little finger
            val([24 25 26 27]) = raw([1 4 2 3]);      % thumb

        end
    end
    
end

function hPort = setup_serial(comPortName,handleName)

% Check for existing ports since we may have to share
hExisting = instrfind('Port',comPortName);  % scalar handle
if ~isempty(hExisting) && numel(hExisting) ~= 1
    % Should never get here
    error('More than one port at %s\n',comPortName);
end

if isempty(hExisting)
    % Setup Port
    hPort = serial(comPortName);
    set(hPort,'Name',handleName);
    set(hPort,'BaudRate',115200);
    set(hPort,'Timeout',1);
    fopen(hPort);
    
else %% port already exists. maybe we can use it
    if strcmpi(hExisting.Name,handleName)
        % it's a good port, is it open?
        if strcmpi(hExisting.Status,'open')
            % it's already ready to go
            hPort = hExisting;
        else
            % open it and go
            fopen(hExisting);
            hPort = hExisting;
        end
    else
        error('Port Name mismatch: %s ~= %s',hExisting.Name,handleName);
    end
end

end
