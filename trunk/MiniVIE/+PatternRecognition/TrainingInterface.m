classdef TrainingInterface < Common.MiniVieObj
    % Base class for Training interface to presents cues to a user
    % (Abstract) collectdata
    %
    % 01-Feb-2011 Armiger: Created
    properties
        MaxSamples = 2e4;
    end
    properties (SetAccess = protected)
        SampleCount = 0;
        CurrentClass
    end
    properties (Access = protected)
        SignalSource;
        SignalClassifier;
        EmgData = [];
        Features3D = [];
        ClassLabelId = [];
    end
    methods (Abstract=true)
        collectdata(obj);
    end
    methods
        function emgData = getEmgData(obj)
            % returns valid data (since buffers initialized to larger size)
            emgData = [];

            if all(isnan(obj.EmgData(:)))
                fprintf('[%s] No Emg Data Recorded\n',mfilename);
                return
            end
            
            try
                emgData = obj.EmgData(:,:,1:obj.SampleCount);
            catch ME
                warning('TrainingInterface:getEmgData','Failed to get Emg Data: %s',ME.message);
            end
        end
        function featureData = getFeatureData(obj)
            % returns valid data (since buffers initialized to larger size)
            featureData = obj.Features3D(:,:,1:obj.SampleCount);
        end
        function classLabels = getClassLabels(obj)
            classLabels = obj.ClassLabelId(1:obj.SampleCount);
        end
        function addData(obj)
            % Add a new sample of data based on the CurrentClass property
            assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
            
            obj.SampleCount = obj.SampleCount + 1;
            if obj.SampleCount == obj.MaxSamples + 1
                % This should only display once
                warning('TrainingInterface:ExceededMaxSamples','Exceeded Preallocated Sample Buffer');
            end

            % Get new data (getting raw data and manually filtereing for logging)
            rawEmg = obj.SignalSource.getData();
            windowData = obj.SignalSource.applyAllFilters(rawEmg);
            
            features = feature_extract(windowData',obj.SignalClassifier.NumSamplesPerWindow);
            
            idxChannel = 1:obj.SignalSource.NumChannels;
            obj.ClassLabelId(obj.SampleCount) = obj.CurrentClass;
            % Note this could be tricky if data is loaded with the
            % wrong number of channels compared to the current Signal
            % Source.  Below code works if the current channels are
            % less than or equal to the prior data
            obj.Features3D(idxChannel,:,obj.SampleCount) = features;
            try
                obj.EmgData(idxChannel,:,obj.SampleCount) = rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)';
            catch ME
                warning('TrainingInterface:EmgData','Failed to record Emg Data: "%s"',ME.message);
            end
        end
        function saveTrainingData(obj)
            % Save Training Data
            FilterSpec = '*.dat';
            DialogTitle = 'Select File to Write';
            DefaultName = sprintf('%04d%02d%02d_%02d%02d%02d_TrainingData.dat',fix(clock));
            [FileName,PathName,FilterIndex] = uiputfile(FilterSpec,DialogTitle,DefaultName);
            if FilterIndex == 0
                % User Cancelled
            else
                
                emgData = getEmgData(obj); %#ok<NASGU>
                features3D = obj.getFeatureData(); %#ok<NASGU>
                classLabelId = obj.getClassLabels(); %#ok<NASGU>
                if ~isempty(obj.SignalClassifier)
                    classNames = obj.SignalClassifier.getClassNames; %#ok<NASGU>
                    activeChannels = obj.SignalClassifier.ActiveChannels; %#ok<NASGU>
                else
                    classNames = {};
                    activeChannels = [];
                end
                save(fullfile(PathName,FileName),'features3D','classLabelId','classNames','activeChannels','emgData');
            end
        end
        function success = loadTrainingData(obj,fname)
            % Load Training Data
            success = false;
            
            if nargin < 2
                % Get filename interactively
                FilterSpec = '*.dat';
                [FileName,PathName,FilterIndex] = uigetfile(FilterSpec);
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            else
                % Get filename from function input
                fullFile = fname;
            end
            
            % Load data
            try
                S = load(fullFile,'-mat');
            catch ME
                msg = { 'Error loading file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg);
                return
            end
            
            if isfield(S,'features3D') && isfield(S,'classLabelId')
                obj.Features3D = S.features3D;
                obj.ClassLabelId = S.classLabelId;
                obj.SampleCount = size(S.features3D,3);
            else
                msg = { 'Error loading file', fullFile , ...
                    'Expected data fields: "features3D" and "classLabelId"'};
                errordlg(msg);
                return
            end
            
            % Restore class names
            if isfield(S,'classNames') && ~isempty(obj.SignalClassifier)
                obj.SignalClassifier.ClassNames = S.classNames;
            end
            if isfield(S,'activeChannels') && ~isempty(obj.SignalClassifier)
                obj.SignalClassifier.ActiveChannels = S.activeChannels;
            end

            success = true;
            
        end
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
            
            % Initialize buffers
            obj.Features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
            obj.ClassLabelId = NaN(1,obj.MaxSamples);
            
            % Initialize variable to store raw EMG data
            try
                obj.EmgData = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumSamplesPerWindow obj.MaxSamples],'single');
            catch ME
                fprintf('[%s] Error initializing EMG storage: "%s"\n',mfilename,ME.message);
            end
            
        end
        function ok = isInitialized(obj)
            ok = ~isempty(obj.SignalSource) && ...
                ~isempty(obj.SignalClassifier) && ...
                ~isempty(obj.Features3D) && ...
                ~isempty(obj.ClassLabelId);
        end
        function close(obj)
            %override
        end
    end
end
