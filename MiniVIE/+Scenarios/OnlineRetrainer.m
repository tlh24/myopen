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
    % 10Apr2014 Armiger: Added an enable flag for using analog joystick inputs
    properties (Access = public)
        RetrainCounts = 25;         % Controls how many samples to wait before auto retrain
        ClassChangeCounts = 15;     % Controls how many updates to wait before changing class
        JoystickId                  % System ID for desired joystickJoystick Id (0,1,2,etc)
        JoystickButtonNext          % List of buttons to go to next class
        JoystickButtonPrevious      % List of buttons to go to previous class
        JoystickButtonTrain         % List of buttons to train
        JoystickButtonClear         % List of buttons to clear data
        JoystickAxis                % axis value for changing class. can be (-) to flip axis for next/previous
        JoystickAxisThreshold       % limit until joystick axis registers event
        
        EnableJoystick = true;
    end
    properties (SetAccess = protected)
        hJoystick       % handle to joystick, used to add data to interface
        hGui            % handle to the graphics object
        
        CurrentClass = 1;
        
        RetrainCounter = 0;
        
        AnalogEnable = 1;   % Allows class to be changed using either the right-hand gamepad
        % buttons OR the left-hand D-pad or analog
        % stick.  Note if the joystick is an improper
        % mode then this can lead to unexpected rapid
        % scanning through classes
        
        TrainingData; % Online retraininer defined by having access to and adding data to training data
        
    end
    properties (Access = private)
        AddState = 0;  % The mode state whether to add new data
    end
    events
        % Events signify to a GUI that the training event occured
        NextClass
        PreviousClass
        DataCountChange
    end
    
    methods
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            assert(~isempty(TrainingData),'Training Data Object Required');
            obj.TrainingData = TrainingData;
            
            % check for joysticks:
            if obj.EnableJoystick
                
                obj.JoystickId = UserConfig.getUserConfigVar('joystickId',0);
                obj.JoystickButtonNext = UserConfig.getUserConfigVar('joystickButtonNext',[4 8]);
                obj.JoystickButtonPrevious = UserConfig.getUserConfigVar('joystickButtonPrevious',[2 6]);
                obj.JoystickButtonTrain = UserConfig.getUserConfigVar('joystickButtonTrain',[3 11]);
                obj.JoystickButtonClear = UserConfig.getUserConfigVar('joystickButtonClear',1);
                obj.JoystickAxis = UserConfig.getUserConfigVar('joystickAxis',1);
                obj.JoystickAxisThreshold = UserConfig.getUserConfigVar('joystickAxisThreshold',0.7);
                
                try
                    obj.hJoystick = JoyMexClass(obj.JoystickId);
                    obj.hJoystick.doSwapAxes = false;
                catch ME
                    fprintf('[%s] Warning: Joystick is disabled. \n %s \n',mfilename,ME.message);
                    obj.hJoystick = [];
                end
            else
                obj.hJoystick = [];
            end
            
            initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            
            %if ~isempty(obj.hJoystick) && ~isempty(SignalClassifier)
            if ~isempty(SignalClassifier)
                % Text based UI
                %setupFigure(obj);
                
                % User Driven UI
                obj.hGui = UserDrivenTrainingInterface(obj.TrainingData);
                obj.hGui.setTrainingSource(obj);
                obj.Verbose = 0;
                addlistener(obj.hGui,'ClearClass',@(src,evt)guiClearClass(obj) );
                addlistener(obj.hGui,'ClassChange',@(src,evt)guiClassChange(obj) );
                addlistener(obj.hGui,'StartAdd',@(src,evt)guiStartAdd(obj) );
                addlistener(obj.hGui,'StopAdd',@(src,evt)guiStopAdd(obj) );
                
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
        function [doTrain, doAddData, clearClass] = getCommand(obj)
            % Joystick buttons change classes, another button trains data
            
            % Initialize return arguments
            clearClass = 0;
            doTrain = false;
            doAddData = false;
            
            % get handle for joystick
            joy = obj.hJoystick;
            
            % synch the joystick deadband with that of the gui
            joy.axisDeadband(obj.JoystickAxis) = obj.JoystickAxisThreshold;
            
            % Check joystick for buttons, if any, add this to training data
            [success, msg] = joy.getdata();
            if ~success
                fprintf('[%s] Error getting Joystick command.  Is it still connected? Error="%s"\n',mfilename,msg);
                return
            end
            
            % Add data if training button is pressed
            doAddData = any(joy.buttonVal(obj.JoystickButtonTrain));
            
            % Train if button released or held too long
            if any(joy.buttonsHeldCount(obj.JoystickButtonTrain) > obj.RetrainCounts) || ...
                    any(joy.buttonsReleased(obj.JoystickButtonTrain))
                doTrain = true;
                
                %reset counter
                joy.buttonsHeldCount(obj.JoystickButtonTrain) = 1;
                
            else
                doTrain = false;
            end
            
            if doAddData
                % Return after this point so that class changes aren't
                % allowed if you are adding data
                return
            end
            
            % change target Class
            
            % go to previous if the button is pressed or if it is held long
            % enough or if analog switching is enabled and the analog axis
            % is depressed in the correct direction
            
            if any(joy.buttonsPressed(obj.JoystickButtonPrevious)) || ...
                    any(joy.buttonsHeldCount(obj.JoystickButtonPrevious) > obj.ClassChangeCounts) || ...
                    (obj.AnalogEnable && ...
                    (sign(obj.JoystickAxis) * joy.axisVal(abs(obj.JoystickAxis)) >= obj.JoystickAxisThreshold) && ...
                    joy.axisHeldCount(obj.JoystickAxis) == 1 || joy.axisHeldCount(obj.JoystickAxis) > obj.ClassChangeCounts )
                % move to next class, redraw, done
                obj.CurrentClass = obj.CurrentClass + 1;
                if obj.CurrentClass > obj.SignalClassifier.NumClasses
                    % wrap to bottom
                    obj.CurrentClass = 1;
                end
                doTrain = false;
                doAddData = false;
                notify(obj,'PreviousClass'); % Broadcast notice of event
                return
            end
            if any(joy.buttonsPressed(obj.JoystickButtonNext)) || ...
                    any(joy.buttonsHeldCount(obj.JoystickButtonNext) > obj.ClassChangeCounts) || ...
                    (obj.AnalogEnable && ...
                    (sign(obj.JoystickAxis) * joy.axisVal(abs(obj.JoystickAxis)) < -obj.JoystickAxisThreshold) && ...
                    joy.axisHeldCount(obj.JoystickAxis) == 1 || joy.axisHeldCount(obj.JoystickAxis) > obj.ClassChangeCounts )
                % move to previous class, redraw, done
                obj.CurrentClass = obj.CurrentClass - 1;
                if obj.CurrentClass < 1
                    % wrap to top
                    obj.CurrentClass = obj.SignalClassifier.NumClasses;
                end
                doTrain = false;
                doAddData = false;
                notify(obj,'NextClass'); % Broadcast notice of event
                return
            end
            
            % Check for clear command
            if joy.buttonVal(obj.JoystickButtonClear)
                doTrain = true;
                doAddData = false;
                clearCurrentClassData(obj);
                return
            end
            
        end
        function clearCurrentClassData(obj)
            clearClass = obj.CurrentClass;
            numDisabled = obj.TrainingData.disableLabeledData(clearClass);
            fprintf('[%s] %d samples disabled for class: %d\n',mfilename,numDisabled,clearClass);
            notify(obj,'DataCountChange'); % Broadcast notice of event  -- change to DataCountChange
        end
        function retrain(obj)
            % perform retraining
            if ~isempty(obj.TrainingData.getClassLabels) && ...
                    obj.TrainingData.SampleCount > 1
                % retrain
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeError();
                obj.SignalClassifier.computeGains();
                obj.SignalClassifier.computeConfusion();
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
                    [joystickTrain, joystickAddData] = deal(0);
                else
                    [joystickTrain, joystickAddData] = getCommand(obj);
                end
                                
                % Check the GUI for add command as well
                guiAddData = obj.AddState;
                
                % Retrain if the gui button is held too long or if it is
                % just released
                guiTrain = obj.RetrainCounter >= obj.RetrainCounts || ...
                    obj.RetrainCounter > 0 && ~guiAddData;
                
                if guiAddData
                    obj.RetrainCounter = obj.RetrainCounter + 1;
                else
                    obj.RetrainCounter = 0;
                end
                
                if obj.RetrainCounter > obj.RetrainCounts
                    obj.RetrainCounter = 1;
                end
                
                doAddData = joystickAddData || guiAddData;
                doTrain = joystickTrain || guiTrain;
                
                % if all the data is cleared out, then we can't retrain
                % without error
                l = obj.TrainingData.getClassLabels;
                numSamples = obj.TrainingData.SampleCount;
                
                
                if doTrain && ~isempty(l) && numSamples > 1
                    % retrain
                    obj.SignalClassifier.train();
                    obj.SignalClassifier.computeError();
                    obj.SignalClassifier.computeGains();
                    obj.SignalClassifier.computeConfusion();
                end
                
                % If training, add the current data as training data to
                % that class
                if doAddData
                    
                    notify(obj,'DataCountChange'); % Broadcast notice of event
                    
                    % Add a new sample of data based on the CurrentClass property
                    assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
                    
                    obj.TrainingData.addTrainingData(obj.CurrentClass, features, ...
                        rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')
                    
                end
                %updateFigure(obj,voteDecision,obj.CurrentClass);
                
                if (obj.Verbose > 0)% && strcmp(class(obj),'Scenarios.OnlineRetrainer')) %#ok<STISA> Not using isa since we want an exact match
                    fprintf('\n');
                end
                
            catch ME
                UiTools.display_error_stack(ME);
            end
        end
        function updateFigure(obj,decodedClassId,labeledClass)
            % Deprecated
            return
            
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
            if obj.TrainingData.HasUnsavedData
                obj.TrainingData.saveTrainingData;
            end
        end
    end
    methods (Access = private)
        % Private functions mainly for handling events from the optional
        % GUI
        function guiClassChange(obj)
            % change the class based on input from the GUI
            obj.CurrentClass = obj.hGui.SelectionIndex;
        end
        function guiStartAdd(obj)
            % change add data mode
            obj.AddState = 1;
        end
        function guiStopAdd(obj)
            % change add data mode
            obj.AddState = 0;
        end
        function guiClearClass(obj)
            % clear the data and retrain
            clearCurrentClassData(obj);
            retrain(obj);
        end

        
    end
    methods (Static = true)
        function obj = Test
            %Scenarios.OnlineRetrainer.Test
            
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
