classdef SvmStatTlbx < SignalAnalysis.Classifier
    % SvmStatTlbx < SignalAnalysis.Classifier
    % Class file for interfacing MATLAB Signal Processing machine Learning
    % Algorithms within MiniVIE
    %
    % 03-Apr-2015 Armiger: Created
    properties
        % Note store model in Wg
    end
    methods
        
        function confuseMat = train(obj)
            
            printStatus(obj);
            td = obj.TrainingData;
            
            [predictors, response] = getDataTable(td);
            
            if isempty(response)
                fprintf('[%s] No Training Data\n',mfilename);
                obj.Wg = [];
                obj.Cg = [];
                obj.IsTrained = false;
                return
            end
            
            tic
            fprintf('Training %s...',mfilename);

            %template = templateSVM('KernelFunction', 'gaussian', 'PolynomialOrder', [], 'KernelScale', 1.400000e+00, 'BoxConstraint', 1, 'Standardize', 1);
            template = templateSVM('KernelFunction', 'RBF', 'KernelScale', 'auto', 'BoxConstraint', 1, 'Standardize', true);
            trainedClassifier = fitcecoc(predictors, response, ...
                'Learners', template, ...
                'Coding', 'onevsone',...
                'CrossVal','off');
            %trainedClassifier = fitcknn(predictors, response, 'Distance', 'Euclidean', 'Exponent', '', 'NumNeighbors', 10, 'DistanceWeight', 'SquaredInverse', 'StandardizeData', 1);

            fprintf('Done. T = %f s\n',toc)
            
            % Predict original model
            p = predict(trainedClassifier,predictors);
            
            confuseMat = confusionmat(p,response,'order',td.ClassNames);
            
            obj.IsTrained = true;
            obj.Wg = trainedClassifier;
        end
        function [classOut, voteDecision] = classify(obj,featuresColumns)
            assert(size(featuresColumns,1) == obj.NumActiveChannels*obj.NumFeatures,...
                'Expected first dimension of featuredata [%d]to be equal to numActiveChannels*numFeatures [%d]',...
                size(featuresColumns,1),obj.NumActiveChannels*obj.NumFeatures);
            if isempty(obj.Wg)
                warning('Classifier not trained');
                [classOut, voteDecision] = deal(length(obj.getClassNames));
                return
            end
            
            trainedClassifier = obj.Wg;
            predictors = featuresColumns';
            p = predict(trainedClassifier,predictors);
            
            numConverted = obj.cellArrayToNum(p,obj.getClassNames);
            
            classOut = numConverted;
            voteDecision = numConverted;
        end
        function close(obj)
        end
    end
end
