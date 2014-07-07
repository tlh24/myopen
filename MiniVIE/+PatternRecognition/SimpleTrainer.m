classdef SimpleTrainer < PatternRecognition.TrainingInterface
    % Simple training user interface that presents a waitbar to the user
    % and prompts for the appropriate class
    %
    % 01-Sept-2010 Armiger: Created
    properties
        NumRepetitions = 1;
        ContractionLengthSeconds = 2;
        DelayLengthSeconds = 2;
        StartupWaitTimeSeconds = 5;
        
        EnablePictures = true;
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
            
            % 07/02/14 These two lines make sure that the units being used to
            % establish position are pixels and requests data about the
            % size of the screen, saving that data as the variable
            % "screensize"
            % A. Strachan
            set(0, 'Units', 'pixels');
            screensize = get(0, 'ScreenSize');
            
            
            
            % Create the waitbar 'gui'
            h = waitbar(0,'','Name',mfilename,...
                'CreateCancelBtn',...
                'setappdata(gcbf,''canceling'',1)');
            set(h,'Position',[ screensize(4)/20 screensize(4)*3/5 270 100]);
            hPatch = findobj(h,'type','patch');
            setappdata(h,'canceling',0);
            
            
            
            % Ensure data is ready
            ok = wait_for_device(h,obj.SignalSource,obj.SignalClassifier.NumSamplesPerWindow);
            if ~ok
                error('Timed Out Waiting for Signal Source');
            end
            
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            
            % 07/01/14 Made changes to order of code to prevent pictures
            % from interuppting training
            % A. Strachan
            
            
            if obj.EnablePictures
                %f = figure(99);
                f = UiTools.create_figure('Training Window');
                a = axes('Parent',f);
                set(f,'Position', [screensize(4)/20 screensize(4)*3/12 600 400]);
                
                % picture path
                pathstr = fileparts(which('PatternRecognition.SimpleTrainer'));
                pathImages = fullfile(pathstr,'Images');
            end
            
            
            
            for i = obj.StartupWaitTimeSeconds:-1:1
                str = sprintf('Get ready to train in %02d seconds',i);
                waitbar(0,h,str);
                pause(1);
            end
            
            
            
            classNames = obj.SignalClassifier.getClassNames;
            
            % Loop through each class, rep
            for iRepetition = 1:obj.NumRepetitions
                for iClass = 1:obj.SignalClassifier.NumClasses
                    % Check for Cancel button press
                    if getappdata(h,'canceling')
                        break
                    end
                    
                    className = classNames{iClass};
                    
                    if obj.EnablePictures
                        
                        % first assume classname equals the filename
                        structDir = dir(fullfile(pathImages,[className '.*']));
                        if length(structDir) == 1
                            fileName = fullfile(pathImages,structDir(1).name);
                        else
                            % check manual mapping to filename
                            % TODO abstract this into an xml or otherwise
                            switch className
                                case 'Humeral Internal Rotation'
                                    imgName = 'shoulder(humeral) rotation in.jpg';
                                case 'Humeral External Rotation'
                                    imgName = 'shoulder(humeral) rotation out.jpg';
                                case 'Elbow Flexion'
                                    imgName = 'elbow flexion.jpg';
                                case 'Elbow Extension'
                                    imgName = 'elbow extension.jpg';
                                case 'Wrist Rotate In'
                                    imgName = 'wrist pronation.jpg';
                                case 'Wrist Rotate Out'
                                    imgName = 'wrist supination.jpg';
                                case 'Wrist Flex In'
                                    imgName = 'wrist flexion.jpg';
                                case 'Wrist Extend Out'
                                    imgName = 'wrist extension.jpg';
                                case {'Up','Hand Up', 'Radial Deviation','Wrist Abduction'}
                                    imgName = 'wrist abduction.jpg';
                                case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
                                    imgName = 'wrist adduction.jpg';
                                case 'Hand Open'
                                    imgName = 'hand open.jpg';
                                case 'Lateral Grasp'
                                    imgName = 'lateral grip.jpg';
                                case 'Cylindrical Grasp'
                                    imgName = 'cylindrical grip.jpg';
                                case 'Tip Grasp'
                                    imgName = 'fine pinch grip.jpg';
                                case 'Hook Grasp'
                                    imgName = 'hook grip.jpg';
                                case 'Spherical Grasp'
                                    imgName = 'power grip mode.jpg';
                                case 'Pointer Grasp'
                                    imgName = 'point grip.jpg';
                                case 'No Movement'
                                    imgName = 'no movement (rest).jpg';
                                case {'Index' 'Index Grasp'}
                                    imgName = 'IndexFinger.png';
                                case {'Middle' 'Middle Grasp'}
                                    imgName = 'MiddleFinger.png';
                                case {'Ring' 'Ring Grasp'}
                                    imgName = 'RingFinger.png';
                                case {'Little' 'Little Grasp'}
                                    imgName = 'LittleFinger.png';
                                case {'Thumb' 'Thumb Grasp'}
                                    imgName = 'ThumbFinger.png';
                                otherwise
                                    fprintf('Unmatched class: "%s"\n',className);
                                    imgName = '';
                            end
                            
                            fileName = fullfile(pathImages,imgName);
                        end
                        
                        if exist(fileName,'file') ~= 2
                            set(a,'Visible','off')
                            set(allchild(a),'Visible','off')
                            fprintf('Image failed: "%s\n"',fileName);
                        else
                            img = imread(fileName);
                            set(a,'Visible','on')
                            cla(a);
                            image(img,'Parent',a);
                            axis(a,'off');
                        end
                    end
                    
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
                        
                        obj.CurrentClass = iClass;
                        obj.addData();
                        
                        % Attempt 50 Hz update rate during training
                        pause(0.01);
                        %drawnow
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
            
            obj.TrainingData.saveTrainingData();
            
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
            hScenario.SignalClassifier.computeError();
            
        end
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize;

            hTrainingData = PatternRecognition.TrainingData;

            hSignalClassifier = SignalAnalysis.Lda;
            hSignalClassifier.initialize(hTrainingData);

            obj = PatternRecognition.SimpleTrainer();
            obj.initialize(hSignalSource,hSignalClassifier,hTrainingData);
            obj.collectdata();
            
        end
        function Test
            % Usage: PatternRecognition.SimpleTrainer.Test()
            % Test script for debugging Simple Trainer function
            % Allyson Strachan 7/1/14
            
            % Retrieve Simple Trainer
            h = PatternRecognition.SimpleTrainer;
            % Set Pictures as true before beginning
            h.EnablePictures = 1;
            
            %Collects three requirements for running Simple Trainer (Signal Source,
            %Signal Classifier, and Training Data)
            SignalSource = Inputs.SignalSimulator();
            SignalSource.addfilter(Inputs.HighPass(20,3,1000));
            %SignalSource.addfilter(Inputs.LowPass());
            %SignalSource.addfilter();
            SignalSource.NumSamples = 2000;
            SignalSource.initialize();
            TrainingData = PatternRecognition.TrainingData;
            TrainingData.setClassNames({'Wrist Extension'  'Wrist Abduction'  'No Movement'});
            % The established class names are random for testing and can be changed
            SignalClassifier = SignalAnalysis.Lda();
            SignalClassifier.initialize(TrainingData);
            
            % Initializes program to test for bugs
            h.initialize(SignalSource, SignalClassifier, TrainingData);
            h.collectdata;
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
