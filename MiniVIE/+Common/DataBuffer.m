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
        function addData(obj,newData,channelIds)
            % Add new data to buffer.  if more samples than buffer is
            % provided, then data will be clipped
            
            if nargin < 3
                channelIds = 1:obj.NumChannels;
            end
            
            % new data may be a different number of channels if the
            % channelIds param is set
            [numNewSamples, numChannels] = size(newData);
            
            assert(numChannels == length(channelIds),...
                '[%s] Error new data must be size [%d numSamples]. Input was [%d %d].',...
                mfilename,length(channelIds),numChannels,numNewSamples)
            
            if numNewSamples > obj.NumSamples
                % Replace entire buffer (crop new samples if needed)
                obj.dataBuffer(:,channelIds) = ...
                    newData(end-size(obj.dataBuffer,1)+1:end,channelIds);
            else

                % shift the channels requested
                obj.dataBuffer(:,channelIds) = circshift(obj.dataBuffer(:,channelIds),[-numNewSamples 0]);
                rowIdx = size(obj.dataBuffer,1)-numNewSamples+1:size(obj.dataBuffer,1);
                obj.dataBuffer(rowIdx,channelIds) = newData;
            end
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
            
            if numSamples > obj.NumSamples
                error('Requested sammples %d is greated than buffer size %d',numSamples,obj.NumSamples);
            end
            
            data = obj.dataBuffer(size(obj.dataBuffer,1)-numSamples+1:size(obj.dataBuffer,1),idxChannel);
            
        end
    end
end
