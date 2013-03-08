classdef Filter < handle
    % Filter object base class
    % Filters, HighPass, LowPass, Notch should inherit from this class
    %
    % 01-Sept-2010 Armiger: Created
    % 08-Mar-2013 Armiger: Updated to maintain part of the signal in buffer to avoid filtering edge effects
    %   This method hasn't been verified yet and is implemented here, but disabled
    properties
        Hb
        Ha
        
        lastUnfilteredData % store previous samples to avoid filter edge effects
    end
    methods
        function filteredData = apply(obj,unfilteredData)
            %filteredData = apply(obj,unfilteredData)
            %
            % Apply filter based on the parameters specified Ha Hb
            %
            
            
            % Check validity of saved data
            [numSamples, numChannels] = size(unfilteredData);
            if ~isequal(numChannels,size(obj.lastUnfilteredData,2))
                % Size mismatch, can't use previous data
                obj.lastUnfilteredData = [];
            end
            
            % Create a combined data set
            %combinedUnfilteredData = cat(1,obj.lastUnfilteredData,unfilteredData);
            combinedUnfilteredData = unfilteredData;
            %combinedUnfilteredData = cat(1,unfilteredData,obj.lastUnfilteredData);
            
            % Preserve some of the new data for the next iteration
            numPreserved = 150;
            if numSamples > numPreserved
                obj.lastUnfilteredData = unfilteredData(end-numPreserved+1:end,:);
            else
                obj.lastUnfilteredData = unfilteredData;
            end
            
            % Now apply filter
            %removeOffset = (obj.Ha == 1);
            
            if isa(obj,'Inputs.RemoveOffset')
                % For a moving average filter, the filter is applied to get
                % the mean, then the computed mean is subtracted from the
                % signal
                movingAverage = filter(obj.Hb,obj.Ha,combinedUnfilteredData);
                
                filteredData = combinedUnfilteredData - movingAverage;
                
            else
                % Typically, the filter is applied and filtered data is
                % returned
                
                % If multiple filters are contained (e.g. notch filters at
                % various frequencies, apply each filter
                filteredData = combinedUnfilteredData;
                for i = 1:size(obj.Hb,1)
                    filteredData = filter(obj.Hb(i,:),obj.Ha(i,:),filteredData);
                end
                
            end
            
            % return only the latest samples to preserve size
            filteredData = filteredData(end-numSamples+1:end,:);
            
        end
    end
end
