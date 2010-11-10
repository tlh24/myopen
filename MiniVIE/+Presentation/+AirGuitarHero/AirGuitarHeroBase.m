classdef AirGuitarHeroBase < hgsetget
    % Base Class for Air Guitar Hero
    % Contains info for seetting up display
    % Classes to control the game via xpc or daq should
    % inherit from here
    %
    % 01-Sept-2010 Armiger: Created
    properties
        
        VideoSize = [480 640 3]; % pixels, RGB layers
        
        % Device Handles
        hTimer = [];
        hOutput = [];
        hAudioVideoIn = [];
        hNoteDetector = [];
        
        % Graphics Handles
        hFigure = [];
        hAxes = [];
        hFrame = [];
        
        DisplayState = 0;
    end
    properties (Access = private)
        LastKey = '';
    end
    properties (Constant = true)
        Off             = 1;
        DisplayOnly     = 2;
        AutoPlay        = 3;
        Training        = 4;
        Playing         = 5;
    end
    methods (Abstract)
        initialize(obj);
        sendButtonDownCommand(obj,id);
        sendButtonUpCommand(obj,id);
    end
    methods
        function setupDisplay(obj)
            obj.hFigure = figure(99);
            clf(obj.hFigure);
            set(obj.hFigure,'Name','Air Guitar Hero');
            set(obj.hFigure,'NumberTitle','off');
            set(obj.hFigure,'Color',[ 0 0 0 ]);
            set(obj.hFigure,'ToolBar','none');
            %             set(obj.hFigure,'MenuBar','none');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)closeRequestFcn(src,obj))
            set(obj.hFigure,'HandleVisibility','callback');
            
            obj.hAxes = axes('Parent',obj.hFigure);
            cla(obj.hAxes);
            view(obj.hAxes,0,0);
            axis(obj.hAxes,'equal')
            axis(obj.hAxes,'off')
            
            set(obj.hFigure,'WindowKeyPressFcn',@(src,evt)cb_key_press(src,evt,obj));
            set(obj.hFigure,'WindowKeyReleaseFcn',@(src,evt)cb_key_release(src,evt,obj));
            
            obj.hFrame = imshow(zeros(obj.VideoSize,'uint8'),'Parent',obj.hAxes);
            hold(obj.hAxes,'on');
            
        end
        function SetRunState(obj,state)
            if state
                % Start
                if ~strcmpi(obj.hTimer.Running,'on')
                    start(obj.hTimer);
                end
            else
                % Stop
                
                if ~strcmpi(obj.hTimer.Running,'off')
                    stop(obj.hTimer);
                end
                sendButtonCommand(obj,~(zeros(1,8)));
                
                if ~strcmpi(obj.SignalSource.AnalogInput.Running,'off')
                    stop(obj.SignalSource.AnalogInput);
                end
            end
        end
        function refresh(obj)
            
            try
                frame = getFrame(obj);
                annotatedFrame = obj.hNoteDetector.process_frame(frame);
                drawFrame(obj,annotatedFrame);
                
                switch obj.DisplayState
                    case obj.Off
                        % stop timer
                        if ~strcmpi(obj.hTimer.Running,'off')
                            stop(obj.hTimer);
                        end
                        
                        % ensure output is off
                        sendButtonCommand(obj,~(zeros(1,8)));
                        
                        % stop data acquisition
                        if ~strcmpi(obj.SignalSource.AnalogInput.Running,'off')
                            stop(obj.SignalSource.AnalogInput);
                        end
                        
                        return
                    case obj.DisplayOnly
                        % ensure output is off
                        sendButtonCommand(obj,~(zeros(1,8)));
                        
                        % stop data acquisition
                        if ~strcmpi(obj.SignalSource.AnalogInput.Running,'off')
                            stop(obj.SignalSource.AnalogInput);
                        end
                        
                        if ~isempty(obj.hInput)
                            % Joystick Control
                            obj.hInput.getdata();
                            
                            noteMask = obj.hInput.buttonVal(1:5);
                            strumOn = any(noteMask);
                            sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                            
                            
                        end
                        
                        return
                    case obj.AutoPlay
                        % AutoPlay
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(8,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));

                        % stop emg acquisition
                        if ~strcmpi(obj.SignalSource.AnalogInput.Running,'off')
                            stop(obj.SignalSource.AnalogInput);
                        end
                        
                        return
                end
                

                switch obj.DisplayState
                    case obj.Training
                        % EMG on and Autoplay on to maintain cues
                        
                        
                        % start emg acquisition
                        if ~strcmpi(obj.SignalSource.AnalogInput.Running,'on')
                            start(obj.SignalSource.AnalogInput);
                        end
                        
                        % AutoPlay
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(8,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                        
                        
                        return
                end
                
                
                return
                % get a window of samples and classify them
                obj.SampleCounter = obj.SampleCounter + 1;
                obj.SignalSource.NumSamples = obj.EmgClassifier.NumSamplesPerWindow;
                windowData = obj.SignalSource.getFilteredData();
                features2D = obj.EmgClassifier.extractfeatures(windowData);
                activeChannelFeatures = features2D(obj.EmgClassifier.ActiveChannels,:);
                [classOut voteDecision] = obj.EmgClassifier.classify(reshape(activeChannelFeatures',[],1));
                
                if ~obj.EnableOnlineRetraining
                    cmd = zeros(1,8);
                    if classOut == 1 %No Movement
                        sendButtonCommand(obj,~(zeros(1,8)));
                    else
                        cmd(classOut-1) = 1;
                        cmd(8) = 1;
                        sendButtonCommand(obj,~cmd)
                    end
                    return
                end
                
                
                if ~obj.AutoPlay
                    % Ensure all buttons are up
                    %sendButtonCommand(obj,~(zeros(1,8)));
                end
                if obj.AutoPlay
                end
                
                
                noteMask = find(obj.hNoteDetector.noteHistory(10,:),1,'first');
                
                if isempty(noteMask) || (noteMask > 3)
                    currentCue = 1; % No movement
                else
                    currentCue = noteMask + 1;
                end
                
                obj.EmgClassifier.ClassNames(currentCue);
                
                % use the current features and class label for training
                obj.features3D(:,:,obj.SampleCounter) = features2D;
                obj.classLabelId(obj.SampleCounter) = currentCue;
                
                obj.RetrainCounter = obj.RetrainCounter + 1;
                if obj.EnableOnlineRetraining && obj.RetrainCounter > 30
                    obj.RetrainCounter = 0;
                    classesWithData = unique(obj.classLabelId(1:obj.SampleCounter));
                    if length(classesWithData) < obj.EmgClassifier.NumClasses;
                        fprintf('[Classifier] Insufficient data\n');
                        fprintf('Classes with data: ');
                        fprintf('%d ',classesWithData);
                        fprintf('\n');
                        
                    else
                        obj.EmgClassifier.TrainingData = obj.features3D(:,:,1:obj.SampleCounter);
                        obj.EmgClassifier.TrainingDataLabels = obj.classLabelId(1:obj.SampleCounter);
                        obj.EmgClassifier.train();
                        obj.EmgClassifier.computeerror();
                    end
                end
                
                
                drawnow
            catch ME
                stop(obj.hTimer);
                rethrow(ME);
            end
        end
        function frame = getFrame(obj)
            %             if obj.readFramesFromDisk
            %                 frame = obj.read_frame();
            %                 pause(0.03);  % try to match frame rate
            %             else
            %                 frame = vcapg2;
            %             end
            frame = vcapg2;
        end
        function drawFrame(obj,frame)
            set(obj.hFrame,'CData',frame);
        end
    end
    methods (Static = true)
        function hTimer = createTimer(timerName,TimerFcn)
            
            hExisting = timerfindall('Name',timerName);
            delete(hExisting);
            
            t = timer;
            t.Name = timerName;
            t.ExecutionMode = 'fixedRate';
            t.TimerFcn = TimerFcn;
            t.StartFcn = @(src,evt)fprintf('Started: %s\tPeriod: %f\n',timerName,t.Period);
            t.StopFcn = @(src,evt)fprintf('Stopped: %s\tPeriod: %f\tAveragePeriod: %f\n',timerName,t.Period,t.AveragePeriod);
            
            hTimer = t;
        end
    end
    
end

function cb_key_press(src,evnt,obj) %#ok<*INUSL>

if strcmpi(obj.LastKey,evnt.Key)
    % prevent multiple callbacks on button held down
    drawnow
    return
else
    obj.LastKey = evnt.Key;
end

id = keyMap(evnt.Key);
if ~isempty(id)
    sendButtonDownCommand(obj,id);
end

end

function cb_key_release(src,evnt,obj)

obj.LastKey = '';

id = keyMap(evnt.Key);
if ~isempty(id)
    sendButtonUpCommand(obj,id);
end

end
%Private
function closeRequestFcn(src,obj)

stop(obj.hTimer);
delete(obj.hTimer)
delete(src);

end

function id = keyMap(strKey)
switch strKey
    case 'space'
        id = double(Presentation.HwLinesEnum.Strum);
    case 'z'
        id = double(Presentation.HwLinesEnum.GreenButton);
    case 'x'
        id = double(Presentation.HwLinesEnum.RedButton);
    case 'c'
        id = double(Presentation.HwLinesEnum.YellowButton);
    case 'v'
        id = double(Presentation.HwLinesEnum.BlueButton);
    case 'b'
        id = double(Presentation.HwLinesEnum.OrangeButton);
    otherwise
        id = [];
end
end
