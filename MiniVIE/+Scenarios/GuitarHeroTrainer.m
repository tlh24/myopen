classdef GuitarHeroTrainer < handle
    % Scenario that allows EMG control of Wii Guitar Hero (via a custom
    % controller)
    %
    % 01-Sept-2010 Armiger: Created
    properties
        hScenario = [];  % parent should hold source, classifier objects
        
        DigitalOutput = [];
        
        DisplayFilteredEmg = 1;
        
        MaxSamples = 1e4;
        
        TrainOnStartup = 0;
        EnableOnlineRetraining = 1;
        EnableRandomCueing = 0;
        ResetClassifierOnInitialization = 0;
        
        NoMovementClassId = 1;
        
    end
    properties (SetAccess = private)
        hg;
    end
    methods
        function obj = GuitarHeroTrainer(hScenario)
            obj.hScenario = hScenario;
        end
        function initialize(obj)
            
            % TODO abstract this output
            try
                obj.DigitalOutput = digitalio('mcc',0);
                addline(obj.DigitalOutput,1:4,'out');
            catch ME
                fprintf(2,'Failed to create digital output\n');
                fprintf(2,ME.message);
                fprintf('\n');
                obj.DigitalOutput = [];
            end
            
            setupDisplay(obj);
        end
        function setupDisplay(obj)
            hFig = figure(45);
            clf(hFig);
            
            % EMG Preview Plot
            obj.hg.AxesSignals = subplot(3,1,3);
            obj.hg.hPreviewLines = plot(obj.hg.AxesSignals,zeros(2,length(obj.hScenario.SignalClassifier.ActiveChannels)));
            ylim(obj.hg.AxesSignals,[-2 2]);
            
            % Streaming Cue Plot
            obj.hg.AxesCues = subplot(3,1,1:2);
            hold(obj.hg.AxesCues,'on')
            plot(obj.hg.AxesCues,[0 obj.hScenario.SignalClassifier.NumClasses],[0 0],'k--');
            
            % Create static class lines
            yRange = [-1 2];
            hStaticLines = plot(obj.hg.AxesCues,repmat(yRange(:),1,obj.hScenario.SignalClassifier.NumClasses));
            
            % Create streaming cue lines
            obj.hg.hCues = plot(obj.hg.AxesCues,zeros(2,obj.hScenario.SignalClassifier.NumClasses),'LineWidth',6);
            
            rgbOrange = [1.0000    0.6941    0.3922];
            aghColors = {'g' 'r' 'y' 'b' rgbOrange};  % Button Colors
            for i = 1:min(obj.hScenario.SignalClassifier.NumClasses - 1,length(aghColors))
                set([hStaticLines(i+1) obj.hg.hCues(i+1)],'Color',aghColors{i});
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
            
            xlim(obj.hg.AxesCues,[1 obj.hScenario.SignalClassifier.NumClasses + 1]);
            
            % Hide the no movement cue
            set([hStaticLines(1) obj.hg.hCues(1)],'Visible','off');
            
            
        end
        function run(obj,varargin) % temp
            
            obj.NoMovementClassId = find(strcmp('No Movement',obj.hScenario.SignalClassifier.ClassNames));
            
            cueBufferX = linspace(-1,2,100);
            cueBufferY = ones(obj.hScenario.SignalClassifier.NumClasses,100) * obj.NoMovementClassId;
            classBufferX = linspace(-1,0,round(100/3));
            classBufferY = NaN(1,round(100/3));
            
            if obj.ResetClassifierOnInitialization
                obj.hScenario.SignalClassifier.initialize;
            end
            
            emgData = NaN([obj.hScenario.SignalSource.NumChannels obj.hScenario.SignalClassifier.NumSamplesPerWindow obj.MaxSamples]);
            features3D = NaN([obj.hScenario.SignalSource.NumChannels obj.hScenario.SignalClassifier.NumFeatures obj.MaxSamples]);
            classLabelId = NaN(1,obj.MaxSamples);
            
            sampleCounter = 0; % controls index into training data
            retrainCounter = 0; % controls retrain frequency
            
            newCue = 1;  % initial cue
            cueCounter = 0;  % controls how often new cues are presented
            newCueCount = 20;
            
            StartStopForm([]);
            while StartStopForm
                cueCounter = cueCounter + 1;
                retrainCounter = retrainCounter + 1;
                sampleCounter = sampleCounter + 1;
                
                drawnow
                if cueCounter > newCueCount
                    cueCounter = 0;  % reset counter
                    % change cues
                    if obj.EnableRandomCueing
                        newCue = ceil((obj.hScenario.SignalClassifier.NumClasses)*rand);
                    else
                        newCue = mod(newCue,obj.hScenario.SignalClassifier.NumClasses)+1;
                    end
                end
                
                cueBufferY = circshift(cueBufferY,[0 -1]);
                cueBufferY(:,end) = newCue;
                
                obj.hScenario.SignalSource.NumSamples = 1000;
                if obj.DisplayFilteredEmg
                    channelData = obj.hScenario.SignalSource.getFilteredData();
                else
                    channelData = obj.hScenario.SignalSource.getData();
                end
                
                for i = 1:length(obj.hScenario.SignalClassifier.ActiveChannels)
                    iChannel = obj.hScenario.SignalClassifier.ActiveChannels(i);
                    set(obj.hg.hPreviewLines(i),'YData',channelData(:,iChannel),'XData',1:size(channelData,1))
                end
                
                for i = 1:obj.hScenario.SignalClassifier.NumClasses
                    yData = NaN(size(cueBufferY(1,:)));
                    idxTrue = cueBufferY(1,:) == i;
                    yData(idxTrue) = cueBufferY(i,idxTrue);
                    set(obj.hg.hCues(i),'XData',yData,'YData',cueBufferX)
                end
                
                set(obj.hg.hClass,'XData',classBufferY,'YData',classBufferX)
                
                % get a window of samples and classify them
                obj.hScenario.SignalSource.NumSamples = obj.hScenario.SignalClassifier.NumSamplesPerWindow;
                windowData = obj.hScenario.SignalSource.getFilteredData();
                emgData(:,:,sampleCounter) = windowData';
                features2D = obj.hScenario.SignalClassifier.extractfeatures(windowData);
                activeChannelFeatures = features2D(obj.hScenario.SignalClassifier.ActiveChannels,:);
                [classOut voteDecision] = obj.hScenario.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
                
                classBufferY = circshift(classBufferY,[0 -1]);
                if obj.hScenario.SignalClassifier.NumMajorityVotes > 1
                    classBufferY(:,end) = voteDecision;
                else
                    classBufferY(:,end) = classOut;
                end
                
                lastCue = cueBufferY(1,round(100/3)-1);
                currentCue = cueBufferY(1,round(100/3));  % the cue at the line
                if isnan(currentCue)
                    currentCue = 1;
                end
                
                features3D(:,:,sampleCounter) = features2D;
                classLabelId(sampleCounter) = currentCue;
                
                if isempty(obj.DigitalOutput)
                    fprintf('Digital Output disabled.  Output = ');
                    fprintf('%1d ',dec2binvec(classOut,4));
                    fprintf('\n');
                else
                    putvalue(obj.DigitalOutput,dec2binvec(classOut,4))
                end
                if lastCue ~= currentCue
                    strCue = sprintf('Current Cue: %s\n',obj.hScenario.SignalClassifier.ClassNames{currentCue});
                    title(obj.hg.AxesSignals,strCue);
                    %                     KeyReleaseClassId = 1;
                    %classLabelId(sampleCounter-1:-1:sampleCounter-6) = KeyReleaseClassId;
                end
                
                if obj.EnableOnlineRetraining && retrainCounter > 300
                    retrainCounter = 0;
                    classesWithData = unique(classLabelId(1:sampleCounter));
                    if length(classesWithData) < obj.hScenario.SignalClassifier.NumClasses;
                        fprintf('[Classifier] Insufficient data\n');
                        continue
                    end
                    
                    obj.hScenario.SignalClassifier.TrainingEmg = emgData(:,:,1:sampleCounter);
                    obj.hScenario.SignalClassifier.TrainingData = features3D(:,:,1:sampleCounter);
                    obj.hScenario.SignalClassifier.TrainingDataLabels = classLabelId(1:sampleCounter);
                    obj.hScenario.SignalClassifier.train();
                    obj.hScenario.SignalClassifier.computeerror();
                end
                
                if sampleCounter > 800
                    obj.EnableRandomCueing = 1;
                end
            end
        end
    end
    methods (Static = true)
        function obj = Default
            
            obj = Scenarios.GuitarHeroTrainer();
            
            obj.hScenario.SignalSource = Inputs.SignalSimulator;
            obj.hScenario.SignalSource.initialize();
            obj.hScenario.SignalSource.addfilter(Inputs.HighPass());
            obj.hScenario.SignalSource.addfilter(Inputs.LowPass());
            obj.hScenario.SignalSource.addfilter(Inputs.Notch());
            
            obj.hScenario.SignalClassifier = SignalAnalysis.Classifier();
            obj.hScenario.SignalClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring','Little'};
            obj.hScenario.SignalClassifier.ActiveChannels = 1:4;
            obj.hScenario.SignalClassifier.initialize();

            obj.initialize();
            
        end
    end
end