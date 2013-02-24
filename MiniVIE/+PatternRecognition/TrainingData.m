classdef (Sealed) TrainingData < handle
    % Class to hold pattern recognition training data
    % Methods will include those to recompute features from data and to
    % extract data signals on a per-class basis
    % Also, add ability to remove data from certain classes
    %
    % The class should operate in passive mode if just reading saved data,
    % but also has an active mode that would get data and add to the
    % archive
    %
    % This class is required by classifier objects on initialization
    %
    %    features3D = zeros(numChannels,numFeatures,numSamples);
    %
    % On initialization this class will fill a buffer with NaN to allow future data storage
    % Note that on load, however, the buffer is filled by exactly the
    % number of saved values.  Continuing a session with saved data may
    % make data addition slower
    %
    % Also, once initialized then the number of features is locked
    %
    % 2012May14 Armiger: Created
    
    properties (SetAccess = private)
        SampleCount = 0;
        SampleRate = [];
        ActiveChannels = [1 3];
        ClassNames = {'MotionA' 'MotionB' 'No Movement'};
        FeatureNames = {'MAV' 'LEN' 'SSC' 'ZC'};
    end
    properties (Access = private)
        MaxSamples = 1e5;
        
        % These properties are hidden and should be accessed through the
        % various get[Property] methods.  This is due to the fact that some
        % samples are enabled / disabled internally
        SignalDataRaw = [];
        SignalFeatures3D = [];
        ClassLabelId = [];
        EnableLabel = [];  % Use this to keep data in the structure, but don't use certain samples in the algorithm
    end
    properties (Dependent = true, SetAccess = private)
        NumClasses;
        NumActiveChannels;
        NumFeatures;
    end
    
    methods
        function obj = TrainingData
            % Creator
            fprintf('[%s] Creating Training Data Object\n',mfilename);
        end
        function numClasses = get.NumClasses(obj)
            % Number of Classes
            % computed property from the size of ClassNames
            numClasses = length(obj.ClassNames);
        end
        function numChannels = get.NumActiveChannels(obj)
            % Number of Activated Channels
            % computed property from the size of ActiveChannels
            numChannels = length(obj.ActiveChannels);
        end
        function numFeatures = get.NumFeatures(obj)
            % Number of Features extracted from signal data
            % computed property from the size of FeatureNames
            numFeatures = length(obj.FeatureNames);
        end
        
        function featureData = getFeatureData(obj)
            %featureData = getFeatureData(obj)
            % returns valid data (since buffers initialized to larger size)
            % that is also 'enabled'
            
            isEnabled = obj.EnableLabel(1:obj.SampleCount);
            featureData = obj.SignalFeatures3D(:,:,isEnabled);
        end
        function classLabels = getClassLabels(obj)
            % classLabels = getClassLabels(obj)
            classLabels = obj.ClassLabelId(1:obj.SampleCount);
            assert(~any(isnan(classLabels)),'NaNs found in classLabels');
            
            isEnabled = obj.EnableLabel(1:obj.SampleCount);
            classLabels = classLabels(isEnabled);
            
        end
        function labelCount = getClassLabelCount(obj)
            % return the number of each label in an array
            
            labelCount = zeros(1,length(obj.ClassNames));
            classLabels = obj.getClassLabels;
            countedLabels = accumarray(classLabels(:),1);
            
            labelCount(1:length(countedLabels)) = countedLabels;
            
        end
        function [filteredData dataBreaks] = getClassData(obj,iClass)
            % [filteredData dataBreaks] = getClassData(obj,iClass)
            isThisClass = iClass == obj.ClassLabelId;
            
            assert( sum(isThisClass) > 0 ,...
                'Requested class label %d not found in data set',iClass);
            assert(~isempty(obj.SignalDataRaw),'No Raw Data Found');
            
            %[numChannels windowSize numSamples] = size(obj.SignalDataRaw);
            
            
            % Extract data frames for requested class
            classRawFrames = obj.SignalDataRaw(obj.ActiveChannels,:,isThisClass);
            
            % Filter data frames (maybe optional)
            
            filteredSignals = classRawFrames;
            
            Fs = obj.SampleRate;
            HPF = Inputs.HighPass(10,8,Fs);
            NF = Inputs.Notch(60.*1,5,Fs);
            
            for i = 1:sum(isThisClass)
                filteredSignals(:,:,i) = HPF.apply(double(filteredSignals(:,:,i)'))';
                filteredSignals(:,:,i) = NF.apply(double(filteredSignals(:,:,i)'))';
            end
            
            dataBreaks = windowSize:windowSize:sum(isThisClass)*windowSize;
            filteredData = reshape(filteredSignals,length(obj.ActiveChannels),[])';
            
            % xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
            % yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
            
        end
        function [signalData dataBreaks] = getContinuousData(obj,channels)
            %getContinuousData return raw signal waveform
            %
            % If no channels are specified, the returned data will include
            % all the active channels.
            %
            % Usage:
            %   [signalData dataBreaks] = getContinuousData(obj,channels)
            
            assert(~isempty(obj.SignalDataRaw),'No Raw Data Found');
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            
            [windowSize] = size(obj.SignalDataRaw,2);
            [numSamples] = size(obj.SignalDataRaw,3);
            
            dataBreaks = windowSize:windowSize:numSamples*windowSize;
            
            signalData = reshape(obj.SignalDataRaw(channels,:,:),length(channels),[])';
            
        end
        function signalData = getRawSignals(obj)
            % returns valid data (since buffers initialized to larger size)
            signalData = [];
            
            if all(reshape(isnan(obj.SignalDataRaw(:,:,1)),1,[]))
                fprintf('[%s] No Emg Data Recorded\n',mfilename);
                return
            end
            
            try
                signalData = obj.SignalDataRaw(:,:,1:obj.SampleCount);
            catch ME
                warning('TrainingInterface:getEmgData','Failed to get Emg Data: %s',ME.message);
            end
        end
        
        function setClassNames(obj,classNames)
            % setClassNames(obj,featureNames)
            % Set class names as a cell array of strings
            
            assert(iscell(classNames),'Expected a cell array of strings');
            
            isValid = cellfun(@ischar,classNames);
            assert(all(isValid),'Expected a cell array of strings');
            
            % Update the property
            obj.ClassNames = classNames;
            
        end
        function setFeatureNames(obj,featureNames)
            % setFeatureNames(obj,featureNames)
            % Set feature names as a cell array of strings
            
            assert(iscell(featureNames),'Expected a cell array of strings');
            
            isValid = cellfun(@ischar,featureNames);
            assert(all(isValid),'Expected a cell array of strings');
            
            
            assert( length(featureNames) == size(obj.SignalFeatures3D,2),...
                'Cannot change the number of features once the data object is initialized');
            
            % Update the property
            obj.FeatureNames = featureNames;
            
        end
        function setActiveChannels(obj,activeChannels)
            %setActiveChannels(obj,activeChannels)
            
            obj.ActiveChannels = activeChannels;
            
        end
        function initialize(obj,numChannels,numSamplesPerWindow)
            % initialize(obj,numChannels,numSamplesPerWindow)
            fprintf('[%s] Initializing Training Data Object\n',mfilename);
            
            % Initialize buffers
            obj.SignalFeatures3D = NaN([numChannels obj.NumFeatures obj.MaxSamples]);
            obj.ClassLabelId = NaN(1,obj.MaxSamples);
            obj.EnableLabel = true(1,obj.MaxSamples);
            
            % Initialize variable to store raw EMG data
            try
                dataSize = [numChannels numSamplesPerWindow obj.MaxSamples];
                dataType = 'single';
                obj.SignalDataRaw = NaN(dataSize,dataType);
            catch err
                % out of memory or max variable size
                fprintf('[%s] Error initializing raw signal storage: "%s"\n',mfilename,err.message);
            end
        end
        function hasData = hasData(obj)
            % Return true if valid data exists
            hasData = (obj.SampleCount > 0);
        end
        function success = clearData(obj,promptForConfirmation)
            % success = clearData(obj,promptForConfirmation)
            if nargin < 2
                promptForConfirmation = true;
            end
            
            success = false;
            if promptForConfirmation
                reply = questdlg('Are you sure you want to clear training data?','Confirm Clear');
                if ~strcmpi(reply,'Yes')
                    return
                end
            end
            
            fprintf('[%s] Clearing %d samples. \n',mfilename,obj.SampleCount);
            obj.SampleCount = 0;
            obj.SignalFeatures3D(:) = NaN;
            obj.ClassLabelId(:) = NaN;
            obj.SignalDataRaw(:) = NaN;
            
            success = true;
        end
        
        function numDisabled = disableLabeledData(obj,classLabelId)
            % numDisabled = disableLabeledData(obj,classLabelId)
            
            for iClass = classLabelId
                % Get all class labels (not just the disabled ones)
                %classLabels = obj.getClassLabels;
                classLabels = obj.ClassLabelId;
                
                isClass = classLabels == iClass;
                
                numDisabled = sum(isClass);
                if numDisabled > 0
                    obj.EnableLabel(isClass) = false;
                end
            end
            
        end
        function numSamples = enableAllLabeledData(obj)
            % numSamples = enableAllLabeledData(obj)
            
            obj.EnableLabel(1:obj.SampleCount) = true;
            numSamples = obj.SampleCount;
            
        end
        
        function [success str] = validate(obj)
            
            success = false;
            str = '';
            
            try
                assert(~isempty(obj.SignalFeatures3D),'No feature data exists');
                
                % ensure numSamples matched between raw signal and features
                numSamplesRaw = size(obj.SignalDataRaw,3);
                numSamplesFeatures = size(obj.SignalFeatures3D,3);
                assert(numSamplesRaw == numSamplesFeatures,...
                    'Number of signal samples (%d) does not match number of feature samples (%d)',...
                    numSamplesRaw,numSamplesFeatures);
                
                % Check channel dimension
                numChannelsRaw = size(obj.SignalDataRaw,1);
                numChannelFeatures = size(obj.SignalFeatures3D,1);
                assert(numChannelsRaw == numChannelFeatures,...
                    'Number of signal channels (%d) does not match number of feature channels (%d)',...
                    numChannelsRaw,numChannelFeatures);
            catch ME
                str = ME.message;
                return
            end
            
            success = true;
        end
        function recomputeFeatures(obj)
            assert(~isempty(obj.SignalDataRaw),'No signal data exists');
            
            % Apply filter
            Fs = obj.SampleRate;
            HPF = Inputs.HighPass(10,8,Fs);
            NF = Inputs.Notch(60,5,Fs);
            
            fprintf('[%s] Filtering Data...',mfilename);
            numEmgSamples = size(obj.SignalDataRaw,3);
            filteredData = double(obj.SignalDataRaw);
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(filteredData(:,:,i)')';
                filteredData(:,:,i) = NF.apply(filteredData(:,:,i)')';
            end
            fprintf('Done\n');
            
            % Feature extract
            [numChannels, windowSize, numSamples] = size(obj.SignalDataRaw);
            numFeatures = 4;
            
            fprintf('[%s] Extracting Features...',mfilename);
            features3D = zeros(numChannels,numFeatures,numSamples);
            for i = 1:size(obj.SignalDataRaw,3)
                features3D(:,:,i) = feature_extract(...
                    filteredData(:,:,i),windowSize);
            end
            fprintf('Done\n');
            
            obj.SignalFeatures3D = features3D;
            
        end
        
        function success = loadTrainingData(obj,fname)
            % Load Training Data
            % fields are:
            % 'features3D','classLabelId','classNames','featureNames',
            % 'activeChannels','signalData','sampleRateHz');
            
            success = false;
            % If no input given, raise new dialog
            % If valid file given, open directly
            % If partial file given, open dialog with that info
            if (nargin == 1) || isempty(fname)
                % Get filename interactively
                FilterSpec = '*.trainingData';
                [FileName,PathName,FilterIndex] = uigetfile(FilterSpec);
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            elseif exist(fname, 'file') == 2
                % Get filename from function input literally
                fullFile = fname;
            else
                FilterSpec = fname;
                [FileName,PathName,FilterIndex] = uigetfile(FilterSpec);
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            end
            
            % Load data
            try
                fprintf('[%s] Loading file: "%s"\n',mfilename,fullFile);
                S = load(fullFile,'-mat');
            catch ME
                msg = { 'Error loading file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg);
                return
            end
            
            % load features
            if isfield(S,'features3D')
                obj.SignalFeatures3D = S.features3D;
            else
                msg = { 'Error loading file', fullFile , ...
                    'Expected data fields: "features3D"'};
                errordlg(msg);
                return
            end
            
            % load labels
            if isfield(S,'classLabelId')
                obj.ClassLabelId = S.classLabelId;
            else
                msg = { 'Error loading file', fullFile , ...
                    'Expected data fields: "classLabelId"'};
                errordlg(msg);
                return
            end
            
            %RSA: 9/19/2012 -- This was commented out.  why?
            obj.SampleCount = size(S.features3D,3);
            fprintf('[%s] Loading %d Samples\n',mfilename,obj.SampleCount);
            
            if isfield(S,'enableLabel')
                obj.EnableLabel = S.enableLabel;
            else
                obj.EnableLabel = true(1,obj.SampleCount);
            end
            
            % Restore class names
            if isfield(S,'classNames')
                obj.ClassNames = S.classNames;
            end
            if isfield(S,'activeChannels')
                obj.ActiveChannels = S.activeChannels;
            end
            
            if isfield(S,'featureNames')
                obj.FeatureNames = S.featureNames;
            else
                fprintf('[%s] No feature names found in file.\n',mfilename);
            end
            
            % Restore raw data
            if isfield(S,'signalData')
                obj.SignalDataRaw = S.signalData;
            end
            % Backwards Compatability for EMG Data
            if isfield(S,'emgData')
                obj.SignalDataRaw = S.emgData;
            end
            if isfield(S,'sampleRateHz')
                obj.SampleRate = S.sampleRateHz;
            end
            if isempty(obj.SampleRate)
                fprintf('[%s] Sample rate empty.  Assuming 1000Hz\n',mfilename);
                obj.SampleRate = 1000;
            end
            
            success = true;
        end
        function success = saveTrainingData(obj)
            % Save Training Data
            % save(fullFilename,'features3D','classLabelId','classNames','featureNames','activeChannels','signalData','sampleRateHz');
            
            fullFilename = UiTools.ui_select_data_file('.trainingData');
            if isempty(fullFilename)
                % User Cancelled
                return
            end
            
            % Get Data
            signalData = obj.getRawSignals(); %#ok<NASGU>
            features3D = obj.getFeatureData(); %#ok<NASGU>
            classLabelId = obj.getClassLabels(); %#ok<NASGU>
            
            % Get Parameters
            classNames = obj.ClassNames; %#ok<NASGU>
            featureNames = obj.FeatureNames; %#ok<NASGU>
            activeChannels = obj.ActiveChannels; %#ok<NASGU>
            sampleRateHz = obj.SampleRate; %#ok<NASGU>
            
            save(fullFilename,'features3D','classLabelId','classNames','featureNames','activeChannels','signalData','sampleRateHz');
            
            success = true;
            
        end
        
        function removeTrainingData(obj,iClass)
            % Interactively select and remove data
            
            % TODO: check class within bounds, check data exists
            
            x = obj.getClassData(iClass);
            f = figure(99);
            clf(f);
            plot(x);
            
            k = waitforbuttonpress;
            point1 = get(gca,'CurrentPoint');    % button down detected
            finalRect = rbbox;                   % return figure units
            point2 = get(gca,'CurrentPoint');    % button up detected
            
            idx = find(iClass == obj.ClassLabelId);
            
            toRemove = [ceil(max(point1(1),point2(1))/200) floor(min(point1(1),point2(1))/200)];
            
            toRemove = max(toRemove,1);
            toRemove = min(toRemove,length(idx));
            
            windowSize = size(obj.SignalDataRaw,2);
            
            hold on
            plot(toRemove*windowSize,[-1,1],'r-');
            plot(toRemove*windowSize,[1,-1],'r-');
            
            reply = questdlg('OK to remove?','Remove Data','OK','Cancel','Cancel');
            if ~strcmpi(reply,'ok')
                fprintf('[%s] User aborted\n',mfilename);
                return
            end
            
            removeMe = toRemove(1):-1:toRemove(2);
            for i = removeMe
                
                obj.SignalDataRaw(:,:,idx(i)) = [];
                
                obj.ClassLabelId(idx(i)) = [];
            end
            
            fprintf('[%s] Removed %d samples\n',mfilename,length(removeMe));
            
            x = obj.getClassData(iClass);
            clf(f);
            plot(x);
            beep
        end
        
        function addTrainingData(obj,classLabel, features, rawSignal)
            % Add a single new sample of labeled data
            
            % Increment Sample Count
            obj.SampleCount = obj.SampleCount + 1;
            if obj.SampleCount == obj.MaxSamples + 1
                % This should only display once
                warning('TrainingData:ExceededMaxSamples','Exceeded Preallocated Sample Buffer');
            end
            
            % Get new data (getting raw data instead of filtered for logging)
            [numChannels,numSamplesPerWindow]= size(rawSignal);
            
            % Ensure new signal data matches existing signal data
            if ~isempty(obj.SignalDataRaw)
                assert(isequal(size(obj.SignalDataRaw,1),numChannels),...
                    'New Data must match previous data number of channels');
                assert(isequal(size(obj.SignalDataRaw,2),numSamplesPerWindow),...
                    'New Data must match previous data number of samples');
            end
            
            % Update class label history
            obj.ClassLabelId(obj.SampleCount) = classLabel;
            
            
            % Note this could be tricky if data is loaded with the
            % wrong number of channels compared to the current Signal
            % Source.  Below code works if the current channels are
            % less than or equal to the prior data
            
            % Update features history
            obj.SignalFeatures3D(1:numChannels,:,obj.SampleCount) = features;
            
            % Update raw signal storage
            try
                obj.SignalDataRaw(1:numChannels,1:numSamplesPerWindow,obj.SampleCount) = rawSignal;
            catch ME
                warning('TrainingInterface:RawSignalData','Failed to record Raw Signal Data: "%s"',ME.message);
            end
        end %addTrainingData
    end %methods
end
