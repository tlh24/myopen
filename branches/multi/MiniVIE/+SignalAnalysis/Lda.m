classdef Lda < SignalAnalysis.Classifier
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % LDA	Perform a linear discriminant analysis
    %
    % Based on: Kevin Englehart,1997
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = Lda
            % Constructor
        end
        function confuseMat = train(obj)
            
            if isempty(obj.TrainingData) || ~obj.TrainingData.hasData()
                disp('No Training Data Exists');
                return
            elseif isempty(obj.getActiveChannels)
                error('No channels selected for training');
            end
            
            dataLabels = obj.TrainingData.getClassLabels();
            features3D = obj.TrainingData.getFeatureData();
            featureColumns = obj.convertfeaturedata(features3D);

            fprintf('Training LDA with %d Samples (',size(featureColumns,2));
            for iClass = 1:obj.NumClasses
                fprintf('%d = %d; ',iClass,sum(dataLabels == iClass));
            end
            fprintf(')\n');

            fprintf('Active Channels are: [ ');
            fprintf('%d ',obj.getActiveChannels);
            fprintf(']\n');
            
            [w,c] = obj.lda(featureColumns,dataLabels,obj.NumClasses);
            
            % If classes have no data we can leave these as NaN.  When classifying
            % max( feats * w + c , [], 2) will return the max real number
            hasNoData = ~sum(abs(w));
            if any(hasNoData)
                fprintf(['[%s] Classes with no data [ ' repmat('%d ',1,sum(hasNoData)) '] \n'],mfilename,find(hasNoData));
            end
            
            w(:,hasNoData) = NaN;
            
            obj.Wg = w;
            obj.Cg = c;
            
            obj.IsTrained = true;
            
            if nargout > 0
                % Compute confusion
                
                classVect = bsxfun(@plus,featureColumns'*obj.Wg,obj.Cg);
                [~, classOut] = max(classVect,[],2);
                
                confuseMat = zeros(obj.NumClasses);
                for i = 1:obj.NumClasses
                    id = (dataLabels == i);
                    actualClass = classOut(id);
                    confuseMat(i,:) = accumarray(actualClass,1,[obj.NumClasses 1]);
                end
                
            end
        end
        function [classOut voteDecision classVect] = classify(obj,featuresColumns)
            assert(size(featuresColumns,1) == obj.NumActiveChannels*obj.NumFeatures,...
                'Expected first dimension of featuredata [%d]to be equal to numActiveChannels*numFeatures [%d]',...
                size(featuresColumns,1),obj.NumActiveChannels*obj.NumFeatures);
            if isempty(obj.Wg)
                %error('Classifier not trained');
                
                [classOut, voteDecision] = deal(length(obj.getClassNames));
                return
            end
            
            % Given lda parameters Wg,Cg, classify the featureData by multiplying and
            % selecting the max output.  Additionally, create a majority vote buffer to
            % filter outputs.
            %
            % Note this funciton will take an array of feature columns and
            % classify all of these in one step
            %
            % R. Armiger 30-Nov-2009: Created
            
            % Forward Classify
            classVect = bsxfun(@plus,featuresColumns'*obj.Wg,obj.Cg);
            
            % Check for w,c entries with no data, exclude these from
            % classification
            
            
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
        function close(obj)
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
        
        function [Wg,Cg] = lda(featureData,classId,maxClasses)
                        
            N = size(featureData,1);
            
            % Following cannot be done with integer data:
            % sc = std(featureData(:));
            % featureData =  featureData + sc./1000.*randn(size(featureData));
            
            % cast data to double for matlab ops
            featureData = double(featureData);
            
            if isempty(featureData)
                error('No signal feature data passed to classifier');
            end
            
            classList = unique(classId(:))';
            numClasses = length(classList);
            
            if numClasses == 0
                error('No Classes Selected');
            end
            
            %%-- Compute the means and the pooled covariance matrix --%%
            C = zeros(N,N);
            Mi = zeros(N,numClasses);
            for iClass = classList
                %myFeatures = featureData(:,classId==classList(iClass));
                myFeatures = featureData(:,classId==iClass);
                Mi(:,iClass) = mean(myFeatures,2);
                normalizedFeatures = bsxfun(@minus,myFeatures,Mi(:,iClass));
                C = C + cov(normalizedFeatures');
            end
            
            C = C./numClasses;
            Pphi = 1/numClasses;
            
            %%-- Compute the LDA weights --%%
%             Wg = zeros(N,numClasses);
%             Cg = zeros(1,numClasses);
            if nargin > 2
                numClasses = maxClasses;
            end

            Wg = zeros(N,numClasses);
            Cg = zeros(1,numClasses);
            for i = classList
                
                % CMi = C\Mi(:,i);
                CMi = pinv(C) * Mi(:,i);  % RSA - pinv reduces errors if poorly formed matrices
                Wg(:,i) = CMi;
                Cg(i) = -1/2*Mi(:,i)'*CMi + log(Pphi)';
            end
        end
    end
end
