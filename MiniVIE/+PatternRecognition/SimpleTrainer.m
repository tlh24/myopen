classdef SimpleTrainer < handle
    % Simple training user interface that presents a waitbar to the user
    % and prompts for the appropriate class
    %
    % 01-Sept-2010 Armiger: Created
    properties
        NumRepetitions = 2;
        ContractionLengthSeconds = 5;
        DelayLengthSeconds = 2;
    end
    properties (Constant = true)
        MaxSamples = 5000;
    end
    methods
        function obj = SimpleTrainer
            % Constructor
        end
        function [features3D classLabelId] = collectdata(obj,hSignalSource,hClassifier)
            % Collect some initial training data from a signal source
            % device
            
            % Initialize buffers
            features3D = NaN([hSignalSource.NumChannels hClassifier.NumFeatures obj.MaxSamples]);
            classLabelId = NaN(1,obj.MaxSamples);
            
            
            % Create the waitbar 'gui'
            h = waitbar(0,'','Name',mfilename,...
                'CreateCancelBtn',...
                'setappdata(gcbf,''canceling'',1)');
            setappdata(h,'canceling',0);

            % Ensure data is ready
            ok = wait_for_device(hSignalSource,hClassifier.NumSamplesPerWindow);
            if ~ok
                error('Timed Out Waiting for Signal Source');
            end
            
            iSample = 0;
            
            hSignalSource.NumSamples = hClassifier.NumSamplesPerWindow;
            
            % Loop through each class, rep
            for iRepetition = 1:obj.NumRepetitions
                for iClass = 1:hClassifier.NumClasses
                    % Check for Cancel button press
                    if getappdata(h,'canceling')
                        break
                    end
                    
                    
                    className = hClassifier.ClassNames{iClass};
                    
                    msg = sprintf('Rep # %d of %d.  Next Class: %s',...
                        iRepetition,obj.NumRepetitions,className);
                    tic
                    t = 0;
                    while t < obj.DelayLengthSeconds
                        t = toc;

                        % Check for Cancel button press
                        if getappdata(h,'canceling')
                            break
                        else
                            waitbar(t/obj.DelayLengthSeconds,h,msg);
                        end
                    end
                    
                    msg = sprintf('Train Class: %s',className);
                    tic;
                    t = 0;
                    while t < obj.ContractionLengthSeconds
                        t = toc;

                        % Check for Cancel button press
                        if getappdata(h,'canceling')
                            break
                        else
                            waitbar(1-(t/obj.ContractionLengthSeconds),h,msg);
                        end
                        
                        iSample = iSample + 1;
                        if iSample == obj.MaxSamples + 1
                            % This should only display once
                            warning('SimpleTrainer:exceededMaxSamples','Exceeded Preallocated Sample Buffer');
                        end
                        
                        classLabelId(iSample) = iClass;
                        windowData = hSignalSource.getFilteredData();
                        features = feature_extract(windowData' ,hClassifier.NumSamplesPerWindow);
                        features3D(:,:,iSample) = features;
                    end
                end
            end
            
            if getappdata(h,'canceling')
                fprintf('Training Cancelled');
            else
                waitbar(1,h,'Training Complete!')
                pause(0.2);
                delete(h)
            end
            
            features3D(:,:,iSample+1:end) = [];
            classLabelId(iSample+1:end) = [];
            
        end
    end
    methods (Static = true)
        function saveTrainingData(features3D,classLabelId) %#ok<INUSD>
            FilterSpec = '*.dat';
            DialogTitle = 'Save As';
            DefaultName = sprintf('%04d%02d%02d_%02d%02d%02d.dat',fix(clock));
            [FileName,PathName,FilterIndex] = uiputfile(FilterSpec,DialogTitle,DefaultName);
            if FilterIndex == 0
                % User Cancelled
            else
                save(fullfile(PathName,FileName),'features3D','classLabelId');
            end
        end
    end
end

function ok = wait_for_device(hSignalSource,numSamples)

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