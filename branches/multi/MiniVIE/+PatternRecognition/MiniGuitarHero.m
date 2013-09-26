classdef MiniGuitarHero < Scenarios.OnlineRetrainer%PatternRecognition.AdaptiveTrainingInterface
    % Scenario that allows EMG control of Wii Guitar Hero (via a custom
    % controller)
    % Example:
    % obj = PatternRecognition.MiniGuitarHero.Default;
    %
    % 01-Sept-2010 Armiger: Created
    properties
        hTimer;
        
        NumCueLines;
    end
    properties (SetAccess = private)
        CurrentCue = [];
        hg;
    end
    methods
        function obj = MiniGuitarHero()
            % Creator
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            % Call superclass initialize method
            %initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            obj.setupDisplay;
            
        end
        %         function initialize(obj,hSignalSource,hSignalClassifier)
        %
        %             % Call superclass method
        %             initialize@PatternRecognition.TrainingInterface(obj,hSignalSource,hSignalClassifier);
        %
        %             % Extend the init method to create figure
        %             setupDisplay(obj);
        %
        %             % Initialize variable to store raw EMG data
        %             %obj.EmgData = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumSamplesPerWindow obj.MaxSamples]);
        %         end
        function close(obj)
            try
                stop(obj.hTimer);
            end
            try
                delete(obj.hTimer);
            end
            delete(obj.hg.hFigure);
        end
        
        function setupDisplay(obj)
            % Overloads base class?
            
            numClasses = obj.SignalClassifier.NumClasses;
            
            % excludes no movement since that class won't have a streaming
            % cue
            obj.NumCueLines = numClasses - 1;
            
            obj.hg.hFigure = UiTools.create_figure('Mini Guitar Hero','MiniGuitarHero');
            set(obj.hg.hFigure,'CloseRequestFcn',@(src,evnt)close(obj));
            
            
            % EMG Preview Plot
            obj.hg.AxesSignals = subplot(3,1,3,'Parent',obj.hg.hFigure);
            obj.hg.hPreviewLines = plot(obj.hg.AxesSignals,zeros(2,obj.SignalClassifier.NumActiveChannels));
            ylim(obj.hg.AxesSignals,[-2 2]);
            
            % Streaming Cue Plot
            obj.hg.AxesCues = subplot(3,1,1:2,'Parent',obj.hg.hFigure);
            hold(obj.hg.AxesCues,'on')
            plot(obj.hg.AxesCues,[0 numClasses],[0 0],'k--');
            
            % Create static class lines
            yRange = [-1 2];
            hStaticLines = plot(obj.hg.AxesCues,repmat(yRange(:),1,obj.NumCueLines));
            
            % Create streaming cue lines
            obj.hg.hCues = plot(obj.hg.AxesCues,zeros(2,obj.NumCueLines),'LineWidth',6);
            
            rgbOrange = [1.0000    0.6941    0.3922];
            aghColors = {'g' 'r' 'y' 'b' rgbOrange};  % Button Colors
            %for i = 1:min(numClasses - 1,length(aghColors))
            %    set([hStaticLines(i+1) obj.hg.hCues(i+1)],'Color',aghColors{i});
            %end
            
            for i = 1:min(obj.NumCueLines,length(aghColors))
                set([hStaticLines(i) obj.hg.hCues(i)],'Color',aghColors{i});
            end
            
            for i = 1:length(hStaticLines)
                set(hStaticLines(i),'XData',[i; i]);
            end
            
            set(obj.hg.AxesCues,'xtick',[],'ytick',[]);
            %axis(obj.hg.AxesCues,'off');
            %set(obj.hg.AxesCues,'Projection','perspective');
            %view(obj.hg.AxesCues,0,60);
            
            obj.hg.hClass = plot(obj.hg.AxesCues,0,0,'k*');
            ylim(obj.hg.AxesCues,yRange);
            
            dx = 0.02;
            xlim(obj.hg.AxesCues,[dx numClasses-dx]);
            
            %             % Hide the no movement cue
            %             set([hStaticLines(1) obj.hg.hCues(1)],'Visible','off');
            
            
        end
        function classify_signals(obj)
            % get a window of samples and classify them
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            windowData = obj.SignalSource.getFilteredData();
            features2D = obj.SignalClassifier.extractfeatures(windowData);
            activeChannelFeatures = features2D(obj.SignalClassifier.getActiveChannels,:);
            [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
            if obj.SignalClassifier.NumMajorityVotes > 1
                obj.CurrentClass = voteDecision;
            else
                obj.CurrentClass = classOut;
            end
            
            %obj.EmgData(:,:,obj.SampleCount) = windowData';
            %obj.Features3D(:,:,obj.SampleCount) = features2D;
            %obj.ClassLabelId(obj.SampleCount) = obj.CurrentCue;
            
        end
        
        function collectdata(obj)
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_timer);
            obj.hTimer.Period = 0.05;
            
            numClasses = obj.SignalClassifier.NumClasses;
            
            cueBufferX = linspace(-1,2,100);
            cueBufferY = nan(obj.NumCueLines,100);
            classBufferX = linspace(-1,0,round(100/3));
            classBufferY = NaN(1,round(100/3));
            
            retrainCounter = 0; % controls retrain frequency
            
            newCue = 1;  % initial cue
            cueCounter = 0;  % controls how often new cues are presented
            newCueCount = 20;
            
            EnableRandomCueing = 0;
            cb_timer;
            start(obj.hTimer);
            return
            
            function cb_timer
                try
                    %obj.SampleCount = obj.SampleCount +1;
                    
                    update_cueing();
                    %obj.classify_signals();
                    
                    % Step 1: Get Intent
                    [decodedClassName,prSpeed,rawEmg,windowData,features,...
                        voteDecision] = getIntentSignals(obj);
                    
                    obj.CurrentClass = voteDecision; % also CurrentClass
                    
                    update_decision();
                    
                    
                    %             % Step 2: Convert Intent to limb commands
                    %             obj.generateUpperArmCommand(decodedClassName,prSpeed);
                    %             obj.generateGraspCommand(decodedClassName,prSpeed);
                    
                    
                    
                    % If button is down, add the current data as training data to
                    % that class
                    doAddData = 1;
                    if doAddData
                        
                        % Add a new sample of data based on the CurrentClass property
                        assert(~isempty(obj.CurrentClass),'No class is selected to tag new data');
                        
                        obj.TrainingData.addTrainingData(obj.CurrentCue, features, ...
                            rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')
                        
                    end
                    
                    
                    if obj.TrainingData.SampleCount > 800
                        EnableRandomCueing = 1;
                    end
                    
                    if retrainCounter > 300
                        retrainCounter = 0;
                        %obj.perform_retrain();
                        % retrain
                        obj.SignalClassifier.train();
                        obj.SignalClassifier.computeError();
                        obj.SignalClassifier.computeGains();
                        obj.SignalClassifier.computeConfusion();
                    end
                    
                    fprintf('\n');
                    
                    update_signal_preview();
                catch ME
                    if strcmpi(obj.hTimer.Running,'on')
                        stop(obj.hTimer);
                    end
                    
                    UiTools.display_error_stack(ME)
                    
                end
            end
            function update_signal_preview()
                %obj.hg.AxesSignals
                activeChannels = obj.SignalClassifier.getActiveChannels;
                n = obj.SignalClassifier.NumSamplesPerWindow;
                windowData = obj.SignalSource.getFilteredData(n);
                for i = 1:obj.SignalClassifier.NumActiveChannels
                    iChannel = activeChannels(i);
                    set(obj.hg.hPreviewLines(i),'YData',windowData(:,iChannel));
                end
                
            end
            function update_decision()
                set(obj.hg.hClass,'XData',classBufferY,'YData',classBufferX);
                
                classBufferY = circshift(classBufferY,[0 -1]);
                classBufferY(:,end) = obj.CurrentClass;
            end
            function update_cueing
                cueCounter = cueCounter + 1;
                retrainCounter = retrainCounter + 1;
                
                drawnow
                if cueCounter > newCueCount
                    cueCounter = 0;  % reset counter
                    % change cues
                    if EnableRandomCueing
                        newCue = ceil((numClasses)*rand);
                    else
                        newCue = mod(newCue,numClasses)+1;
                    end
                end
                
                cueBufferY = circshift(cueBufferY,[0 -1]);
                cueBufferY(:,end) = newCue;
                
                for i = 1:obj.NumCueLines
                    yData = NaN(size(cueBufferY(1,:)));
                    idxTrue = cueBufferY(1,:) == i;
                    yData(idxTrue) = cueBufferY(i,idxTrue);
                    set(obj.hg.hCues(i),'XData',yData,'YData',cueBufferX);
                end
                
                lastCue = cueBufferY(1,round(100/3)-1);
                currentCue = cueBufferY(1,round(100/3));  % the cue at the line
                if isnan(currentCue)
                    currentCue = 1;
                end
                obj.CurrentCue = currentCue;
                
                if lastCue ~= currentCue
                    classNames = obj.SignalClassifier.getClassNames;
                    strCue = sprintf('Current Cue: %s\n',classNames{currentCue});
                    title(obj.hg.AxesSignals,strCue);
                end
            end
        end
    end
    methods (Static = true)
        function obj = Default
            
            SignalSource = Inputs.SignalSimulator;
            SignalSource.initialize;
            SignalSource.addfilter(Inputs.HighPass());
            SignalSource.addfilter(Inputs.LowPass());
            SignalSource.addfilter(Inputs.Notch());

            TrainingData = PatternRecognition.TrainingData();
            
            SignalClassifier = SignalAnalysis.Lda();
            SignalClassifier.setClassNames({'Index', 'Middle', 'Ring', 'Little', 'No Movement'});
            SignalClassifier.setActiveChannels(1:4);
            SignalClassifier.initialize(TrainingData);
            
            
            obj = PatternRecognition.MiniGuitarHero();
            obj.initialize(SignalSource,SignalClassifier,TrainingData);
            obj.collectdata();
            
        end
    end
    
end