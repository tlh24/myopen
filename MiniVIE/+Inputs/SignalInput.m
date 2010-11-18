classdef SignalInput < handle
    % Base class for Signal Sources
    % Abstracts hardware device
    % Can be associated with a filter object to return filtered data
    %
    % 01-Sept-2010 Armiger: Created
    properties
        SampleFrequency = 1000; % Hz
        ChannelIds = [];
        NumSamples = 1000;
        
        Verbose = 1;
        hFilter = {};
        
    end
    properties (Dependent = true, SetAccess = private)
        NumChannels;
    end
    methods (Abstract)
        initialize(obj);
        data = getData(obj);
        isReady = isReady(obj,numSamples); % Consider removing extra arg
        stop(obj);
    end %methods (Abstract)
    methods
        function numChannels = get.NumChannels(obj)
            numChannels = length(obj.ChannelIds);
        end %get.NumChannels
        function previewFiltered(obj,channelIds)
            if nargin < 2
                channelIds = 1:obj.NumChannels;
            end
            previewCommon(obj,@(obj)getFilteredData(obj),channelIds);
        end %previewFiltered
        function preview(obj,channelIds)
            if nargin < 2
                channelIds = 1:obj.NumChannels;
            end
            previewCommon(obj,@(obj)getData(obj),channelIds);
        end %preview
        function previewFeatures(obj,channelIds)
            if nargin < 2
                channelIds = 1:obj.NumChannels;
            end
            hFig = gcf;
            clf(hFig);
            numFeatures = 4;
            hAx = zeros(1,numFeatures);
            hLines = zeros(obj.NumChannels,numFeatures);
            for i = 1:numFeatures
                hAx(i) = subplot(2,2,i);
                hLines(:,i) = plot(hAx(i),zeros(2,obj.NumChannels));
            end
            
            %ylim(hAx1,[-2 14]);
            
            %             offset = 2*1:obj.NumChannels;
            numSamplesToDisplay = 200;
            
            featureBuffer = NaN(obj.NumChannels,numFeatures,numSamplesToDisplay);
            
            StartStopForm([]);
            while StartStopForm
                drawnow
                
                % channelData = getData(obj);
                filteredData = getFilteredData(obj);
                
                if isempty(filteredData)
                    continue;
                end
                
                windowSize = 150;
                zc_thresh = 0.05;
                ssc_thresh = 0.05;
                
                features = feature_extract(filteredData',windowSize,zc_thresh,ssc_thresh);
                
                featureBuffer = circshift(featureBuffer,[0 0 1]);
                featureBuffer(:,:,1) = features;
                
                for iFeature = 1:numFeatures
                    for iChannel = channelIds
                        set(hLines(iChannel,iFeature),'YData',featureBuffer(iChannel,iFeature,:),'XData',1:numSamplesToDisplay);
                    end
                end
            end
        end %previewFeatures
        
        function audiopreview(obj,channelIds,range)
            if nargin < 2
                channelIds = 1:obj.NumChannels;
            end
            if nargin < 3
                range = 1;
            end
            hFig = gcf;
            clf(hFig);
            hAx1 = gca;
            hLines = plot(hAx1,zeros(2,obj.NumChannels));
            ylim(hAx1,[-2 14]);
            
            offset = 2*1:obj.NumChannels;
            
            StartStopForm([]);
            while StartStopForm
                drawnow
                
                filteredData = getFilteredData(obj);
                
                filteredData(:,3) = filteredData(:,4);
                
                if isempty(filteredData)
                    continue;
                end
                for i = channelIds
                    set(hLines(i),'YData',filteredData(:,i)+offset(i),'XData',1:size(filteredData,1))
                end
                
                numBits = 16;
                soundsc(filteredData(end-50:end,channelIds(1)),obj.SampleFrequency,numBits,[-range range]);
            end
        end %audiopreview
        
        function filtered = getFilteredData(obj)
            % Simplified call to get data and apply filters
            
            % Note that in an xpc implmentation, since the filtering is
            % done locally this method might be overloaded to get the
            % filtered signals directly
            
            data = getData(obj);
            filtered = applyAllFilters(obj,data);
        end %getFilteredData
        
        function filtered = applyAllFilters(obj,data)
            % If filter handles exist, loop through each one and apply to
            % the data
            if ~isempty(obj.hFilter)
                filtered = data;
                for i = 1:length(obj.hFilter)
                    filtered = obj.hFilter{i}.apply(filtered);
                end
            end
        end %applyAllFilters
        function addfilter(obj,newFilter)
            numFilters = length(obj.hFilter);
            obj.hFilter{numFilters+1} = newFilter;
        end %addfilter
    end %methods
end
function previewCommon(obj,previewFunction,channelIds)

% Note that we can develop more elaborate Signal preview
% interfaces, but this one is bare-bones to display current
% output


hFig = gcf;
clf(hFig);
hAx1 = gca;
hLines = plot(hAx1,zeros(2,obj.NumChannels));
ylim(hAx1,[-2 14]);

offset = 1.5 * (1:obj.NumChannels);

StartStopForm([]);
while StartStopForm
    drawnow
    
    channelData = previewFunction(obj);
    
    if isempty(channelData)
        continue;
    end
    for i = channelIds
        set(hLines(i),'YData',channelData(:,i)+offset(i),'XData',1:size(channelData,1))
    end
end


end %previewCommon
