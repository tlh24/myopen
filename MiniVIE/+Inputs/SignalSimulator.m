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
    end
    methods
        function obj = SignalSimulator
            % Constructor
            obj.uiControlPanel();
        end
        function initialize(obj)
            obj.ChannelIds = 0:15;
            
            MAX_SAMPLES = 2000;
            
            obj.SignalBuffer = zeros(MAX_SAMPLES,obj.NumChannels);
            
        end
        function bufferedData = getData(obj)
            
            % Note this returned data size conforms to the getdata methods
            % of the Data Acquisition Toolbox [numSamples numChannels]
            sampleBlock = 150;
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
            
            
            obj.SignalBuffer = circshift(obj.SignalBuffer,[-sampleBlock 0]);
            obj.SignalBuffer(end-sampleBlock+1:end,:) = newData;
            
            bufferedData = obj.SignalBuffer(end-obj.NumSamples+1:end,:);
        end
        function isReady = isReady(obj,numSamples) %#ok<MANU>
            % Consider adding in a phony startup delay
            isReady = true;
            fprintf('Simulator Ready with %d samples\n',numSamples);
        end
        function close(obj)
            delete(obj.hg.hFig)
        end
        function setPattern(obj,id)
            obj.NoisePower = 0.01;
            switch id
                case 0
                    % No movement
                    obj.SignalFrequency = 60;
                    obj.SignalAmplitude = 0.01;
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
                    obj.SignalFrequency = 400;
                    obj.SignalAmplitude(1:4) = [0.3 0.4 0.1 0.8];
                case 7
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [1 0.2 1.2 0.01];
                case 8
                    obj.NoisePower = 0.04;
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 350;
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
            
            set(obj.hg.hFig,'Position',[20 50 200 70]);
            set(obj.hg.hFig,'WindowKeyPressFcn',@(src,evt)key_down(evt));
            set(obj.hg.hFig,'WindowKeyReleaseFcn',@(src,evt)key_up(evt));
            
            obj.hg.hTxtCurrentPattern = uicontrol(obj.hg.hFig,...
                'Style','text',...
                'String','Current Pattern: ',...
                'Position', [20    20    120    20]);
            
            set(hFig,'Visible','on');

            cellCurrentKeys = {};
            
            function key_up(evt)
                % Remove the released key
                isReleased = strcmpi(evt.Key,cellCurrentKeys);
                
                cellCurrentKeys = cellCurrentKeys(~isReleased);
                
                if isempty(cellCurrentKeys)
                    % No keys remain down
                    setPattern(obj,0);
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
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 1');
                    case 's'
                        setPattern(obj,2);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 2');
                    case 'd'
                        setPattern(obj,3);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 3');
                    case 'f'
                        setPattern(obj,4);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 4');
                    case 'q'
                        setPattern(obj,5);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 5');
                    case 'w'
                        setPattern(obj,6);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 6');
                    case 'e'
                        setPattern(obj,7);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 7');
                    case 'r'
                        setPattern(obj,8);
                        set(obj.hg.hTxtCurrentPattern,'String','Current Pattern 8');
                end
            
                cellCurrentKeys = unique([cellCurrentKeys {evt.Key}]);
                
            end %key_down
            
        end
    end %uiControlPanel
    
    methods (Static = true)
        function stop()
            fprintf('Simulator Stopped\n');
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