classdef TrainingInterface < Common.MiniVieObj
    % Basic Training interface presents cues to a user and
    %
    % 01-Feb-2011 Armiger: Created
    properties
        SignalSource;
        SignalClassifier;
        
        MaxSamples = 1e4;
        EmgData = [];
        Features3D = [];
        ClassLabelId = [];
        
        SampleCount = 0;
        
    end
    methods
        function close(obj)
            %override
        end
    end
    methods (Abstract=true)
        initialize(obj);
        collectdata(obj);
    end
end
