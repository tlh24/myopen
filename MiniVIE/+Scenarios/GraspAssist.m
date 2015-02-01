classdef GraspAssist < Scenarios.OnlineRetrainer
    % Scenario for controlling grasp assist device
    %
    %
    %
    %
    % Demo configuration:
    %   Run RCP device with MiniVIE EMG
    %     Scenarios.GraspAssist.Run(mode)
    %     mode == 1 :
    % 21-Apr-2013 Armiger: Created
    properties
        
    end
    properties (SetAccess = private)
        % Handles
        hDevice
        hTopoState
        
        LastIntent
        
        ConnectRcp = false;
    end
    methods
        function obj = GraspAssist
            % Creator
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            %initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Initialize scenario with source, algorithm, and data
            % method extends class with udp and calls superclass init
            
            
            % setup serial device
            if obj.ConnectRcp
                comPort = 'COM26';
                obj.hDevice = serialSetup(comPort);
                fprintf('Connecting serial device on %s...\n',comPort)
                
                pause(2);
                
                % Home all
                if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
                    disp('Home All');
                    fprintf(obj.hDevice,string2Can('HA'));
                    disp('[Press any key to continue]'),pause
                end
                
            end
            disp('Device setup Complete');
            
            obj.hTopoState = Scenarios.TopoGrasp();
            
            obj.hTopoState.setup_display();
            
            isLeftSide = 1;
            obj.hTopoState.hHandState = Controls.HandStatePointer;
            
            obj.hTopoState.hLegend = Controls.HandStateLegend(obj.hTopoState.hHandState,isLeftSide);
            obj.hTopoState.hLegend.EnableStateChangeBeep = 1;
            
            
            % Remaining superclass initialize methods
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            
            period = 0.15;
            fprintf('[%s] Setting timer refresh rate to %4.2f s\n',mfilename,period);
            obj.Timer.Period = period;
            
        end
        function getIntent(obj)
            % Performs intent classification
            
            % Do this locally so that the feature data can be stored
            % directly
            
            
            % Step 1: Get Intent
            [decodedClassName,prSpeed,rawEmg,windowData,features,...
                voteDecision] = getIntentSignals(obj);
            
            % Update structure
            obj.LastIntent.decodedClassName = decodedClassName;
            obj.LastIntent.prSpeed = prSpeed;
            obj.LastIntent.rawEmg = rawEmg;
            obj.LastIntent.windowData = windowData;
            obj.LastIntent.features = features;
            obj.LastIntent.voteDecision = voteDecision;
            
            % Step 2: Convert Intent to limb commands
            obj.hTopoState.WristFECmd = 0;
            obj.hTopoState.WristRotCmd = 0;
            obj.hTopoState.HandCmd = [0 0];
            switch decodedClassName
                case 'No Movement'
                case 'Wrist Flex In'
                    obj.hTopoState.WristFECmd = 1;
                case 'Wrist Extend Out'
                    obj.hTopoState.WristFECmd = -1;
                case 'Wrist Rotate In'
                    obj.hTopoState.WristRotCmd = 1;
                case 'Wrist Rotate Out'
                    obj.hTopoState.WristRotCmd = -1;
                    
                    
                case 'Up'
                    obj.hTopoState.HandCmd(2) = +1;
                case 'Down'
                    obj.hTopoState.HandCmd(2) = -1;
                case 'Left'
                    obj.hTopoState.HandCmd(1) = -1;
                case 'Right'
                    obj.hTopoState.HandCmd(1) = +1;
            end
        end
        function updateRetrainer(obj)
            
            % All subsequent commands rely on joystick for labelling
            % correct class
            if isempty(obj.hJoystick)
                return
            end
            
            [doTrain, doAddData] = getCommand(obj);
            
            
            % if all the data is cleared out, then we can't retrain
            % without error
            
            l = obj.TrainingData.getClassLabels;
            
            
            if doTrain && ~isempty(l)
                % retrain
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeError();
                obj.SignalClassifier.computeGains();
                obj.SignalClassifier.computeConfusion();
            end
            
            % If button is down, add the current data as training data to
            % that class
            if doAddData
                
                % Add a new sample of data based on the CurrentClass property
                assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
                
                classLabel = obj.CurrentClass;
                features = obj.LastIntent.features;
                rawSignal = obj.LastIntent.rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)';
                obj.TrainingData.addTrainingData(classLabel, features, rawSignal);
                
            end
            
            updateFigure(obj,obj.LastIntent.voteDecision,obj.CurrentClass);
        end
        
        function update(obj)
            % main timer update command
            
            try
                % get intent
                getIntent(obj);
                
                % update retrainer
                updateRetrainer(obj);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % Custom commands here
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                obj.hTopoState.hHandState.updateState();
                obj.hTopoState.hHandState.putdata(obj.hTopoState.HandCmd/20);
                obj.hTopoState.hLegend.setHandCmd(obj.hTopoState.HandCmd);
                handAngles = obj.hTopoState.hHandState.graspToJointAngles();
                
                
                
                if obj.ConnectRcp
                    i = handAngles(action_bus_enum.Index_MCP);
                    m = handAngles(action_bus_enum.Middle_MCP);
                    
                    %                     cmd = sprintf('P1%d',round(i*10));
                    %                     disp(['Set fingers: ' cmd]);
                    %                     fprintf(obj.hDevice,string2Can(cmd));
                    %                     pause(0.02)
                    
                    cmd = sprintf('PA%d',round(i*10));
                    disp(['Set fingers: ' cmd]);
                    fprintf(obj.hDevice,string2Can(cmd));
                    
                    %pause(0.2);
                end
                
                
                % set wrist angles
                idx = action_bus_enum.Wrist_FE;
                GAIN = 5;
                if abs(obj.hTopoState.WristFECmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristFECmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),70),-70);
                idx = action_bus_enum.Wrist_Rot;
                GAIN = 5;
                if abs(obj.hTopoState.WristRotCmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristRotCmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),90),-90);
                idx = action_bus_enum.Wrist_Dev;
                GAIN = 5;
                if abs(obj.hTopoState.WristDevCmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristDevCmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),30),-10);
                
                obj.hTopoState.hOutput.set_upper_arm_angles_degrees(obj.hTopoState.JointAnglesDegrees);
                obj.hTopoState.hOutput.set_hand_angles_degrees(handAngles);
                obj.hTopoState.hOutput.redraw();
                
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                if obj.Verbose > 1, fprintf('\n'); end
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
    end
    methods (Static = true)
        function obj = Run(mode)
            %  Scenarios.GraspAssist.Run
            
            if nargin < 1
                mode = 1;
            end
            
            p.guiName = 'MiniVIE Grasp Assist';
            p.filePrefix = 'GraspAssist_';
            
            %p.hSource = Inputs.CpchSerial('COM1');
            if mode == 1
                p.hSource = Inputs.SignalSimulator;
            else
                p.hSource = Inputs.IntanUdp.getInstance;
                %p.hSource.addfilter(Inputs.Notch([120 180 240 300 360],64,1,1000));
                Fs = p.hSource.SampleFrequency;
                p.hSource.addfilter(Inputs.HighPass(10,8,Fs));
                %p.hSource.addfilter(Inputs.LowPass(400,8,Fs));
            end
            
            p.ClassNames = {...
                'Up' 'Down' 'Left' 'Right' ...
                'Wrist Flex In' ...
                'Wrist Extend Out' ...
                'Wrist Rotate In' ...
                'Wrist Rotate Out' ...
                'No Movement'};
            %             p.ClassNames = {...
            %                 'Up' 'Down' 'Left' 'Right' ...
            %                 'No Movement'};
            
            p.hPresentation = Scenarios.GraspAssist;
            p.hPresentation.ConnectRcp = true;
            
            obj = foo(p);
            
        end
        function demoRcp(comPort)
            % Scenarios.GraspAssist.demoRcp('COM12')
            %
            % Simple demo to connect to RCP device, home, and then move to
            % a range of motion.
            %
            % Commands are:
            %  HA (Home All)
            %  PA500 (Move all fingers to normalized position of about
            %  halfway through range of motion (0-1024) )
            %  PA0 (Move all fingers to zero position
            %
            % Compact Conformal End Effector v1 (EZMotion, 1724 Brushed)
            %    RS485 --> arduino nano --> serial, can headers
            %    Manual thumb ab/ad
            %
            % Serial commands are run through the serial to CAN which
            % prepends serial header for usage with canSerial adaptor
            if nargin < 1
                comPort = 'COM26';
            end
            
            s = serialSetup(comPort);
            fprintf('Connecting serial device on %s...\n',comPort)
            
            % Give device time to initialize
            pause(2);
            
            % Home all
            if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
                disp('Home All');
                fprintf(s,string2Can('HA'));
                disp('[Press any key to continue]'),pause
            end
            
            % Close halfway
            cmd = sprintf('PA%d',500);
            disp(['Set fingers: ' cmd]);
            fprintf(s,string2Can(cmd));
            disp('[Press any key to continue]'),pause
            
            % Open
            cmd = sprintf('PA%d',0);
            disp(['Set fingers: ' cmd]);
            fprintf(s,string2Can(cmd));
            disp('[Press any key to continue]'),pause
            
        end
        function demoRcpJoystick(comPort)
            % Simple demo to connect to RCP device, home, and then move to
            % a range of motion.
            %
            % Commands are:
            %  HA (Home All)
            %  PA500 (Move all fingers to normalized position of about
            %  halfway through range of motion (0-1024) )
            %  PA0 (Move all fingers to zero position
            %
            % Compact Conformal End Effector v1 (EZMotion, 1724 Brushed)
            %    RS485 --> arduino nano --> serial, can headers
            %    Manual thumb ab/ad
            %
            % Serial commands are run through the serial to CAN which
            % prepends serial header for usage with canSerial adaptor
            
            if nargin < 1
                comPort = 'COM26';
            end
            
            try,clear joymex,end
            JoyMEX('init',0);
            
            StartStopForm([]);
            
            
            s = serialSetup(comPort);
            
            % Home all
            if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
                disp('Home All');
                fprintf(s,string2Can('HA'));
                disp('[Press any key to continue]'),pause
            end
            
            i = 0;
            while StartStopForm
                
                i = mod(i,3) + 1;
                
                if(i == 1)
                    fingerID = '1';
                elseif(i==2)
                    fingerID = '2';
                elseif(i==3)
                    fingerID = 'T';
                end
                
                [a ab] = JoyMEX(0);
                %force single finger
                %i=1;[a ab] = JoyMEX(0);
                if(ab(4))
                    fprintf(s,string2Can('HA'));
                elseif(ab(1))
                    fprintf(s,string2Can('CTA'));
                elseif(ab(2))
                    fprintf(s,string2Can('CTB'));
                elseif(ab(3))
                    fprintf(s,string2Can('CTC'));
                else
                    fingersJoystickAxis = 1; %% depends on joystick
                    v1 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
                    
                    fingersJoystickAxis = 3; %% depends on joystick
                    v3 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
                    
                    V1 = round(v1*1000);
                    V3 = round(v3*1000);
                    %This produces human readable output, e.g. 'V1-1000', but
                    %MoPro Node doesn't understand this.
                    %MoPro requires 'V1' [B0] [B1] [B2] [B3]
                    %Where B0-B3 is the raw binary representation of the
                    %velocity
                    fprintf(s,string2Can(sprintf('V%d%d',i,V3)))
                    %V3Raw = typecast(int32(V3),'uint8');
                    %fprintf(s,string2Can(sprintf('V%c%c%c%c%c',fingerID,V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4))));
                end
                
                %Example position command
                %Pick a position
                %pos = 200000
                %Choose motor ID as a CHAR
                %motorId = '1'
                %
                %No changes below
                %posRaw = typecast(int32(pos),'uint8');
                %rpcCmd = sprintf('P%c%c%c%c%c',motorId,posRaw(0),posRaw(1), posRaw(2), posRaw(3))));
                %fprintf(s,string2Can(rpcCmd));
                pause(0.1);
                
            end
            
        end
        function demoRcpCanJoystick(comPort)
            % Simple demo to connect to RCP device, home, and then move to
            % a range of motion.
            %
            % Commands are:
            %  HA (Home All)
            %  PA500 (Move all fingers to normalized position of about
            %  halfway through range of motion (0-1024) )
            %  PA0 (Move all fingers to zero position
            %
            % Compact Conformal End Effector v1 (EZMotion, 1724 Brushed)
            %    RS485 --> arduino nano --> serial, can headers
            %    Manual thumb ab/ad
            %
            % Serial commands are run through the serial to CAN which
            % prepends serial header for usage with canSerial adaptor
            
            persistent lastCommand
            
            if nargin < 1
                comPort = 'COM26';
            end
            
            if isempty(lastCommand)
                lastCommand = 0;
            end
            
            try,clear joymex,end
            JoyMEX('init',0);
            
            StartStopForm([]);
            
            
            % Setup serial port
            s = serialSetup(comPort);
            s.Timeout = 0.2;
            
            % Perform Serial-CAN initialization
            canSpeed = 8;
            % 4/10/2014
            % Initialize can message wrapper
            Scenarios.GraspAssist.initializeSerialCanConverter(s,canSpeed)
            
            % Home all
            if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
                disp('Home All');
                fprintf(s,string2Can('HA'));
                disp('[Press any key to continue]'),pause
            end
            
            while StartStopForm
                
                % get joystick input
                [a, ab] = JoyMEX(0);
                
                if(ab(4))
                    msg = string2Can('HA');
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(1))
                    msg = string2Can('CTA');
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(2))
                    msg = string2Can('CTB');
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(3))
                    fprintf(1,'Command CTC Disabled\n');
                    msg = '';
                    %fprintf(s,string2Can('CTC'));
                elseif(ab(5))
                    V3Raw = typecast(int32(300),'uint8');
                    msg = string2Can(sprintf('V%c%c%c%c%c',...
                        '1',V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4)));
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(6))
                    V3Raw = typecast(int32(300),'uint8');
                    msg = string2Can(sprintf('V%c%c%c%c%c',...
                        '2',V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4)));
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(7))
                    V3Raw = typecast(int32(300),'uint8');
                    msg = string2Can(sprintf('V%c%c%c%c%c',...
                        'T',V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4)));
                    fprintf(s,msg);                 % send msg to comm port
                    fprintf(sprintf('%s\n',msg));   % echo msg to console
                elseif(ab(8))
                    V3Raw = typecast(int32(0),'uint8');
                    fingerID = {'1' '2' 'T'};
                    
                    for iFinger = 1:length(fingerID)
                        msg = string2Can(sprintf('V%c%c%c%c%c',...
                            fingerID{iFinger},V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4)));
                        fprintf(s,msg);                 % send msg to comm port
                        fprintf(sprintf('%s\n',msg));   % echo msg to console
                    end
                else
                    fingersJoystickAxis = 1; %% depends on joystick
                    v1 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
                    
                    fingersJoystickAxis = 3; %% depends on joystick
                    v3 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
                    
                    V1 = round(v1*1000);
                    V3 = round(v3*1000);
                    %This produces human readable output, e.g. 'V1-1000', but
                    %MoPro Node doesn't understand this.
                    %MoPro requires 'V1' [B0] [B1] [B2] [B3]
                    %Where B0-B3 is the raw binary representation of the
                    %velocity
                    %fprintf(s,string2Can(sprintf('V%d%d',i,V3)))
                    V3Raw = typecast(int32(V3),'uint8');
                    
                    if ~isequal(lastCommand,V3)
                        
                        fingerID = {'1' '2' 'T'};
                        
                        for iFinger = 1:length(fingerID)
                            msg = string2Can(sprintf('V%c%c%c%c%c',...
                                fingerID{iFinger},V3Raw(1),V3Raw(2),V3Raw(3),V3Raw(4)));
                            fprintf(s,msg);                 % send msg to comm port
                            fprintf(sprintf('%s\n',msg));   % echo msg to console
                        end
                        lastCommand = V3;
                    end
                end
                
                % Read down serial buffer
                bytesAvailable = s.BytesAvailable;
                if bytesAvailable
                    x = fread(s,bytesAvailable);
                    fprintf('Reply: "%s"\n',char(x));
                end
                
                
                
                pause(0.05);
                
            end
            
        end
        function initializeSerialCanConverter(hPort,canSpeed)
            
            % Always start each session (when your program starts) with sending 2-3 [CR] to empty any prior
            % comand or queued character in the CAN232 (many times are power up there could be false
            % characters in the queue or old ones that was from a previous session),
            fprintf(hPort,sprintf('\n\n\n'));
            
            %then check the CAN version with V command (to be sure that you have communication with the unit at correct speed)
            fprintf(hPort,'V');
            
            % then set up the CAN speed with s or S command,
            speed = sprintf('S%d',canSpeed);
            fprintf(hPort,speed);
            
            %then open the CAN port with O,
            fprintf(hPort,'O');
            
            %then the
            % CAN232 is in operation for both sending and receiving CAN frames. Send frames with the t ot T
            % command and wait for a response back to see it it was placed in the CAN FIFO transmission
            % queue or the queue was full. Incomming frames from the CAN bus will be sent out at ones on the
            % RS232 or queued in the FIFO if the RS232 is full. Then once in a while send the F command to see
            % if there are any errors (e.g. each 100-500mS or if you get an error back from the CAN232). If you
            % get too many errors back after sending commands to the unit, send 2-3 [CR] to empty the buffer,
            % then issue the commands again, if this continue allert the user or application within your program
            % that there is a communication error (e.g. a damaged RS232 tranceiver or power failure).
            
            %check for errors
            fprintf(hPort,'F');
            
        end
    end
end

function obj = foo(p)

% handle all the generic MiniVIE gui setup stuff. Mostly just custom
% parameter setting


obj = MiniVIE;
set(obj.hg.Figure,'Name',p.guiName);
obj.FilePrefix = p.filePrefix;

%% Inputs
h = p.hSource;
h.NumSamples = 4000;
h.initialize();

% Enable buttons
set(obj.hg.SignalSourceButtons(:),'Enable','on');
% set(obj.hg.popups(1),'Value',6);

% Setup filters and remaining properties
% obj.println('Adding Filters',1);
% Fs = h.SampleFrequency;
% h.addfilter(Inputs.HighPass(15,3,Fs));
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
% h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
obj.SignalSource = h;

% f = GUIs.guiSignalViewer(h);
% uiwait(f.hg.Figure);

%% Signal Analysis
h = SignalAnalysis.Lda();

% Enable Buttons
set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
set(obj.hg.popups(2),'Value',2);

h.NumMajorityVotes = 0;

NumSamplesPerWindow = 200;
fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
h.NumSamplesPerWindow = NumSamplesPerWindow;

%obj.TrainingData = PatternRecognition.TrainingData();
obj.TrainingData = TrainingDataAnalysis();
ok = obj.TrainingData.loadTrainingData([]);
if ~ok
    obj.TrainingData.initialize(obj.SignalSource.NumChannels,h.NumSamplesPerWindow);
end

set(obj.hg.TrainingButtons(:),'Enable','on');

% Initialize Classifier with data object
h.initialize(obj.TrainingData);

% TODO: Note signals only updated on classifier
% creation
defaultChannels = GUIs.guiChannelSelect.getLastChannels();
if isempty(defaultChannels)
    msg = 'No channels are active.  Enable channels in Signal Viewer';
    %errordlg(msg);
    error(msg);
end
h.setActiveChannels(defaultChannels);

% load('TR_Basic.classNames','-mat')
classNames = p.ClassNames;
if (isempty(classNames))
    classNames = GUIs.guiClassifierChannels.getDefaultNames;
end
h.setClassNames(classNames);

obj.SignalClassifier = h;


%% Setup Presentation
h = p.hPresentation;
h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
h.Verbose = 1;
h.update();

start(h.Timer);
obj.println('Presentation setup complete',1);

% Enable buttons
set(obj.hg.PresentationButtons(:),'Enable','on');
% set(obj.hg.popups(5),'Value',5);

obj.Presentation = h;

end

function s = serialSetup(strComPort)
% Setup matlab serial port.  Checks for existing ports first
% Usage: s = serialSetup('COM9')

if nargin < 1
    strComPort = 'COM26';
end

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

function canOut = string2Can(strIn, canAddress)
% Convert a text string into CAN compatible message.
% Format is:
% T [Extended CAN Addressing Mode]
% XXXXXXXX [CAN Address in Hex 0-F]
% Number of Bytes [1-8]
% Data Bytes in Hex Pairs 00-FF
%
% example: string2Can('TEST') produces: 'T1FFFFFFF454455354' in which 4
% data bytes are indicated, followed by T=0x54 E=0x45 S=0x53 T=0x54

if ~ischar(strIn) || isempty(strIn) || (length(strIn) > 8)
    error('Expected a string with 1-8 characters\n');
end

if nargin < 2
    canAddress = '028C901A';
    canAddress = '1FE53018';
    canAddress = '1FFFFFFF';
end

hexVals = dec2hex(uint8(strIn));
canOut = sprintf('T%8s%d%s\n',canAddress,size(hexVals,1),hexVals');

end
