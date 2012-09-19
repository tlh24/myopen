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
        function initialize(obj,hSignalSource,hSignalClassifier)
            if nargin < 3
                error('SignalClassifier not passed to function: %s',mfilename);
            end
            if nargin < 2
                error('SignalSource not passed to function: %s',mfilename);
            end
            
            if ~isempty(hSignalClassifier)
                obj.SignalClassifier = hSignalClassifier;
            else
                error('Empty SignalClassifier passed to function: %s',mfilename);
            end
            
            if ~isempty(hSignalSource)
                obj.SignalSource = hSignalSource;
            else
                error('Empty SignalSource passed to function: %s',mfilename);
            end
            
            % TODO remove training data obj form classifier
            obj.TrainingData = obj.SignalClassifier.TrainingData;
            obj.TrainingData.initialize(...
                obj.SignalSource.NumChannels,...
                obj.SignalClassifier.NumFeatures,...
                obj.SignalClassifier.NumSamplesPerWindow);
            
            % Initialize buffers
            %             obj.Features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
            %             obj.ClassLabelId = NaN(1,obj.MaxSamples);
            
            % Initialize variable to store raw EMG data
            %             try
            %                 obj.EmgData = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumSamplesPerWindow obj.MaxSamples],'single');
            %             catch ME
            %                 fprintf('[%s] Error initializing EMG storage: "%s"\n',mfilename,ME.message);
            %             end
            
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
            rawEmg = obj.SignalSource.getData();
            windowData = obj.SignalSource.applyAllFilters(rawEmg);
            
            features = feature_extract(windowData',obj.SignalClassifier.NumSamplesPerWindow);
            
            obj.TrainingData.addTrainingData(obj.CurrentClass, features, rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')
            
        end
        
        function close(obj)
            %override
        end
    end
end
