classdef SignalSimulator < Inputs.SignalInput
    % Simulator device the outputs noisy sine waves
    % TODO: add a parameter to change the output pattern on the fly.  This
    % will be useful for debugging EMG algorithms
    %
    % 01-Sept-2010 Armiger: Created
    properties
        DcOffset = 1.2;         % Sets the DC offset of the synthetic signals
        NoisePower = 0.5;       % Sets amplitude of randn() noise added to signals
        SignalFrequency = 100;  % Sets the current base frequency (Hz) for signals
        SignalAmplitude = 0.5;  % Sets the current amplitude for signals.
        % Can either be scalar or an array of size
        % numSignals
    end
    properties (SetAccess=private)
        SignalBuffer;       % internal signal data buffer
        hg;                 % handle graphics
        isRunning = false;  % maintain 'run' state
    end
    methods
        function obj = SignalSimulator
            % Constructor
        end
        function initialize(obj,channelIds,maxSamples)
            % Initialize the signal parameters and raise the control figure
            if nargin < 2
                obj.ChannelIds = 0:15;
            else
                obj.ChannelIds = channelIds;
            end
            
            if nargin < 3
                MAX_SAMPLES = 4000;
            else
                MAX_SAMPLES = maxSamples;
            end
            
            % Create internal buffer
            obj.SignalBuffer = zeros(MAX_SAMPLES,obj.NumChannels);
            
            % Raise control panel figure
            obj.uiControlPanel();
            
        end
        function data = getData(obj,numSamples,idxChannel)
            %data = getData(obj,numSamples,idxChannel)
            % get data from buffer.  most recent sample will be at (end)
            % position.
            % dataBuffer = [NumSamples by NumChannels];
            %
            % optional arguments:
            %   numSamples, the number of samples requested from getData
            %   idxChannel, an index into the desired channels.  E.g. get the
            %   first four channels with iChannel = 1:4
            
            if nargin < 2
                numSamples = obj.NumSamples;
            end
            
            if nargin < 3
                idxChannel = 1:obj.NumChannels;
            end
            
            % Note this returned data size conforms to the getdata methods
            % of the Data Acquisition Toolbox [numSamples numChannels]
            sampleBlock = 50;
            newData = zeros(sampleBlock,obj.NumChannels);
            
            % create some noisy sine waves to return
            tMax = sampleBlock/obj.SampleFrequency;
            t = linspace(0,tMax,sampleBlock); %sec
            
            A = expand(obj.SignalAmplitude,obj.NumChannels);
            f = expand(obj.SignalFrequency,obj.NumChannels);
            
            for iChannel = 1:obj.NumChannels
                % Randomize phase
                p = 0.5*randn(1);
                
                % create data with form A * sin(2*pi*f*t + phase) + offset
                channelData = A(iChannel)*sin(2*pi*f(iChannel)*t + p) + obj.DcOffset;
                
                % add signal noise on top of sine wave
                channelData = channelData + obj.NoisePower.*randn(1,sampleBlock);
                
                % assign to full channel data matrix
                newData(:,iChannel) = channelData;
            end
            
            % add the new signals to the internal buffer.  New signals go
            % on the end of the buffer (i.e. row 1 is the oldest data)
            obj.SignalBuffer = circshift(obj.SignalBuffer,[-sampleBlock 0]);
            obj.SignalBuffer(end-sampleBlock+1:end,:) = newData;
            
            % Check for buffer overrun
            bufferSize = size(obj.SignalBuffer,1);
            if (numSamples > bufferSize)
                error('NumSamples requested [%d] is greater than SignalBuffer size',numSamples,bufferSize);
            end
            
            % return the requested samples from the end of the buffer
            idxSamples = 1+bufferSize-numSamples : bufferSize;
            data = obj.SignalBuffer(idxSamples,idxChannel);
        end
        function isReady = isReady(obj,numSamples)  %#ok<INUSL>
            % Always ready, so nothing to do here.  Emulates Data
            % Acquisition toolbox behavior
            
            % Consider adding in a phony startup delay
            isReady = true;
            fprintf('[%s] Simulator Ready with %d samples\n',mfilename,numSamples);
        end
        function close(obj)
            % when closing the object, close the figure
            delete(obj.hg.hFig)
        end
        function setPattern(obj,id)
            % Set the signal parameters based on the 'id' value.
            % Amplitude, offset, and frequency are all specified herein.
            
            obj.NoisePower = 0.04;
            switch id
                case 0
                    % No movement
                    obj.SignalFrequency = 60;
                    obj.SignalAmplitude = 0.15;
                case 1
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [1.2 0 0 0];
                case 2
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [0.2 1.2 0.2 0.2];
                case 3
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [0.2 0.2 1.2 0.2];
                case 4
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [0.2 0.2 0.2 1.2];
                case 5
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [0.01 1 0.2 1.2];
                case 6
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 200;
                    obj.SignalAmplitude(1:4) = [0.3 0.4 0.1 0.8];
                case 7
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [1 0.2 1.2 0.01];
                case 8
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 350;
                    obj.SignalAmplitude(1:4) = [0.5 1.2 0.3 1.6];
                case 9
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 375;
                    obj.SignalAmplitude(1:4) = [1.5 1.2 0.3 1.6];
                case 10
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 375;
                    obj.SignalAmplitude(1:4) = [0.5 1.2 1.3 1.6];
                case 11
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 325;
                    obj.SignalAmplitude(1:4) = [0.5 1.2 0.3 1.6];
                case 12
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 325;
                    obj.SignalAmplitude(1:4) = [1.5 0.2 1.3 0.6];
                case 13
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 285;
                    obj.SignalAmplitude(1:4) = [1.5 0.2 1.3 0.6];
                case 14
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 285;
                    obj.SignalAmplitude(1:4) = [0.5 1.2 0.3 1.6];
                otherwise
            end
        end
        function uiControlPanel(obj)
            % Create a small gui that will allow keyboard callbacks to
            % change the simulator signal pattern.  Additionally, change
            % the color of the figure if it loses focus (only works on
            % MATLAB versions up to R2014a).  The mechanism
            % for detecting windows focus event does not work in R2014b.
            % The issue is related in changes in the figure's
            % AxisComponent.
            
            % create a reusable figure
            hFig = UiTools.create_figure('Signal Simulator');
            % set to lower left corner of screen
            set(hFig,'Position',[20 50 220 70]);
            
            % force redraw before forcing always on top
            drawnow
            alwaysontop(hFig);
            
            cellCurrentKeys = {};
            
            set(hFig,'WindowKeyPressFcn',@(src,evt)key_down(obj,evt));
            set(hFig,'WindowKeyReleaseFcn',@(src,evt)key_up(obj,evt));
            
            hTxt = uicontrol(hFig,...
                'Style','text',...
                'FontSize',10,...
                'String','Current Pattern: ',...
                'Position', [20    20    120    20]);
            
            set(hFig,'Visible','on');
            drawnow
            
            % Get the underlying Java reference
            % http://undocumentedmatlab.com/blog/detecting-window-focus-events
            warning('off','MATLAB:hg:PossibleDeprecatedJavaSetHGProperty');
            warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
            jFig = get(hFig, 'JavaFrame');
            jAxis = jFig.getAxisComponent;
            
            %http://undocumentedmatlab.com/blog/matlab-callbacks-for-java-events-in-r2014a
            jAxis = handle(jAxis, 'CallbackProperties');
            
            try
                % Set the focus event callback
                set(jAxis,'FocusGainedCallback',@(src,evt)focusGained);
                set(jAxis,'FocusLostCallback',@(src,evt)focusLost);
                
                focusGained();
            catch ERR
                warning(ERR.message);
            end
            
            % store handles in public property for editing
            obj.hg.hFig = hFig;
            obj.hg.hTxtCurrentPattern = hTxt;
            
            return
            
            function focusGained
                try
                    % Callback when window is active, indicating keys will
                    % change the current pattern
                    c = [0.4 0.8 0];
                    set(hFig,'Color',c);
                    set(hTxt,'BackgroundColor',c);
                    drawnow;
                    
                catch ME
                    warning(ME.message);
                end
            end
            function focusLost
                try
                    % Callback when window loses focus, indicating keys will
                    % not be accepted
                    if ishandle(hFig)
                        c = [0.9 0.1 0.1];
                        set(hFig,'Color',c);
                        set(hTxt,'BackgroundColor',c);
                        drawnow;
                    end
                catch ME
                    warning(ME.message);
                end
            end
            
            function key_up(obj,evt)
                % Remove the released key
                isReleased = strcmpi(evt.Key,cellCurrentKeys);
                
                cellCurrentKeys = cellCurrentKeys(~isReleased);
                
                if isempty(cellCurrentKeys)
                    % No keys remain down
                    setPattern(obj,0);
                    set(hTxt,'String','Current Pattern: 0 ');
                else
                    % Some keys still remain down
                    return
                end
                
            end %key_up
            function key_down(obj,evt)
                
                switch evt.Key
                    case 'a'
                        setPattern(obj,1);
                        set(hTxt,'String','Current Pattern: 1 ');
                    case 's'
                        setPattern(obj,2);
                        set(hTxt,'String','Current Pattern: 2 ');
                    case 'd'
                        setPattern(obj,3);
                        set(hTxt,'String','Current Pattern: 3 ');
                    case 'f'
                        setPattern(obj,4);
                        set(hTxt,'String','Current Pattern: 4 ');
                    case 'q'
                        setPattern(obj,5);
                        set(hTxt,'String','Current Pattern: 5 ');
                    case 'w'
                        setPattern(obj,6);
                        set(hTxt,'String','Current Pattern: 6 ');
                    case 'e'
                        setPattern(obj,7);
                        set(hTxt,'String','Current Pattern: 7 ');
                    case 'r'
                        setPattern(obj,8);
                        set(hTxt,'String','Current Pattern: 8 ');
                    case 'z'
                        setPattern(obj,9);
                        set(hTxt,'String','Current Pattern: 9 ');
                    case 'x'
                        setPattern(obj,10);
                        set(hTxt,'String','Current Pattern: 10');
                    case 'c'
                        setPattern(obj,11);
                        set(hTxt,'String','Current Pattern: 11');
                    case 'v'
                        setPattern(obj,12);
                        set(hTxt,'String','Current Pattern: 12');
                    case 'g'
                        setPattern(obj,13);
                        set(hTxt,'String','Current Pattern: 13');
                    case 'h'
                        setPattern(obj,14);
                        set(hTxt,'String','Current Pattern: 14');
                    case 'space'
                        setPattern(obj,0);
                        set(hTxt,'String','Current Pattern: 0');
                end
                
                cellCurrentKeys = unique([cellCurrentKeys {evt.Key}]);
                
            end %key_down
            
        end %uiControlPanel
        function stop(obj)
            % Required method from Inputs.SignalInput, but there's nothing
            % to start or stop, so just display a status message
            if obj.isRunning
                fprintf('[%s] Simulator Stopped\n',mfilename);
                obj.isRunning = false;
            end
        end
        function start(obj)
            % Required method from Inputs.SignalInput, but there's nothing
            % to start or stop, so just display a status message
            if ~obj.isRunning
                fprintf('[%s] Simulator Started\n',mfilename);
                obj.isRunning = true;
            end
        end
    end
end

function A = expand(a,N)
% perform scalar expansion so properties for all elements can be set as a
% single value
if isscalar(a)
    A = repmat(a,1,N);
else
    A = a;
end

end