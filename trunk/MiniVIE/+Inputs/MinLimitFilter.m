classdef MinLimitFilter < Inputs.Filter
    % Filter Object that allows zeroing out a signal below a given
    % threshold.  
    %
    % 26JUN2014 Armiger: Created
    properties
        MinThreshold = 0.25;   % Default Min Threshold
    end
    methods
        function obj = MinLimitFilter(minThreshold)
            %obj = MinLimitFilter(minThreshold)
            % Create filter
            if nargin > 0
                obj.MinThreshold = minThreshold;
            end
            
            fprintf('[%s] Creating Minimum Threshold Filter at %8.4f;\n',...
                mfilename,obj.MinThreshold);
            
        end
        
        function filtered = apply(obj,signalIn)
            %filtered = apply(signalIn)
            % Apply the min filter by zeroing out any signal of less
            % magnitude than the threshold
            
            idx = abs(signalIn) < obj.MinThreshold;
            
            signalIn(idx) = 0;
            
            filtered = signalIn;
            
        end
        
    end
end
