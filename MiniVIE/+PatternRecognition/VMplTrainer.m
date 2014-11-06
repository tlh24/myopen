classdef VMplTrainer < PatternRecognition.TrainingInterface
    % Simple training user interface that presents images of the vMPL to
    % the user
    %
    % 01-Nov-2014 Armiger: Created
    properties
        NumRepetitions = 2;
        ContractionLengthSeconds = 5;
        DelayLengthSeconds = 3;
        
        IsComplete = false;
    end
    properties (Access = 'private')
        tRef;
        hTimer;
        hFig;
        hAxes;
        hText;
        hImage;
        hLabel;
        
        SequenceLast;
        SequenceTime;
        SequenceClass;
    end
    
    methods
        function obj = VMplTrainer()
            % Constructor
        end
        function collectdata(obj)
            % Collect some initial training data from a signal source
            % device
            if ~isInitialized(obj)
                error('%s not initialized',mfilename);
            end
            
            %%
            % 07/02/14 These two lines make sure that the units being used to
            % establish position are pixels and requests data about the
            % size of the screen, saving that data as the variable
            % "screensize"
            % A. Strachan
            set(0, 'Units', 'pixels');
            screensize = get(0, 'ScreenSize');
            
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            
            obj.hFig = UiTools.create_figure('Cue Presentation');
            set(obj.hFig,...
                'Position', [screensize(4)/20 screensize(4)*3/12 500 400],...
                'Color','k');
            obj.hAxes = axes(...
                'Parent',obj.hFig,...
                'Color','k',...
                'Position',[0.1300 0.0100 0.7750 0.8150]);
            
            obj.hText = uicontrol(obj.hFig,...
                'Style','Text',...
                'Units','Normalized',...
                'Position',[0.13 0.88 0.7750 0.12],...
                'ForegroundColor',[0.8 0.8 0.8],...
                'BackgroundColor','k',...
                'String','00:00',...
                'FontSize',32);

            obj.hLabel = uicontrol(obj.hFig,...
                'Style','Text',...
                'Units','Normalized',...
                'Position',[0.13 0.18 0.7750 0.42],...
                'ForegroundColor',[0.8 0.8 0.8],...
                'BackgroundColor','k',...
                'String','Class Name',...
                'FontSize',32);
            
            % picture path
            pathstr = fileparts(which('MiniVIE'));
            pathImages = fullfile(pathstr,'Utilities','TakeHomeGUI','GUI_Hand_Images_Named');
                        
            classNames = obj.SignalClassifier.getClassNames;
            
            motionClasses = classNames(~strcmpi(classNames,'No Movement'));

            motionDuration = obj.ContractionLengthSeconds;
            restDuration = obj.DelayLengthSeconds;

            % interleave a rest class:
            allClasses = cat(1,repmat({'No Movement'},1,length(motionClasses)),motionClasses');
            %allClasses = repmat(allClasses(:),obj.NumRepetitions,1);  % repeat entire set
            allClasses = repmat(allClasses,obj.NumRepetitions,1);      % group all motions
            obj.SequenceClass = allClasses(:);
            
            timeLine = cat(1,repmat(restDuration,1,length(motionClasses)), repmat(motionDuration,1,length(motionClasses)));
            %timeLine = repmat(timeLine(:),obj.NumRepetitions,1);   % repeat entire set
            timeLine = repmat(timeLine,obj.NumRepetitions,1);       % group all motions
            obj.SequenceTime = cumsum(timeLine(:));
            
            % load all images
            s = dir(fullfile(pathImages,'*.jpg'));
            for i = 1:length(s)
                f = fullfile(pathImages,s(i).name);
                fprintf('Loading image: "%s"\n',f);
                im{i} = imread(f);
                imName{i} = s(i).name;
            end
            
            obj.hImage = imshow(im{1},'Parent',obj.hAxes);

            obj.hTimer = UiTools.create_timer('Cue Timer',@(src,evt)update(obj));
            
            obj.hTimer.Period = 0.02;
            
            obj.tRef = clock;
            start(obj.hTimer)
            
            function update(obj)
                
                % User Closed Figure
                if ~ishandle(obj.hFig)
                    stop(obj.hTimer)
                    fprintf('Done\n')
                    obj.TrainingData.saveTrainingData();
                    obj.IsComplete = true;
                    return
                end                    
                
                % create a time reference for first time function is executed
                elapsedTime = etime(clock,obj.tRef);
                id = find(elapsedTime < obj.SequenceTime,1,'first');
                if isempty(id)
                    stop(obj.hTimer)
                    fprintf('Done\n')
                    obj.TrainingData.saveTrainingData();
                    obj.IsComplete = true;
                    
                    if ishandle(obj.hFig)
                        close(obj.hFig);
                    end
                    
                    return
                end
                
                tRed = 1; %Second
                if ~isequal(id,obj.SequenceLast)
                    % Cue Transition
                    [imGray, ~] = getImageByName(obj.SequenceClass{id},im,imName,0);
                    set(obj.hImage,'CData',imGray);
                    if isempty(imGray)
                        set(obj.hLabel,'Visible','on','String',obj.SequenceClass{id});
                    else
                        set(obj.hLabel,'Visible','off');
                    end
                elseif ( (obj.SequenceTime(id) - elapsedTime) < tRed) && (id < length(obj.SequenceTime))
                    % Approaching Transition
                    v = obj.SequenceTime(id) - elapsedTime;
                    [~, imRed] = getImageByName(obj.SequenceClass{id},im,imName,v);
                    set(obj.hImage,'CData',imRed);
                    if isempty(imRed)
                        set(obj.hLabel,'Visible','on','String',obj.SequenceClass{id});
                    else
                        set(obj.hLabel,'Visible','off');
                    end
                end
                
                obj.SequenceLast = id;
                    
                %fprintf('Current Time:   %6f;  Current Cue = %s\n',elapsedTime,obj.SequenceClass{id})
                
                tRemaining = max(obj.SequenceTime) - elapsedTime;
                strTime = sprintf('%02d:%02d',floor(tRemaining/60),floor(rem(tRemaining,60)));
                set(obj.hText,'String',strTime)
                
                drawnow
                
                iClass = find(strcmpi(obj.SequenceClass{id},classNames));
                obj.CurrentClass = iClass;
                obj.addData();
            end
            
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
            % Usage: PatternRecognition.VMplTrainer.Test()
            % Test script for debugging VMPL Trainer function
            
            h = PatternRecognition.VMplTrainer;
            
            % Step 1: Setup signal source
            % SignalSource = Inputs.DaqHwDevice('nidaq','Dev1');
            % SignalSource = Inputs.DaqHwDevice('mcc','0');
            SignalSource = Inputs.SignalSimulator();
            
            % The device must be initialized prior to use
            SignalSource.initialize();
            
            % Step 2: Add input filters
            Fs = SignalSource.SampleFrequency;                     % 1000 Hz
            % h.addfilter(Inputs.RemoveOffset(10));
            % h.addfilter(Inputs.Notch([120 240 360],5,1,Fs));
            % h.addfilter(Inputs.Notch([120 240 360],64,1,1000));
            SignalSource.addfilter(Inputs.HighPass(20,3,Fs));      % 20Hz 3rd order butter
            SignalSource.addfilter(Inputs.MinLimitFilter(0.2));    % min limit
            SignalSource.addfilter(Inputs.ConstraintFilter(-5,5)); % range limit
            
            % Step 3: Setup Classifier, Select Channels in use
            SignalClassifier = SignalAnalysis.Lda();
            TrainingData = PatternRecognition.TrainingData();
            SignalClassifier.initialize(TrainingData);
            
            SignalClassifier.setActiveChannels(1:8);  % <-- Update active channels
            
            c = {
                'Shoulder Flexion'
                'Shoulder Extension'
                'Shoulder Abduction'
                'Shoulder Adduction'
                'Humeral External Rotation'
                'Humeral Internal Rotation'
                'Elbow Flexion'
                'Elbow Extension'
                'Wrist Rotate In'
                'Wrist Rotate Out'
                'Wrist Flex In'
                'Wrist Extend Out'
                'Wrist Abduction'
                'Wrist Adduction'
                'Hand Open'
                'Spherical Grasp'
                'Hook Grasp'
                'Cylindrical Grasp'
                'Point Grasp'
                'No Movement'
                };

            c = {
                'Wrist Rotate In'
                'Wrist Rotate Out'
                'Wrist Flex In'
                'Wrist Extend Out'
                'No Movement'
                };
            
            SignalClassifier.setClassNames(c);
            
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

function [imGray, imRed] = getImageByName(className,im,imName,x)
% get hand image based on matching name
[imGray, imRed] = deal([]);

isMatched = strncmpi(className,imName,length(className));

if sum(isMatched) == 0
    % Unmatched
    warning('No image file match name: %s\n',className);
    return
elseif sum(isMatched) == 1
    % Expected 1 match
else
    warning('Multiple image files match name: %s\n',className);
    isMatched = find(isMatched,1,'first');
end

imGray = im{isMatched};

% imRed(:,:,1) = imGray(:,:,1) .* 1.5;
% imRed(:,:,2) = imGray(:,:,2) .* 0.5;
% imRed(:,:,3) = imGray(:,:,3) .* 0.5;

imRed(:,:,1) = imGray(:,:,1) .* (1.5 - (x*0.5));
imRed(:,:,2) = imGray(:,:,2) .* (0.5 + (x*0.5));
imRed(:,:,3) = imGray(:,:,3) .* (0.5 + (x*0.5));

imRed = uint8(imRed);

end

