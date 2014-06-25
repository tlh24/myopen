classdef SignalInput < Common.MiniVieObj
    % Base class for Signal Sources
    % Abstracts hardware device
    % Can be associated with a filter object to return filtered data
    %
    % 01-Sept-2010 Armiger: Created
    properties
        SampleFrequency = 1000; % Hz
        ChannelIds = []; % Id numbers for activated channels.  Can be zero 
                         % based or one based, but the channels will always
                         % be displayed as 1 to N in the GUIs etc.
        NumSamples = 1000; % This is the number of samples that the input 
                           % source will maintain in its buffer
        
        Verbose = 1;
        hFilter = {};      % contains handles to filter objects that will 
                           % be applied when the user calls the
                           % getFilteredData method
        FilterPadding = 250; % Number of samples to pad data when getting filtered data to avoid edge effects
                             % Note that there is still a possibility for a user to getData() and then applyAllFilters() 
                             % manually, which may return data differently
        
    end
    properties (Dependent = true, SetAccess = private)
        NumChannels;       % this is the length of filter ids
    end
    methods (Abstract)
        initialize(obj);
        data = getData(obj,numSamples);
        isReady = isReady(obj,numSamples); % Consider removing extra arg
        start(obj);
        stop(obj);
        close(obj);
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
            
            hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_timer);
            hTimer.Period = 0.05;
            
            hFig = UiTools.create_figure('Preview Features','Preview_Features');
            
            clf(hFig);
            set(hFig,'CloseRequestFcn',@(src,evnt)previewCleanup(hTimer,hFig));
            
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
            
            start(hTimer);
            return;
            
            function cb_timer
                drawnow
                
                % channelData = getData(obj);
                filteredData = getFilteredData(obj);
                
                if isempty(filteredData) || ~ishandle(hFig)
                    return;
                end
                
                windowSize = 150;
                %                 zc_thresh = 0.1;
                %                 ssc_thresh = 0.1;
                
                features = feature_extract(filteredData',windowSize);
                
                featureBuffer = circshift(featureBuffer,[0 0 1]);
                featureBuffer(:,:,1) = features;
                
                for iFeature = 1:numFeatures
                    for iChannel = channelIds
                        set(hLines(iChannel,iFeature),'YData',featureBuffer(iChannel,iFeature,:));
                    end
                end
            end %cb_timer
            
        end %previewFeatures
        
        function audiopreview(obj,channelIds,range,numSamples)
            if nargin < 2
                channelIds = 1:obj.NumChannels;
            end
            if nargin < 3
                range = 1;
            end
            if nargin < 4
                numSamples = 200;
            end
            hFig = figure;
            clf(hFig);
            hAx1 = gca;
            hLines = plot(hAx1,zeros(2,obj.NumChannels));
            ylim(hAx1,[-2 14]);
            
            offset = 2*1:obj.NumChannels;
            
            StartStopForm([]);
            obj.NumSamples = numSamples;
            while StartStopForm
                drawnow
                filteredData = getFilteredData(obj);
                %filteredData(:,3) = filteredData(:,4);
                
                if isempty(filteredData)
                    continue;
                end
                for i = channelIds
                    set(hLines(i),'YData',filteredData(:,i)+offset(i),'XData',1:size(filteredData,1))
                end
                
                numBits = 16;
                tic
                soundsc(filteredData(:,channelIds(1)),obj.SampleFrequency,numBits,[-range range]);
                toc
            end
        end %audiopreview
        
        function filtered = getFilteredData(obj,numSamples)
            % Simplified call to get data and apply filters
            
            % Note that in an xpc implmentation, since the filtering is
            % done locally this method might be overloaded to get the
            % filtered signals directly
            
            % get extra samples before filtering to eliminate edge effects

            if nargin < 2
                data = getData(obj);
            else
                try
                    % Get data, with signal padding to avoid filter edge
                    % effects.
                    data = getData(obj,numSamples+obj.FilterPadding);
                    %data = getData(obj,numSamples);
                catch ME
                    fprintf('[%s] Unable to get signal count [%d] + filter padding [%d].  Error was: %s \n',...
                        mfilename,numSamples,obj.FilterPadding,ME.message);
                    % TODO: not ideal but inputs that buffer their data can
                    % only allow getting a certain number of samples
                    data = getData(obj,numSamples);
                end
            end
            filtered = applyAllFilters(obj,data);
            % return only the signals requested, regardless of padding
            filtered = filtered(end-numSamples+1:end,:);
            
            % 6/25/2014
            % Added limits for max signal
            emgLim = 5;
            filtered = max(min(filtered,emgLim),-emgLim);

            
        end %getFilteredData
        
        function filtered = applyAllFilters(obj,data)
            % If filter handles exist, loop through each one and apply to
            % the data
            filtered = data;
            if ~isempty(obj.hFilter)
                for i = 1:length(obj.hFilter)
                    filtered = obj.hFilter{i}.apply(filtered);
                end
            end
        end %applyAllFilters
        function addfilter(obj,newFilter)
            % Append data source with a handle to the filter that should be
            % applied when getting data
            numFilters = length(obj.hFilter);
            obj.hFilter{numFilters+1} = newFilter;
        end %addfilter
    end %methods
end

function previewCommon(obj,previewFunction,channelIds)

% Note that we can develop more elaborate Signal preview
% interfaces, but this one is bare-bones to display current
% output


hTimer = UiTools.create_timer(mfilename,@(src,evt)cb_timer);
hTimer.Period = 0.05;

hFig = UiTools.create_figure('Preview Figure','Preview_Figure');
clf(hFig);
set(hFig,'CloseRequestFcn',@(src,evnt)previewCleanup(hTimer,hFig))

hAx1 = axes('Parent',hFig);
hLines = plot(hAx1,zeros(2,obj.NumChannels));
ylim(hAx1,[-2 14]);

offset = 1.5 * (1:obj.NumChannels);
start(hTimer);

    function cb_timer
        drawnow
        channelData = previewFunction(obj);
        
        if isempty(channelData) || ~ishandle(hFig)
            return;
        end
        for i = channelIds
            set(hLines(i),'YData',channelData(:,i)+offset(i),'XData',1:size(channelData,1))
        end
    end

end %previewCommon


function previewCleanup(hTimer,hFig)
try
    stop(hTimer);
end
delete(hTimer);
delete(hFig);
end
