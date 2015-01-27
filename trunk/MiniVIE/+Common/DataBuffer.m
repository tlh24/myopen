classdef DataBuffer < handle
    % Class for buffering data streams
    %
    % 27JAN2015 Armiger: Created
    properties
        IsInitialized = 0;
        NumChannels = 8;
        NumSamples = 1000;
    end
    properties
        dataBuffer
    end
    methods
        function obj = DataBuffer(numSamples,numChannels)
            % Create data buffer.  buffer will circular shift results when
            % adding data and always return data in correct order
            
            % setup default input parameters
            if nargin > 0
                obj.NumSamples = numSamples;
            end
            if nargin > 1
                obj.NumChannels = numChannels;
            end
            
            % create empty buffer
            obj.dataBuffer = zeros(obj.NumSamples,obj.NumChannels);
        end
        function addData(obj,newData)
            % Add new data to buffer.  if more samples than buffer is
            % provided, then data will be clipped
            
            [numNewSamples, numChannels] = size(newData);
            
            assert(numChannels == obj.NumChannels,'[%s] Error new data must be size [%d numSamples]. Input was [%d %d].',...
                mfilename, obj.NumChannels,numChannels,numNewSamples)
            
            if numNewSamples > obj.NumSamples
                % Replace entire buffer
                obj.dataBuffer = newData(:,end-size(obj.dataBuffer,1)+1:end)';
            else
                
                obj.dataBuffer = circshift(obj.dataBuffer,[-numNewSamples 0]);
                rowIdx = size(obj.dataBuffer,1)-numNewSamples+1:size(obj.dataBuffer,1);
                obj.dataBuffer(rowIdx,:) = newData;
            end
        end
        
        function data = getData(obj,numSamples)
            % get data from buffer.  most recent sample will be at (end)
            % position.
            % dataBuffer = [NumSamples by NumChannels];
            
            if numSamples > obj.NumSamples
                error('Requested sammples %d is greated than buffer size %d',numSamples,obj.NumSamples);
            end
            
            data = obj.dataBuffer(size(obj.dataBuffer,1)-numSamples+1:size(obj.dataBuffer,1),:);
            
        end
    end
end
