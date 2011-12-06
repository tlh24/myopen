classdef MAV < Inputs.Filter
    % Mean Absolute Value filter, extends filter object
    %
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = MAV(numSamples)
            % Create Filters
            if nargin < 1
                numSamples = 150;
            end
            
            obj.Ha = 1;
            obj.Hb = 1/numSamples .* ones(1,numSamples);
            
        end
        function filteredData = apply(obj,unfilteredData)
            % Overload apply method so we can taks abs
            filteredData = abs(unfilteredData);

            filteredData = filter(obj.Hb,obj.Ha,filteredData);
        end
    end
end
