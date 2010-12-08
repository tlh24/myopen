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
    methods
        function obj = SignalSimulator
            % Constructor
            obj.uiControlPanel();
        end
        function initialize(obj)
            obj.ChannelIds = 0:15;
        end
        function data = getData(obj)
            
            % Note this returned data size conforms to the getdata methods
            % of the Data Acquisition Toolbox [numSamples numChannels]
            data = zeros(obj.NumSamples,obj.NumChannels);
            
            % create some noisy sine waves to return
            tMax = obj.NumSamples/obj.SampleFrequency;
            t = linspace(0,tMax,obj.NumSamples); %sec
            
            A = expand(obj.SignalAmplitude,obj.NumChannels);
            f = expand(obj.SignalFrequency,obj.NumChannels);
            
            for iChannel = 1:obj.NumChannels
                p = 0.5*randn(1);
                channelData = A(iChannel)*sin(2*pi*f(iChannel)*t + p) + obj.DcOffset;
                channelData = channelData + obj.NoisePower.*randn(1,obj.NumSamples);
                
                data(:,iChannel) = channelData;
            end
        end
        function isReady = isReady(obj,numSamples) %#ok<MANU>
            % Consider adding in a phony startup delay
            isReady = true;
            fprintf('Simulator Ready with %d samples\n',numSamples);
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
                    obj.SignalAmplitude(1:4) = [0.01 1 0.2 1.2];
                case 2
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 400;
                    obj.SignalAmplitude(1:4) = [0.3 0.4 0.1 0.8];
                case 3
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 300;
                    obj.SignalAmplitude(1:4) = [1 0.2 1.2 0.01];
                case 4
                    obj.NoisePower = 0.04;
                    obj.SignalAmplitude = zeros(1,obj.NumChannels);
                    obj.SignalFrequency = 350;
                    obj.SignalAmplitude(1:4) = [0.5 1.2 0.3 1.6];
                otherwise
            end
        end
        function uiControlPanel(obj)
            hFig = UiTools.create_figure('EMG Simulator','EMG_Simulator_Figure');
            
            set(hFig,'Position',[20 50 120 300]);
            set(hFig,'WindowKeyPressFcn',@(src,evt)key_down(evt));
            set(hFig,'WindowKeyReleaseFcn',@(src,evt)key_up(evt));
            
            cellCurrentKeys = {};
            
            function key_up(evt)
                % Remove the released key
                isReleased = strcmpi(evt.Key,cellCurrentKeys);
                
                cellCurrentKeys = cellCurrentKeys(~isReleased);
                
                if ~isempty(cellCurrentKeys)
                    % Multiple keys down
                    return
                else
                    setPattern(obj,0);
                end
                
            end
            
            function key_down(evt)

                switch evt.Key
                    case 'a'
                        setPattern(obj,1);
                    case 's'
                        setPattern(obj,2);
                    case 'd'
                        setPattern(obj,3);
                    case 'f'
                        setPattern(obj,4);
                end
            
                cellCurrentKeys = unique([cellCurrentKeys {evt.Key}]);
                
            end
            
        end
        function stop(obj)
            fprintf('Simulator Stopped\n');
        end
    end
end

function A = expand(a,N)
if isscalar(a)
    A = repmat(a,1,N);
else
    A = a;
end

end