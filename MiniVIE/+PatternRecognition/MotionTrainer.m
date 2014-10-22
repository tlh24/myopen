classdef MotionTrainer < PatternRecognition.TrainingInterface
    % Provide cues for prosthetic training via motion of the real or
    % virtual limb system
    %
    % 22-Mar-2012 Armiger: Created
    properties
        DelayLengthSeconds = 2.5;
    end
    properties (Access = private)
        hText
        hPlant
        RestClass
    end
    methods
        function obj = MotionTrainer()
            % Constructor
        end
        function collectdata(obj)
            % Collect some initial training data from a signal source
            % device
            
            assert(isInitialized(obj),'%s not initialized',mfilename);
            
            % Ensure data is ready
            ok = wait_for_device(obj.SignalSource,obj.SignalClassifier.NumSamplesPerWindow);
            assert(ok,'Timed Out Waiting for Signal Source');
            
            % Ensure proper number of samples is set for each getData call
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            
            obj.hPlant = ViePlant();
            obj.hPlant.connectToHardware('127.0.0.1',9035);
            obj.hPlant.start();
            obj.hPlant.Verbose = 0;
            
            c = onCleanup(@()obj.cleanup);

            p = obj.hPlant.CurrentPosition;
            s = obj.hPlant.DesiredSpeed;
            s(1:7) = 0.8;
            s(8) = 0.4;
            obj.hPlant.setDesiredSpeed(s);
            
            % home hand/wrist.  may not be needed
            
            % Get the motions used during the training
            motionScript = obj.getMotionScript();
            validateMotionScript(obj,motionScript);
            
            numMovements = size(motionScript,1);
            
            % Create figure for displaying class
            hFigure = UiTools.create_figure('MotionTrainer');
            set(hFigure,'Position',[320 580 760 200]);
            obj.hText = uicontrol('Style','text','Parent',hFigure);
            set(obj.hText,'Units','Normalized');
            set(obj.hText,'Position',[0.1 0.1 0.8 0.6]);
            set(obj.hText,'FontSize',50)
            set(obj.hText,'String','Get Ready...');

            % Loop through each movement and drive system through the range
            % of motion
            classNames = obj.SignalClassifier.getClassNames;
            for i = 1:numMovements
                className = motionScript{i,1};
                jointId = motionScript{i,2};
                jointAngle = motionScript{i,3};
                
                iClass = find(strcmpi(className,classNames),1);
                
                collectRestData(obj);
                
                p(jointId) = jointAngle;
                obj.hPlant.setDesiredPosition(p);
                
                if strfind(className,'Grasp')
                    graspName = strtrim(className(1:end-5));
                    graspId = MPL.GraspConverter.graspLookup(graspName);
                    obj.hPlant.setGraspId(graspId);
                end
                
                while ~obj.hPlant.allMovesComplete
                    % Collect Training data for the given class
                    %obj.ContractionLengthSeconds
                    obj.CurrentClass = iClass;
                    obj.addData();
                    if ishandle(obj.hText),set(obj.hText,'String',className);end
                    pause(0.05);
                end
            end

            collectRestData(obj);
            
            obj.Features3D(:,:,obj.SampleCount+1:end) = [];
            obj.ClassLabelId(obj.SampleCount+1:end) = [];
            
        end
        function cleanup(obj)
            obj.TrainingData.saveTrainingData();

            obj.hPlant.stop();
        end
        function collectRestData(obj)
            tic
            classNames = obj.SignalClassifier.getClassNames;
            while toc < obj.DelayLengthSeconds
                % No movement, rest
                obj.CurrentClass = obj.RestClass;
                obj.addData();
                if ishandle(obj.hText)
                    set(obj.hText,'String',classNames{obj.RestClass});
                end
                pause(0.05);
            end
        end
        function validateMotionScript(obj,motionScript)
            % Verify all required classes are present
            classNames = obj.SignalClassifier.getClassNames;
            
            % Check No Movement
            restClassName = 'No Movement';
            obj.RestClass = find(strcmpi(restClassName,classNames),1);
            assert(~isempty(obj.RestClass),'Class "No Movement" class not found');
            % Check Prescribed Motions
            for className = motionScript(:,1)
                iClass = find(strcmpi(className{1},classNames),1);
                assert(~isempty(iClass),'Class "%s" not found',className{1});
            end

        end
    end
    methods (Static = true)
        function motionScript = getMotionScript()
            
            wristFE = action_bus_enum.Wrist_FE+1; %mpl wrist dev and fe switched
            WristFlexFull = {'Wrist Flex In',wristFE,pi/2};
            WristExtendFull = {'Wrist Extend Out',wristFE,-pi/2};
            WristFlexHalf = {'Wrist Flex In',wristFE,0};
            
            HandOpen = {'Hand Open',8,0};
            SphericalGrasp = {'Spherical Grasp',8,1};
            TipGrasp = {'Tip Grasp',8,1};
            
            motionScript = [
                WristFlexFull
                WristExtendFull
                WristFlexFull
                WristExtendFull
                WristFlexFull
                WristExtendFull
                WristFlexHalf
                HandOpen
                SphericalGrasp
                HandOpen
                SphericalGrasp
                HandOpen
                SphericalGrasp
                HandOpen
                TipGrasp
                HandOpen
                TipGrasp
                HandOpen
                TipGrasp
                HandOpen
                ];
            
%             motionScript = [
%                 WristFlexFull
%                 WristExtendFull
%                 WristFlexHalf
%                 HandOpen
%                 SphericalGrasp
%                 HandOpen
%                 TipGrasp
%                 HandOpen
%                 ];
            
        end
        
        function run(hScenario)
            % Temp -- this allows the VIE GUI to call the train routine
            hScenario.TrainingInterface.NumRepetitions = 3;
            hScenario.TrainingInterface.ContractionLengthSeconds = 2;
            hScenario.TrainingInterface.DelayLengthSeconds = 1;
            
            hScenario.TrainingInterface.collectdata();
            
            hScenario.SignalClassifier.TrainingData = features3D;
            hScenario.SignalClassifier.TrainingDataLabels = classLabelId;
            hScenario.SignalClassifier.train();
            hScenario.SignalClassifier.computeError();
            
        end
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator();
            hSignalSource.initialize();
            
            hSignalClassifier = SignalAnalysis.Lda();
            hSignalClassifier.initialize();
            hSignalClassifier.uiEnterClassNames();
            
            obj = PatternRecognition.MotionTrainer();
            obj.initialize(hSignalSource,hSignalClassifier);
            obj.collectdata();
            
        end
    end
end

function ok = wait_for_device(hSignalSource,numSamples)

% ensure input device is ready with real data
timeOut = 5;
tic;
while toc < timeOut && ~isReady(hSignalSource,numSamples)
    disp('Waiting for Signal Source');
    pause(0.1)
end

ok = isReady(hSignalSource,numSamples);

end