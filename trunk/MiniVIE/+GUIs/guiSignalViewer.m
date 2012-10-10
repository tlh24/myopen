classdef guiSignalViewer < Common.MiniVieObj
    % Simple Viewer that adds ability to show both time and frequency
    % response, inspired by LAQ.m from CEVEN
    %
    % Use default configuration:
    %  obj = GUIs.guiSignalViewer.Default;
    %
    % Armiger - 2/15/2011: Created
    properties
        
        SignalSource
        
        SelectedChannels = 1:4;
        
        ShowFilteredData = 1;
        ModeSelect = GUIs.guiSignalViewerState.TimeDomain;
        
        AxesLimTimeDomain = [-1 10];  % unused if axis 'auto'
        
        hg
        hTimer
        hChannelSelect
    end
    properties (SetAccess = private)
        featureBuffer = [];
    end
    properties (Constant = true)
        numFeatures = 4;
        
        FullAxesPosition = [80 250 750 300];
    end
    methods
        function obj = guiSignalViewer(hSignalSource)
            % Object creator.  If called with no arguments, user must
            % assign signal source and initialize.  When called with a
            % signal source, the guis will display automatically
            
            if nargin > 0
                setSignalSource(obj,hSignalSource);
                initialize(obj);
            end
            
        end
        function success = setSignalSource(obj,hSignalSource)

            if isempty(hSignalSource)
                success = false;
            else
                obj.SignalSource = hSignalSource;
                success = true;
            end
            
        end
        function initialize(obj)
            
            assert(~isempty(obj.SignalSource),'No Signal Source Assigned');
            
            fprintf('[%s] Initializing...',mfilename);
            
            obj.setupFigure();
            
            % Need to be careful here if this overruns the buffers of the signal source objects
            %obj.SignalSource.NumSamples = 3000;
            
            obj.hChannelSelect = GUIs.guiChannelSelect;
            addlistener(obj.hChannelSelect,'ValueChange',@(src,evt)obj.updateChannels);
            obj.hChannelSelect.setAvailableChannels(obj.SignalSource.NumChannels);
            obj.SelectedChannels = obj.hChannelSelect.SelectedChannels;
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)obj.update());
            obj.hTimer.Period = 0.05;
            
            obj.resetTimePlot();
            
            numSamplesToDisplay = 200;
            obj.featureBuffer = NaN(obj.SignalSource.NumChannels,obj.numFeatures,numSamplesToDisplay);
            
            obj.updateFigure();
            fprintf('OK\n');

            start(obj.hTimer);

            
        end
        function updateChannels(obj)
            obj.SelectedChannels = obj.hChannelSelect.SelectedChannels;
        end
        function setupFigure(obj)
            obj.hg.Figure = UiTools.create_figure('Signal Viewer','Signal Viewer');
            set(obj.hg.Figure,'Position',[50 120 900 600]);
            set(obj.hg.Figure,'CloseRequestFcn',@(src,evnt)obj.close);
            
            obj.hg.PanelAxes = uipanel(obj.hg.Figure,'Units','Pixels','Position',[80 200 750 400]);
            
            obj.hg.Axes(4) = axes('Parent',obj.hg.PanelAxes,'Units','Normalized','Position',[0.05 0.05 0.9 0.9]);
            obj.hg.Axes(3) = axes('Parent',obj.hg.PanelAxes,'Units','Normalized','Position',[0.05 0.05 0.9 0.9]);
            obj.hg.Axes(2) = axes('Parent',obj.hg.PanelAxes,'Units','Normalized','Position',[0.05 0.05 0.9 0.9]);
            obj.hg.Axes(1) = axes('Parent',obj.hg.PanelAxes,'Units','Normalized','Position',[0.05 0.05 0.9 0.9]);
            
            obj.hg.PanelProps = uibuttongroup(obj.hg.Figure,'Units','Pixels','Position',[290 40 200 150]);
            set(obj.hg.PanelProps ,'Title','Plot Properties');
            
            obj.hg.cbFilter = uicontrol('Style','checkbox','String','Apply Filters','Units','Normalized',...
                'pos',[0.1 0.1 0.8 0.25],'parent',obj.hg.PanelProps,'HandleVisibility','off',...
                'Callback',@(src,evt)showFilteredData(obj,get(src,'Value')));
            
            obj.hg.PanelDomain = uibuttongroup(obj.hg.Figure,'Units','Pixels','Position',[80 40 200 150]);
            set(obj.hg.PanelDomain,'Title','Plot Domain');
            % Create three radio buttons in the button group.
            obj.hg.ButtonFFT = uicontrol('Style','Togglebutton','String','FFT','Units','Normalized',...
                'pos',[0.1 0.1 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            obj.hg.ButtonFeatures = uicontrol('Style','Togglebutton','String','Features','Units','Normalized',...
                'pos',[0.1 0.7 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            obj.hg.ButtonTimeDomain = uicontrol('Style','Togglebutton','String','Time','Units','Normalized',...
                'pos',[0.1 0.4 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            % Initialize some button group properties.
            set(obj.hg.PanelDomain,'SelectionChangeFcn',@(src,evt)selcbk(src));
            set(obj.hg.PanelDomain,'Visible','on');
            
            function selcbk(source)
                switch get(source,'SelectedObject')
                    case obj.hg.ButtonTimeDomain
                        obj.ModeSelect = GUIs.guiSignalViewerState.TimeDomain;
                    case obj.hg.ButtonFFT
                        obj.ModeSelect = GUIs.guiSignalViewerState.FFT;
                    case obj.hg.ButtonFeatures
                        obj.ModeSelect = GUIs.guiSignalViewerState.Features;
                end
            end
        end
        function updateFigure(obj)
            % Synch Parameters and uiobjects
            %SelectedChannels = 1:4;
            set(obj.hg.cbFilter,'value',obj.ShowFilteredData);
            
            switch obj.ModeSelect
                case GUIs.guiSignalViewerState.TimeDomain
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonTimeDomain);
                case GUIs.guiSignalViewerState.FFT
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonFFT);
                case GUIs.guiSignalViewerState.Features
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonFeatures);
            end
            
        end
        function update(obj)
            try
                switch obj.ModeSelect
                    case GUIs.guiSignalViewerState.Features
                        setAxesVisible(obj.hg.Axes(1:4),'on');
                        axis(obj.hg.Axes(1),'auto');
                        
                        set(obj.hg.Axes(1),'OuterPosition',[0.0 0.5 0.5 0.5]);
                        set(obj.hg.Axes(2),'OuterPosition',[0.5 0.5 0.5 0.5]);
                        set(obj.hg.Axes(3),'OuterPosition',[0.0 0.0 0.5 0.5]);
                        set(obj.hg.Axes(4),'OuterPosition',[0.5 0.0 0.5 0.5]);
                        xlabel(obj.hg.Axes(1),'');
                        ylabel(obj.hg.Axes(1),'MAV');
                        ylabel(obj.hg.Axes(2),'LEN');
                        ylabel(obj.hg.Axes(3),'ZC');
                        ylabel(obj.hg.Axes(4),'SSC');
                        obj.updateFeatures();
                    case GUIs.guiSignalViewerState.TimeDomain
                        setAxesVisible(obj.hg.Axes(1),'on');
                        setAxesVisible(obj.hg.Axes(2:4),'off');
                        set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                        xlabel(obj.hg.Axes(1),'Sample Number');
                        ylabel(obj.hg.Axes(1),'Volts');
                        %ylim(obj.hg.Axes(1),obj.AxesLimTimeDomain);
                        axis(obj.hg.Axes(1),'auto');
                        obj.updateTimeDomain();
                    case GUIs.guiSignalViewerState.FFT
                        setAxesVisible(obj.hg.Axes(1),'on');
                        setAxesVisible(obj.hg.Axes(2:4),'off');
                        set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                        xlabel(obj.hg.Axes(1),'Frequency (Hz)');
                        ylabel(obj.hg.Axes(1),'|Y(f)|');
                        ylim(obj.hg.Axes(1),[0 1]);
                        %axis(obj.hg.Axes(1),'auto');
                        obj.updateFrequencyDomain();
                    otherwise
                        disp('Invalid Mode Selection');
                end
                drawnow
            catch ME
                UiTools.display_error_stack(ME);
            end
        end
        
        function updateFrequencyDomain(obj)

            obj.SignalSource.NumSamples = 400;
            
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData();
            else
                channelData = obj.SignalSource.getData();
            end
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            Fs = obj.SignalSource.SampleFrequency;
            L = obj.SignalSource.NumSamples;
            NFFT = 2^nextpow2(L); % Next power of 2 from length of y
            f = Fs/2*linspace(0,1,NFFT/2+1);
            
            %set(obj.hg.PlotLines,'Visible','off');
            set(obj.hg.PlotLines{1}(:),'Visible','off');
            for iChannel = obj.SelectedChannels
                Y = fft(channelData(:,iChannel),NFFT)/L;
                
                set(obj.hg.PlotLines{1}(iChannel),'Visible','on');
                
                % Plot single-sided amplitude spectrum.
                set(obj.hg.PlotLines{1}(iChannel),'YData',2*abs(Y(1:NFFT/2+1)),'XData',f);
                
            end
            
        end
        function updateTimeDomain(obj)
            
            obj.SignalSource.NumSamples = 2000;
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData();
            else
                channelData = obj.SignalSource.getData();
            end
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            set(obj.hg.PlotLines{1}(:),'YData',[],'XData',[]);
            offset = zeros(1,size(channelData,2));
            offset(obj.SelectedChannels) = 1.5 * ((1:length(obj.SelectedChannels)) -1);
            for iChannel = obj.SelectedChannels
                set(obj.hg.PlotLines{1}(iChannel),'YData',channelData(:,iChannel)+offset(iChannel),'XData',1:size(channelData,1));
            end
            
        end
        function updateFeatures(obj)
            
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData();
            else
                channelData = obj.SignalSource.getData();
            end
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            windowSize = 200;
            %                 zc_thresh = 0.1;
            %                 ssc_thresh = 0.1;
            
            features = feature_extract(channelData',windowSize);
            
            obj.featureBuffer = circshift(obj.featureBuffer,[0 0 1]);
            obj.featureBuffer(:,:,1) = features;
            
            for iFeature = 1:obj.numFeatures
                set(obj.hg.PlotLines{iFeature},'Visible','off');
                for iChannel = obj.SelectedChannels
                    set(obj.hg.PlotLines{iFeature}(iChannel),'Visible','on');
                    set(obj.hg.PlotLines{iFeature}(iChannel),'YData',obj.featureBuffer(iChannel,iFeature,:),...
                        'XData',1:size(obj.featureBuffer,3));
                end
            end
            
            
        end
        function resetTimePlot(obj)
            % Create plot lines
            obj.hg.PlotLines{1} = plot(obj.hg.Axes(1),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{2} = plot(obj.hg.Axes(2),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{3} = plot(obj.hg.Axes(3),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{4} = plot(obj.hg.Axes(4),zeros(2,obj.SignalSource.NumChannels));
            
            ColorOrder = [distinguishable_colors(16); distinguishable_colors(16)];
            
            assert(size(ColorOrder,1) >= obj.SignalSource.NumChannels,'Need more colors');
            
            for iLineSet = 1:length(obj.hg.PlotLines)
                plotLines = obj.hg.PlotLines{iLineSet};
                for iLine = 1:length(plotLines)
                    set(plotLines(iLine),'Color',ColorOrder(iLine,:));
                end
            end

            
        end
        function showFilteredData(obj,val)
            obj.ShowFilteredData = val;
        end
        
        function close(obj)
            try
                stop(obj.hTimer);
            end
            try
                close(obj.hChannelSelect)
            end
            delete(obj.hTimer);
            delete(obj.hg.Figure);
            
        end
    end
    methods (Static = true)
        function obj = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize();
            obj = GUIs.guiSignalViewer(hSignalSource);
        end
    end
end

function setAxesVisible(hAxes,onOff)

for i = 1:length(hAxes)
    set(hAxes(i),'Visible',onOff);
    set(allchild(hAxes(i)),'Visible',onOff);
end

end