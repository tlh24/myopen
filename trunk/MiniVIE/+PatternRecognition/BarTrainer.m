classdef BarTrainer < PatternRecognition.TrainingInterface
    % Bar Chart interactive training user interface
    % Note Signal only grows when over activation threshold
    % obj = BarTrainer(hSignalSource,hSignalClassifier)
    %
    % 21-Nov-2011 Armiger: Created
    properties
        hGraph
        hFigure
        hAxes
        hTimer
        
        iClass
        iSample = 0;
        samplesToRound = 500;
        Period = 0.02; %seconds
    end
    methods
        function obj = BarTrainer(hSignalSource,hSignalClassifier)
            % Constructor
            if ~isempty(hSignalSource)
                obj.SignalSource = hSignalSource;
            else
                error('No Signal Source passed to function: %s',mfilename);
            end
            if ~isempty(hSignalClassifier)
                obj.SignalClassifier = hSignalClassifier;
            else
                error('No Signal Classifier passed to function: %s',mfilename);
            end
        end
        function initialize(obj)
            % Initialize buffers
            obj.Features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
            obj.ClassLabelId = NaN(1,obj.MaxSamples);
            
            obj.hFigure = UiTools.create_figure('Interactive Trainer');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)obj.close);
            obj.hAxes = axes('Parent',obj.hFigure);
            obj.hGraph = bar(obj.hAxes,ones(obj.SignalClassifier.NumClasses,1));
            obj.hTimer = UiTools.create_timer('BarTrainerTimer',@(src,evt)update(obj));
            obj.hTimer.Period = obj.Period;
            
            ylim(obj.hAxes,[0 obj.samplesToRound]);
            set(obj.hAxes,'XTickLabel',obj.SignalClassifier.ClassNames);
            
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
            
            activationThreshold = 0.5;
            
            if all(features(:,1) < activationThreshold) && ~strcmpi(className,'No Movement')
                fprintf('Low Signal (< %f)\n',activationThreshold);
                return
            end
            
            obj.iSample = obj.iSample + 1;
            obj.ClassLabelId(obj.iSample) = obj.iClass;
            obj.Features3D(:,:,obj.iSample) = features;
            
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
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize;
            hSignalSource.addfilter(Inputs.HighPass());
            hSignalClassifier = SignalAnalysis.Classifier;
            hSignalClassifier.initialize;
            
            obj = PatternRecognition.BarTrainer(hSignalSource,hSignalClassifier);
            obj.initialize();
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

keys = 'asdfghjklzxcvbnm';

iKey = strfind(keys,evt.Key);
if ~isempty(iKey) && (iKey <= obj.SignalClassifier.NumClasses)
   obj.iClass = iKey; 
end

end %key_down
