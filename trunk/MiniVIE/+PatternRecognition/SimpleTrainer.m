classdef SimpleTrainer < PatternRecognition.TrainingInterface
    % Simple training user interface that presents a waitbar to the user
    % and prompts for the appropriate class
    %
    % 01-Sept-2010 Armiger: Created
    properties
        NumRepetitions = 1;
        ContractionLengthSeconds = 2;
        DelayLengthSeconds = 2;
    end
    methods
        function obj = SimpleTrainer()
            % Constructor
        end
        function collectdata(obj)
            % Collect some initial training data from a signal source
            % device
            if ~isInitialized(obj)
                error('%s not initialized',mfilename);
            end
            
            % Create the waitbar 'gui'
            h = waitbar(0,'','Name',mfilename,...
                'CreateCancelBtn',...
                'setappdata(gcbf,''canceling'',1)');
            hPatch = findobj(h,'type','patch');
            setappdata(h,'canceling',0);

            % Ensure data is ready
            ok = wait_for_device(h,obj.SignalSource,obj.SignalClassifier.NumSamplesPerWindow);
            if ~ok
                error('Timed Out Waiting for Signal Source');
            end
            
            iSample = 0;
            
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;

            
            for i = 3:-1:1
                str = sprintf('Get ready to train in %02d seconds',i);
                waitbar(0,h,str);
                pause(1);
            end
            
            % Loop through each class, rep
            for iRepetition = 1:obj.NumRepetitions
                for iClass = 1:obj.SignalClassifier.NumClasses
                    % Check for Cancel button press
                    if getappdata(h,'canceling')
                        break
                    end
                    
                    
                    className = obj.SignalClassifier.ClassNames{iClass};
                    
                    msg = sprintf('Rep # %d of %d.  Next Class: %s',...
                        iRepetition,obj.NumRepetitions,className);
                    tic
                    t = 0;
                    set(hPatch,'FaceColor','r');
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
                    set(hPatch,'FaceColor','g');
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
                        
                        obj.ClassLabelId(iSample) = iClass;
                        windowData = obj.SignalSource.getFilteredData();
                        features = feature_extract(windowData' ,obj.SignalClassifier.NumSamplesPerWindow);
                        obj.Features3D(:,:,iSample) = features;
                    end
                end
            end
            
            if getappdata(h,'canceling')
                fprintf('Training Cancelled\n');
                delete(h);
            else
                waitbar(1,h,'Training Complete')
                pause(0.2);
                delete(h);
            end
            
            obj.Features3D(:,:,iSample+1:end) = [];
            obj.ClassLabelId(iSample+1:end) = [];
            obj.SampleCount = iSample;
            
            obj.saveTrainingData();

        end
    end
    methods (Static = true)
        function run(hScenario)
            % Temp -- this allows the VIE GUI to call the train routine
            hScenario.TrainingInterface.NumRepetitions = 3;
            hScenario.TrainingInterface.ContractionLengthSeconds = 2;
            hScenario.TrainingInterface.DelayLengthSeconds = 1;
            
            hScenario.TrainingInterface.collectdata();
            
            hScenario.SignalClassifier.TrainingData = features3D;
            hScenario.SignalClassifier.TrainingDataLabels = classLabelId;
            hScenario.SignalClassifier.train();
            hScenario.SignalClassifier.computeerror();

        end
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize;
            hSignalClassifier = SignalAnalysis.Classifier;
            hSignalClassifier.initialize;
            
            obj = PatternRecognition.SimpleTrainer();
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