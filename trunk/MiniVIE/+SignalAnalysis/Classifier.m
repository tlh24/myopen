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
        
        ActiveChannels = [1 3];
        ClassNames = {'MotionA' 'MotionB' 'No Movement'};
        TrainingFeatures = {'MAV' 'LEN' 'SSC' 'ZC'};
        VirtualChannelGain = 1;  % default.  Once initialized this should be [1 NumClasses]
        
        TrainingEmg = [];
        TrainingData = [];
        TrainingDataLabels = [];
        
    end
    properties (Dependent = true, SetAccess = private)
        NumClasses;
        NumActiveChannels;
        NumFeatures;
    end
    methods
        function numClasses = get.NumClasses(obj)
            numClasses = length(obj.ClassNames);
        end
        function numChannels = get.NumActiveChannels(obj)
            numChannels = length(obj.ActiveChannels);
        end
        function numFeatures = get.NumFeatures(obj)
            numFeatures = length(obj.TrainingFeatures);
        end
        function initialize(obj)
            % initialize with junk
            obj.Wg = rand(obj.NumActiveChannels*obj.NumFeatures,obj.NumClasses);
            obj.Cg = rand(1,obj.NumClasses);
        end
        function reset(obj)
            obj.Wg = [];
            obj.Cg = [];
            
            obj.TrainingEmg = [];
            obj.TrainingData = [];
            obj.TrainingDataLabels = [];

            obj.initialize();
        end
        
        function classNames = getClassNames(obj)
            classNames = obj.ClassNames;
        end
        
        function uiEnterClassNames(obj)
            hGui = SignalAnalysis.ClassifierChannels;
            uiwait(hGui.hFigure)
            obj.ClassNames = hGui.ClassNames;
            % Save last selected classes
            SignalAnalysis.ClassifierChannels.setSavedDefaults(obj.ClassNames);
        end
        
        function featureData = convertfeaturedata(obj)
            % expects an array of size [nChannels nFeatures numSamples]
            % creates an array of size [nFeatures nChannels numSamples]
            sortedData2 = permute(obj.TrainingData,[2 1 3]);
            
            % Reshape data according to how the UNB algorithm wants to see it.  That is
            % [nFeatures*length(activeChannels) numSamples] with all the features_3D for
            % the first channels then all the features_3D for the second channel,...
            activeData = sortedData2(:,obj.ActiveChannels,:);
            featureData = reshape(activeData,obj.NumFeatures*obj.NumActiveChannels,[]);
        end
        function computeGains(obj)
            % Classify Training data
            feats = convertfeaturedata(obj);
            % Forward Classify
            classOut = classify(obj,feats);
            
            % Compute virtual channel output here:
            % Get the MAV Feature
            mavFeatures = obj.TrainingData(obj.ActiveChannels,1,:);
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
        function percentError = computeerror(obj)
            % Classify Training data
            feats = convertfeaturedata(obj);
            % Forward Classify
            classOut = classify(obj,feats);
            
            percent_error = @(outputClass,desiredClass) sum( ((outputClass(:)-desiredClass(:))~=0) /length(desiredClass));
            
            % Calculate Error
            PeTrain1 = percent_error(classOut,obj.TrainingDataLabels);
            fprintf('Percent correctly classified: %6.1f %%\n',(1-PeTrain1)*100);
            %             PeTrain2 = percent_error(voteOut,obj.TrainingDataLabels);
            %             fprintf('Percent correctly classified after majority vote: %6.1f %%\n',(1-PeTrain2)*100);
            %             percentError = [PeTrain1 PeTrain2];
            percentError = PeTrain1;
            
            for iClass = 1:obj.NumClasses
                idClass = (obj.TrainingDataLabels == iClass);
                PeClass = percent_error(classOut(idClass),obj.TrainingDataLabels(idClass));
                fprintf('%20s Class accuracy:\t %6.1f %% \n',obj.ClassNames{iClass},(1-PeClass)*100);
            end
        end
        function virtualChannels = virtual_channels(obj,features_3D,classOut)
            % create an analog output, or 'virtual channels' based on the signal
            % amplitude and classifier output
            %
            % R. Armiger 30-Nov-2009: Created
                        
            % Create virtual channels
            virtualChannels = zeros(1,obj.NumClasses);
            MAV = mean(squeeze(features_3D(obj.ActiveChannels,1,:)));
            
            virtualChannels(classOut) = MAV;
            virtualChannels = virtualChannels .* obj.VirtualChannelGain;
            
        end
        function features2D = extractfeatures(obj,filteredDataWindowAllChannels)
            % features2D = feature_extract(filteredDataWindowAllChannels(:,obj.ActiveChannels)',obj.NumSamplesPerWindow);
            features2D = feature_extract(filteredDataWindowAllChannels',obj.NumSamplesPerWindow);
        end
    end
    methods (Abstract)
        train(obj);
        [classOut voteDecision] = classify(obj,featuresColumns);
        % classify(obj);
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
            [maxTally maxTallyId] = eml_max(tally);
            
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
        end
    end
end
