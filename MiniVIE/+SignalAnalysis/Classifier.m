classdef Classifier < Common.MiniVieObj
    % Classifier Base class
    %
    % 01-Sept-2010 Armiger: Created
    properties
        %TODO these are specific to LDA
        Wg = [];
        Cg = [];
        
        NumSamplesPerWindow = 150;
        NumMajorityVotes = 5;
        
        VirtualChannelGain = 1;  % default.  Once initialized this should be [1 NumClasses]
        OutputChannelGain = 1;
        
        TrainingData = [];  % Holds training data regardless of interface or classifier
        ConfusionMatrix = [];
        
        IsTrained = false;
        
    end
    properties (Dependent = true, SetAccess = private)
        NumClasses;
        NumActiveChannels;
        NumFeatures;
    end
    methods (Abstract)
        train(obj);
        [classOut voteDecision] = classify(obj,featureColumns);
    end
    methods
        function numClasses = get.NumClasses(obj)
            % This property moved to TrainingData object
            assertInit(obj);
            numClasses = obj.TrainingData.NumClasses;
        end
        function numChannels = get.NumActiveChannels(obj)
            % This property moved to TrainingData object
            assertInit(obj);
            numChannels = obj.TrainingData.NumActiveChannels;
        end
        function numFeatures = get.NumFeatures(obj)
            % This property moved to TrainingData object
            assertInit(obj);
            numFeatures = obj.TrainingData.NumFeatures;
        end
        function initialize(obj,hTrainingData)
            % Usage: initialize(obj,hTrainingData)
            % Initialize classifier and attach training data object
            % (PatternRecognition.TrainingData)
            
            if nargin < 2
                error('Classifier initialize requires a training data object: PatternRecognition.TrainingData()');
            end
            
            % data init occurs before params, since these depend on
            % TrainingData params
            obj.TrainingData = hTrainingData;
            
        end
        function assertInit(obj)
            % Use to verify any methods that depend on training data
            % (basically everything)
            assert(~isempty(obj.TrainingData),'TrainingData not initialized');
        end
        function reset(obj)
            obj.Wg = [];
            obj.Cg = [];
        end
        
        function classNames = getClassNames(obj)
            assertInit(obj);
            classNames = obj.TrainingData.ClassNames;
        end
        function activeChannels = getActiveChannels(obj)
            assertInit(obj);
            activeChannels = obj.TrainingData.ActiveChannels;
        end
        function setClassNames(obj,classNames)
            % Pass through function to Training Data
            assertInit(obj);
            obj.TrainingData.setClassNames(classNames);
        end
        function setActiveChannels(obj,activeChannels)
            % Pass through function to Training Data
            assertInit(obj);
            obj.TrainingData.setActiveChannels(activeChannels);
        end
        
        function uiEnterClassNames(obj)
            hGui = GUIs.guiClassifierChannels;
            uiwait(hGui.hFigure)
            obj.setClassNames(hGui.ClassNames);
            % Save last selected classes
            GUIs.guiClassifierChannels.setSavedDefaults(obj.getClassNames);
        end
        
        function featureData = convertfeaturedata(obj,featureData3D)
            % expects an array of size [nChannels nFeatures numSamples]
            % creates an array of size [nFeatures*nChannels numSamples]
            
            if nargin < 2
                error('Three dimensional feature vector input required');
            end
            
            numChannels = size(featureData3D,1);
            numFeatures = size(featureData3D,2);
            
            assert(numFeatures == obj.NumFeatures,...
                'Training data set has %d features, expected %d\n',numFeatures,obj.NumFeatures);
            assert(~any(obj.getActiveChannels > numChannels),...
                'Active channels are greater than %d data channels\n',numChannels);
            
            % reference public static function
            featureData = SignalAnalysis.Classifier.reshapeFeatures(featureData3D,obj.getActiveChannels);
        end
        function computeGains(obj)
            if ~obj.IsTrained
                fprintf('[%s] Classifier untrained. Cannot compute gains.\n',mfilename);
                return
            end
            
            % Classify Training data
            featureData3D = obj.TrainingData.getFeatureData();
            
            feats = obj.convertfeaturedata(featureData3D);
            % Forward Classify
            classOut = classify(obj,feats);
            
            % Compute virtual channel output here:
            % Get the MAV Feature
            mavFeatures = featureData3D(obj.getActiveChannels,1,:);
            % Average across all active channels
            MAV = squeeze(mean(mavFeatures,1));
            
            obj.VirtualChannelGain = ones(1,obj.NumClasses);
            for iClass = 1:obj.NumClasses
                % get the magnitude value for each class
                obj.VirtualChannelGain(iClass) = mean(MAV(classOut == iClass));
            end
            obj.VirtualChannelGain = 1./obj.VirtualChannelGain;
            
            obj.VirtualChannelGain = max(obj.VirtualChannelGain,0.1);
            obj.VirtualChannelGain = min(obj.VirtualChannelGain,100);
            obj.VirtualChannelGain(end) = 1;  % No Movement
            fprintf('Virtual Channel Gains:\n [');
            fprintf(' %6.2f',obj.VirtualChannelGain);
            fprintf(']\n');
        end
        function confuseMat = computeConfusion(obj)
            % Compute and return confusion matrix.  Note matrix is row
            % dominant in the sense that each row is the desired decision
            % and each column reports the actual decision.
            
            if ~obj.IsTrained
                fprintf('[%s] Classifier untrained. Cannot compute confusion.\n',mfilename);
                confuseMat = [];
                return
            end
            
            % Classify Training data
            classLabels = obj.TrainingData.getClassLabels();
            featureData3D = obj.TrainingData.getFeatureData();
            feats = obj.convertfeaturedata(featureData3D);
            % Forward Classify
            classOut = classify(obj,feats);
            
            confuseMat = zeros(obj.NumClasses);
            
            for iClass = 1:obj.NumClasses
                
                % Establish ground truth with the desired training labels
                isThisClass =  classLabels == iClass;
                
                % Locate all the actual class decisions for the desired
                % class
                actualClass = classOut(isThisClass);
                
                % Find all the actual class decisions and
                % misclassifications
                accumVal = accumarray(actualClass(:),1);
                confuseMat(iClass,1:length(accumVal)) = accumVal;
            end
            
            obj.ConfusionMatrix = confuseMat;
        end
        function [normalizedError, classAccuracy] = computeError(obj,hData)
            %[normalizedError, classAccuracy] = computeError(obj,hData)
            %
            % Compute error either using internal attached data set, or a
            % data set provided by user
            %
            %
            
            if ~obj.IsTrained
                fprintf('[%s] Classifier untrained. Cannot compute error.\n',mfilename);
                [normalizedError, classAccuracy] = deal([]);
                return
            end
            
            if nargin < 2
                % Classify Training data
                classLabels = obj.TrainingData.getClassLabels();
                features3D = obj.TrainingData.getFeatureData();
                featureColumns = obj.convertfeaturedata(features3D);
                classNames = obj.getClassNames;
                numClasses = obj.NumClasses;
            else
                % classify testing data:
                classLabels = hData.getClassLabels();
                features3D = hData.getFeatureData;
                featureColumns = obj.convertfeaturedata(features3D);
                numClasses = hData.NumClasses;
                classNames = hData.ClassNames;
            end
            
            % Forward Classify
            classOut = classify(obj,featureColumns);
            numSamplesClassified = length(classOut);
            
            accuracyFunc = @(outputClass,desiredClass) ...
                sum(outputClass(:) == desiredClass(:) ) ./ length(desiredClass);
            
            % Calculate Error
            totalAccuracy = accuracyFunc(classOut,classLabels);
            fprintf('Percent correctly classified: %6.1f %%  (%d samples)\n',...
                totalAccuracy*100,numSamplesClassified);
            
            normalizedError = totalAccuracy;
            classAccuracy = zeros(1,obj.NumClasses);
            
            for iClass = 1:numClasses
                trainingLabels = classLabels;
                
                idClass = (trainingLabels == iClass);
                targetClass = reshape(trainingLabels(idClass),1,[]);
                actualClass = reshape(classOut(idClass),1,[]);
                if any(idClass)
                    classAccuracy(iClass) = accuracyFunc(actualClass,targetClass);
                else
                    classAccuracy(iClass) = 0;
                end
                
                
                fprintf('%20s Class accuracy:\t %6.1f %% \t',...
                    classNames{iClass},classAccuracy(iClass)*100);
                
                fprintf('(%4d of %4d)\n',sum(actualClass == targetClass),length(targetClass))
            end
        end
        function virtualChannels = virtual_channels(obj,features_3D,classOut)
            % create an analog output, or 'virtual channels' based on the signal
            % amplitude and classifier output
            %
            % R. Armiger 30-Nov-2009: Created
            
            % Create virtual channels
            virtualChannels = zeros(1,obj.NumClasses);
            MAV = mean(squeeze(features_3D(obj.getActiveChannels,1,:)));
            
            % Use Virtual Channel Gain to normalize the classifier outputs
            virtualChannels(classOut) = MAV;
            if ( length(obj.VirtualChannelGain) == length(virtualChannels) ) || ...
                    (length(obj.VirtualChannelGain) == 1 )
                virtualChannels = virtualChannels .* obj.VirtualChannelGain;
            else
                fprintf('[%s] Bad virtual channel gain\n',mfilename);
            end
            
            % Use Output Channel Gain adjust user preferences:
            if (length(obj.OutputChannelGain) == length(virtualChannels) ) ||...
                    (length(obj.OutputChannelGain) == 1 )
                virtualChannels = virtualChannels .* obj.OutputChannelGain;
            else
                fprintf('[%s] Bad output channel gain\n',mfilename);
            end
            
            
            
        end
        function features2D = extractfeatures(obj,filteredDataWindowAllChannels)
            % features2D = feature_extract(filteredDataWindowAllChannels(:,obj.getActiveChannels)',obj.NumSamplesPerWindow);
            features2D = feature_extract(filteredDataWindowAllChannels',obj.NumSamplesPerWindow);
        end
    end
    methods (Static = true)
        function voteDecision = majority_vote(classDecision, numVotes, ...
                numClasses, numClassifiers, currentClassifier)
            % perform majority voting
            % Inputs:
            %   uint8   classDecision[1];
            %   uint8   numVotes[1];
            %   uint8   numClasses[1];
            % Outputs:
            %   uint8   voteDecision[1];
            %
            % Note Code contains an internal buffer for determining winner.
            % Also there is an assumption about the no movement class being
            % the last class which causes an immediate stop if only two NM
            % classes are detected.
            %
            % R. Armiger: Created
            
            persistent decisionHistory
            
            % Maintain a buffer of the latest decisions
            maxVotes = uint8(255);  % CONST
            voteDecision = uint8(numClasses);  % init to No movement (last class)
            
            %validate classDecision input range
            classDecision = uint8(classDecision);
            classDecision = max(classDecision,1);
            classDecision = min(classDecision,numClasses);
            
            %validate numVotes input range
            numVotes = uint8(numVotes);
            numVotes = max(numVotes,1);
            numVotes = min(numVotes,maxVotes);
            
            numClasses = uint8(numClasses);
            
            % log decisions
            if isempty(decisionHistory)
                % init buffer
                decisionHistory = zeros(maxVotes,numClassifiers,'uint8');
            else
                % shift and put newer samples at position 1
                %     decisionHistory = circshift(decisionHistory,1);
                for iValue = size(decisionHistory,1)-1:-1:1
                    decisionHistory(iValue+1,currentClassifier) = decisionHistory(iValue,currentClassifier);
                end
                decisionHistory(1,currentClassifier) = classDecision;
            end
            
            % tally votes
            tally = zeros(numClasses,1,'uint8');
            for iVote = 1:numVotes
                myVote = decisionHistory(iVote,currentClassifier);
                if myVote > 0
                    tally(myVote) = tally(myVote) + 1;
                end
            end
            
            % find winner
            [maxTally, maxTallyId] = eml_max(tally);
            
            % check for ties
            isTie = sum((tally == maxTally)) > 1;
            
            if ~isTie
                voteDecision = uint8(maxTallyId);
            else
                % if we have a tie, the tied leader that occurred most recently wins
                listOfWinners = ((1:numClasses)' .* uint8(tally == maxTally)); % alternative to find, find is invalid in eml
                for i = 1:numVotes  % order is important here
                    if any(listOfWinners == decisionHistory(i,currentClassifier))
                        voteDecision = decisionHistory(i);
                        break
                    end
                end
            end
            
            % RSA: Add an immediate stop if 2 no movements are detected
            % at the end of the majorty vote buffer
            noMovementClass = numClasses;  % NM must be last class!
            
            if (numVotes > 1) && ...
                    (decisionHistory(1) == noMovementClass) && ...
                    (decisionHistory(1) == noMovementClass)
                voteDecision = noMovementClass;
            end
            
        end
        function featureData2D = reshapeFeatures(featureData3D,activeChannels)
            %featureData2D = SignalAnalysis.Classifier.reshapeFeatures(featureData3D,activeChannels)
            % Reshape data according to how the UNB algorithm wants to see it.  That is
            % [nFeatures*length(activeChannels) numSamples] with all the features_3D for
            % the first channels then all the features_3D for the second channel,...
            % expects an array of size [nChannels nFeatures numSamples]
            % creates an array of size [nFeatures*nChannels numSamples]

            assert(ndims(featureData3D) == 3,'Three dimensional feature vector input required');
            
            [numChannels, numFeatures, numSamples] = size(featureData3D);

            if nargin < 2
                activeChannels = 1:numChannels;
            end
            
            if islogical(activeChannels)
                numActiveChannels = sum(activeChannels);
            else
                numActiveChannels = length(activeChannels);
            end
            
            % initial reshape
            sortedData2 = permute(featureData3D,[2 1 3]);
            
            % select only those channles that are enabled
            activeData = sortedData2(:,activeChannels,:);
            
            % final reshape
            featureData2D = reshape(activeData,numFeatures*numActiveChannels,numSamples);
        end
    end
end
