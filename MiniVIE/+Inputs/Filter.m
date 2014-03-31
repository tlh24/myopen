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
        
        lastFilterState % store filter state to avoid filter edge effects
    end
    methods
        function filteredData = apply(obj,unfilteredData)
            %filteredData = apply(obj,unfilteredData)
            %
            % Apply filter based on the parameters specified Ha Hb
            %

            % user can specify multiple frequencies to filter (e.g. a notch
            % filter at [60, 120, 240] Hz
            numFilters = size(obj.Hb,1);
            
            % Check validity of saved filter state
            numChannels = size(unfilteredData,2);
            
            % Transient startup
            if isempty(obj.lastFilterState)
                obj.lastFilterState = cell(numFilters,1);
            end

            % Check filter state size
            for i = 1:numFilters
                if ~isequal(numChannels,size(obj.lastFilterState{i},2))
                    % Size mismatch, can't use previous data
                    obj.lastFilterState{i} = [];
                end
            end
            
            
            % Now apply filter
            if isa(obj,'Inputs.RemoveOffset')
                % For a moving average filter, the filter is applied to get
                % the mean, then the computed mean is subtracted from the
                % signal
                movingAverage = filter(obj.Hb,obj.Ha,unfilteredData);
                
                filteredData = unfilteredData - movingAverage;
                
                % elseif isa(obj,'Inputs.HighPass')
                %     % ensure the offset is removed manually
                % 
                %     % If multiple filters are contained (e.g. notch filters at
                %     % various frequencies, apply each filter
                %     filteredData = unfilteredData;
                % 
                %     filteredData = bsxfun(@minus,filteredData,filteredData(1,:));
                %     for i = 1:numFilters
                %         % save the filter state for the next iteration
                %         % obj.lastFilterState{i} = [];
                %         [filteredData, obj.lastFilterState{i}] = ...
                %             filter(obj.Hb(i,:),obj.Ha(i,:),filteredData,obj.lastFilterState{i});
                %     end
                
            else
                % Typically, the filter is applied and filtered data is
                % returned
                
                % If multiple filters are contained (e.g. notch filters at
                % various frequencies, apply each filter
                filteredData = unfilteredData;
                
                for i = 1:numFilters
                    % save the filter state for the next iteration
                    %obj.lastFilterState{i} = [];
                    [filteredData, obj.lastFilterState{i}] = ...
                        filter(obj.Hb(i,:),obj.Ha(i,:),filteredData,obj.lastFilterState{i});
                end
            end
            
        end
    end
end
