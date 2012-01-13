classdef DiscriminantAnalysis < SignalAnalysis.Classifier
    % Classifier unsing native Mathworks Statistic Toolbox classifier
    % Requires Statistic Toolbox
    %
    % Discriminant analysis types:
    %     * linear — Fits a multivariate normal density to each group, with a pooled estimate of covariance. This is the default.
    %     * diaglinear — Similar to linear, but with a diagonal covariance matrix estimate (naive Bayes classifiers).
    %     * quadratic — Fits multivariate normal densities with covariance estimates stratified by group.
    %     * diagquadratic — Similar to quadratic, but with a diagonal covariance matrix estimate (naive Bayes classifiers).
    %     * mahalanobis — Uses Mahalanobis distances with stratified covariance estimates.
    %
    % 09-Oct-2011 Armiger: Created
    properties
        Type = 'linear';
    end
    methods
        function obj = DiscriminantAnalysis
            %Verify toolbox present
            isValid = license('checkout','statistics_toolbox');
            
            if ~isValid
                msg = 'Mathworks Statistics Toolbox Required';
                errordlg(msg);
                error(msg);
            end
            
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
            
            fprintf('Active Channels are: ');
            fprintf('%d ',obj.ActiveChannels);
            fprintf('\n');
            
            fprintf('Classnames: ');
            classNames = obj.getClassNames;
            disp(classNames);
            labels = classNames(obj.TrainingDataLabels);
            N = length(labels);
            sample = feats';
            training = feats';
            [C,err,P,logp,coeff] = classify(sample,training,labels,obj.Type);
            bad = ~strcmp(C,labels);
            ldaResubErr = sum(bad) / N;
            [ldaResubCM,grpOrder] = confusionmat(labels,C);
            fprintf('ConfusionMatrix: ');
            disp(ldaResubCM);
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
            C = classify(sample,training,labels,obj.Type);
            
            classOut = find(strcmp(C,classNames));
            voteDecision = classOut;
        end
        function features2D = extractfeatures(obj,filteredDataWindowAllChannels)
            % features2D = feature_extract(filteredDataWindowAllChannels(:,obj.ActiveChannels)',obj.NumSamplesPerWindow);
            features2D = feature_extract(filteredDataWindowAllChannels',obj.NumSamplesPerWindow);
        end
    end
end
