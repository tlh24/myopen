classdef SignalSimulator < Inputs.SignalInput
    % Simulator device the outputs noisy sine waves
    % TODO: add a parameter to change the output pattern on the fly.  This
    % will be useful for debugging EMG algorithms
    %
    % 01-Sept-2010 Armiger: Created
    properties
        DcOffset = 1.2;
        NoisePower = 0.5;
        SignalFrequency = 100; %Hz
        SignalAmplitude = 0.5;
    end
    properties (SetAccess=private)
        SignalBuffer;
        hg;
        isRunning = false;
    end
    methods
        function obj = SignalSimulator
            % Constructor
        end
        function initialize(obj,channelIds,maxSamples)
            
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
                p = 0.5*randn(1);
                channelData = A(iChannel)*sin(2*pi*f(iChannel)*t + p) + obj.DcOffset;
                channelData = channelData + obj.NoisePower.*randn(1,sampleBlock);
                
                newData(:,iChannel) = channelData;
            end
            % Following two lines were added but unsure what they were intended to do.  Disabling on check-in
            %lastVal = obj.SignalBuffer(end,end);
            
            %newData(:,end) = (1:size(newData,1)) + lastVal;
            
            obj.SignalBuffer = circshift(obj.SignalBuffer,[-sampleBlock 0]);
            obj.SignalBuffer(end-sampleBlock+1:end,:) = newData;
            
            % Check for buffer overrun
            bufferSize = size(obj.SignalBuffer,1);
            if (numSamples > bufferSize)
                error('NumSamples requested [%d] is greater than SignalBuffer size',numSamples,bufferSize);
            end
            
            idxSamples = 1+bufferSize-numSamples : bufferSize;
            data = obj.SignalBuffer(idxSamples,idxChannel);
        end
        function isReady = isReady(obj,numSamples)  %#ok<INUSL>
            % Consider adding in a phony startup delay
            isReady = true;
            fprintf('[%s] Simulator Ready with %d samples\n',mfilename,numSamples);
        end
        function close(obj)
            delete(obj.hg.hFig)
        end
        function setPattern(obj,id)
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
            hFig = UiTools.create_figure('EMG Simulator','EMG_Simulator_Figure');
            
            if isempty(hFig)
                error('Failed to create figure');
            else
                set(hFig,'Position',[1 1 1 1]);
                drawnow
                alwaysontop(hFig);
            end
            
            obj.hg.hFig = hFig;
            
            cellCurrentKeys = {};
            
            set(obj.hg.hFig,'Position',[20 50 200 70]);
            set(obj.hg.hFig,'WindowKeyPressFcn',@(src,evt)key_down(evt));
            set(obj.hg.hFig,'WindowKeyReleaseFcn',@(src,evt)key_up(evt));
            
            obj.hg.hTxtCurrentPattern = uicontrol(obj.hg.hFig,...
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
            catch ME
                warning(ME.message);
            end
            
            function focusGained
                try
                    % Callback when window is active, indicating keys will
                    % change the current pattern
                    c = [0.4 0.8 0];
                    set(hFig,'Color',c);
                    set(obj.hg.hTxtCurrentPattern,'BackgroundColor',c);
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
                        set(obj.hg.hTxtCurrentPattern,'BackgroundColor',c);
                        drawnow;
                    end
                catch ME
                    warning(ME.message);
                end
            end
            
            function key_up(evt)
                % Remove the released key
                isReleased = strcmpi(evt.Key,cellCurrentKeys);
                
                cellCurrentKeys = cellCurrentKeys(~isReleased);
                
                if isempty(cellCurrentKeys)
                    % No keys remain down
                    setPattern(obj,0);
                    set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 0 ');
                else
                    % Some keys still remain down
                    return
                end
                
            end %key_up
            
            function key_down(evt)
                
                switch evt.Key
                    case 'a'
                        setPattern(obj,1);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 1 ');
                    case 's'
                        setPattern(obj,2);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 2 ');
                    case 'd'
                        setPattern(obj,3);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 3 ');
                    case 'f'
                        setPattern(obj,4);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 4 ');
                    case 'q'
                        setPattern(obj,5);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 5 ');
                    case 'w'
                        setPattern(obj,6);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 6 ');
                    case 'e'
                        setPattern(obj,7);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 7 ');
                    case 'r'
                        setPattern(obj,8);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 8 ');
                    case 'z'
                        setPattern(obj,9);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 9 ');
                    case 'x'
                        setPattern(obj,10);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 10');
                    case 'c'
                        setPattern(obj,11);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 11');
                    case 'v'
                        setPattern(obj,12);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 12');
                    case 'g'
                        setPattern(obj,13);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 13');
                    case 'h'
                        setPattern(obj,14);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 14');
                    case 'space'
                        setPattern(obj,0);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 0');
                end
                
                cellCurrentKeys = unique([cellCurrentKeys {evt.Key}]);
                
            end %key_down
            
        end %uiControlPanel
        function stop(obj)
            if obj.isRunning
                fprintf('[%s] Simulator Stopped\n',mfilename);
                obj.isRunning = false;
            end
        end
        function start(obj)
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