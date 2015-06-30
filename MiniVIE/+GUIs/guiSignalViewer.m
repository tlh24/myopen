classdef guiSignalViewer < Common.MiniVieObj
    % Simple Viewer that adds ability to show both time and frequency
    % response, inspired by LAQ.m from CEVEN
    %
    % Use default configuration:
    %  obj = GUIs.guiSignalViewer.Default;
    %
    % 15-Feb-2011 Armiger: Created
    % 07-Mar-2013 Armiger: Added signal measurements for Vrms and Vpkpk
    properties
        
        SignalSource
        
        SelectedChannels = 1:4;
        
        ShowFilteredData = 1;
        ShowMeasurements = 0;
        ModeSelect = GUIs.guiSignalViewerState.TimeDomain;
        
        AxesLimTimeDomain = 'auto';  % 'auto', [-1 1], etc
        
        % Use this parameter to control the number of
        % samples shown in the signal viewer
        NumTimeDomainSamples = 2000;
        NumFeatureSamples = 250;
        NumFrequencySamples = 400;
        
        OffsetTimeDomain = 1.5;

        % Use this to specify the window size that features are computed over
        FeatureWindowSize = 150;
        
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
            
            obj.hChannelSelect = GUIs.guiChannelSelect(obj.hg.PanelChannels);
            addlistener(obj.hChannelSelect,'ValueChange',@(src,evt)obj.updateChannels);
            obj.hChannelSelect.setAvailableChannels(obj.SignalSource.NumChannels);
            obj.SelectedChannels = obj.hChannelSelect.SelectedChannels;
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)obj.update());
            obj.hTimer.Period = 0.05;
            
            obj.resetTimePlot();
            
            obj.resetFeatureBuffer();
            
            obj.updateFigure();
            fprintf('OK\n');
            
            % Update once manually before timer (helps debugging by
            % throwing a real error)
            obj.update()
            
            start(obj.hTimer);
            
            
        end
        function resetFeatureBuffer(obj)
            numSamplesToDisplay = obj.NumFeatureSamples;
            obj.featureBuffer = NaN(obj.SignalSource.NumChannels,obj.numFeatures,numSamplesToDisplay);

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
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % Plot Domain Button Group Panel:
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % Plot Properties Panel:
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            obj.hg.PanelProps = uibuttongroup(obj.hg.Figure,'Units','Pixels','Position',[290 40 200 150]);
            set(obj.hg.PanelProps ,'Title','Plot Properties');
            
            obj.hg.cbPlotMeasure = uicontrol('Style','checkbox','String','Measurements','Units','Normalized',...
                'pos',[0.1 0.6 0.8 0.25],'parent',obj.hg.PanelProps,'HandleVisibility','off',...
                'Callback',@(src,evt)showMeasurements(obj,get(src,'Value')));
            obj.hg.cbFilter = uicontrol('Style','checkbox','String','Apply Filters','Units','Normalized',...
                'pos',[0.1 0.1 0.8 0.25],'parent',obj.hg.PanelProps,'HandleVisibility','off',...
                'Callback',@(src,evt)showFilteredData(obj,get(src,'Value')));
            uicontrol('Style','text','String','NumSamples: ','Units','Normalized',...
                'pos',[0.1 0.4 0.4 0.15],'parent',obj.hg.PanelProps,'HandleVisibility','off');
            obj.hg.editSamples = uicontrol('Style','edit','String',' -- ','Units','Normalized',...
                'pos',[0.5 0.4 0.4 0.15],'parent',obj.hg.PanelProps,'HandleVisibility','off',...
                'Callback',@setSamplesCallback);
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % Plot Properties Panel:
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            obj.hg.PanelChannels = uipanel(obj.hg.Figure,'Units','Pixels','Position',[500 40 200 150]);
            set(obj.hg.PanelChannels ,'Title','Channel Select');

            return;
            
            function setSamplesCallback(src,~)
                str = get(src,'String');
                val = str2double(str);
                if isnan(val)
                    val = [];
                end
                
                MAX_SAMPLES = 4000;
                val = max(min(val,MAX_SAMPLES),1);
                
                switch obj.ModeSelect
                    case GUIs.guiSignalViewerState.TimeDomain
                        if isempty(val)
                            val = obj.NumTimeDomainSamples;
                        else
                            obj.NumTimeDomainSamples = val;
                        end
                    case GUIs.guiSignalViewerState.FFT
                        if isempty(val)
                            val = obj.NumFrequencySamples;
                        else
                            obj.NumFrequencySamples = val;
                        end
                    case GUIs.guiSignalViewerState.Features
                        if isempty(val)
                            val = obj.NumFeatureSamples;
                        else
                            obj.NumFeatureSamples = val;
                        end
                end
                set(src,'String',num2str(val));
            end
            function selcbk(source)
                switch get(source,'SelectedObject')
                    case obj.hg.ButtonTimeDomain
                        obj.ModeSelect = GUIs.guiSignalViewerState.TimeDomain;
                    case obj.hg.ButtonFFT
                        obj.ModeSelect = GUIs.guiSignalViewerState.FFT;
                    case obj.hg.ButtonFeatures
                        obj.ModeSelect = GUIs.guiSignalViewerState.Features;
                end
                
                obj.updateFigure();
                
            end
        end
        function updateFigure(obj)
            % Synch Parameters and uiobjects

            % set filter checkbox
            set(obj.hg.cbFilter,'value',obj.ShowFilteredData);
            set(obj.hg.cbPlotMeasure,'value',obj.ShowMeasurements);
            
            % set button group
            switch obj.ModeSelect
                case GUIs.guiSignalViewerState.TimeDomain
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonTimeDomain);
                    set(obj.hg.editSamples,'String',num2str(obj.NumTimeDomainSamples));
                case GUIs.guiSignalViewerState.FFT
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonFFT);
                    set(obj.hg.editSamples,'String',num2str(obj.NumFrequencySamples));
                case GUIs.guiSignalViewerState.Features
                    set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ButtonFeatures);
                    set(obj.hg.editSamples,'String',num2str(obj.NumFeatureSamples));
            end
            
        end
        function update(obj)
            % This function called by timer object and updates the GUI
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
                        
                        set(obj.hg.MeasureLines,'Visible','off');
                        set(obj.hg.DataLabels,'Visible','off');

                        xlim(obj.hg.Axes(1),[0 obj.NumFeatureSamples]);
                        xlim(obj.hg.Axes(2),[0 obj.NumFeatureSamples]);
                        xlim(obj.hg.Axes(3),[0 obj.NumFeatureSamples]);
                        xlim(obj.hg.Axes(4),[0 obj.NumFeatureSamples]);
                        
                        obj.updateFeatures();
                    case GUIs.guiSignalViewerState.TimeDomain
                        setAxesVisible(obj.hg.Axes(1),'on');
                        setAxesVisible(obj.hg.Axes(2:4),'off');
                        set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                        xlabel(obj.hg.Axes(1),'Sample Number');
                        ylabel(obj.hg.Axes(1),'Source Units');
                        ylim(obj.hg.Axes(1),obj.AxesLimTimeDomain);
                        %axis(obj.hg.Axes(1),'auto');

                        set(obj.hg.MeasureLines,'Visible','on');
                        set(obj.hg.DataLabels,'Visible','on');

                        xlim(obj.hg.Axes(1),[0 obj.NumTimeDomainSamples]);

                        obj.updateTimeDomain();
                    case GUIs.guiSignalViewerState.FFT
                        setAxesVisible(obj.hg.Axes(1),'on');
                        setAxesVisible(obj.hg.Axes(2:4),'off');
                        set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                        xlabel(obj.hg.Axes(1),'Frequency (Hz)');
                        ylabel(obj.hg.Axes(1),'|Y(f)|');
                        ylim(obj.hg.Axes(1),[0 1]);
                        %axis(obj.hg.Axes(1),'auto');

                        xlim(obj.hg.Axes(1),[0 obj.NumFrequencySamples]);

                        set(obj.hg.MeasureLines,'Visible','off');
                        set(obj.hg.DataLabels,'Visible','off');
                        
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
            
            numSamples = obj.NumFrequencySamples;
            
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData(numSamples);
            else
                channelData = obj.SignalSource.getData(numSamples);
            end
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            Fs = obj.SignalSource.SampleFrequency;
            L = numSamples;
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
            
            numSamples = obj.NumTimeDomainSamples;
            
            % Get the data
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData(numSamples);
            else
                channelData = obj.SignalSource.getData(numSamples);
            end
            
            %return if empty
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            % Update the lines
            set(obj.hg.PlotLines{1}(:),'YData',[],'XData',[]);
            set(obj.hg.MeasureLines(:),'YData',[],'XData',[]);
            set(obj.hg.DataLabels,'String','');
            
            offset = zeros(1,size(channelData,2));
            offset(obj.SelectedChannels) = obj.OffsetTimeDomain * ((1:length(obj.SelectedChannels)) -1);
            for iChannel = obj.SelectedChannels
                set(obj.hg.PlotLines{1}(iChannel),...
                    'YData',channelData(:,iChannel)+offset(iChannel),...
                    'XData',1:size(channelData,1));
                if ~obj.ShowMeasurements
                    continue
                end
                maxY = max(channelData(:,iChannel));
                minY = min(channelData(:,iChannel));
                rmsY = rms(channelData(:,iChannel));
                %rmsY = mean(abs(channelData(:,iChannel)));
                pkpkY = maxY-minY;
                X1 = 1;
                X2 = size(channelData,1);
                set(obj.hg.MeasureLines(iChannel),...
                    'YData',[maxY maxY nan minY minY nan rmsY rmsY nan]+offset(iChannel),...
                    'XData',[X1 X2 nan X1 X2 nan X1 X2 nan]);
                set(obj.hg.DataLabels(iChannel),'Position',[(1.01*(X2-X1)) rmsY+offset(iChannel) 0]);
                set(obj.hg.DataLabels(iChannel),'String',...
                    {sprintf('RMS %4.2f',rmsY) sprintf('Pk-Pk %4.1f',pkpkY)});
                
            end
            
        end
        function updateFeatures(obj)
            
            numSamples = obj.NumFeatureSamples;
            
            if obj.ShowFilteredData
                channelData = obj.SignalSource.getFilteredData(numSamples);
            else
                channelData = obj.SignalSource.getData(numSamples);
            end
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            
            % [numChannels numFeatures]
            features = feature_extract(channelData',obj.FeatureWindowSize);
            
            % [numChannels numFeatures 200]
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
        end %updateFeatures
        function resetTimePlot(obj)
            % Reset is the same as initialize
            % Create plot lines
            obj.hg.PlotLines{1} = plot(obj.hg.Axes(1),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{2} = plot(obj.hg.Axes(2),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{3} = plot(obj.hg.Axes(3),zeros(2,obj.SignalSource.NumChannels));
            obj.hg.PlotLines{4} = plot(obj.hg.Axes(4),zeros(2,obj.SignalSource.NumChannels));
            hold(obj.hg.Axes(1),'on');
            obj.hg.MeasureLines = plot(obj.hg.Axes(1),nan(2,obj.SignalSource.NumChannels));
            obj.hg.DataLabels = nan(1,obj.SignalSource.NumChannels);
            for i = 1:length(obj.hg.DataLabels)
                obj.hg.DataLabels(i) = text(0,0,num2str(i),'Parent',obj.hg.Axes(1));
            end
            
            hold(obj.hg.Axes(1),'off');
            
            ColorOrder = [distinguishable_colors(16); distinguishable_colors(16)];
            
            assert(size(ColorOrder,1) >= obj.SignalSource.NumChannels,'Need more colors');
            
            for iLineSet = 1:length(obj.hg.PlotLines)
                plotLines = obj.hg.PlotLines{iLineSet};
                for iLine = 1:length(plotLines)
                    set(plotLines(iLine),'Color',ColorOrder(iLine,:));
                    set(obj.hg.MeasureLines(iLine),'Color',ColorOrder(iLine,:));
                    set(obj.hg.MeasureLines(iLine),'LineStyle','--');
                    set(obj.hg.DataLabels(iLine),'Color',ColorOrder(iLine,:));
                end
            end
            
            
        end %resetTimePlot
        function showFilteredData(obj,val)
            obj.ShowFilteredData = val;
        end
        function showMeasurements(obj,val)
            obj.ShowMeasurements = val;
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
        function [hViewer, hSignalSource] = Default
            
            hSignalSource = Inputs.SignalSimulator;
            hSignalSource.initialize();
            hSignalSource.addfilter(Inputs.HighPass(15,3));
            hViewer = GUIs.guiSignalViewer(hSignalSource);
            
        end
    end
end

function setAxesVisible(hAxes,onOff)

for i = 1:length(hAxes)
    set(hAxes(i),'Visible',onOff);
    set(allchild(hAxes(i)),'Visible',onOff);
end

end