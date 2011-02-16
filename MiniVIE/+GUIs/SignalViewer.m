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
        
        hg
        hTimer
        
    end
    methods
        function obj = SignalViewer(hSignalSource)
            setupFigure(obj)
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)obj.update());
            obj.hTimer.Period = 0.05;
            
            obj.SignalSource = hSignalSource;
            obj.resetTimePlot();
            
            start(obj.hTimer);
            
        end
        function setupFigure(obj)
            obj.hg.Figure = UiTools.create_figure('Signal Viewer','Signal Viewer');
            set(obj.hg.Figure,'Position',[50 120 900 600]);
            set(obj.hg.Figure,'CloseRequestFcn',@(src,evnt)obj.close);
            
            obj.hg.Axes = axes('Parent',obj.hg.Figure,'Units','Pixels','Position',[80 250 750 300]);
            
            obj.hg.PanelDomain = uibuttongroup(obj.hg.Figure,'Units','Pixels','Position',[80 50 200 150]);
            set(obj.hg.PanelDomain,'Title','Plot Domain');
            % Create three radio buttons in the button group.
            obj.hg.ToggleFFT = uicontrol('Style','Togglebutton','String','FFT','Units','Normalized',...
                'pos',[0.1 0.1 0.8 0.3],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            obj.hg.ToggleTimeHistory = uicontrol('Style','Togglebutton','String','Time','Units','Normalized',...
                'pos',[0.1 0.5 0.8 0.3],'parent',obj.hg.PanelDomain,'HandleVisibility','off');
            % Initialize some button group properties.
            set(obj.hg.PanelDomain,'SelectedObject',obj.hg.ToggleTimeHistory); 
            set(obj.hg.PanelDomain,'Visible','on');
            
        end
        function update(obj)
            
            hSelected = get(obj.hg.PanelDomain,'SelectedObject');
            
            switch hSelected
                case obj.hg.ToggleTimeHistory
                    xlabel(obj.hg.Axes,'Time (s)');
                    ylabel(obj.hg.Axes,'Volts');
                    ylim(obj.hg.Axes,[-2 14]);
                    obj.updateTimeDomain();
                case obj.hg.ToggleFFT
                    xlabel(obj.hg.Axes,'Frequency (Hz)');
                    ylabel(obj.hg.Axes,'|Y(f)|');
                    ylim(obj.hg.Axes,[0 1]);
                    obj.updateFrequencyDomain();
                otherwise
                    disp('Invalid Selection');
            end

        end
        
        function updateFrequencyDomain(obj)
            
            channelData = obj.SignalSource.getData();
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
                set(obj.hg.TimePlotLines(i),'YData',2*abs(Y(1:NFFT/2+1)),'XData',f);
                
            end
            
        end
        function updateTimeDomain(obj)
            drawnow
            
            offset = 1.5 * (1:obj.SignalSource.NumChannels);
            
            channelData = obj.SignalSource.getData();
            
            if isempty(channelData) || ~ishandle(obj.hg.Figure)
                return;
            end
            for i = obj.SelectedChannels
                set(obj.hg.TimePlotLines(i),'YData',channelData(:,i)+offset(i),'XData',1:size(channelData,1));
            end
            
        end
        function resetTimePlot(obj)
            % Create plot lines
            obj.hg.TimePlotLines = plot(obj.hg.Axes,zeros(2,obj.SignalSource.NumChannels));
            
        end
        function close(obj)
            try
                stop(obj.hTimer);
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
