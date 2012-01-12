classdef StatToolbox < SignalAnalysis.Classifier
    % Classifier unsing native Mathworks Statistic Toolbox classifier
    %
    % 09-Oct-2011 Armiger: Created
    properties
        
    end
    methods
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
            
            fprintf('Active Channels are: ');
            fprintf('%d ',obj.ActiveChannels);
            fprintf('\n');
            
            classNames = obj.getClassNames
            labels = classNames(obj.TrainingDataLabels);
            N = length(labels);
            sample = feats';
            training = feats';
            type = 'quadratic';
            [C,err,P,logp,coeff] = classify(sample,training,labels,type);
            bad = ~strcmp(C,labels);
            ldaResubErr = sum(bad) / N;
            [ldaResubCM,grpOrder] = confusionmat(labels,C);
            ldaResubCM
        end
        function percentError = computeerror(obj)
            percentError = [];
        end
        
        function [classOut voteDecision] = classify(obj,featuresColumns)
            
            [classOut voteDecision] = deal([]);
            
            assert(size(featuresColumns,1) == obj.NumActiveChannels*obj.NumFeatures);
            if isempty(obj.Wg)
                error('Classifier not trained');
            end
            
            feats = convertfeaturedata(obj);
            
            classNames = obj.getClassNames;
            labels = classNames(obj.TrainingDataLabels);
            sample = featuresColumns';
            training = feats';
            type = 'quadratic';
            C = classify(sample,training,labels,type);
            
            classOut = find(strcmp(C,classNames));
            voteDecision = classOut;
        end
        function features2D = extractfeatures(obj,filteredDataWindowAllChannels)
            % features2D = feature_extract(filteredDataWindowAllChannels(:,obj.ActiveChannels)',obj.NumSamplesPerWindow);
            features2D = feature_extract(filteredDataWindowAllChannels',obj.NumSamplesPerWindow);
        end
    end
end
