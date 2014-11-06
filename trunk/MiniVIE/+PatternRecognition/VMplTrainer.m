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
            
            % picture path
            pathstr = fileparts(which('MiniVIE'));
            pathImages = fullfile(pathstr,'Utilities','TakeHomeGUI','GUI_Hand_Images');
                        
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
                
                % create a time reference for first time function is executed
                elapsedTime = etime(clock,obj.tRef);
                id = find(elapsedTime < obj.SequenceTime,1,'first');
                if isempty(id)
                    stop(obj.hTimer)
                    fprintf('Done\n')
                    obj.TrainingData.saveTrainingData();
                    obj.IsComplete = true;
                    return
                end
                
                tRed = 1; %Second
                if ~isequal(id,obj.SequenceLast)
                    % Cue Transition
                    [imGray, ~] = getImage(obj.SequenceClass{id},im,imName);
                    set(obj.hImage,'CData',imGray);
                elseif ( (obj.SequenceTime(id) - elapsedTime) < tRed) && (id < length(obj.SequenceTime))
                    % Approaching Transition
                    [~, imRed] = getImage(obj.SequenceClass{id},im,imName);
                    set(obj.hImage,'CData',imRed);
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




function [imGray, imRed] = getImage(className,im,imName)

% Map VIE class name to image description
switch className
    case 'Humeral Internal Rotation'
        imgName = 'Medial_Rot';
    case 'Humeral External Rotation'
        imgName = 'Lateral_Rot';
    case 'Elbow Flexion'
        imgName = 'Elbow_Flex';
    case 'Elbow Extension'
        imgName = 'Elbow_Extend';
    case 'Wrist Rotate In'
        imgName = 'Pronate';
    case 'Wrist Rotate Out'
        imgName = 'Supinate';
    case 'Wrist Flex In'
        imgName = 'Wrist_Flex';
    case 'Wrist Extend Out'
        imgName = 'Wrist_Extend';
    case {'Up','Hand Up', 'Radial Deviation','Wrist Abduction'}
        imgName = 'Radial_Dev';
    case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
        imgName = 'Ulnar_Dev';
    case 'Hand Open'
        imgName = 'Open';
    case 'Hand Close'
        imgName = 'Close';
    case 'Lateral Grasp'
        imgName = 'Key';
    case 'Cylindrical Grasp'
        imgName = 'Cylindrical';
    case 'Tip Grasp'
        imgName = 'Fine_Pinch';
    case 'Hook Grasp'
        imgName = 'Hook';
    case 'Spherical Grasp'
        imgName = 'Spherical';
    case 'Pointer Grasp'
        imgName = 'Index_Point';
    case 'No Movement'
        imgName = 'Rest';
    case {'Index' 'Index Grasp'}
        imgName = 'Index';
    case {'Middle' 'Middle Grasp'}
        imgName = 'Middle';
    case {'Ring' 'Ring Grasp'}
        imgName = 'Ring';
    case {'Little' 'Little Grasp'}
        imgName = 'Little';
    case {'Thumb' 'Thumb Grasp'}
        imgName = 'Thumb';
    otherwise
        fprintf('Unmatched class: "%s"\n',className);
        imgName = '';
end

% List image descriptions 1-31
imageDescription = {'Rest','Open','Close',...                   % 1-3
    'Index_Point','Hook','Fine_Pinch','Jaw_Chuck',...           % 4-7
    'Key','Palmar','Cylindrical','Spherical',...                % 8-11
    'Pronate','Supinate','Wrist_Flex','Wrist_Extend',...        % 12-15
    'Radial_Dev','Ulnar_Dev','Elbow_Flex','Elbow_Extend',...    % 16-19
    'Shoulder_Flex','Shoulder_Extend',...                       % 20-21
    'Medial_Rot','Lateral_Rot','Abduction','Adduction',...      % 22-25
    'Thumb','Index','Middle','Ring','Little','Park'};           % 26-31

% find the class image number
i = find(strcmp(imgName,imageDescription));

% create the target filename
name1 = sprintf('hand_%d.jpg',i);
name2 = sprintf('red_hand_%d.jpg',i);

% find the filename in watever order dir returned
id1 = strcmpi(name1,imName);
id2 = strcmpi(name2,imName);

% return the actual image data
imGray = im{id1};
imRed = im{id2};

end

