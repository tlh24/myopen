
classdef BarTrainer < PatternRecognition.AdaptiveTrainingInterface
    % Bar Chart interactive training user interface
    % Note Signal only grows when over activation threshold
    % obj = BarTrainer()
    % obj.initialize(hSignalSource,hSignalClassifier)
    %
    % 21-Nov-2011 Armiger: Created
    properties
        hBarGraph
        hBarGraphHighlight
        hFigure
        hAxes
        hTimer
        hStripChart
        hSlider
        
        keyOrder = 'asdfghjklzxcvbnm';  % controls the keyboard to class mapping
        
        CurrentClass
        samplesToRound = 500;
        activationThreshold = 0.2;
        Period = 0.02; %seconds
    end
    methods
        
        function obj = BarTrainer()
            % Constructor
        end
        function initialize(obj,hSignalSource,hSignalClassifier)
            
            % Call superclass method
            initialize@PatternRecognition.TrainingInterface(obj,hSignalSource,hSignalClassifier);
            
            % Extend the init method to create figure
            setupFigure(obj);
        end
        function setupFigure(obj)
            obj.hFigure = UiTools.create_figure('Interactive Trainer');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)obj.close);
            set(obj.hFigure,'Resize','on');
            set(obj.hFigure,'Position',[120 200 1000 600]);
            %obj.hAxes = axes('Parent',obj.hFigure);
            obj.hAxes = subplot(3,1,1:2);
            obj.hBarGraph = barh(obj.hAxes,ones(obj.SignalClassifier.NumClasses,1));
            set(obj.hBarGraph,'FaceColor',[  0.7020    0.7804    1.0000]);
            hold(obj.hAxes,'on')
            obj.hBarGraphHighlight = barh(obj.hAxes,zeros(obj.SignalClassifier.NumClasses,1));
            set(obj.hBarGraphHighlight,'FaceColor',[ 0.8471    0.1608  0]);
            
            obj.hTimer = UiTools.create_timer('BarTrainerTimer',@(src,evt)update(obj));
            obj.hTimer.Period = obj.Period;
            
            hAxes2 = subplot(3,1,3);
            obj.hStripChart = GUIs.widgetStripChart(hAxes2);
            obj.hStripChart.initialize(length(obj.SignalClassifier.ActiveChannels),100)
            obj.hStripChart.YLim = [0 1];
            set(obj.hStripChart.hLegend,'Visible','off');

            obj.hSlider = GUIs.widgetSlider('Parent',hAxes2,'Type','Vertical');
            obj.hSlider.AxesWidth = obj.hStripChart.NumSamples;
            obj.hSlider.ArrowPct = 0;
            obj.hSlider.ButtonUpFcn = @(src,evt) setThreshold(obj,evt);
            obj.hSlider.Value = obj.activationThreshold;
            
            
            xlim(obj.hAxes,[0 obj.samplesToRound]);
            set(obj.hAxes,'YTickLabel',obj.SignalClassifier.ClassNames);
            
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
                className = obj.SignalClassifier.ClassNames{obj.CurrentClass};
                %fprintf('CurrentClass = %s\n',className);
                hLabel = title(obj.hAxes,sprintf('Current Class: %s',className));
                set(hLabel,'FontWeight','Bold');
                
                windowData = obj.SignalSource.getFilteredData();
                features = feature_extract(windowData' ,obj.SignalClassifier.NumSamplesPerWindow);
                
                f = features(obj.SignalClassifier.ActiveChannels,1);
                obj.hStripChart.putdata(f);
                if all(f < obj.activationThreshold) && ~strcmpi(className,'No Movement')
                else
                    obj.SampleCount = obj.SampleCount + 1;
                    obj.ClassLabelId(obj.SampleCount) = obj.CurrentClass;
                    % Note this could be tricky if data is loaded with the
                    % wrong number of channels compared to the current Signal
                    % Source.  Below code works if the current channels are
                    % less than or equal to the prior data
                    obj.Features3D(1:obj.SignalSource.NumChannels,:,obj.SampleCount) = features;
                end
                
                x = ones(1,obj.SignalClassifier.NumClasses);
                for iClass = 1:obj.SignalClassifier.NumClasses
                    x(iClass) = sum(obj.ClassLabelId == iClass);
                    x = max(x,1);
                end
                this = (1:obj.SignalClassifier.NumClasses) == obj.CurrentClass;
                set(obj.hBarGraph,'YData',x.*(1-this));
                set(obj.hBarGraphHighlight,'YData',x.*(this));
                
                xlim(obj.hAxes,[0 max(ceil(max(x)/obj.samplesToRound)*obj.samplesToRound,obj.samplesToRound)]);
                
                
                
                drawnow
            catch ME
                stop(obj.hTimer)
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
            obj.saveTrainingData();
            
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
            hSignalClassifier = SignalAnalysis.Classifier;
            hSignalClassifier.initialize;
            
            obj = PatternRecognition.BarTrainer();
            obj.initialize(hSignalSource,hSignalClassifier);
            obj.collectdata();
            
        end
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
