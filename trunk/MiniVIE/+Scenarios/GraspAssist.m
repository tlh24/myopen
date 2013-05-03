classdef GraspAssist < Scenarios.OnlineRetrainer
    % Scenario for controlling grasp assist device
    % 
    % 21-Apr-2013 Armiger: Created
    properties
        
    end
    properties (SetAccess = private)
        % Handles
        hDevice
        hTopoState
        
        LastIntent
    end
    methods
        function obj = GraspAssist
            % Creator
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            %initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Initialize scenario with source, algorithm, and data
            % method extends class with udp and calls superclass init
            
            
            % setup serial device
            obj.hDevice
            
            
            obj.hTopoState = Scenarios.TopoGrasp();
            
            obj.hTopoState.setup_display();

            isLeftSide = 1;
            obj.hTopoState.hHandState = Controls.HandStatePointer;

            obj.hTopoState.hLegend = Controls.HandStateLegend(obj.hTopoState.hHandState,isLeftSide);
            obj.hTopoState.hLegend.EnableStateChangeBeep = 1;
            
            
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
            obj.hTopoState.WristFECmd = 0;
            obj.hTopoState.WristRotCmd = 0;
            obj.hTopoState.HandCmd = [0 0];
            switch decodedClassName
                case 'No Movement'
                case 'Wrist Flex In'
                    obj.hTopoState.WristFECmd = 1;
                case 'Wrist Extend Out'
                    obj.hTopoState.WristFECmd = -1;
                case 'Wrist Rotate In'
                    obj.hTopoState.WristRotCmd = 1;
                case 'Wrist Rotate Out'
                    obj.hTopoState.WristRotCmd = -1;
                    
                    
                case 'Up'
                    obj.hTopoState.HandCmd(2) = +1;
                case 'Down'
                    obj.hTopoState.HandCmd(2) = -1;
                case 'Left'
                    obj.hTopoState.HandCmd(1) = -1;
                case 'Right'
                    obj.hTopoState.HandCmd(1) = +1;
            end
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

                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % Custom commands here
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                obj.hTopoState.hHandState.updateState();
                obj.hTopoState.hHandState.putdata(obj.hTopoState.HandCmd/20);
                obj.hTopoState.hLegend.setHandCmd(obj.hTopoState.HandCmd);
                handAngles = obj.hTopoState.hHandState.graspToJointAngles();
                
                % set wrist angles
                idx = action_bus_enum.Wrist_FE;
                GAIN = 5;
                if abs(obj.hTopoState.WristFECmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristFECmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),70),-70);
                idx = action_bus_enum.Wrist_Rot;
                GAIN = 5;
                if abs(obj.hTopoState.WristRotCmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristRotCmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),90),-90);
                idx = action_bus_enum.Wrist_Dev;
                GAIN = 5;
                if abs(obj.hTopoState.WristDevCmd) > 0
                    obj.hTopoState.JointAnglesDegrees(idx) = obj.hTopoState.JointAnglesDegrees(idx) + GAIN*obj.hTopoState.WristDevCmd;
                end
                obj.hTopoState.JointAnglesDegrees(idx) = max(min(obj.hTopoState.JointAnglesDegrees(idx),30),-10);
                
                obj.hTopoState.hOutput.set_upper_arm_angles_degrees(obj.hTopoState.JointAnglesDegrees);
                obj.hTopoState.hOutput.set_hand_angles_degrees(handAngles);
                obj.hTopoState.hOutput.redraw();

                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                fprintf('\n')
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
    end
    methods (Static = true)
        function obj = Run
            
            p.guiName = 'MiniVIE Grasp Assist';
            p.filePrefix = 'GraspAssist_';

            %p.hSource = Inputs.CpchSerial('COM1');
            p.hSource = Inputs.SignalSimulator;
            
            p.ClassNames = {...
                'Up' 'Down' 'Left' 'Right' ...
                'Wrist Flex In' ...
                'Wrist Extend Out' ...
                'Wrist Rotate In' ...
                'Wrist Rotate Out' ...
                'No Movement'};
            
            p.hPresentation = Scenarios.GraspAssist;
            
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
h.NumSamples = 4000;
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
