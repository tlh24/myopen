classdef AirGuitarHeroEmg < Presentation.AirGuitarHero.AirGuitarHeroBase
    % Extends Air Guitar Hero Class to add EMG play (digital output)
    % capabilities and online retraining
    %
    % 01-Sept-2010 Armiger: Created
    properties
        SignalSource;
        SignalClassifier;
        
        TrainClassifier = 0;
        EnableOnlineRetraining = 1;
        
        MaxSamples = 1e4;
        
        RetrainCounter = 0;
        SampleCounter = 0; % controls index into training data
        
        features3D;
        classLabelId;;
        
        hStateButtons
        
    end
    methods
        function obj = AirGuitarHeroEmg(signalSource,signalClassifier)
            
            if isempty(signalSource)
                error('SignalSource is empty\n');
            else
                obj.SignalSource = signalSource;
            end
            if isempty(signalClassifier)
                error('SignalClassifier is empty\n');
            else
                obj.SignalClassifier = signalClassifier;
            end
            
            obj.hTimer = UiTools.create_timer('AGH_Display',@(src,evt)refresh(obj));
            obj.hTimer.Period = 0.03;
            
            %obj.initialize();
        end
        function initialize(obj,outputDevice)
            % initialize air guitar hero.  output device is a string that
            % defines the manner of sending commands to the guitar.  Can be
            % either mcc or nidaq daq systems or a COM port.
            
            
            % setup video stream
            try
                clear('vcapg2');
                avHandle = vcapg2;
                if isequal(size(avHandle),[1 1])
                    obj.hAudioVideoIn = avHandle;
                end
            catch ME
                warning(ME.message);
                warning('AGH_Trainer:NoCaptureDevice','No Capture device found using vcapg2!')
                obj.hAudioVideoIn = [];
            end
            
            setupDisplay(obj);
            obj.hNoteDetector = Presentation.AirGuitarHero.NoteDetector(obj);
            
            setupButtons(obj);
            %resetClassifier(obj);
            
            try
                useSerial = strncmpi(outputDevice,'COM',3);
                if useSerial
                    fprintf('Creating serial object at %s...',outputDevice);
                    s = serial(outputDevice,'BaudRate',115200);
                    fprintf('Done\n');
                    fprintf('Opening %s...',s.Port);
                    fopen(s);
                    fprintf('Done\n');
                    obj.hOutput = s;
                    fwrite(obj.hOutput,uint8(0));
                else
                    % TODO: change output device id
                    %obj.hOutput = digitalio('mcc',0);
                    obj.hOutput = digitalio(outputDevice,0);
                    addline(obj.hOutput,0:7,'out');
                    vals = ones(8,1);
                    putvalue(obj.hOutput,vals);
                end
            catch ME
                errordlg({'Error setting up output device.  Error was:' ME.message});
                return
                rethrow(ME);
            end
            
        end
        function resetClassifier(obj)
            disp('Resetting Classifier and Stored Data');
            
            obj.SignalClassifier.initialize;
            obj.features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
            obj.classLabelId = NaN(1,obj.MaxSamples);
            
            obj.SampleCounter = 0;
        end
        function refresh(obj)
            
            try
                if ~isempty(obj.hAudioVideoIn)
                    % get a frame and process it
                    frame = getFrame(obj);
                    annotatedFrame = obj.hNoteDetector.process_frame(frame);
                    drawFrame(obj,annotatedFrame);
                end
                
                switch obj.DisplayState
                    case obj.Off
                        % Stop timer
                        SetRunState(obj,0);
                        % stop data acquisition
                        obj.SignalSource.stop();
                    case obj.DisplayOnly
                        % ensure output is off
                        sendButtonCommand(obj,~(zeros(1,8)));
                        
                        % stop data acquisition
                        obj.SignalSource.stop();
                    case obj.AutoPlay
                        % AutoPlay
                        
                        % stop data acquisition
                        obj.SignalSource.stop();
                        
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(obj.FrameDelay,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                        
                    case obj.Training
                        % EMG on and Autoplay on to maintain cues
                        if isa(obj.SignalSource,'Inputs.DaqHwDevice')
                            obj.SignalSource.start();
                        end
                        
                        % AutoPlay
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(8,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                        
                    case obj.Playing
                        % EMG on and Autoplay on to maintain cues
                        
                        if isa(obj.SignalSource,'Inputs.DaqHwDevice')
                            obj.SignalSource.start();
                        end
                        obj.disableKeyboardCallbacks();
                        
                        % TODO: this is a function now:
                        obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
                        windowData = obj.SignalSource.getFilteredData(obj.SignalSource.NumSamples);
                        features2D = obj.SignalClassifier.extractfeatures(windowData);
                        activeChannelFeatures = features2D(obj.SignalClassifier.getActiveChannels,:);
                        [classOut, voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
                        
                        useMajorityVote = 1;
                        if useMajorityVote
                            output = voteDecision;
                        else
                            output = classOut;
                        end
                        classNames = obj.SignalClassifier.getClassNames;
                        fprintf('Class:  %s\n',classNames{output});
                        
                        switch classNames{output}
                            case {'Index' 'Index Grasp'}
                                noteMask = [1 0 0 0 0];
                            case {'Middle' 'Middle Grasp'}
                                noteMask = [0 1 0 0 0];
                            case {'Ring' 'Ring Grasp'}
                                noteMask = [0 0 1 0 0];
                            case {'Little' 'Little Grasp'}
                                noteMask = [0 0 0 1 0];
                            otherwise
                                noteMask = [0 0 0 0 0];
                        end
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                end
            catch ME
                stop(obj.hTimer);
                rethrow(ME);
            end
        end
        
        function close(obj)
            if ~isempty(obj.hOutput) && isa(obj.hOutput,'serial')
                if strcmpi(obj.hOutput.status,'closed')
                    fclose(obj.hOutput);
                end
                delete(obj.hOutput);
                obj.hOutput = [];
            end
        end
    end
    methods (Static = true)
        function out = Default
            obj.SignalSource = Inputs.DaqHwDevice('mcc','0');
            obj.SignalSource.addfilter(Inputs.HighPass());
            %obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch());
            obj.SignalSource.initialize();
            
            NumSamplesPerWindow = 200;
            hTrainingData = TrainingDataAnalysis();
            hTrainingData.initialize(obj.SignalSource.NumChannels,NumSamplesPerWindow)
            
            obj.SignalClassifier = SignalAnalysis.Lda();
            obj.SignalClassifier.initialize(hTrainingData);
            obj.SignalClassifier.setClassNames({'No Movement' 'Index' 'Middle' 'Ring'});
            obj.SignalClassifier.setActiveChannels(1:4);
            obj.SignalClassifier.NumMajorityVotes = 7;
            
            
            out = Presentation.AirGuitarHero.AirGuitarHeroEmg(obj.SignalSource,obj.SignalClassifier);
        end
    end
end

function selcbk(src,evnt,obj)
% disp(src);
disp([evnt.EventName,'  ',...
    get(evnt.OldValue,'String'),' -> ', ...
    get(evnt.NewValue,'String')]);
selected = get(src,'SelectedObject');
obj.DisplayState = find(obj.hStateButtons == selected);

if obj.DisplayState == 1
    % Stop
    if ~strcmpi(obj.hTimer.Running,'off')
        stop(obj.hTimer);
    end
else
    % Start
    if ~strcmpi(obj.hTimer.Running,'on')
        start(obj.hTimer);
    end
end

end

function setupButtons(obj)

pxButtonWidth = 60;


states = {'Off' 'Display' 'Autoplay' 'Train' 'Play'};
numStates = length(states);

h = uibuttongroup(obj.hFigure,...
    'visible','off',...
    'Units','pixels',...
    'Position',[20 20 6+numStates*pxButtonWidth 26]);

obj.hStateButtons = zeros(1,numStates);
for i = 1:numStates
    obj.hStateButtons(i) = uicontrol(h,...
        'Units','pixels',...
        'Position',[3+(i-1)*pxButtonWidth 2 pxButtonWidth 20],...
        'String',states{i},...
        'Style','Togglebutton');
end

set(h,'SelectionChangeFcn',@(src,evnt)selcbk(src,evnt,obj));
set(h,'SelectedObject',obj.hStateButtons(1));  % No selection
set(h,'Visible','on');

defaultVisibility = 1;
obj.hNoteDetector.SetVisibility(defaultVisibility);
hAutoPlay = uicontrol(obj.hFigure);
set(hAutoPlay,'Units','pixels');
set(hAutoPlay,'Position',[50+ numStates*pxButtonWidth 23 pxButtonWidth 20]);
set(hAutoPlay,'String','ShowLines');
set(hAutoPlay,'Style','Togglebutton');
set(hAutoPlay,'Value',defaultVisibility);
set(hAutoPlay,'Callback', @(src,evnt) obj.hNoteDetector.SetVisibility(get(src,'Value')));

iColumn = 7;
hDelayIncrease = uicontrol(obj.hFigure);
set(hDelayIncrease,'Units','pixels');
set(hDelayIncrease,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
set(hDelayIncrease,'String','+ Delay');
set(hDelayIncrease,'Style','Pushbutton');
set(hDelayIncrease,'Callback', @(src,evnt) obj.setFrameDelay(obj.FrameDelay+1) );

iColumn = 8;
hDelayDecrease = uicontrol(obj.hFigure);
set(hDelayDecrease,'Units','pixels');
set(hDelayDecrease,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
set(hDelayDecrease,'String','- Delay');
set(hDelayDecrease,'Style','Pushbutton');
set(hDelayDecrease,'Callback', @(src,evnt) obj.setFrameDelay(obj.FrameDelay-1) );

return

defaultRunState = 0;
hRun = uicontrol(obj.hFigure);
set(hRun,'Units','pixels');
set(hRun,'Position',[2 2 pxButtonWidth 20]);
set(hRun,'String','Run');
set(hRun,'Style','Togglebutton');
set(hRun,'Value',defaultRunState);
%set(hRun,'Callback', @(src,evnt) obj.SetRunState(get(src,'Value')));

hAutoPlay = uicontrol(h);
set(hAutoPlay,'Units','pixels');
set(hAutoPlay,'Position',[2+pxButtonWidth 2 pxButtonWidth 20]);
set(hAutoPlay,'String','Autoplay');
set(hAutoPlay,'Style','Togglebutton');
%set(hAutoPlay,'Callback', @(src,evnt) set(obj,'AutoPlay',get(src,'Value')));



uicontrol(obj.hFigure,...
    'Units','pixels',...
    'Position',[20+7*pxButtonWidth 20 pxButtonWidth 20],...
    'String','Train Classifier',...
    'Style','Togglebutton',...
    'Value',obj.TrainClassifier,...
    'Callback', @(src,evnt) set(obj,'EnableOnlineRetraining',get(src,'Value')));

uicontrol(obj.hFigure,...
    'Units','pixels',...
    'Position',[20+8*pxButtonWidth 20 pxButtonWidth 20],...
    'String','Reset Classifier',...
    'Style','Pushbutton',...
    'Callback', @(src,evnt) resetClassifier(obj));


end