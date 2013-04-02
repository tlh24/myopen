classdef CytonEmgScenario < Scenarios.OnlineRetrainer
    % Scenario for controlling cyton joints via EMG
    % This class uses the online retrainer base class, so a joystick is
    % recommended
    % 
    % 2-Apr-2013 Armiger: Created
    properties
        CommandVelocity
    end
    properties (SetAccess = private)
        % Handles
        hCyton;
        
        LastIntent;  % structure of intent data
    end
    methods
        function obj = CytonEmgScenario

        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            %initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Initialize scenario with source, algorithm, and data
            % method extends class with udp and calls superclass init
            
            
            % Setup Cyton
            import Presentation.CytonI.*
            obj.hCyton = CytonI;
            
            % Remaining superclass initialize methods
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            
        end
        function getIntent(obj)
            % Performs intent classification
            
            % Do this locally so that the feature data can be stored
            % directly
            
            % Step 1: Get Intent
            [decodedClassName,prSpeed,rawEmg,windowData,features,...
                voteDecision] = getIntentSignals(obj);
            
            % Update structure
            obj.LastIntent.decodedClassName = decodedClassName;
            obj.LastIntent.prSpeed = prSpeed;
            obj.LastIntent.rawEmg = rawEmg;
            obj.LastIntent.windowData = windowData;
            obj.LastIntent.features = features;
            obj.LastIntent.voteDecision = voteDecision;
            
            % Step 2: Convert Intent to limb commands
            
            % Map the EMG data to angle movements of the robot
            ang = obj.hCyton.JointParameters;
            switch decodedClassName
                case 'No Movement'
                case 'Hand Open'
                    ang(8) = ang(8) + prSpeed;
                case {'Spherical Grasp' 'Tip Grasp' 'Hand Close'}
                    ang(8) = ang(8) - prSpeed;
                case {'Pronate' 'Wrist Rotate In'}
                    ang(5) = ang(5) + prSpeed;
                case {'Supinate' 'Wrist Rotate Out'}
                    ang(5) = ang(5) - prSpeed;
                case {'Up' 'Hand Up'}
                    ang(7) = ang(7) + prSpeed;
                case {'Down' 'Hand Down'}
                    ang(7) = ang(7) - prSpeed;
                case {'Left' 'Wrist Flex' 'Wrist Flex In'}
                    ang(6) = ang(6) + prSpeed;
                case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
                    ang(6) = ang(6) - prSpeed;
            end
            obj.hCyton.setJointParameters(ang);
        end
        function updateRetrainer(obj)
            
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
                
                classLabel = obj.CurrentClass;
                features = obj.LastIntent.features;
                rawSignal = obj.LastIntent.rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)';
                obj.TrainingData.addTrainingData(classLabel, features, rawSignal);
                
            end
            
            updateFigure(obj,obj.LastIntent.voteDecision,obj.CurrentClass);
        end
        
        function update(obj)
            % main timer update command

            try
                % get intent
                getIntent(obj);
                
                % update retrainer
                updateRetrainer(obj);

                drawnow;
                
                if obj.Verbose
                    % fprintf('[%s] Reach Command: %12.6f; Grasp Command: %12.6f;\n',...
                    %     mfilename,doubleReach,doubleGrasp);
                    fprintf('\n');
                end
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
    end
    methods (Static = true)
        function obj = Run
            
            p.guiName = 'MiniVIE-Cyton';
            p.filePrefix = 'Cyton_';
            
            %p.hSource = Inputs.CpchSerial('COM1');
            p.hSource = Inputs.SignalSimulator;
            
            p.ClassNames = {'Hand Close' 'Hand Open' 'Pronate' 'Supinate' 'Wrist Flex' 'Wrist Extend' 'Up' 'Down' 'No Movement'};
            
            p.hPresentation = Presentation.CytonI.CytonEmgScenario;
            
            obj = foo(p);
            
        end
    end
end

function obj = foo(p)

% handle all the generic MiniVIE gui setup stuff. Mostly just custom
% parameter setting

obj = MiniVIE;
set(obj.hg.Figure,'Name',p.guiName);
obj.FilePrefix = p.filePrefix;

%% Inputs
h = p.hSource;
h.NumSamples = 3000;
h.initialize();

% Enable buttons
set(obj.hg.SignalSourceButtons(:),'Enable','on');
% set(obj.hg.popups(1),'Value',6);

% Setup filters and remaining properties
obj.println('Adding Filters',1);
Fs = h.SampleFrequency;
h.addfilter(Inputs.HighPass(15,3,Fs));
% h.addfilter(Inputs.RemoveOffset(10));
% h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
obj.SignalSource = h;

% f = GUIs.guiSignalViewer(h);
% uiwait(f.hg.Figure);

%% Signal Analysis
h = SignalAnalysis.Lda();

% Enable Buttons
set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
set(obj.hg.popups(2),'Value',2);

h.NumMajorityVotes = 7;

NumSamplesPerWindow = 200;
fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
h.NumSamplesPerWindow = NumSamplesPerWindow;

%obj.TrainingData = PatternRecognition.TrainingData();
obj.TrainingData = TrainingDataAnalysis();
ok = 0;%obj.TrainingData.loadTrainingData([]);
if ~ok
    obj.TrainingData.initialize(obj.SignalSource.NumChannels,h.NumSamplesPerWindow);
end

set(obj.hg.TrainingButtons(:),'Enable','on');

% Initialize Classifier with data object
h.initialize(obj.TrainingData);

% TODO: Note signals only updated on classifier
% creation
defaultChannels = GUIs.guiChannelSelect.getLastChannels();
if isempty(defaultChannels)
    msg = 'No channels are active.  Enable channels in Signal Viewer';
    %errordlg(msg);
    error(msg);
end
h.setActiveChannels(defaultChannels);

% load('TR_Basic.classNames','-mat')
classNames = p.ClassNames;
if (isempty(classNames))
    classNames = GUIs.guiClassifierChannels.getDefaultNames;
end
h.setClassNames(classNames);

obj.SignalClassifier = h;


%% Setup Presentation
h = p.hPresentation;
h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
h.Verbose = 1;
h.update();

start(h.Timer);
obj.println('Presentation setup complete',1);

% Enable buttons
set(obj.hg.PresentationButtons(:),'Enable','on');
% set(obj.hg.popups(5),'Value',5);

obj.Presentation = h;

end
