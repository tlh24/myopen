classdef Lda < SignalAnalysis.Classifier
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % LDA	Perform a linear discriminant analysis
    %
    % Based on: Kevin Englehart,1997
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 
    % 01-Sept-2010 Armiger: Created
    properties
    end
    methods
        function obj = Lda
            % Constructor
        end
        function train(obj)
            
            if isempty(obj.TrainingData)
                error('No Training Data Exists');
            end
            
            feats = convertfeaturedata(obj);
            fprintf('Training LDA with %d Samples (',size(feats,2));
            for iClass = 1:obj.NumClasses
                fprintf('%d = %d; ',iClass,sum(obj.TrainingDataLabels == iClass));
            end
            fprintf(')\n');

            fprintf('Active Channels are: [ ');
            fprintf('%d ',obj.ActiveChannels);
            fprintf(']\n');
            
            [obj.Wg,obj.Cg] = obj.lda(feats,obj.TrainingDataLabels);
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
                
                % CMi = C\Mi(:,i);
                CMi = pinv(C) * Mi(:,i);  % RSA - reduces errors if poorly formed matrices
                Wg(:,i) = CMi;
                Cg(i) = -1/2*Mi(:,i)'*CMi + log(Pphi)';
            end
        end
    end
end
