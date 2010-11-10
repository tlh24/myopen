classdef SignalSimulator < Inputs.SignalInput
    % Simulator device the outputs noisy sine waves
    % TODO: add a parameter to change the output pattern on the fly.  This
    % will be useful for debugging EMG algorithms
    %
    % 01-Sept-2010 Armiger: Created
    properties
        dcOffset = 1.2;
        noisePower = 0.5;
    end
    methods
        function obj = SignalSimulator
            % Constructor
        end
        function initialize(obj)
            obj.ChannelIds = 0:15;
        end
        function data = getData(obj)
            
            data = zeros(obj.NumChannels,obj.NumSamples);
            
            t = linspace(0,2*pi,obj.NumSamples);
            
            f = linspace(2,400,obj.NumChannels);
            for iChannel = 1:obj.NumChannels
                channelData = sin(2*pi*f(iChannel)*t) + obj.dcOffset;
                channelData = channelData + obj.noisePower.*randn(1,obj.NumSamples);
                
                data(iChannel,:) = channelData;
            end
            
            data = data';
            
        end
        function isReady = isReady(obj,numSamples) %#ok<MANU>
            % Consider adding in a phony startup delay 
            isReady = true;
            fprintf('Simulator Ready with %d samples\n',numSamples);
        end
        function stop(obj)
            fprintf('Simulator Stopped\n');
        end
    end
end