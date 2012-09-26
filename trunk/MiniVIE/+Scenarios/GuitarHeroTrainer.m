% classdef GuitarHeroTrainer < Scenarios.OnlineRetrainer
%     
%     
%     
%     
%     % Guitar Hero-like training interface
%     %
%     % 01-Sept-2010 Armiger: Created
%     properties
%         DigitalOutput = [];
%         DisplayFilteredEmg = 1;
%         
%         MaxSamples = 1e4;
%         
%         TrainOnStartup = 0;
%         EnableOnlineRetraining = 1;
%         EnableRandomCueing = 0;
%         ResetClassifierOnInitialization = 0;
%         
%         NoMovementClassId = 1;
%         
%     end
%     properties (SetAccess = private)
%         hg;
%     end
%     methods
%         function obj = GuitarHeroTrainer()
%         end
%         function initialize(obj,SignalSource,SignalClassifier,TrainingData)
%             % Call superclass initialize method
%             %initialize@Scenarios.ScenarioBase(obj,SignalSource,SignalClassifier);
%             initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
%             obj.setupDisplay;
%             
%             % TODO abstract this output
%             try
%                 obj.DigitalOutput = digitalio('mcc',0);
%                 addline(obj.DigitalOutput,1:4,'out');
%             catch ME
%                 fprintf(2,'Failed to create digital output\n');
%                 fprintf(2,ME.message);
%                 fprintf('\n');
%                 obj.DigitalOutput = [];
%             end
%             
%         end
%         
%         function setupDisplay(obj)
%             hFig = figure(45);
%             clf(hFig);
%             
%             % EMG Preview Plot
%             obj.hg.AxesSignals = subplot(3,1,3);
%             obj.hg.hPreviewLines = plot(obj.hg.AxesSignals,zeros(2,length(obj.SignalClassifier.ActiveChannels)));
%             ylim(obj.hg.AxesSignals,[-2 2]);
%             
%             % Streaming Cue Plot
%             obj.hg.AxesCues = subplot(3,1,1:2);
%             hold(obj.hg.AxesCues,'on')
%             plot(obj.hg.AxesCues,[0 obj.SignalClassifier.NumClasses],[0 0],'k--');
%             
%             % Create static class lines
%             yRange = [-1 2];
%             hStaticLines = plot(obj.hg.AxesCues,repmat(yRange(:),1,obj.SignalClassifier.NumClasses));
%             
%             % Create streaming cue lines
%             obj.hg.hCues = plot(obj.hg.AxesCues,zeros(2,obj.SignalClassifier.NumClasses),'LineWidth',6);
%             
%             rgbOrange = [1.0000    0.6941    0.3922];
%             aghColors = {'g' 'r' 'y' 'b' rgbOrange};  % Button Colors
%             for i = 1:min(obj.SignalClassifier.NumClasses - 1,length(aghColors))
%                 set([hStaticLines(i+1) obj.hg.hCues(i+1)],'Color',aghColors{i});
%             end
%             
%             for i = 1:length(hStaticLines)
%                 set(hStaticLines(i),'XData',[i; i]);
%             end
%             
%             set(obj.hg.AxesCues,'xtick',[],'ytick',[]);
%             %axis(obj.hg.AxesCues,'off');
%             %set(obj.hg.AxesCues,'Projection','perspective');
%             %view(obj.hg.AxesCues,0,60);
%             
%             obj.hg.hClass = plot(obj.hg.AxesCues,0,0,'k*');
%             ylim(obj.hg.AxesCues,yRange);
%             
%             xlim(obj.hg.AxesCues,[1 obj.SignalClassifier.NumClasses + 1]);
%             
%             % Hide the no movement cue
%             set([hStaticLines(1) obj.hg.hCues(1)],'Visible','off');
%             
%             
%         end
%         function run(obj,varargin) % temp
%             
%             obj.NoMovementClassId = find(strcmp('No Movement',obj.SignalClassifier.ClassNames));
%             
%             cueBufferX = linspace(-1,2,100);
%             cueBufferY = ones(obj.SignalClassifier.NumClasses,100) * obj.NoMovementClassId;
%             classBufferX = linspace(-1,0,round(100/3));
%             classBufferY = NaN(1,round(100/3));
%             
%             if obj.ResetClassifierOnInitialization
%                 obj.SignalClassifier.initialize;
%             end
%             
%             emgData = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumSamplesPerWindow obj.MaxSamples]);
%             features3D = NaN([obj.SignalSource.NumChannels obj.SignalClassifier.NumFeatures obj.MaxSamples]);
%             classLabelId = NaN(1,obj.MaxSamples);
%             
%             sampleCounter = 0; % controls index into training data
%             retrainCounter = 0; % controls retrain frequency
%             
%             newCue = 1;  % initial cue
%             cueCounter = 0;  % controls how often new cues are presented
%             newCueCount = 20;
%             
%             StartStopForm([]);
%             while StartStopForm
%                 cueCounter = cueCounter + 1;
%                 retrainCounter = retrainCounter + 1;
%                 sampleCounter = sampleCounter + 1;
%                 
%                 drawnow
%                 if cueCounter > newCueCount
%                     cueCounter = 0;  % reset counter
%                     % change cues
%                     if obj.EnableRandomCueing
%                         newCue = ceil((obj.SignalClassifier.NumClasses)*rand);
%                     else
%                         newCue = mod(newCue,obj.SignalClassifier.NumClasses)+1;
%                     end
%                 end
%                 
%                 cueBufferY = circshift(cueBufferY,[0 -1]);
%                 cueBufferY(:,end) = newCue;
%                 
%                 obj.SignalSource.NumSamples = 1000;
%                 if obj.DisplayFilteredEmg
%                     channelData = obj.SignalSource.getFilteredData();
%                 else
%                     channelData = obj.SignalSource.getData();
%                 end
%                 
%                 for i = 1:length(obj.SignalClassifier.ActiveChannels)
%                     iChannel = obj.SignalClassifier.ActiveChannels(i);
%                     set(obj.hg.hPreviewLines(i),'YData',channelData(:,iChannel),'XData',1:size(channelData,1))
%                 end
%                 
%                 for i = 1:obj.SignalClassifier.NumClasses
%                     yData = NaN(size(cueBufferY(1,:)));
%                     idxTrue = cueBufferY(1,:) == i;
%                     yData(idxTrue) = cueBufferY(i,idxTrue);
%                     set(obj.hg.hCues(i),'XData',yData,'YData',cueBufferX)
%                 end
%                 
%                 set(obj.hg.hClass,'XData',classBufferY,'YData',classBufferX)
%                 
%                 % get a window of samples and classify them
%                 obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
%                 windowData = obj.SignalSource.getFilteredData();
%                 emgData(:,:,sampleCounter) = windowData';
%                 features2D = obj.SignalClassifier.extractfeatures(windowData);
%                 activeChannelFeatures = features2D(obj.SignalClassifier.ActiveChannels,:);
%                 [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
%                 
%                 classBufferY = circshift(classBufferY,[0 -1]);
%                 if obj.SignalClassifier.NumMajorityVotes > 1
%                     classBufferY(:,end) = voteDecision;
%                 else
%                     classBufferY(:,end) = classOut;
%                 end
%                 
%                 lastCue = cueBufferY(1,round(100/3)-1);
%                 currentCue = cueBufferY(1,round(100/3));  % the cue at the line
%                 if isnan(currentCue)
%                     currentCue = 1;
%                 end
%                 
%                 features3D(:,:,sampleCounter) = features2D;
%                 classLabelId(sampleCounter) = currentCue;
%                 
%                 if isempty(obj.DigitalOutput)
%                     fprintf('Digital Output disabled.  Output = ');
%                     fprintf('%1d ',dec2binvec(classOut,4));
%                     fprintf('\n');
%                 else
%                     putvalue(obj.DigitalOutput,dec2binvec(classOut,4))
%                 end
%                 if lastCue ~= currentCue
%                     strCue = sprintf('Current Cue: %s\n',obj.SignalClassifier.ClassNames{currentCue});
%                     title(obj.hg.AxesSignals,strCue);
%                     %                     KeyReleaseClassId = 1;
%                     %classLabelId(sampleCounter-1:-1:sampleCounter-6) = KeyReleaseClassId;
%                 end
%                 
%                 if obj.EnableOnlineRetraining && retrainCounter > 300
%                     retrainCounter = 0;
%                     classesWithData = unique(classLabelId(1:sampleCounter));
%                     if length(classesWithData) < obj.SignalClassifier.NumClasses;
%                         fprintf('[Classifier] Insufficient data\n');
%                         continue
%                     end
%                     
%                     obj.SignalClassifier.TrainingEmg = emgData(:,:,1:sampleCounter);
%                     obj.SignalClassifier.TrainingData = features3D(:,:,1:sampleCounter);
%                     obj.SignalClassifier.TrainingDataLabels = classLabelId(1:sampleCounter);
%                     obj.SignalClassifier.train();
%                     obj.SignalClassifier.computeerror();
%                 end
%                 
%                 if sampleCounter > 800
%                     obj.EnableRandomCueing = 1;
%                 end
%             end
%         end
%     end
%     methods (Static = true)
%         function obj = Default
%             
%             obj = Scenarios.GuitarHeroTrainer();
%             
%             SignalSource = Inputs.SignalSimulator;
%             SignalSource.initialize();
%             SignalSource.addfilter(Inputs.HighPass());
%             SignalSource.addfilter(Inputs.LowPass());
%             SignalSource.addfilter(Inputs.Notch());
%             
%             SignalClassifier = SignalAnalysis.Lda();
%             SignalClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring','Little'};
%             SignalClassifier.ActiveChannels = 1:4;
%             SignalClassifier.initialize();
% 
%             TrainingData = PatternRecognition.TrainingData();
%             obj.initialize(SignalSource,SignalClassifier,TrainingData);
%             
%         end
%     end
% end