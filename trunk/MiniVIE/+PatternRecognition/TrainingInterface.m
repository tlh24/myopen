classdef TrainingInterface < Common.MiniVieObj
    % Base class for Training interface to presents cues to a user
    % (Abstract) collectdata
    %
    % 01-Feb-2011 Armiger: Created
    %
    % Signal Source is needed in order to collect data from the source
    % Signal Classifier is needed for the classnames to loop through in the
    % training interface and to specify the window properties from which
    % features are extracted
    % TrainingData holds the training data as it is accumulated
    %
    
    properties (SetAccess = protected)
        %SampleCount = 0;
        CurrentClass
    end
    properties (Access = protected)
        SignalSource;
        SignalClassifier;
        TrainingData
    end
    methods (Abstract=true)
        collectdata(obj);
    end
    methods
        function initialize(obj,hSignalSource,hSignalClassifier,hTrainingData)
            %initialize(obj,hSignalSource,hSignalClassifier,hTrainingData)
            % Training interface initialization funtion requires a source
            % data object, a classifier (for properties), and a training
            % data object for data storage
            
            assert(nargin == 4,'SignalSource, SignalClassifier, and TrainingData required for function: %s',mfilename);
            
            assert(~isempty(hTrainingData),'Empty TrainingData passed to function: %s',mfilename);
            assert(~isempty(hSignalClassifier),'Empty SignalClassifier passed to function: %s',mfilename);
            assert(~isempty(hSignalSource),'Empty SignalSource passed to function: %s',mfilename);
            
            obj.TrainingData = hTrainingData;
            obj.SignalClassifier = hSignalClassifier;
            obj.SignalSource = hSignalSource;
            
        end
        function ok = isInitialized(obj)
            %             ok = ~isempty(obj.SignalSource) && ...
            %                 ~isempty(obj.SignalClassifier) && ...
            %                 ~isempty(obj.Features3D) && ...
            %                 ~isempty(obj.ClassLabelId);
            ok = ~isempty(obj.SignalSource) && ...
                ~isempty(obj.SignalClassifier) && ...
                ~isempty(obj.TrainingData);
        end
        function addData(obj)
            % Add a new sample of data based on the CurrentClass property
            assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
            
            % Get new data (getting raw data and manually filtering for logging)
            
            %rawEmg = obj.SignalSource.getData(200);
            %windowData = obj.SignalSource.applyAllFilters(rawEmg);
            
            % Get more data than actually used so that when filters are
            % applied edge effects can be cropped off
            numSamples = obj.SignalClassifier.NumSamplesPerWindow;
            numPad = numSamples;
            rawEmg = obj.SignalSource.getData(numSamples+numPad);
            windowData = obj.SignalSource.applyAllFilters(rawEmg);
            windowData = windowData(end-numSamples+1:end,:);
            
            features = feature_extract(windowData',obj.SignalClassifier.NumSamplesPerWindow);
            
            obj.TrainingData.addTrainingData(obj.CurrentClass, features, rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')
            
        end
        
        function close(obj)
            %override
        end
    end
end
