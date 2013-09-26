classdef AdaptiveTrainingInterface < PatternRecognition.TrainingInterface
    % Adaptive Training interface presents cues to a user and retraing on
    % the fly
    %
    % 01-Feb-2011 Armiger: Created
    methods (Abstract=true)
        classify_signals(obj);
    end
    methods
        function perform_retrain(obj)
            
            % 01Aug2012 Armiger: Updated so that classifier (lda) will
            % train properly without data for all classes
            %classLabels = obj.ClassLabelId(1:obj.SampleCount);
            % classesWithData = unique(classLabels);
            % if length(classesWithData) < obj.SignalClassifier.NumClasses;
            %     fprintf('[Classifier] Insufficient data\n');
            %     return
            % end
            
            if ~isempty(obj.EmgData)
                % raw emg data storage is optional
                obj.SignalClassifier.TrainingEmg = obj.getEmgData();
            end
            obj.SignalClassifier.TrainingData = obj.getFeatureData();
            obj.SignalClassifier.TrainingDataLabels = obj.getClassLabels();
            obj.SignalClassifier.train();
            obj.SignalClassifier.computeError();
            obj.SignalClassifier.computeGains();
            obj.SignalClassifier.computeConfusion();
            
        end
        
    end
end
%         function obj = TrainingInterface(hScenario)
%             obj.hScenario = hScenario;
%         end
%         function run(obj,varargin) % temp
%
%             function cb_timer
%                 obj.SampleCount = obj.SampleCount +1;
%
%                 update_cueing();
%                 obj.classify_signals();
%                 update_decision();
%
%                 if obj.SampleCount > 800
%                     EnableRandomCueing = 1;
%                 end
%
%                 if retrainCounter > 300
%                     retrainCounter = 0;
%                     obj.perform_retrain();
%                 end
%             end
%             function update_decision
%             end
%             function update_cueing
%             end
%         end
