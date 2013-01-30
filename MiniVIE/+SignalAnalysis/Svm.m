classdef Svm < SignalAnalysis.Classifier
    % 16-Sept-2012 Armiger: Created
    properties
    end
    methods
        function obj = Svm
            % Constructor
        end
        function confuseMat = train(obj)
            
            confuseMat = [];
            
            if isempty(obj.TrainingData)
                error('No Training Data Exists');
            elseif isempty(obj.getActiveChannels)
                error('No channels selected for training');
            end
            
            
            feats = convertfeaturedata(obj,obj.TrainingData.getFeatureData);
            dataLabels = obj.TrainingData.getClassLabels;
            
            fprintf('Training SVM with %d Samples (',size(feats,2));
            for iClass = 1:obj.NumClasses
                fprintf('%d = %d; ',iClass,sum(dataLabels == iClass));
            end
            fprintf(')\n');

            fprintf('Active Channels are: [ ');
            fprintf('%d ',obj.getActiveChannels);
            fprintf(']\n');
            
            %% Normalize features
            normFeats = feats;
            fScale = max(max(feats,[],2),0.001);
            obj.Cg = fScale;
            normFeats = bsxfun(@rdivide,normFeats,fScale);
            feats = normFeats;
            %plot(normFeats')
            %%
            
            
            
%             labels = zeros(obj.NumClasses,length(dataLabels));
%             idx = sub2ind(size(labels),dataLabels,1:length(dataLabels));
%             labels(idx) = 1;
            %f = features3D(activeChannels,:,:);
            %f2 = reshape(f,36,1006);
            model = svmtrain(dataLabels', feats', '-t 0');
            %model = svmtrain(dataLabels', feats');
            obj.Wg = model;
            
            
            
            
            [predict_label, accuracy, dec_values] = svmpredict(dataLabels', feats', model);

%             [obj.Wg,obj.Cg] = obj.lda(feats,dataLabels,obj.NumClasses);
            
            if nargout > 0
                % Compute confusion
                
                classOut = predict_label;
                
                confuseMat = zeros(obj.NumClasses);
                for i = 1:obj.NumClasses
                    id = (dataLabels == i);
                    actualClass = classOut(id);
                    confuseMat(i,:) = accumarray(actualClass,1,[obj.NumClasses 1]);
                end
                
            end
            
            obj.IsTrained = true;

        end
        function [classOut voteDecision] = classify(obj,featuresColumns)
            assert(size(featuresColumns,1) == obj.NumActiveChannels*obj.NumFeatures,...
                'Expected first dimension of featuredata [%d]to be equal to numActiveChannels*numFeatures [%d]',...
                size(featuresColumns,1),obj.NumActiveChannels*obj.NumFeatures);
            if isempty(obj.Wg)
                error('Classifier not trained');
            end

            featuresColumns = double(featuresColumns);
            dataLabels = zeros(1,size(featuresColumns,2));
            model = obj.Wg;
            fScale = obj.Cg; 
            normFeats = bsxfun(@rdivide,featuresColumns,fScale);
            [predict_label, accuracy, dec_values] = svmpredict(dataLabels', normFeats', model);
            
            classOut = predict_label;
            
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
end
