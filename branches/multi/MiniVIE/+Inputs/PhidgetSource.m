classdef PhidgetSource < Inputs.SignalInput
    % Create a Phidget interface object that conforms to the MiniVIE
    % Inputs.SignalInput base class.  This allows the Phidget to be used as
    % an input source for classification algorithms.
    %
    % Example usage:
    
    % hSource = Inputs.PhidgetSource;
    % hSource.initialize()
    % hViewer = GUIs.guiSignalViewer(hSource);
    %
    % 12Feb2013 Armiger: Created
    properties
        hPhidget
    end
    properties (SetAccess=private)
        SignalBuffer;
    end
    
    methods
        function initialize(obj)
            obj.hPhidget = Inputs.PhidgetAccel();
            obj.hPhidget.initialize();
            obj.ChannelIds = [0 1 2];
            
            MAX_SAMPLES = 4000;
            
            obj.SignalBuffer = zeros(MAX_SAMPLES,obj.NumChannels);
            
        end
        function bufferedData = getData(obj,numSamples)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.  User should check obj.AnalogInput.SamplesAvailable
            % for a deterministic result
            
            if nargin < 2
                numSamples = obj.NumSamples;
            end
            
            % Get 10 samples at a time and return sample buffer
            sampleBlock = 1;
            newData = zeros(sampleBlock,size(obj.SignalBuffer,2));
            for i = 1:sampleBlock
                newSample = obj.hPhidget.getData();
                if isempty(newSample)
                    fprintf('[%s] No Data\n',mfilename);
                    bufferedData = [];
                    return
                end
                newData(i,:) = newSample;
                %pause(0.01);
            end
            
            obj.SignalBuffer = circshift(obj.SignalBuffer,[-sampleBlock 0]);
            obj.SignalBuffer(end-sampleBlock+1:end,:) = newData;
            
            % Check for buffer overrun
            bufferSize = size(obj.SignalBuffer,1);
            if (numSamples > bufferSize)
                error('NumSamples requested [%d] is greater than SignalBuffer size',numSamples,bufferSize);
            end
            
            idxSamples = 1+bufferSize-numSamples : bufferSize;
            bufferedData = obj.SignalBuffer(idxSamples,:);
        end
        function isReady = isReady(obj,numSamples)
            isReady = true;
        end
        function start(obj)
        end
        function stop(obj)
        end
        function close(obj)
            close(obj.hPhidget);
        end
    end
    methods (Static = true)
        function [hSource hViewer] = Test
            hSource = Inputs.PhidgetSource;
            hSource.initialize()
            hViewer = GUIs.guiSignalViewer(hSource);
            hViewer.DisplaySamples = 50;
            
        end
    end
end