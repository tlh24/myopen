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
            
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            
            for i = obj.StartupWaitTimeSeconds:-1:1
                str = sprintf('Get ready to train in %02d seconds',i);
                waitbar(0,h,str);
                pause(1);
            end
            
            if obj.EnablePictures
            %f = figure(99);
            f = UiTools.create_figure('Training...');
            a = axes('Parent',f);
            
            % picture path
            pathImages = 'C:\usr\RP2009\VRE\Common\ACE\Pics';
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
                        
                        switch className
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
                            case 'Hand Up'
                                imgName = 'wrist abduction.jpg';
                            case 'Hand Down'
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
                            otherwise
                                fprintf('Unmatched class: "%s"\n',className);
                                imgName = '';
                        end
                        
                        
                        
                        
                        fileName = fullfile(pathImages,imgName);
                        if exist(fileName,'file') ~= 2
                            set(a,'Visible','off')
                            fprintf('Image failed: "%s\n"',fileName);
                        else
                            img = imread(fileName);
                            set(a,'Visible','on')
                            cla(a);
                            imshow(img,'Parent',a);
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
            hSignalClassifier = SignalAnalysis.Lda;
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
