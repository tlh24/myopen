classdef BarTrainer < PatternRecognition.AdaptiveTrainingInterface
    % Bar Chart interactive training user interface
    % Note Signal only grows when over activation threshold
    % obj = BarTrainer()
    % obj.initialize(hSignalSource,hSignalClassifier)
    %
    % TODO: move image path from RP2009
    %
    % 21-Nov-2011 Armiger: Created
    properties
        hBarGraph
        hBarGraphHighlight
        hFigure
        hAxes
        hAxesImage
        hTimer
        hStripChart
        hSlider
        
        hJoystick % Optional
        joyButtonDownLast = 0;
        
        keyOrder = 'asdfghjklzxcvbnm';  % controls the keyboard to class mapping
        
        samplesToRound = 250;
        activationThreshold = 0.5;
        Period = 0.02; %seconds
        
        LastClass = [];
        
        ShowImages;
        
    end
    methods
        
        function obj = BarTrainer()
            % Constructor
        end
        function initialize(obj,hSignalSource,hSignalClassifier,hTrainingData)
            
            % Call superclass method
            initialize@PatternRecognition.TrainingInterface(obj,hSignalSource,hSignalClassifier,hTrainingData);
            
            % check for joysticks:
            try
                obj.hJoystick = JoyMexClass;
            catch ME
                fprintf(2,'[%s] Warning: Joystick is disabled.\n',mfilename);
                fprintf(1,'%s\n',ME.message);
            end
            
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;

            % Extend the init method to create figure
            setupFigure(obj);
            
            pathImages = getImagePath;
            
            if isempty(pathImages)
                obj.ShowImages = false;
            else
                obj.ShowImages = true;
            end
            
        end
        function setupFigure(obj)
            obj.hFigure = UiTools.create_figure('Interactive Trainer');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)obj.close);
            set(obj.hFigure,'Resize','on');
            set(obj.hFigure,'Position',[120 200 1000 600]);

            % Setup Axes Containers
            obj.hAxes = subplot(3,5,[1:3 6:8],'Parent',obj.hFigure);
            hAxesStripChart = subplot(3,5,11:15,'Parent',obj.hFigure);
            obj.hAxesImage = subplot(3,5,[4 5 9 10],'Parent',obj.hFigure);
            
            obj.hBarGraph = barh(obj.hAxes,ones(obj.SignalClassifier.NumClasses,1));
            set(obj.hBarGraph,'FaceColor',[  0.7020    0.7804    1.0000]);
            hold(obj.hAxes,'on')
            obj.hBarGraphHighlight = barh(obj.hAxes,zeros(obj.SignalClassifier.NumClasses,1));
            set(obj.hBarGraphHighlight,'FaceColor',[ 0.8471    0.1608  0]);
            
            obj.hTimer = UiTools.create_timer('BarTrainerTimer',@(src,evt)update(obj));
            obj.hTimer.Period = obj.Period;
            
            obj.hStripChart = GUIs.widgetStripChart(hAxesStripChart);
            obj.hStripChart.initialize(length(obj.SignalClassifier.getActiveChannels),100)
            obj.hStripChart.YLim = [0 1];
            set(obj.hStripChart.hLegend,'Visible','off');

            obj.hSlider = GUIs.widgetSlider('Parent',hAxesStripChart,'Type','Vertical');
            obj.hSlider.AxesWidth = obj.hStripChart.NumSamples;
            obj.hSlider.Range = [0 10];
            obj.hSlider.ArrowPct = 0;
            obj.hSlider.ButtonUpFcn = @(src,evt) setThreshold(obj,evt);
            obj.hSlider.Value = obj.activationThreshold;
            
            
            xlim(obj.hAxes,[0 obj.samplesToRound]);
            set(obj.hAxes,'YTickLabel',obj.SignalClassifier.getClassNames);
            
            % set(get(obj.hAxes,'XTickLabel'),'Rotation',45.0)
            
            obj.CurrentClass = 1;
            set(obj.hFigure,'WindowKeyPressFcn',@(src,evt)key_down(src,evt,obj));
            
            % TODO: wait for samples
            % ok = wait_for_device(h,hSignalSource,numSamples);
            
        end
        function setThreshold(obj,value)
            obj.activationThreshold = value;
        end
        function update(obj)
            try
                if ~ishandle(obj.hFigure) 
                    fprintf('[%s] Figure Destroyed\n',mfilename);
                    return
                end
                % Check for class change
                if ~isequal(obj.LastClass,obj.CurrentClass)
                    disp('Class Change');
                    classChange = true;
                else
                    classChange = false;
                end
                obj.LastClass = obj.CurrentClass;
                
                % Check for Joystick Input
                useJoystick = ~isempty(obj.hJoystick);
                buttonDown = false;
                if useJoystick
                    obj.hJoystick.getdata();
                    if ~any(obj.hJoystick.buttonVal)
                        obj.joyButtonDownLast = 0;
                    end
                    if (obj.hJoystick.buttonVal(4) || obj.hJoystick.buttonVal(8)) && ~obj.joyButtonDownLast
                        obj.CurrentClass = obj.CurrentClass + 1;
                        obj.joyButtonDownLast = 1;
                    end
                    if (obj.hJoystick.buttonVal(2) || obj.hJoystick.buttonVal(6))&& ~obj.joyButtonDownLast
                        obj.CurrentClass = obj.CurrentClass - 1;
                        obj.joyButtonDownLast = 1;
                    end
                    if obj.hJoystick.buttonVal(3)
                        buttonDown = true;
                    end
                end
                
                obj.CurrentClass = max(min(obj.CurrentClass,obj.SignalClassifier.NumClasses),1);

                classNames = obj.SignalClassifier.getClassNames;
                className = classNames{obj.CurrentClass};
                %fprintf('CurrentClass = %s\n',className);
                hLabel = title(obj.hAxes,sprintf('Current Class: %s',className));
                set(hLabel,'FontWeight','Bold');
                
                windowData = obj.SignalSource.getFilteredData();
                features = feature_extract(windowData' ,obj.SignalClassifier.NumSamplesPerWindow);
                
                f = features(obj.SignalClassifier.getActiveChannels,1);
                obj.hStripChart.putdata(f);
                
                if useJoystick
                    collectData = buttonDown;
                else
                    collectData = any(f > obj.activationThreshold) || strcmpi(className,'No Movement');
                end
                
                if collectData
                    obj.addData();
%                     obj.SampleCount = obj.SampleCount + 1;
%                     try
%                         obj.EmgData(:,:,obj.SampleCount) = windowData(1:obj.SignalClassifier.NumSamplesPerWindow,:)';
%                     end
%                     obj.ClassLabelId(obj.SampleCount) = obj.CurrentClass;
%                     % Note this could be tricky if data is loaded with the
%                     % wrong number of channels compared to the current Signal
%                     % Source.  Below code works if the current channels are
%                     % less than or equal to the prior data
%                     obj.Features3D(1:obj.SignalSource.NumChannels,:,obj.SampleCount) = features;
                end
                
                x = ones(1,obj.SignalClassifier.NumClasses);
                for iClass = 1:obj.SignalClassifier.NumClasses
                    x(iClass) = sum(obj.TrainingData.getClassLabels == iClass);
                    x = max(x,1);
                end
                this = (1:obj.SignalClassifier.NumClasses) == obj.CurrentClass;
                set(obj.hBarGraph,'YData',x.*(1-this));
                set(obj.hBarGraphHighlight,'YData',x.*(this));
                
                xlim(obj.hAxes,[0 max(ceil(max(x)/obj.samplesToRound)*obj.samplesToRound,obj.samplesToRound)]);
                
                
                % update image
                if classChange && obj.ShowImages
                    pathImages = getImagePath;
                    
                    structFiles = dir(fullfile(pathImages,'*.jpg'));
                    
                    assert(~isempty(structFiles),'No jpg files found in "%s"\n',structFiles)
                    
                    
                    switch className
                        case {'Elbow Flexion', 'MotionA'}
                            f = fullfile(pathImages,'elbow flexion.jpg');
                        case {'Elbow Extension', 'MotionB'}
                            f = fullfile(pathImages,'elbow extension.jpg');
                        case {'Wrist Rotate In', 'Wrist Pronation'}
                            f = fullfile(pathImages,'wrist pronation.jpg');
                        case {'Wrist Rotate Out', 'Wrist Supination'}
                            f = fullfile(pathImages,'wrist supination.jpg');
                        case {'Wrist Flex In', 'Wrist Flexion'}
                            f = fullfile(pathImages,'wrist flexion.jpg');
                        case {'Wrist Extend Out', 'Wrist Extension'}
                            f = fullfile(pathImages,'wrist extension.jpg');
                        case {'Up','Hand Up', 'Radial Deviation','Wrist Abduction'}
                            f = fullfile(pathImages,'wrist abduction.jpg');
                        case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
                            f = fullfile(pathImages,'wrist adduction.jpg');
                        case {'Hand Open'}
                            f = fullfile(pathImages,'hand open.jpg');
                        case {'Spherical Grasp'}
                            f = fullfile(pathImages,'cylindrical grip.jpg');
                        case {'Tip Grasp'}
                            f = fullfile(pathImages,'fine pinch grip.jpg');
                        otherwise
                            f = [];
                    end
                    
                    if ~isempty(f)
                        img = imread(f);
                    else
                        img = [];
                    end
                    
                    imshow(img,'Parent',obj.hAxesImage);
                else
                    %imshow([],'Parent',obj.hAxesImage)
                end
                
                drawnow
            catch ME
                stop(obj.hTimer)
                UiTools.display_error_stack(ME)
                rethrow(ME)
            end
        end
        function collectdata(obj)
            
            if ~ishandle(obj.hFigure)
                setupFigure(obj);
            end
            start(obj.hTimer);
        end
        function close(obj)
            try
                stop(obj.hTimer);
            end
            obj.TrainingData.saveTrainingData();
            
            delete(obj.hTimer);
            delete(obj.hFigure);
        end
    end
    methods (Static = true)
        function classify_signals
            % unused
        end
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize;
            hSignalSource.addfilter(Inputs.HighPass());
            
            hTrainingData = PatternRecognition.TrainingData();

            hSignalClassifier = SignalAnalysis.Lda;
            hSignalClassifier.initialize(hTrainingData);
            
            obj = PatternRecognition.BarTrainer();
            obj.initialize(hSignalSource,hSignalClassifier);
            obj.collectdata();
            
        end
    end
end

function pathImages = getImagePath()
% Get the location to where training images are stored

% pathMiniVie = fileparts(which('MiniVIE'));
% pathMyopen = fileparts(pathMiniVie);
% pathCeven = fullfile(pathMyopen,'ceven');

%TODO: Abstract this
pathImages = 'C:\usr\RP2009\VRE\Common\ACE\Pics';

if ~exist(pathImages,'dir')
    fprintf('Path "%s" not found. Images not displayed\n',pathImages);
    pathImages = '';
    return
end


end

function ok = wait_for_device(h,hSignalSource,numSamples)

% ensure input device is ready with real data
iWait = 0;
numDots = 10;
timeOut = 5;
tic;
while toc < timeOut && ~isReady(hSignalSource,numSamples)
    iWait = mod(iWait,numDots) + 1;
    waitDots = blanks(numDots);
    waitDots(1:iWait) = '.';
    waitbar(0,h,['Waiting for Signal Source' waitDots]);
    pause(0.1)
end

ok = isReady(hSignalSource,numSamples);

end

function key_down(src,evt,obj) %#ok<INUSL>

if strcmpi(evt.Key,'Space');
    obj.perform_retrain();
    return
elseif (obj.CurrentClass < obj.SignalClassifier.NumClasses) && (strcmpi(evt.Key,'LeftArrow') || strcmpi(evt.Key,'UpArrow'))
    obj.CurrentClass = obj.CurrentClass + 1;
    return
elseif (obj.CurrentClass > 1 ) && (strcmpi(evt.Key,'RightArrow') || strcmpi(evt.Key,'DownArrow'))
    obj.CurrentClass = obj.CurrentClass - 1;
    return
end

iKey = strfind(obj.keyOrder,evt.Key);
if ~isempty(iKey) && (iKey <= obj.SignalClassifier.NumClasses)
    obj.CurrentClass = iKey;
end

end %key_down
