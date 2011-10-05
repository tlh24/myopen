classdef TrainingInterface < Common.MiniVieObj
    % Basic Training interface presents cues to a user and
    %
    % 01-Feb-2011 Armiger: Created
    properties
        SignalSource;
        SignalClassifier;
        
        MaxSamples = 1e4;
        EmgData = [];
        Features3D = [];
        ClassLabelId = [];
        
        SampleCount = 0;
        
    end
    methods
        function featureData = getFeatureData(obj)
            % returns valid data (since buffers initialized to larger size)
            featureData = obj.Features3D(:,:,1:obj.SampleCount);
        end
        function classLabels = getClassLabels(obj)
            classLabels = obj.ClassLabelId(1:obj.SampleCount);
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
                features3D = obj.getFeatureData(); %#ok<NASGU>
                classLabelId = obj.getClassLabels(); %#ok<NASGU>
                classNames = obj.SignalClassifier.getClassNames; %#ok<NASGU>
                save(fullfile(PathName,FileName),'features3D','classLabelId','classNames');
            end
        end
        function loadTrainingData(obj,fname)
            % Load Training Data
            
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
            
            % TODO: restore class names
            %if isfield(S,'classNames')
            
        end
        
        function close(obj)
            %override
        end
    end
    methods (Abstract=true)
        initialize(obj);
        collectdata(obj);
    end
end
