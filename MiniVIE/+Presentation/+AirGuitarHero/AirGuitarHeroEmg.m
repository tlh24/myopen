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
    properties (SetAccess = private)
        
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
            
            obj.hTimer = obj.createTimer('AGH_Display',@(src,evt)refresh(obj));
            obj.hTimer.Period = 0.04;
            
            obj.initialize();
        end
        function initialize(obj)
            
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
            
            obj.hOutput = digitalio('mcc',0);
            addline(obj.hOutput,0:7,'out');
            vals = ones(8,1);putvalue(obj.hOutput,vals);
            
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
                frame = getFrame(obj);
                annotatedFrame = obj.hNoteDetector.process_frame(frame);
                drawFrame(obj,annotatedFrame);
                
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
                        obj.SignalSource.start();
                        
                        % AutoPlay
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(8,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                        
                    case obj.Playing
                        % EMG on and Autoplay on to maintain cues
                        obj.SignalSource.start();
                        obj.disableKeyboardCallbacks();
                        
                        obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
                        windowData = obj.SignalSource.getFilteredData();
                        features2D = obj.SignalClassifier.extractfeatures(windowData);
                        activeChannelFeatures = features2D(obj.SignalClassifier.ActiveChannels,:);
                        [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
                        
                        useMajorityVote = 0;
                        if useMajorityVote
                            output = voteDecision;
                        else
                            output = classOut;
                        end
                        fprintf('Class:  %s\n',obj.SignalClassifier.ClassNames{output});
                        
                        switch obj.SignalClassifier.ClassNames{output}
                            case 'Index'
                                noteMask = [1 0 0 0 0];
                            case 'Middle'
                                noteMask = [0 1 0 0 0];
                            case 'Ring'
                                noteMask = [0 0 1 0 0];
                            case 'Little'
                                noteMask = [0 0 0 1 0];
                            otherwise
                                noteMask = [0 0 0 0 0];
                        end
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));

                end
                
                
                return
%                 % get a window of samples and classify them
%                 obj.SampleCounter = obj.SampleCounter + 1;
%                 obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
%                 windowData = obj.SignalSource.getFilteredData();
%                 features2D = obj.SignalClassifier.extractfeatures(windowData);
%                 activeChannelFeatures = features2D(obj.SignalClassifier.ActiveChannels,:);
%                 [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
% 
%                 if ~obj.EnableOnlineRetraining
%                     cmd = zeros(1,8);
%                     if classOut == 1 %No Movement
%                         sendButtonCommand(obj,~(zeros(1,8)));
%                     else
%                         cmd(classOut-1) = 1;
%                         cmd(8) = 1;
%                         sendButtonCommand(obj,~cmd)
%                     end
%                     return
%                 end
%                 
%                 
%                 if ~obj.AutoPlay
%                     % Ensure all buttons are up
%                     %sendButtonCommand(obj,~(zeros(1,8)));
%                 end
%                 if obj.AutoPlay
%                 end
%                 
%                 
%                 noteMask = find(obj.hNoteDetector.noteHistory(10,:),1,'first');
%                 
%                 if isempty(noteMask) || (noteMask > 3)
%                     currentCue = 1; % No movement
%                 else
%                     currentCue = noteMask + 1;
%                 end
%                 
%                 obj.SignalClassifier.ClassNames(currentCue);
%                 
%                 % use the current features and class label for training
%                 obj.features3D(:,:,obj.SampleCounter) = features2D;
%                 obj.classLabelId(obj.SampleCounter) = currentCue;
%                 
%                 obj.RetrainCounter = obj.RetrainCounter + 1;
%                 if obj.EnableOnlineRetraining && obj.RetrainCounter > 30
%                     obj.RetrainCounter = 0;
%                     classesWithData = unique(obj.classLabelId(1:obj.SampleCounter));
%                     if length(classesWithData) < obj.SignalClassifier.NumClasses;
%                         fprintf('[Classifier] Insufficient data\n');
%                         fprintf('Classes with data: ');
%                         fprintf('%d ',classesWithData);
%                         fprintf('\n');
%                         
%                     else
%                         obj.SignalClassifier.TrainingData = obj.features3D(:,:,1:obj.SampleCounter);
%                         obj.SignalClassifier.TrainingDataLabels = obj.classLabelId(1:obj.SampleCounter);
%                         obj.SignalClassifier.train();
%                         obj.SignalClassifier.computeerror();
%                     end
%                 end
%                 
%                 
%                 drawnow
            catch ME
                stop(obj.hTimer);
                rethrow(ME);
            end
        end
        
        function sendButtonDownCommand(obj,id)
            v = getvalue(obj.hOutput);
            v(id) = 0;
            putvalue(obj.hOutput,v);
        end
        function sendButtonCommand(obj,cmd)
            v = getvalue(obj.hOutput);
            if ~isequal(cmd,v)
                putvalue(obj.hOutput,cmd);
            end
        end
        function sendButtonUpCommand(obj,id)
            v = getvalue(obj.hOutput);
            v(id) = 1;
            putvalue(obj.hOutput,v);
        end
    end
    methods (Static = true)
        function obj = Default
            obj.SignalSource = Inputs.DaqHwDevice('mcc',0);
            obj.SignalSource.addfilter(Inputs.HighPass());
            obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch());
            obj.SignalSource.initialize();
            
            obj.SignalClassifier = PatternRecognition.Classifier();
            obj.SignalClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring'};
            obj.SignalClassifier.ActiveChannels = 1:4;
            obj.SignalClassifier.NumMajorityVotes = 7;
            obj.SignalClassifier.initialize();
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