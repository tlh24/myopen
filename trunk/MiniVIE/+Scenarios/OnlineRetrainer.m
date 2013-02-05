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
    properties (SetAccess = protected)
        hJoystick       % handle to joystick, used to add data to interface
        hGui            % handle to the graphics object

        ButtonDown = 0; % Counts how long the joystick button is down
        CurrentClass = 1;
        LastButton = 0;
        
        TrainingData; % Online retraininer defined by having access to and adding data to training data
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)

            assert(~isempty(TrainingData),'Training Data Object Required');
            obj.TrainingData = TrainingData;
            
            % check for joysticks:
            try
                obj.hJoystick = JoyMexClass;
            catch ME
                fprintf('[%s] Warning: Joystick is disabled. \n %s \n',mfilename,ME.message);
                obj.hJoystick = [];
            end
            
            initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            
            %             if isempty(obj.SignalClassifier)
            %                 obj.SampleCount = 1;
            %             else
            %                 obj.SampleCount = length(obj.SignalClassifier.TrainingDataLabels) + 1;
            if ~isempty(obj.hJoystick) && ~isempty(SignalClassifier)
                setupFigure(obj);
            end
            
            %             end
            
        end
        function setupFigure(obj)
            
            %obj.hGui = guiOnlineRetrain(SignalSource,SignalClassifier);
            
            f = UiTools.create_figure('Training Progress');
            p = get(f,'Position');
            p(1) = p(1)/3;
            p(3) = 1100;
            set(f,'Position',p);
            
            classNames = obj.SignalClassifier.getClassNames;
            
            for i = 1:length(classNames)
                spaces = strfind(classNames{i},' ');
                if ~isempty(spaces)
                    classNames{i}(spaces(1)) = '|';
                end
            end
            
            n = obj.SignalClassifier.NumClasses;
            dat = zeros(n,n+1);
            t = uitable('parent',f,'data',dat,'columnname',[classNames(:); 'Total'],...
                'rowname',classNames,'units','normalized',...
                'position',[0.00 0.00 1.0 1.0],'fontsize',14);
            
            obj.hGui = t;
            
            set(obj.hGui,'ColumnWidth',repmat({65},1,n+1))
        end
        function [doTrain doAddData] = getCommand2(obj)
            % Buttons map directly to classes
            
            
            
            % Check joystick for buttons, if any, add this to training data
            obj.hJoystick.getdata();
            % Note only one button can be pressed at a time, lowest button
            % number wins
            buttonId = find(obj.hJoystick.buttonVal,1,'first');
            
            if isempty(buttonId)
                % Button release
                buttonWasDepressed = obj.ButtonDown > 0;
                doAddData = false;
                doTrain = buttonWasDepressed;
                obj.ButtonDown = 0;
                return
            end
            
            obj.ButtonDown = obj.ButtonDown + 1;
            
            doAddData = true;
            doTrain = ~mod(obj.ButtonDown,obj.RetrainCounts);
            
            % If button is down, add the current data as training data to
            % that class
            obj.CurrentClass = max(min(buttonId,obj.SignalClassifier.NumClasses),1);
            
        end
        function [doTrain doAddData clearClass] = getCommand(obj)
            % Joystick buttons change classes, another button trains data
            
            clearClass = 0;
            
            % Check joystick for buttons, if any, add this to training data
            obj.hJoystick.getdata();
            % Note only one button can be pressed at a time, lowest button
            % number wins
            buttonId = find(obj.hJoystick.buttonVal,1,'first');
            if isempty(buttonId)
                buttonId = 0;
            end
            
            % change target Class
            if ((buttonId == 2) || (buttonId == 8)) && (obj.LastButton == 0)
                % move to next class, redraw, done
                obj.CurrentClass = max(min(obj.CurrentClass+1,obj.SignalClassifier.NumClasses),1);
                obj.LastButton = buttonId;
                doTrain = false;
                doAddData = false;
                return
            end
            if ((buttonId == 4) || (buttonId == 6)) && (obj.LastButton == 0)
                % move to previous class, redraw, done
                obj.CurrentClass = max(min(obj.CurrentClass-1,obj.SignalClassifier.NumClasses),1);
                obj.LastButton = buttonId;
                doTrain = false;
                doAddData = false;
                return
            end
            
            if (buttonId == 1)
                clearClass = obj.CurrentClass;
                fprintf('[%s] Ignoring class data for class: %d\n',mfilename,clearClass);
                doTrain = true;
                doAddData = false;
                return
            end
            
            trainingButtonPressed = (buttonId == 3);
            if trainingButtonPressed
                obj.ButtonDown = obj.ButtonDown + 1;
            else
                obj.ButtonDown = 0;
            end
            
            trainingButtonReleased = (buttonId == 0) && (obj.LastButton == 3);
            trainingButtonHeld = (obj.ButtonDown > obj.RetrainCounts);
            obj.LastButton = buttonId;
            
            % Add data if training button is pressed
            doAddData = trainingButtonPressed;
            
            % Train if button released or held too long
            if (trainingButtonReleased || trainingButtonHeld)
                doTrain = true;
                obj.ButtonDown = 0; %reset counter
            else
                doTrain = false;
            end
            
        end
        function update(obj)
            
            % Performs intent classification
            
            % update@Scenarios.ScenarioBase(obj);
            
            % Step 1: Get Intent
            [decodedClassName,prSpeed,rawEmg,windowData,features,...
                voteDecision] = getIntentSignals(obj);
            
            % Step 2: Convert Intent to limb commands
            obj.generateUpperArmCommand(decodedClassName,prSpeed);
            obj.generateGraspCommand(decodedClassName,prSpeed);
            
            
            % All subsequent commands rely on joystick for labelling
            % correct class
            if isempty(obj.hJoystick)
                return
            end
            
            [doTrain doAddData clearClass] = getCommand(obj);
            
            if doTrain
                % retrain
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeerror();
                obj.SignalClassifier.computeGains();
                obj.SignalClassifier.computeConfusion();
            end
            
            % If button is down, add the current data as training data to
            % that class
            if doAddData
                
                % Add a new sample of data based on the CurrentClass property
                assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
                
                obj.TrainingData.addTrainingData(obj.CurrentClass, features, ...
                    rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')
                
            end
            
            
            %             if (clearClass > 0)
            %
            %                 % initialize ignore buffer
            %                 if isempty(obj.SignalClassifier.IgnoreList)
            %                     %obj.SignalClassifier.IgnoreList = false(1,obj.SampleCount);
            %                 end
            %
            %                 ignoreMe = obj.SignalClassifier.TrainingDataLabels(1:obj.SampleCount-1) == clearClass;
            %                 obj.SignalClassifier.IgnoreList(ignoreMe) = true;
            %
            %             end
            
            updateFigure(obj,voteDecision,obj.CurrentClass);
        end
        function updateFigure(obj,decodedClassId,labeledClass)
            % Update figure (optional)
            if isempty(obj.hGui) || ~ishandle(obj.hGui)
                return
            end
            
            n = obj.SignalClassifier.NumClasses;
            dat = zeros(n,n+1);
            
            % Compute the sum column
            numClasses = obj.SignalClassifier.NumClasses;
            classLabels = obj.TrainingData.getClassLabels;
            for iClass = 1:numClasses
                dat(iClass,numClasses+1) = sum(classLabels == iClass);
            end
            
            try
            if ~isempty(obj.SignalClassifier.ConfusionMatrix)
                dat(1:numClasses,1:numClasses) = obj.SignalClassifier.ConfusionMatrix';
            end
            catch
                disp('Confusion matrix error')
            end
            
            
            cellPtr = cell(numClasses,1);
            if (labeledClass > 0)
                cellPtr{labeledClass} = '   <<<';
            end
            set(obj.hGui,'Data',[num2cell(dat) cellPtr]);
            
            
            classNames = obj.SignalClassifier.getClassNames;
            paddedName = classNames;
            for i = 1:length(classNames)
                paddedName{i} = ['  ' paddedName{i} '  '];
            end
            paddedName{decodedClassId} = ['[ ' classNames{decodedClassId} ' ]'];
            set(obj.hGui,'RowName',paddedName);
            
        end
        function close(obj)
            close@Scenarios.ScenarioBase(obj); % Call superclass update method
            obj.TrainingData.saveTrainingData;
        end
    end
end
