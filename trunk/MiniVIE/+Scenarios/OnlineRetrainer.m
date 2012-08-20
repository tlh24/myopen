classdef OnlineRetrainer < Scenarios.ScenarioBase
    %ONLINERETRAINER Class for adding training data during scenario for
    %realtime update of classifier training data
    %   Class is intended to inherit from the base (classification
    %   scenario).  This version integrates with the joystick and when a
    %   button is depressed will add features to the training set and label
    %   them.  Retraining the classifier occurs on button up or when a
    %   specified number of new example are added.
    %
    %   The modified methods here are initialize(), to init the joystick;
    %   update(), which labels data when the button is down and is called
    %   by the timer; and close(), which prompts user to save data
    %
    % Log:
    % 30Jul2012 Armiger: Created
    properties (Access = public)
        RetrainCounts = 15;  % Controls how many samples to wait before auto retrain
    end
    properties (SetAccess = private)
        hJoystick       %
        SampleCount;    % Points to where teh next sample should be added
        ButtonDown = 0; % Counts how long the joystick button is down
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier)
            % check for joysticks:
            try
                obj.hJoystick = JoyMexClass;
            catch ME
                fprintf(2,'[%s] Error calling JoyMexClass. Joystick is disabled.\n',mfilename);
                fprintf(2,'%s\n',ME.message);
            end
            
            initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            
            if isempty(obj.SignalClassifier)
                obj.SampleCount = 1;
            else
                obj.SampleCount = length(obj.SignalClassifier.TrainingDataLabels) + 1;
            end
        end
        function update(obj)
            
            
            % Performs intent classification
            update@Scenarios.ScenarioBase(obj);
            
            
            % All subsequent commands rely on joystick for labelling
            % correct class
            if isempty(obj.hJoystick)
                return
            end
            
            % Check joystick for buttons, if any, add this to training data
            obj.hJoystick.getdata();
            % Note only one button can be pressed at a time, lowest button
            % number wins
            buttonId = find(obj.hJoystick.buttonVal,1,'first');
            
            if isempty(buttonId)
                % Button release
                buttonWasDepressed = obj.ButtonDown > 0;
                if buttonWasDepressed
                    % retrain
                    obj.SignalClassifier.train();
                    obj.SignalClassifier.computeerror();
                    obj.SignalClassifier.computeGains();
                    obj.SignalClassifier.computeConfusion();
                end
                obj.ButtonDown = 0;
                return
            end
            
            obj.ButtonDown = obj.ButtonDown + 1;
            
            if ~mod(obj.ButtonDown,obj.RetrainCounts)
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeerror();
                obj.SignalClassifier.computeGains();
                obj.SignalClassifier.computeConfusion();
            end
            
            
            % If button is down, add the current data as training data to
            % that class
            currentClass = max(min(buttonId,obj.SignalClassifier.NumClasses),1);
            
            isTrained = obj.SignalClassifier.IsTrained;
            %isTrained(currentClass)
            
            className = obj.SignalClassifier.ClassNames{currentClass};
            
            %obj.addData();
            
            % Get new data (getting raw data and manually filtering for logging)
            rawEmg = obj.SignalSource.getData();
            windowData = obj.SignalSource.applyAllFilters(rawEmg);
            
            features = feature_extract(windowData',obj.SignalClassifier.NumSamplesPerWindow);
            
            idxChannel = 1:obj.SignalSource.NumChannels;
            obj.SignalClassifier.TrainingDataLabels(obj.SampleCount) = currentClass;
            % Note this could be tricky if data is loaded with the
            % wrong number of channels compared to the current Signal
            % Source.  Below code works if the current channels are
            % less than or equal to the prior data
            obj.SignalClassifier.TrainingData(idxChannel,:,obj.SampleCount) = features;
            
            obj.SignalClassifier.TrainingEmg(idxChannel,:,obj.SampleCount) = rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)';
            
            obj.SampleCount = obj.SampleCount + 1;
            
            isTrained = obj.SignalClassifier.IsTrained;
            %isTrained(currentClass)
            
        end
        function close(obj)
            
            close@Scenarios.ScenarioBase(obj); % Call superclass update method
            
            %function saveTrainingData(obj)
            % Save Training Data
            FilterSpec = '*.dat';
            DialogTitle = 'Select File to Write';
            DefaultName = sprintf('%04d%02d%02d_%02d%02d%02d_TrainingData.dat',fix(clock));
            [FileName,PathName,FilterIndex] = uiputfile(FilterSpec,DialogTitle,DefaultName);
            if FilterIndex == 0
                % User Cancelled
                return
            end
            
            emgData = obj.SignalClassifier.TrainingEmg; %#ok<NASGU>
            
            features3D = obj.SignalClassifier.TrainingData; %#ok<NASGU>
            classLabelId = obj.SignalClassifier.TrainingDataLabels; %#ok<NASGU>
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
end
