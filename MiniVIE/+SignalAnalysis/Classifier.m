classdef Classifier < handle
    % Classifier Base class
    % TODO Extract the LDA functionality and make that a seperate file
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        Wg = [];
        Cg = [];
        
        NumSamplesPerWindow = 150;
        NumMajorityVotes = 5;
        
        ActiveChannels = [1 3];
        ClassNames = {'Index' 'Middle' 'Ring' 'No Movement'};
        DefaultClassNames = SignalAnalysis.Classifier.getDefaultNames;
        TrainingFeatures = {'MAV' 'LEN' 'SSC' 'ZC'};
        
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
        function obj = Classifier
            % Constructor
        end
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
        
        function uiEnterClassNames(obj)
            hFigure = UiTools.create_figure('Classifier Channels','ClassifierChannels');
            pos = get(hFigure,'Position');
            pos(3) = 700;
            set(hFigure,'Position',pos);
            
            uicontrol(hFigure,'Style','text','String','Selected Classes:',...
                'Position',[50 300 100 30],'HorizontalAlignment','Left');
            hListboxSelected = uicontrol(hFigure,'Style','listbox','String',obj.ClassNames,...
                'Position',[50 100 200 200],'Max',0);
            
            uicontrol(hFigure,'Style','text','String','All Classes:',...
                'Position',[350 300 100 30],'HorizontalAlignment','Left');
            hListboxAvailable = uicontrol(hFigure,'Style','listbox','String',obj.DefaultClassNames,...
                'Position',[350 100 200 200],'Max',2);

            uicontrol(hFigure,'Style','pushbutton','String','Clear All',...
                'Position',[50 70 90 25],'Callback',@(src,evt)cbClearAll);

            uicontrol(hFigure,'Style','pushbutton','String','<--',...
                'Position',[275 200 50 30],'Callback',@(src,evt)cbAddClasses);
            
            function cbClearAll()
                
                reply = questdlg('Are you sure you want to clear the class list?','Confirm Clear','OK','Cancel','Cancel');
                
                if ~strcmpi(reply,'OK')
                    return
                end
                
                obj.ClassNames = {};
                updateSelected();
                set(hListboxSelected,'Value',1);

            end
            function cbAddClasses()
                cellStrings = get(hListboxAvailable,'String');
                vals = get(hListboxAvailable,'Value');
                currentList = get(hListboxSelected,'String');
                
                newList = cat(1,currentList,cellStrings(vals));
                
                uniqueList = unique(newList);
                if isequal(length(uniqueList),length(newList))
                    obj.ClassNames = newList;
                else
                    obj.ClassNames = uniqueList;
                end
                
                updateSelected();
                
            end
            
            function updateSelected
                set(hListboxSelected,'String',obj.ClassNames);
            end
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
        function train(obj)
            
            if isempty(obj.TrainingData)
                error('No Training Data Exists');
            end
            
            feats = convertfeaturedata(obj);
            fprintf('Training LDA with %d Samples (',size(feats,2));
            for iClass = 1:obj.NumClasses
                fprintf('%d = %d; ',iClass,sum(obj.TrainingDataLabels == iClass))
            end
            fprintf(')\n');
            [obj.Wg,obj.Cg] = obj.lda(feats,obj.TrainingDataLabels);
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
                fprintf('%12s Class accuracy:\t %6.1f %% \n',obj.ClassNames{iClass},(1-PeClass)*100);
            end
        end
        
        function [classOut voteDecision] = classify(obj,featuresColumns)
            assert(size(featuresColumns,1) == obj.NumActiveChannels*obj.NumFeatures);
            if isempty(obj.Wg)
                error('Classifier not trained');
            end
            
            
            % Given lda parameters Wg,Cg, classify the featureData by multiplying and
            % selecting the max output.  Additionally, create a majority vote buffer to
            % filter outputs
            %
            % R. Armiger 30-Nov-2009: Created
            
            % Forward Classify
            classVect = bsxfun(@plus,featuresColumns'*obj.Wg,obj.Cg);
            [~, classOut] = max(classVect,[],2);
            
            numDecisions = length(classOut);
            
            if nargout > 1
                voteDecision = zeros(numDecisions,1);
                if numDecisions > 50, tic,end
                for i = 1:numDecisions
                    voteDecision(i) = obj.majority_vote(classOut(i), obj.NumMajorityVotes, obj.NumClasses, 1, 1);
                end
                if numDecisions > 50, toc,end
            end
        end
        function features2D = extractfeatures(obj,filteredDataWindowAllChannels)
            % features2D = feature_extract(filteredDataWindowAllChannels(:,obj.ActiveChannels)',obj.NumSamplesPerWindow);
            features2D = feature_extract(filteredDataWindowAllChannels',obj.NumSamplesPerWindow);
        end
    end
    methods (Static = true)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % LDA	Perform a linear discriminant analysis
        %
        %	Inputs: featureData,    - Train data arranged in columns
        %			classId,        - vectors of class membership
        %	Outputs: Wg,Cg          - LDA weights
        % (c) Kevin Englehart,1997
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        function [Wg,Cg] = lda(featureData,classId)
            
            N = size(featureData,1);
            
            % Following cannot be done with integer data:
            % sc = std(featureData(:));
            % featureData =  featureData + sc./1000.*randn(size(featureData));
            
            % cast data to double for matlab ops
            featureData = double(featureData);
            
            classList = unique(classId);
            numClasses = length(classList);
            
            %%-- Compute the means and the pooled covariance matrix --%%
            C = zeros(N,N);
            Mi = zeros(N,numClasses);
            for iClass = 1:numClasses
                myFeatures = featureData(:,classId==classList(iClass));
                Mi(:,iClass) = mean(myFeatures,2);
                normalizedFeatures = bsxfun(@minus,myFeatures,Mi(:,iClass));
                C = C + cov(normalizedFeatures');
            end
            
            C = C./numClasses;
            Pphi = 1/numClasses;
            
            %%-- Compute the LDA weights --%%
            Wg = zeros(N,numClasses);
            Cg = zeros(1,numClasses);
            for i = 1:numClasses
                
                CMi = C\Mi(:,i);
                Wg(:,i) = CMi;
                Cg(i) = -1/2*Mi(:,i)'*CMi + log(Pphi)';
            end
        end
        function virtualChannels = virtual_channels(features_3D,classOut)
            % create an analog output, or 'virtual channels' based on the signal
            % amplitude and classifier output
            %
            % R. Armiger 30-Nov-2009: Created
            
            % Create virtual channels
            numClasses = max(classOut);
            
            virtualChannels = zeros(length(classOut),numClasses);
            MAV = mean(squeeze(features_3D(:,1,:)));
            for i = 1:numClasses
                virtualChannels(classOut == i,i) = MAV(classOut == i);
            end
        end
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
        function classNames = getDefaultNames
            classNames{30}  = 'No Movement';
            classNames{01}  = 'Shoulder Flexion';
            classNames{02}  = 'Shoulder Extension';
            classNames{03}  = 'Shoulder Abduction';
            classNames{04}  = 'Shoulder Adduction';
            classNames{05}  = 'Humeral External Rotation';
            classNames{06}  = 'Humeral Internal Rotation';
            classNames{07}  = 'Elbow Flexion';
            classNames{08}  = 'Elbow Extension';
            classNames{09}  = 'Wrist Rotate In';
            classNames{10}  = 'Wrist Rotate Out';
            classNames{11}  = 'Wrist Flex In';
            classNames{12}  = 'Wrist Extend Out';
            classNames{13}  = 'Hand Up';
            classNames{14}  = 'Hand Down';
            classNames{15}  = 'Hand Open';
            classNames{16}  = 'Index';
            classNames{17}  = 'Middle';
            classNames{18}  = 'Ring';
            classNames{19}  = 'Little';
            classNames{20}  = 'Thumb';
            classNames{21}  = 'All Ad/Abs';
            classNames{22}  = 'Spider (Fist of Fury)';
            classNames{23} = 'Lateral Grasp';      %% Grasp #1 per Action ICD RPP-600-ICD_-1401
            classNames{24} = 'Cylindrical Grasp';  %% Grasp #2 per Action ICD RPP-600-ICD_-1401
            classNames{25} = 'Tip Grasp';          %% Grasp #3 per Action ICD RPP-600-ICD_-1401
            classNames{26} = 'Hook Grasp';         %% Grasp #4 per Action ICD RPP-600-ICD_-1401
            classNames{27} = 'Palmar Grasp';       %% Grasp #5 per Action ICD RPP-600-ICD_-1401
            classNames{28} = 'Spherical Grasp';    %% Grasp #6 per Action ICD RPP-600-ICD_-1401
            classNames{29} = 'Pointer Grasp';      %% Grasp #7 per Action ICD RPP-600-ICD_-1401
            
        end
    end
end
