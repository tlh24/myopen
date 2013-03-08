classdef RemoveOffset < Inputs.Filter
    % RemoveOffset Filter object, extends filter object
    % Usage: hFilter = Inputs.RemoveOffset(numAvg);
    % Example: hFilter = Inputs.RemoveOffset(50);
    %
    % This filter simply computes the moving average of each channel 
    % and subtracts it, thus removing offset
    %
    % 05-Mar-2013 Armiger: Created
    methods
        function obj = RemoveOffset(windowSize)
            % Create Filters
            if nargin < 1
                windowSize = 50;
            end
            obj.Hb = ones(1,windowSize)/windowSize;
            obj.Ha = 1;
        end
    end
end
