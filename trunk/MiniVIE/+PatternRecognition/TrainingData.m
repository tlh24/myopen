classdef TrainingData < handle
    % Class to hold pattern recognition training data
    % Methods will include those to recompute features from data and to
    % extract data signals on a per-class basis
    % Also, add ability to remove data from certain classes
    %
    %
    % 2012May14 Armiger: Created
    properties
        SampleRate = [];
        SignalDataRaw = [];
        SignalFeatures3D = [];
        ClassLabelId = [];
        ClassNames = {};
        ActiveChannels = [];
        
    end
    methods
        function obj = TrainingData
            % Creator
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
            success = false;
            
            if nargin == 1
                % Get filename interactively
                FilterSpec = '*.dat';
                [FileName,PathName,FilterIndex] = uigetfile(FilterSpec);
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            elseif any(strfind(fname,'*'))
                FilterSpec = fname;
                [FileName,PathName,FilterIndex] = uigetfile(FilterSpec);
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            else
                % Get filename from function input literally
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
                obj.SignalFeatures3D = S.features3D;
                obj.ClassLabelId = S.classLabelId;
                %obj.SampleCount = size(S.features3D,3);
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
            
            % Restore raw data
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
            FilterSpec = '*.dat';
            DialogTitle = 'Select File to Write';
            DefaultName = sprintf('%04d%02d%02d_%02d%02d%02d_TrainingData.dat',fix(clock));
            [FileName,PathName,FilterIndex] = uiputfile(FilterSpec,DialogTitle,DefaultName);
            if FilterIndex == 0
                % User Cancelled
                return
            end
            
            features3D = obj.SignalFeatures3D; %#ok<NASGU>
            classLabelId = obj.ClassLabelId; %#ok<NASGU>
            classNames = obj.ClassNames; %#ok<NASGU>
            activeChannels = obj.ActiveChannels; %#ok<NASGU>
            emgData = obj.SignalDataRaw; %#ok<NASGU>
            
            save(fullfile(PathName,FileName),'features3D','classLabelId','classNames','activeChannels','emgData');
            
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
    end
end
