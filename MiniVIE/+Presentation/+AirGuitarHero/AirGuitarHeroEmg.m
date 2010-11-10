classdef AirGuitarHeroEmg < Presentation.AirGuitarHero.AirGuitarHeroBase
    % Extends Air Guitar Hero Class to add EMG play (digital output)
    % capabilities and online retraining
    %
    % 01-Sept-2010 Armiger: Created
    properties
        SignalSource;
        EmgClassifier;

        hInput = [];
        
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
        function obj = AirGuitarHeroEmg()
            obj.hTimer = obj.createTimer('AGH_Display',@(src,evt)refresh(obj));
            obj.hTimer.Period = 0.04;
            
            
            try
                obj.hInput = JavaJoystick.Joystick;
            catch
            end
            
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
            resetClassifier(obj);
            
            obj.hOutput = digitalio('mcc',0);
            addline(obj.hOutput,0:7,'out');
            vals = ones(8,1);putvalue(obj.hOutput,vals);
            
        end
        function resetClassifier(obj)
            disp('Resetting Classifier and Stored Data');
            
            obj.EmgClassifier.initialize;
            obj.features3D = NaN([obj.SignalSource.NumChannels obj.EmgClassifier.NumFeatures obj.MaxSamples]);
            obj.classLabelId = NaN(1,obj.MaxSamples);
            
            obj.SampleCounter = 0;
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
            obj.SignalSource = Inputs.UsbDaq('mcc',0);
            obj.SignalSource.addfilter(Inputs.HighPass());
            obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch());
            obj.SignalSource.initialize();
            
            obj.EmgClassifier = PatternRecognition.Classifier();
            obj.EmgClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring'};
            obj.EmgClassifier.ActiveChannels = 1:4;
            obj.EmgClassifier.NumMajorityVotes = 7;
            obj.EmgClassifier.initialize();
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