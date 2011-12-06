classdef BarTrainer < PatternRecognition.AdaptiveTrainingInterface
    % Bar Chart interactive training user interface
    % Note Signal only grows when over activation threshold
    % obj = BarTrainer()
    % obj.initialize(hSignalSource,hSignalClassifier)
    %
    % 21-Nov-2011 Armiger: Created
    properties
        hGraph
        hFigure
        hAxes
        hTimer
        
        keyOrder = 'asdfghjklzxcvbnm';  % controls the keyboard to class mapping
        
        iClass
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
            obj.hAxes = axes('Parent',obj.hFigure);
            obj.hGraph = bar(obj.hAxes,ones(obj.SignalClassifier.NumClasses,1));
            obj.hTimer = UiTools.create_timer('BarTrainerTimer',@(src,evt)update(obj));
            obj.hTimer.Period = obj.Period;
            
            p = get(obj.hFigure,'Position');
            p(1) = 0.5*p(1);
            p(3) = 2*p(3);
            set(obj.hFigure,'Position',p);
            
            ylim(obj.hAxes,[0 obj.samplesToRound]);
            set(obj.hAxes,'XTickLabel',obj.SignalClassifier.ClassNames);
            
            % set(get(obj.hAxes,'XTickLabel'),'Rotation',45.0)
            
            obj.iClass = 1;
            set(obj.hFigure,'WindowKeyPressFcn',@(src,evt)key_down(src,evt,obj));

            % TODO: wait for samples
            % ok = wait_for_device(h,hSignalSource,numSamples);
            
        end
        function update(obj)
            
            className = obj.SignalClassifier.ClassNames{obj.iClass};
            %fprintf('CurrentClass = %s\n',className);
            hLabel = title(obj.hAxes,{'Current Class:',className});
            set(hLabel,'FontWeight','Bold');
            
            windowData = obj.SignalSource.getFilteredData();
            features = feature_extract(windowData' ,obj.SignalClassifier.NumSamplesPerWindow);
            
            f = features(obj.SignalClassifier.ActiveChannels,1);
            if all(f < obj.activationThreshold) && ~strcmpi(className,'No Movement')
                fprintf('Low Signal (%f < %f)\n',max(f),obj.activationThreshold);
                drawnow
                return
            end
            
            obj.SampleCount = obj.SampleCount + 1;
            obj.ClassLabelId(obj.SampleCount) = obj.iClass;
            obj.Features3D(:,:,obj.SampleCount) = features;
            
            y = get(obj.hGraph,'YData');
            y(obj.iClass) = sum(obj.ClassLabelId == obj.iClass);
            set(obj.hGraph,'YData',y);
            
            
            ylim(obj.hAxes,[0 ceil(max(y)/obj.samplesToRound)*obj.samplesToRound]);
            
            drawnow
            
        end
        function collectdata(obj)
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

if strcmp(evt.Key,'space');
    obj.perform_retrain();
end

iKey = strfind(obj.keyOrder,evt.Key);
if ~isempty(iKey) && (iKey <= obj.SignalClassifier.NumClasses)
   obj.iClass = iKey; 
end

end %key_down
