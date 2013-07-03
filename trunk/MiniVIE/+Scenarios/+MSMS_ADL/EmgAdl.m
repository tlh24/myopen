classdef EmgAdl < handle
    % Class used to send motion file data to MSMS and record emg data
    % Usage:
    % obj = EmgAdl;
    % setMotionFile(obj,'C:\MSMS\MSMS Beta 0.9.1\Sample Models\WRAMC_Model\Data','LeftArmRun1'); %(exclude file extensions)
    % initialize(obj)
    % start(obj.hDaq);
    
    properties
        hUdp
        hDaq
        hMotionFile
        
        CurrentClass = ''
        PauseClassId % Used to find delay class
        
        udpIpRemoteAddress = '127.0.0.1';
        udpIpRemotePort = 11114;
        udpIpLocalPort = 5264;
        
        ActiveChannels = [];
        
        BroadcastLog = struct('BroadcastTime',[],...
            'BroadcastAngles',[],'BroadcastTag',[]);
        
    end
    properties (Access = private)
        udpMessagePrototype;
        udpMessageJointIds;
    end
    methods
        function obj = EmgAdl()
        end
        function setMotionFile(obj,pathstr,filename,isBimanual)
            obj.hMotionFile = Scenarios.MSMS_ADL.MotionFile();
            
            if nargin == 1
                % No path or file provided
                obj.hMotionFile.uiGetMotionFiles;
            elseif nargin == 2
                % User provided path to start in
                obj.hMotionFile.uiGetMotionFiles(pathstr);
            elseif nargin == 3
                % User provided path and files
                obj.hMotionFile.setFileNames(pathstr,filename);
            elseif nargin == 4
                % User provided path and files
                obj.hMotionFile.setFileNames(pathstr,filename);
            end
            
            if nargin < 4
                isBimanual = false;
            end
            
            success = obj.hMotionFile.parse(isBimanual);
            
            if ~success
                disp('Parse Failed')
                obj.hMotionFile = [];
            end
            
            obj.PauseClassId = find(strcmp('PAUSE',obj.hMotionFile.classNames));
            
        end
        
        function initialize(obj)
            
            if isempty(obj.hMotionFile)
                error('No Motion File Loaded');
            end
            
            % Initialize UDP
            initializeUdp(obj);
            
            % Initialize Daq
            initializeDaq(obj);
            
            % Initialize Timer
            initializeTimer(obj);
        end
        function initializeTimer(obj)
            % Setup Timer
            
            fprintf('Initializing Timer Function \n');
            
            obj.hDaq.TimerPeriod = 0.02;
            obj.hDaq.TimerFcn = @(src,evt)timerstep(obj);
            obj.hDaq.StartFcn = @(src,evt)timerstart(obj);
            obj.hDaq.StopFcn = @(src,evt)timerstop(obj);
        end
        function initializeUdp(obj)
            p = pnet('udpsocket',obj.udpIpLocalPort);
            
            if p < 0
                error('Failed to setup udp');
            else
                obj.hUdp = p;
            end
            
            pnet(obj.hUdp,'udpconnect',...
                obj.udpIpRemoteAddress,obj.udpIpRemotePort);
            
            % This function is used to reverse engineer the MSMS model transmission
            % protocol.  It performs the same function as the simulink block that
            % converts joint parameters to udp packets, adding header and casting as
            % needed.
            
            % Set message prototype;
            obj.udpMessagePrototype = reshape(obj.hMotionFile.sampleMessage(),1,[]);
            
            % index to the joint variable array positions in MSMS
            obj.udpMessageJointIds = strfind(char(obj.udpMessagePrototype),fliplr('FIND'))';
            
            % Check that all the tokens were found
            assert(obj.hMotionFile.numJointParams == length(obj.udpMessageJointIds));
            
        end
        function initializeDaq(obj)
            % Initialize Daq
            numRecordSeconds = max(obj.hMotionFile.time);
            sampleRate = 1000;
            
            fprintf('Setting up DAQ Hardware to Record for %.1f seconds at %.0f Hz...',...
                numRecordSeconds,sampleRate);
            try
                if 1
                    obj.hDaq = analoginput('nidaq','Dev2');
                    set(obj.hDaq,'InputType','SingleEnded');
                    addchannel(obj.hDaq, 0:15);
                    obj.hDaq.SampleRate = sampleRate;
                else
                    % For Debug
                    obj.hDaq = analoginput('winsound');
                    addchannel(obj.hDaq, 1:2);
                    obj.hDaq.SampleRate = 5000;
                end
                obj.hDaq.SamplesPerTrigger = numRecordSeconds*obj.hDaq.SampleRate;
                obj.hDaq.TriggerType = 'Immediate';
                fprintf('OK \n');
            catch ME
                fprintf(2,'FAILED \n');
                rethrow(ME);
            end
            
        end
        function timerstart(obj)
            fprintf('Started DAQ: %s \t TimerPeriod: %f\n',...
                obj.hDaq.Name,obj.hDaq.TimerPeriod)
            
            % Reset Data Log
            obj.BroadcastLog = struct('BroadcastTime',[],...
                'BroadcastAngles',[],'BroadcastTag',[]);
            
        end
        function timerstop(obj)
            fprintf('Stopped Timer: %s \t TimerPeriod: %f \n',...
                obj.hDaq.Name,obj.hDaq.TimerPeriod);
            
            % Get EMG
            available = obj.hDaq.SamplesAvailable;
            numSamples = obj.hDaq.SamplesPerTrigger;
            if available < numSamples
                % Acquisition incomplete
                msg = {'Acquisition is incomplete'
                    sprintf('Only %d of %d samples will be saved',available,numSamples)};
                hWarn = warndlg(msg,'Sampling Incomplete','modal');
                uiwait(hWarn);
                numSamples = obj.hDaq.SamplesAvailable;
            end
            
            [emgData,emgTime] = getdata(obj.hDaq,numSamples); %blocking
            
            % Save to disk
            classTime = obj.hMotionFile.time;
            classLabels = obj.hMotionFile.tagData;
            classNames = obj.hMotionFile.classNames;
            
            broadcastLog = obj.BroadcastLog;
            
            activeChannels = obj.ActiveChannels;
            
            filePrefix = 'EmgDataAndLabels';
            defaultSaveName = [filePrefix '_' datestr(now,'yyyymmdd_HHMMSS') '.dataLog'];
            [FileName,PathName,FilterIndex] = ...
                uiputfile('*.dataLog','Select Log file to Save',defaultSaveName);
            
            if FilterIndex > 0
                save(fullfile(PathName,FileName),...
                    'emgData','emgTime','classTime','classLabels',...
                    'classNames','broadcastLog','activeChannels','-mat');
            end
            
        end
        function timerstep(obj)
            % get elapsed time
            tHistory = obj.hMotionFile.time;
            tElapsed = obj.hDaq.SamplesAcquired / obj.hDaq.SampleRate;
            
            % Check if end of file
            if tElapsed > max(tHistory)
                disp('Complete');
                stop(obj.hDaq);
                return
            end
            
            % Get location in file based on current time
            lineNo = find(tHistory <= tElapsed,1,'last');
            angleData = obj.hMotionFile.angleData(:,lineNo);
            
            % Get next motion (to see if it's a pause)
            newTag = obj.hMotionFile.tagData(lineNo);
            if lineNo < length(obj.hMotionFile.tagData)
                nextTag = obj.hMotionFile.tagData(lineNo+1);
            else
                nextTag = 0;
            end
            
            % If it's a pause, hold for the 'before' and 'after' timeframe
            if ~isempty(obj.PauseClassId) && ...
                    nextTag == obj.PauseClassId && ...
                    tElapsed > tHistory(lineNo)
                newTag = obj.PauseClassId;
            end
            
            % Send UDP for the appropriate file
            sendJointParameters(obj,angleData);
            
            % Log event
            obj.BroadcastLog.BroadcastTime = ...
                [obj.BroadcastLog.BroadcastTime; tElapsed];
            obj.BroadcastLog.BroadcastAngles = ...
                [obj.BroadcastLog.BroadcastAngles; angleData(:)'];
            obj.BroadcastLog.BroadcastTag = ...
                [obj.BroadcastLog.BroadcastTag; newTag];
            
            % Display Output
            if ~strcmpi(obj.CurrentClass,obj.hMotionFile.classNames{newTag})
                fprintf('t=%6.2f \t %24s\n',tElapsed,...
                    obj.hMotionFile.classNames{newTag});
            end
            
            obj.CurrentClass = obj.hMotionFile.classNames{newTag};
            
        end
        function preview(obj)
            
            if isempty(obj.hDaq)
                error('DAQ not initialized\n')
            end
            
            f = figure(99);
            clf(f)
            ax = gca;
            
            % Disable callbacks
            obj.hDaq.TimerFcn = [];
            obj.hDaq.StartFcn = [];
            obj.hDaq.StopFcn = [];
            
            if strcmpi(obj.hDaq.Running,'on')
                stop(obj.hDaq);
            end
            
            start(obj.hDaq);
            
            while StartStopForm
                d = peekdata(obj.hDaq,500);  % samples in msec
                plot(ax,d(:,obj.ActiveChannels))
                drawnow
            end
            
            stop(obj.hDaq);
            
            initializeTimer(obj);
            
        end
        function writeUdp(obj,uint8Message)
            pnet(obj.hUdp, 'write', uint8(uint8Message) );
            pnet(obj.hUdp, 'writepacket');
        end
        function sendJointParameters(obj,jointParameters)
            transmitBytes = obj.getMessageBytes(jointParameters);
            obj.writeUdp(transmitBytes);
        end
        function transmitBytes = getMessageBytes(obj,jointParameters)
            
            numJointParams = 82;
            
            assert(length(jointParameters) == numJointParams)
            
            % convert joint params to bytes
            jointParameters = jointParameters * pi/180;
            paramBytes = typecast(single(jointParameters),'uint8');
            paramsBytesOrdered = flipud(reshape(paramBytes,4,[]))';
            
            testMsg = obj.udpMessagePrototype;
            
            for i = 1:numJointParams
                id = obj.udpMessageJointIds(i) : obj.udpMessageJointIds(i) + 3;
                testMsg(id) = paramsBytesOrdered(i,:);
            end
            
            % Append numFeatures Header
            numFeatures = uint8(49);
            transmitBytes = [numFeatures testMsg];
        end
    end
end
