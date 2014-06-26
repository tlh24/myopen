classdef ConstraintFilter < Inputs.Filter
    % Filter Object that constrains a signal within a given range.
    %
    % 26JUN2014 Armiger: Created
    properties
        RangeHigh = 5;   % Default Max Threshold
        RangeLow = -5;   % Default Min Threshold
    end
    methods
        function obj = ConstraintFilter(minVal, maxVal)
            %obj = ConstraintFilter(minVal, maxVal)
            % Create filter
            if nargin > 0
                obj.RangeLow = minVal;
            end
            if nargin > 1
                obj.RangeHigh = maxVal;
            end
            
            assert(obj.RangeHigh > obj.RangeLow,'constraint lower limit must be less than upper limit');
            
            fprintf('[%s] Creating Constraint Filter with range: [%8.4f %8.4f]; \n',...
                mfilename,obj.RangeLow, obj.RangeHigh);
            
        end
        
        function filtered = apply(obj,signalIn)
            %filtered = apply(signalIn)
            % Apply the constraint filter by limiting signal outside of the
            % selected range

            filtered = min(max(signalIn, obj.RangeLow) , obj.RangeHigh);
            
        end
        
    end
end
