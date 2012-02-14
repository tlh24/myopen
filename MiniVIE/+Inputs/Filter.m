classdef Filter < handle
    % Filter object base class
    % Filters, HighPass, LowPass, Notch should inherit from this class
    %
    % 01-Sept-2010 Armiger: Created
    properties
        Hb
        Ha
    end
    methods 
        function filteredData = apply(obj,unfilteredData)
            filteredData = unfilteredData;
            for i = 1:size(obj.Hb,1)
                filteredData = filtfilt(obj.Hb(i,:),obj.Ha(i,:),filteredData);
            end
        end
    end
end
