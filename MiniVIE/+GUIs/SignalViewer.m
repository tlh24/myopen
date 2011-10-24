classdef SignalViewer < Common.MiniVieObj
    % Simple Viewer that adds ability to show both time and frequency
    % response, inspired by LAQ.m from CEVEN
    %
    % Use default configuration:
    %  obj = GUIs.SignalViewer.Default;
    %
    % Armiger - 2/15/2011: Created
    properties
        
        SignalSource
        
        SelectedChannels = 1:4;
        
        ShowFilteredData = 1;
        ModeSelect = GUIs.SignalViewer.TimeDomain;
        
        hg
        hTimer
        hChannelSelect
    end
    properties (SetAccess = private)
        featureBuffer = [];
    end
    properties (Constant = true)
        FFT = 1;
        TimeDomain = 2;
        Features = 3;

        numFeatures = 4;
        
        FullAxesPosition = [80 250 750 300];
    end
    methods
        function obj = SignalViewer(hSignalSource)
            
            if isempty(hSignalSource)
                return
            else
                obj.SignalSource = hSignalSource;
            end
            
            obj.setupFigure();
            
            obj.SignalSource.NumSamples = 3000;
            
            obj.hChannelSelect = GUIs.guiChannelSelect;
            addlistener(obj.hChannelSelect,'ValueChange',@(src,evt)obj.updateChannels)
            obj.hChannelSelect.setAvailableChannels(obj.SignalSource.NumChannels);
            obj.SelectedChannels = obj.hChannelSelect.SelectedChannels;
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)obj.update());
            obj.hTimer.Period = 0.05;
            
            obj.resetTimePlot();
            
            numSamplesToDisplay = 200;
            obj.featureBuffer = NaN(obj.SignalSource.NumChannels,obj.numFeatures,numSamplesToDisplay);
            
            obj.updateFigure();
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
            obj.hg.Toggle(obj.FFT) = uicontrol('Style','Togglebutton','String','FFT','Units','Normalized',...
                'pos',[0.1 0.1 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            obj.hg.Toggle(obj.Features) = uicontrol('Style','Togglebutton','String','Features','Units','Normalized',...
                'pos',[0.1 0.7 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            obj.hg.Toggle(obj.TimeDomain) = uicontrol('Style','Togglebutton','String','Time','Units','Normalized',...
                'pos',[0.1 0.4 0.8 0.25],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            % Initialize some button group properties.
            set(obj.hg.PanelDomain,'SelectionChangeFcn',@(src,evt)selcbk(src));
            set(obj.hg.PanelDomain,'Visible','on');
            
            function selcbk(source)
                switch get(source,'SelectedObject')
                    case obj.hg.Toggle(obj.TimeDomain)
                        obj.ModeSelect = GUIs.SignalViewer.TimeDomain;
                    case obj.hg.Toggle(obj.FFT)
                        obj.ModeSelect = GUIs.SignalViewer.FFT;
                    case obj.hg.Toggle(obj.Features)
                        obj.ModeSelect = GUIs.SignalViewer.Features;
                end
            end
        end
        function updateFigure(obj)
            % Synch Parameters and uiobjects
            %SelectedChannels = 1:4;
            set(obj.hg.cbFilter,'value',obj.ShowFilteredData);
            set(obj.hg.PanelDomain,'SelectedObject',obj.hg.Toggle(obj.ModeSelect));            
        end
        function update(obj)
            
            switch obj.ModeSelect
                case GUIs.SignalViewer.Features
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
                case GUIs.SignalViewer.TimeDomain
                    setAxesVisible(obj.hg.Axes(1),'on');
                    setAxesVisible(obj.hg.Axes(2:4),'off');
                    set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                    xlabel(obj.hg.Axes(1),'Sample Number');
                    ylabel(obj.hg.Axes(1),'Volts');
                    ylim(obj.hg.Axes(1),[-2 14]);
                    obj.updateTimeDomain();
                case GUIs.SignalViewer.FFT
                    setAxesVisible(obj.hg.Axes(1),'on');
                    setAxesVisible(obj.hg.Axes(2:4),'off');
                    set(obj.hg.Axes(1),'OuterPosition',[0 0 1 1]);
                    xlabel(obj.hg.Axes(1),'Frequency (Hz)');
                    ylabel(obj.hg.Axes(1),'|Y(f)|');
                    ylim(obj.hg.Axes(1),[0 1]);
                    obj.updateFrequencyDomain();
                otherwise
                    disp('Invalid Mode Selection');
            end
            drawnow
            
        end
        
        function updateFrequencyDomain(obj)
            
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
            
            for i = obj.SelectedChannels
                Y = fft(channelData(:,i),NFFT)/L;
                
                % Plot single-sided amplitude spectrum.
                set(obj.hg.PlotLines{1}(i),'YData',2*abs(Y(1:NFFT/2+1)),'XData',f);
                
            end
            
        end
        function updateTimeDomain(obj)
                        
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
            for i = obj.SelectedChannels
                set(obj.hg.PlotLines{1}(i),'YData',channelData(:,i)+offset(i),'XData',1:size(channelData,1));
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
            
            windowSize = 150;
            %                 zc_thresh = 0.1;
            %                 ssc_thresh = 0.1;
            
            features = feature_extract(channelData',windowSize);
            
            obj.featureBuffer = circshift(obj.featureBuffer,[0 0 1]);
            obj.featureBuffer(:,:,1) = features;
                        
            for iFeature = 1:obj.numFeatures
                for iChannel = obj.SelectedChannels
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
            obj = GUIs.SignalViewer(hSignalSource);
        end
    end
end

function setAxesVisible(hAxes,onOff)

    for i = 1:length(hAxes)
        set(hAxes(i),'Visible',onOff);
        set(allchild(hAxes(i)),'Visible',onOff);
    end

end