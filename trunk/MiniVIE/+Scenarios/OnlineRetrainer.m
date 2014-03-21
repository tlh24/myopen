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
        JoystickId = 0  % Joystick Id (0,1,2,etc)
    end
    properties (SetAccess = protected)
        hJoystick       % handle to joystick, used to add data to interface
        hGui            % handle to the graphics object
        
        ButtonDown = 0; % Counts how long the joystick button is down
        CurrentClass = 1;
        LastButton = 0;
        
        TrainingData; % Online retraininer defined by having access to and adding data to training data
    end
    events
        NextClass
        PreviousClass
        DataCountChange
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            assert(~isempty(TrainingData),'Training Data Object Required');
            obj.TrainingData = TrainingData;
            
            % check for joysticks:
            try
                obj.hJoystick = JoyMexClass(obj.JoystickId);
            catch ME
                fprintf('[%s] Warning: Joystick is disabled. \n %s \n',mfilename,ME.message);
                obj.hJoystick = [];
            end
            
            initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            
            if ~isempty(obj.hJoystick) && ~isempty(SignalClassifier)
                % Text based UI
                %setupFigure(obj);

                % User Driven UI
                obj.hGui = UserDrivenTrainingInterface(obj.TrainingData);
                obj.hGui.setTrainingSource(obj);
                obj.Verbose = 0;
                %obj.start;
            end
            
            % Set default class to last class (typically No Movement)
            if ~isempty(SignalClassifier)
                obj.CurrentClass = obj.SignalClassifier.NumClasses;
            end
            
        end
        function setupFigure(obj)
            
            %obj.hGui = guiOnlineRetrain(SignalSource,SignalClassifier);
            %%
            classNames = obj.SignalClassifier.getClassNames;
%             classNames = cell(1,25);
            numClasses = length(classNames);

            screenSz = get(0,'ScreenSize');
            f = UiTools.create_figure('Training Progress');
            set(f,'Resize','on');
            set(f,'HandleVisibility','on');
            p = get(f,'Position');
            p(1) = p(1)/10;
            p(3) = p(3) * 1.3;
            p(4) = numClasses*30 + 50;
            p(2) = screenSz(4) - p(4) - 50;
            set(f,'Position',p);
            cmap = hot(256);
            set(f,'Colormap',cmap)
            
            set(f,'HandleVisibility','callback');
            hAxes = axes('Parent',f,'Units','Pixels','Position',[p(3)-90 5 100 100]);
            
            [X,Y] = meshgrid(1:numClasses+1,1:numClasses+1);
            hSurf = surf(hAxes,X,Y);
            patchData = surf2patch(hSurf);
            delete(hSurf);
            hPatch = patch(patchData,'Parent',hAxes,'FaceColor','flat','EdgeColor','None');
            view(hAxes,2);
            axis(hAxes,'off');
            caxis(hAxes,[0 1]);
            
            topLeft = [0 p(4)-40];
            boxSize = [p(3)-150 30];
            hText = zeros(1,length(classNames));
            
            for i = 1:numClasses
                offset = [10 -30*(i-1)];
                hText(i) = uicontrol(...
                    'Style','Text',...
                    'String',classNames{i},...
                    'FontName','Courier New',...
                    'FontSize',18,...
                    'Units','Pixels',...
                    'HorizontalAlignment','left',...
                    'Position',[topLeft+offset boxSize],...
                    ...'BackgroundColor','r',...
                    'Parent',f);
            end
            
            
            obj.hGui = {hText hPatch};
            
        end
        function setupFigureUiTable(obj)
            
            %obj.hGui = guiOnlineRetrain(SignalSource,SignalClassifier);
            
            f = UiTools.create_figure('Training Progress');
            p = get(f,'Position');
            p(1) = p(1)/5;
            p(2) = p(2)/5;
            p(4) = 600;
            p(3) = 1300;
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
        function [doTrain, doAddData] = getCommand2(obj)
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
        function [doTrain, doAddData, clearClass] = getCommand(obj)
            % Joystick buttons change classes, another button trains data
            
            clearClass = 0;
            doTrain = false;
            doAddData = false;

            % Check joystick for buttons, if any, add this to training data
            [success, msg] = obj.hJoystick.getdata();
            if ~success
                fprintf('[%s] Error getting Joystick command.  Is it still connected? Error="%s"\n',mfilename,msg);
                return
            end
            
            % Note only one button can be pressed at a time, lowest button
            % number wins
            buttonId = find(obj.hJoystick.buttonVal,1,'first');
            if isempty(buttonId)
                buttonId = 0;
            end
            
            %obj.hJoystick
            buttonJustPressed = obj.LastButton == 0;
            buttonHeld = obj.ButtonDown > 15;
            
            % change target Class
            buttonPrevious = ismember(buttonId,[2 6]) || ...
                obj.hJoystick.axisVal(1) > 0.5;
            buttonNext = ismember(buttonId,[4 8]) || ...
                obj.hJoystick.axisVal(1) < -0.5;
            if buttonPrevious && ...
                    (buttonJustPressed || buttonHeld)
                % move to next class, redraw, done
                obj.CurrentClass = obj.CurrentClass+1;
                if obj.CurrentClass > obj.SignalClassifier.NumClasses
                    % wrap to bottom
                    obj.CurrentClass = 1;
                end
                obj.LastButton = buttonId;
                doTrain = false;
                doAddData = false;
                notify(obj,'PreviousClass'); % Broadcast notice of event
                return
            end
            if buttonNext && ...
                    (buttonJustPressed || buttonHeld)
                % move to previous class, redraw, done
                obj.CurrentClass = obj.CurrentClass-1;
                if obj.CurrentClass < 1
                    % wrap to top
                    obj.CurrentClass = obj.SignalClassifier.NumClasses;
                end
                obj.LastButton = buttonId;
                doTrain = false;
                doAddData = false;
                notify(obj,'NextClass'); % Broadcast notice of event
                return
            end
            
            if (buttonId == 1)
                clearClass = obj.CurrentClass;
                numDisabled = obj.TrainingData.disableLabeledData(clearClass);
                fprintf('[%s] %d samples disabled for class: %d\n',mfilename,numDisabled,clearClass);
                doTrain = true;
                doAddData = false;
                notify(obj,'DataCountChange'); % Broadcast notice of event  -- change to DataCountChange
                return
            end
            
            if buttonId > 0
                obj.ButtonDown = obj.ButtonDown + 1;
            else
                obj.ButtonDown = 0;
            end
            
            trainingButtonPressed = (buttonId == 3);
            trainingButtonReleased = (buttonId == 0) && (obj.LastButton == 3);
            trainingButtonHeld = (obj.ButtonDown > obj.RetrainCounts);
            obj.LastButton = buttonId;
            
            % Add data if training button is pressed
            doAddData = trainingButtonPressed;
            if doAddData
                notify(obj,'DataCountChange'); % Broadcast notice of event
            end
            
            % Train if button released or held too long
            if trainingButtonReleased || ...
                    (trainingButtonPressed && trainingButtonHeld)
                doTrain = true;
                obj.ButtonDown = 0; %reset counter
            else
                doTrain = false;
            end
            
        end
        function update(obj)
            
            % Performs intent classification
            
            % Do this locally so that the feature data can be stored
            % directly
            
            
            try
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
                
                [doTrain, doAddData] = getCommand(obj);
                
                
                % if all the data is cleared out, then we can't retrain
                % without error
                
                l = obj.TrainingData.getClassLabels;
                
                
                if doTrain && ~isempty(l)
                    % retrain
                    obj.SignalClassifier.train();
                    obj.SignalClassifier.computeError();
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
                
                %updateFigure(obj,voteDecision,obj.CurrentClass);
                
                if (obj.Verbose > 0 && strcmp(class(obj),'Scenarios.OnlineRetrainer')) %#ok<STISA> Not using isa since we want an exact match
                    fprintf('\n');
                end
                
            catch ME
                UiTools.display_error_stack(ME);
            end
        end
        function updateFigure(obj,decodedClassId,labeledClass)
            % Update figure (optional)
            if isempty(obj.hGui) || ~all(ishandle([obj.hGui{:}]))
                return
            end
            
            n = obj.SignalClassifier.NumClasses;
            classSum = zeros(n,1);
            
            % Compute the sum column
            numClasses = obj.SignalClassifier.NumClasses;
            classLabels = obj.TrainingData.getClassLabels;
            for iClass = 1:numClasses
                classSum(iClass) = sum(classLabels == iClass);
            end
            
            classNames = obj.SignalClassifier.getClassNames;
            paddedName = classNames;
            for i = 1:length(classNames)
                paddedName{i} = ['  ' paddedName{i} '  '];
            end
            paddedName{decodedClassId} = ['[ ' classNames{decodedClassId} ' ]'];
            
            hText = obj.hGui{1};

            for i = 1:length(hText)
                if i == labeledClass
                    str = sprintf('%30s %4d <<<',paddedName{i},classSum(i));
                else
                    str = sprintf('%30s %4d',paddedName{i},classSum(i));
                end
                set(hText(i),'String',str);
            end
            
            hPatch = obj.hGui{2};
            try
                cmat = obj.SignalClassifier.ConfusionMatrix;
                if ~isempty(cmat)
                    
                    classSum = sum(cmat,2);
                    normMat = cmat ./ repmat(classSum,1,numClasses);
                    normMat(isnan(normMat)) = 0;
                    
                    faceColor = flipud(normMat);
                    set(hPatch,'FaceVertexCData',faceColor(:));
                end
            catch
                disp('Confusion matrix error')
            end
            
        end
        function updateFigureUiTable(obj,decodedClassId,labeledClass)
            % Update figure (optional)
            error('deprecated 3/12/2013 since uitable is extremely slow when it gets large');
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
                    dat(1:numClasses,1:numClasses) = obj.SignalClassifier.ConfusionMatrix;
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
            close@Scenarios.ScenarioBase(obj); % Call superclass close method
%             if ~isempty(obj.hGui)
%                 obj.hGui.close();
%             end
            obj.TrainingData.saveTrainingData;
        end
    end
    methods (Static = true)
        function obj = Test
            obj = Scenarios.OnlineRetrainer;
            hTrainingData = PatternRecognition.TrainingData();
            %hTrainingData.initialize();
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize();
            hSignalClassifier = SignalAnalysis.Lda;
            hSignalClassifier.initialize(hTrainingData);
            
            initialize(obj,hSignalSource,hSignalClassifier,hTrainingData);
            obj.Verbose = 0;
            obj.start();
        end
    end
end
