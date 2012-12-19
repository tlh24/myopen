classdef TrainingData < handle
    % Class to hold pattern recognition training data
    % Methods will include those to recompute features from data and to
    % extract data signals on a per-class basis
    % Also, add ability to remove data from certain classes
    %
    % The class should operate in passive mode is just reading saved data,
    % but also has an active mode that would get data and add to the
    % archive
    %
    % 2012May14 Armiger: Created
    properties
        ClassNames = {};
        ActiveChannels = [];
    end
    properties
        MaxSamples = 1e4;
    end
    properties (SetAccess = protected)
        SampleCount = 0;
        SampleRate = [];
    end
    properties (Access = protected)
        SignalDataRaw = [];
        SignalFeatures3D = [];
        ClassLabelId = [];
    end
    
    methods
        function obj = TrainingData
            % Creator
            fprintf('[%s] Creating Training Data Object\n',mfilename);
        end
        function initialize(obj,numChannels,numFeatures,numSamplesPerWindow)

            fprintf('[%s] Initializing Training Data Object\n',mfilename);
            
            % Initialize buffers
            obj.SignalFeatures3D = NaN([numChannels numFeatures obj.MaxSamples]);
            obj.ClassLabelId = NaN(1,obj.MaxSamples);
            
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
        function clearData(obj,promptForConfirmation)
            
            if nargin < 2
                promptForConfirmation = true;
            end
            
            if promptForConfirmation
                reply = questdlg('Are you sure you want to clear training data?','Confirm Clear');
                
                switch reply
                    case 'Yes'
                        % continue on
                    otherwise
                        return
                end
                
            end
            
            fprintf('[%s] Clearing %d samples. \n',mfilename,obj.SampleCount);
            obj.SampleCount = 0;
            obj.SignalFeatures3D(:) = NaN;
            obj.ClassLabelId(:) = NaN;
            obj.SignalDataRaw(:) = NaN;
            
        end
        function featureData = getFeatureData(obj)
            % returns valid data (since buffers initialized to larger size)
            featureData = obj.SignalFeatures3D(:,:,1:obj.SampleCount);
        end
        function classLabels = getClassLabels(obj)
            classLabels = obj.ClassLabelId(1:obj.SampleCount);
            
            assert(~any(isnan(classLabels)),'NaNs found in classLabels');
            
        end
        function [filteredData dataBreaks] = getClassData(obj,iClass)
            
            isThisClass = iClass == obj.ClassLabelId;
            
            assert( sum(isThisClass) > 0 ,...
                'Requested class label %d not found in data set',iClass);
            assert(~isempty(obj.SignalDataRaw),'No Raw Data Found');
            
            [numChannels windowSize numSamples] = size(obj.SignalDataRaw);
            
            
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
        function [signalData dataBreaks] = getContinuousData(obj)
            
            assert(~isempty(obj.SignalDataRaw),'No Raw Data Found');
            
            
            [windowSize] = size(obj.SignalDataRaw,2);
            [numSamples] = size(obj.SignalDataRaw,3);
            
            dataBreaks = windowSize:windowSize:numSamples*windowSize;
            
            signalData = reshape(obj.SignalDataRaw(obj.ActiveChannels,:,:),length(obj.ActiveChannels),[])';
            
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
            [numChannels windowSize numSamples] = size(obj.SignalDataRaw);
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
            
            % TODO: remove emg references form load / save
            
            
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
                S = load(fullFile,'-mat');
            catch ME
                msg = { 'Error loading file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg);
                return
            end
            
            if isfield(S,'features3D') && isfield(S,'classLabelId')
                obj.SignalFeatures3D = S.features3D;
                obj.ClassLabelId = S.classLabelId;
                
                %RSA: 9/19/2012 -- This was commented out.  why?
                obj.SampleCount = size(S.features3D,3);
            else
                msg = { 'Error loading file', fullFile , ...
                    'Expected data fields: "features3D" and "classLabelId"'};
                errordlg(msg);
                return
            end
            
            % Restore class names
            if isfield(S,'classNames')
                obj.ClassNames = S.classNames;
            end
            if isfield(S,'activeChannels')
                obj.ActiveChannels = S.activeChannels;
            end
            if isfield(S,'ActiveChannels')
                obj.ActiveChannels = S.ActiveChannels;
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
            else
                fprintf('[%s] No sample rate provided.  Assuming 1000Hz\n',mfilename);
                obj.SampleRate = 1000;
            end
            
            success = true;
        end        
        function saveTrainingData(obj)
            % Save Training Data
            
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
            activeChannels = obj.ActiveChannels; %#ok<NASGU>
            
            save(fullFilename,'features3D','classLabelId','classNames','activeChannels','signalData');
            
        end
        function removeTrainingData(obj,iClass)
            
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
            % Add a new sample of data based on the CurrentClass property
            
            % could to this passively is inputs were:
            % classLabel
            % features
            % rawSignal
            
            
            %assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
            
            obj.SampleCount = obj.SampleCount + 1;
            if obj.SampleCount == obj.MaxSamples + 1
                % This should only display once
                warning('TrainingData:ExceededMaxSamples','Exceeded Preallocated Sample Buffer');
            end

            % Get new data (getting raw data instead of filtered for logging)
            numChannels = size(rawSignal,1);
            numSamplesPerWindow = size(rawSignal,2);

            if ~isempty(obj.SignalDataRaw)
                assert(isequal(size(obj.SignalDataRaw,1),numChannels),...
                    'New Data must match previous data number of channels');
                assert(isequal(size(obj.SignalDataRaw,2),numSamplesPerWindow),...
                    'New Data must match previous data number of samples');
            end

            
            obj.ClassLabelId(obj.SampleCount) = classLabel;
            % Note this could be tricky if data is loaded with the
            % wrong number of channels compared to the current Signal
            % Source.  Below code works if the current channels are
            % less than or equal to the prior data
            obj.SignalFeatures3D(1:numChannels,:,obj.SampleCount) = features;
            
            try
                obj.SignalDataRaw(1:numChannels,1:numSamplesPerWindow,obj.SampleCount) = rawSignal;
            catch ME
                warning('TrainingInterface:EmgData','Failed to record Emg Data: "%s"',ME.message);
            end
        end
    end
end
