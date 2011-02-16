classdef MiniViePresentation < Common.MiniVieObj
    %MINIVIEOBJ Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        SignalSource;
        SignalClassifier;
    end
    methods
        function start(obj)
            if ~strcmpi(obj.hTimer.Running,'on')
                start(obj.hTimer);
            end
        end
        function stop(obj)
            if strcmpi(obj.hTimer.Running,'on')
                stop(obj.hTimer);
            end
        end
    end    
    methods (Abstract = true)
        close(obj);
    end
    
end

