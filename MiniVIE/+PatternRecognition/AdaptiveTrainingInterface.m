classdef AdaptiveTrainingInterface < PatternRecognition.TrainingInterface
    % Adaptive Training interface presents cues to a user and retraing on
    % the fly
    %
    % 01-Feb-2011 Armiger: Created
    methods (Abstract=true)
        perform_retrain(obj);
        classify_signals(obj);
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
