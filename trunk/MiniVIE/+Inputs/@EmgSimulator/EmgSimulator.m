classdef EmgSimulator < Inputs.SignalInput
    % Loop pre-recorded EMG data;
    %
    %
    % 09-Oct-2011 Armiger: Created
    properties
        patternData = {};
        CurrentPattern;
        
        lastAccess = clock;
    end
    properties (SetAccess=private)
        patternPointer;
        SignalBuffer;
        hg;
        isRunning = false;
    end
    properties (Constant = true)
        DEFAULT_PATTERN = 9; % No Movement for data file
    end
    methods
        function obj = EmgSimulator(patternFileName)
            % Constructor
            obj.uiControlPanel();
            obj.CurrentPattern = obj.DEFAULT_PATTERN;
            
            if nargin < 1
                patternFileName = 'emgPatternData.mat';
            end
            
            try
                fprintf('[%s] Loading EMG File: %s...',mfilename,patternFileName);
                load(patternFileName);
                obj.patternData = emgPatternData;
                fprintf('Done\n');
            catch ME
                error('Failed to load EMG data file %s\n',patternFileName);
            end
            
            obj.patternPointer = ones(1,length(obj.patternData));
            
            initialize(obj);
        end
        function initialize(obj)
            obj.ChannelIds = 0:size(obj.patternData{1},2)-1;
            
            MAX_SAMPLES = 3000;
            
            obj.SignalBuffer = zeros(MAX_SAMPLES,obj.NumChannels);
            
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
            
            t = clock;
            tElapsed = etime(t,obj.lastAccess);
            obj.lastAccess = t;
            
            numSamplesInBuffer = size(obj.SignalBuffer,1);
            samplesElapsed = round(tElapsed*obj.SampleFrequency);
            
            samplesElapsed = min(samplesElapsed,numSamplesInBuffer);
            samplesElapsed = max(samplesElapsed,1);
            
            % shift buffer
            obj.SignalBuffer = circshift(obj.SignalBuffer,[-samplesElapsed 0]);
            newDataStart = obj.patternPointer(obj.CurrentPattern);
            newDataEnd = obj.patternPointer(obj.CurrentPattern) + samplesElapsed -1;
            
            newDataIds = newDataStart:newDataEnd;
            numPatternSamples = size(obj.patternData{obj.CurrentPattern},1);
            while any(newDataIds > numPatternSamples)
                newDataIds(newDataIds > numPatternSamples) = ...
                    newDataIds(newDataIds > numPatternSamples) - numPatternSamples;
            end
            
            newData = obj.patternData{obj.CurrentPattern}(newDataIds,:);
            obj.SignalBuffer(end-samplesElapsed+1:end,:) = newData;
            
            try
                obj.patternPointer(obj.CurrentPattern) = newDataIds(end);
            catch
                newDataIds
            end
            
            numSamplesRequested = numSamples;
            if numSamplesInBuffer < numSamplesRequested
                error('More samples requested "%d" than buffered "%d" \n',numSamplesRequested,numSamplesInBuffer);
            else
                data = obj.SignalBuffer(end-numSamples+1:end,idxChannel);
            end
        end
        function isReady = isReady(obj,numSamples) %#ok<INUSL>
            % Consider adding in a phony startup delay
            isReady = true;
            fprintf('[%s] Simulator Ready with %d samples\n',mfilename,numSamples);
        end
        function close(obj)
            delete(obj.hg.hFig)
        end
        function setPattern(obj,id)
            % TODO constrain value
            obj.CurrentPattern = id;
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
                'String','Current Pattern: ',...
                'Position', [20    20    120    20]);
            
            set(hFig,'Visible','on');
            
            function key_up(evt)
                % Remove the released key
                isReleased = strcmpi(evt.Key,cellCurrentKeys);
                
                cellCurrentKeys = cellCurrentKeys(~isReleased);
                
                if isempty(cellCurrentKeys)
                    % No keys remain down
                    obj.CurrentPattern = obj.DEFAULT_PATTERN;
                    set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 0');
                else
                    % Some keys still remain down
                    return
                end
                
            end %key_up
            
            function key_down(evt)
                
                switch evt.Key
                    case 'a'
                        setPattern(obj,1);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 1');
                    case 's'
                        setPattern(obj,2);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 2');
                    case 'd'
                        setPattern(obj,3);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 3');
                    case 'f'
                        setPattern(obj,4);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 4');
                    case 'q'
                        setPattern(obj,5);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 5');
                    case 'w'
                        setPattern(obj,6);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 6');
                    case 'e'
                        setPattern(obj,7);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 7');
                    case 'r'
                        setPattern(obj,8);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern: 8');
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
