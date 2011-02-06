classdef MiniGuitarHero < PatternRecognition.AdaptiveTrainingInterface
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
        CurrentDecision = [];
        hg;
    end
    methods
        function obj = MiniGuitarHero(hSignalSource,hSignalClassifier)
            obj.SignalSource = hSignalSource;
            obj.SignalClassifier = hSignalClassifier;
        end
        function initialize(obj)
            setupDisplay(obj);
            
            obj.EmgData = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumSamplesPerWindow obj.MaxSamples]);
            obj.Features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
            obj.ClassLabelId = NaN(1,obj.MaxSamples);
                        
        end
        function setupDisplay(obj)
            numClasses = obj.SignalClassifier.NumClasses;
            
            % excludes no movement since that class won't have a streaming
            % cue
            obj.NumCueLines = numClasses - 1;

            hFig = UiTools.create_figure('Mini Guitar Hero','MiniGuitarHero');
            set(hFig,'CloseRequestFcn',@(src,evnt)closeFig(obj,hFig));
            
            function closeFig(obj,hFig)
                try
                    stop(obj.hTimer);
                end
                try
                    delete(obj.hTimer);
                end
                delete(hFig);
            end
            
            % EMG Preview Plot
            obj.hg.AxesSignals = subplot(3,1,3,'Parent',hFig);
            obj.hg.hPreviewLines = plot(obj.hg.AxesSignals,zeros(2,obj.SignalClassifier.NumActiveChannels));
            ylim(obj.hg.AxesSignals,[-2 2]);
            
            % Streaming Cue Plot
            obj.hg.AxesCues = subplot(3,1,1:2,'Parent',hFig);
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
        function perform_retrain(obj)
            classLabels = obj.ClassLabelId(1:obj.SampleCount);
            
            classesWithData = unique(classLabels);
            if length(classesWithData) < obj.SignalClassifier.NumClasses;
                fprintf('[Classifier] Insufficient data\n');
                return
            end
            
            obj.SignalClassifier.TrainingEmg = obj.EmgData(:,:,1:obj.SampleCount);
            obj.SignalClassifier.TrainingData = obj.Features3D(:,:,1:obj.SampleCount);
            obj.SignalClassifier.TrainingDataLabels = classLabels;
            obj.SignalClassifier.train();
            obj.SignalClassifier.computeerror();
                        
        end
        function classify_signals(obj)
            % get a window of samples and classify them
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            windowData = obj.SignalSource.getFilteredData();
            features2D = obj.SignalClassifier.extractfeatures(windowData);
            activeChannelFeatures = features2D(obj.SignalClassifier.ActiveChannels,:);
            [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
            if obj.SignalClassifier.NumMajorityVotes > 1
                obj.CurrentDecision = voteDecision;
            else
                obj.CurrentDecision = classOut;
            end
            
            obj.EmgData(:,:,obj.SampleCount) = windowData';
            obj.Features3D(:,:,obj.SampleCount) = features2D;
            obj.ClassLabelId(obj.SampleCount) = obj.CurrentCue;
            
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
            
            start(obj.hTimer);
            return
            
            function cb_timer
                try
                    obj.SampleCount = obj.SampleCount +1;
                    
                    update_cueing();
                    obj.classify_signals();
                    update_decision();
                    
                    if obj.SampleCount > 800
                        EnableRandomCueing = 1;
                    end
                    
                    if retrainCounter > 300
                        retrainCounter = 0;
                        obj.perform_retrain();
                    end
                catch ME
                    if strcmpi(obj.hTimer.Running,'on')
                        stop(obj.hTimer);
                    end
                    ME.stack
                    rethrow(ME);
                    
                end
            end
            function update_decision
                set(obj.hg.hClass,'XData',classBufferY,'YData',classBufferX);
                
                classBufferY = circshift(classBufferY,[0 -1]);
                classBufferY(:,end) = obj.CurrentDecision;
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
                    strCue = sprintf('Current Cue: %s\n',obj.SignalClassifier.ClassNames{currentCue});
                    title(obj.hg.AxesSignals,strCue);
                end
            end
        end
    end
    methods (Static = true)
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize;
            hSignalClassifier = SignalAnalysis.Classifier;
            hSignalClassifier.initialize;
            
            obj = PatternRecognition.MiniGuitarHero(hSignalSource,hSignalClassifier);
            obj.initialize();
            obj.collectdata();
            
        end
    end
    
end