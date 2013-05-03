classdef IntanUdp < Inputs.SignalInput
    % Class for interfacing Intan Demo Code via pnet.
    %     
    %     % Test usage:
    %     obj = Inputs.IntanUdp.getInstance;
    %     obj.initialize();
    %     hViewer = GUIs.guiSignalViewer(a);
    properties
        UdpStreamReceivePortNumLocal = 5678;
    end
    properties (SetAccess = private)
        IsInitialized = 0;
        UdpStreamReceiveSocket = [];
        BufferSize = 100;
        UdpBuffer1
        newData1
        ptr1
        sum1
        numPacketsReceived = 0;
        dataBuffer
    end
    methods (Access = private)
        function obj = IntanUdp
            % Creator is private to force singleton
            reset_buffers(obj);
        end
    end
    methods
        %initialize(obj);
        function [ status ] = initialize(obj)
            % Initialize network interface to NFU.
            % [ status ] = initialize(obj)
            %
            % status = 0: no error
            % status < 0: Failed
            obj.SampleFrequency = 1000; % Hz
            obj.ChannelIds = (1:16);
            
            status = 0;
            
            if obj.IsInitialized
                fprintf('[%s] UDP Comms already initialized\n',mfilename);
                return
            end
            
            % Open a udp port to receive streaming data on
            obj.UdpStreamReceiveSocket = PnetClass(obj.UdpStreamReceivePortNumLocal);
            if ~obj.UdpStreamReceiveSocket.initialize()
                fprintf(2,'[%s] Failed to initialize udp socket\n',mfilename);
                status = -1;
                return
            elseif (obj.UdpStreamReceiveSocket.hSocket ~= 0)
                fprintf(2,'[%s] Expected receive socket id == 0, got socket id == %d\n',mfilename,obj.UdpStreamReceiveSocket.hSocket);
            end

            obj.dataBuffer = zeros(obj.NumChannels,5000);
            
            obj.IsInitialized = true;
            
        end
        function data = getData(obj,numSamples)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros. 
            
            if nargin < 2
                numSamples = obj.NumSamples;
            end                
            
            obj.update();  % read available packets
            
            cellData = obj.get_buffer(1);
            if isempty(cellData)
                %fprintf('[%s] %s No Data\n',mfilename, datestr(now));
            end

            
            % Loop through all available packets and find cpch data
            for i = 1:length(cellData)

                convertedFrame = cellData{i};
                
                % Place new data in the buffer.  Note this won't overrun
                % the buffer since there are only 10 samples per packet
                [numChannels, numNewSamples] = size(convertedFrame);
                obj.dataBuffer = circshift(obj.dataBuffer,[0 -numNewSamples]);
                
                obj.dataBuffer(1:numChannels,end-numNewSamples+1:end) = convertedFrame;
            end
            
            dataBuff = obj.dataBuffer(:,end-numSamples+1:end)';
            
            EMG_GAIN = 0.01;  %TODO abstract
            data = EMG_GAIN .* double(dataBuff);
            
        end

        function isReady = isReady(obj,numSamples) % Consider removing extra arg
            isReady = 1;
        end
        function start(obj)
        end
        function stop(obj)
        end
        function close(obj)
        end
        
        function reset_buffers(obj)
            obj.BufferSize = 100;
            
            obj.UdpBuffer1 = cell(obj.BufferSize,1);
            
            obj.newData1 = false(obj.BufferSize,1);
            
            obj.ptr1 = 1;
            
            obj.sum1 = 0;
            
        end
        
        function cellData = get_buffer(obj,id)
            % read unread buffer data and return array of cells
            
            switch id
                case 1
                    %fprintf('[%s] reading %d unread data packets\n',mfilename,sum(obj.newData1));
                    
                    idOfInterest = obj.ptr1:(obj.ptr1+obj.BufferSize-1);
                    idOfInterest = idOfInterest(:) & obj.newData1(:);
                    
                    % wrap indices eg: 99 100 1 2 3
                    idOfInterest(idOfInterest > obj.BufferSize) = idOfInterest(idOfInterest > obj.BufferSize) - obj.BufferSize;
                    
                    % return buffer
                    % 05Feb2013: Verified signal packet ordering is correct
                    % using the nfuSimulator
                    cellData = obj.UdpBuffer1(idOfInterest);
                    
                    % mark all as read
                    obj.newData1(:) = false;
            end
            
        end
        function update(obj)
            % Update function reads any buffered udp packets and stores
            % them for later use.  Packets are routed based on size to the
            % appropriate buffer
            
            [cellDataBytes, numReads] = obj.UdpStreamReceiveSocket.getAllData();
            
            %check how far back we read to get caught up with stream
            % if numReads > 20
            %     numReads
            % end
            for i = 1:numReads
                dataBytes = cellDataBytes{i};
                len = length(dataBytes);
                if (len == 5760)
                    % Store EMG Data
                    %
                    % advance packet counter
                    obj.numPacketsReceived = obj.numPacketsReceived + 1;
                    
                    % read data and mark as new
                    obj.UdpBuffer1{obj.ptr1} = swapbytes(typecast(dataBytes,'double'));
                    obj.newData1(obj.ptr1) = true;
                    
                    % advance ptr
                    obj.ptr1 = obj.ptr1 + 1;
                    if obj.ptr1 > obj.BufferSize
                        obj.ptr1 = 1;
                    end
                    
                    obj.sum1 = obj.sum1 + 1;
                elseif (len == 5760*8)
                    % Store EMG Data
                    %
                    % advance packet counter
                    obj.numPacketsReceived = obj.numPacketsReceived + 1;
                    
                    % read data and mark as new
                    chData = swapbytes(typecast(dataBytes,'double'));
                    chData = reshape(chData,720,8)';
                    obj.UdpBuffer1{obj.ptr1} = chData;
                    obj.newData1(obj.ptr1) = true;
                    
                    % advance ptr
                    obj.ptr1 = obj.ptr1 + 1;
                    if obj.ptr1 > obj.BufferSize
                        obj.ptr1 = 1;
                    end
                    
                    obj.sum1 = obj.sum1 + 1;
                elseif (len == 60*8*16)
                    % Store EMG Data
                    %
                    % advance packet counter
                    obj.numPacketsReceived = obj.numPacketsReceived + 1;
                    
                    % read data and mark as new
                    chData = swapbytes(typecast(dataBytes,'double'));
                    chData = reshape(chData,60,16)';
                    obj.UdpBuffer1{obj.ptr1} = chData;
                    obj.newData1(obj.ptr1) = true;
                    
                    % advance ptr
                    obj.ptr1 = obj.ptr1 + 1;
                    if obj.ptr1 > obj.BufferSize
                        obj.ptr1 = 1;
                    end
                    
                    obj.sum1 = obj.sum1 + 1;
                elseif len > 0
                    %len
                    fprintf('[%s] Unexpected Packet Size: %d bytes\n',mfilename,len);
                end
            end
        end
    end
    methods (Static)
        function [obj hViewer] = Default
            % [obj hViewer] = Default
            % Test usage:
            obj = Inputs.IntanUdp.getInstance;
            obj.initialize();
            hViewer = GUIs.guiSignalViewer(obj);
        end
        function singleObj = getInstance(cmd)
            persistent localObj
            if nargin < 1
                cmd = 0;
            end
            
            if cmd < 0
                fprintf('[%s] Deleting Udp comms object\n',mfilename);
                try
                    obj.UdpStreamReceiveSocket.close();
                end
                try
                    obj.UdpCommandSocket.close();
                end
                %IsInitialized
                localObj = [];
                return
            end
            
            if isempty(localObj) || ~isvalid(localObj)
                fprintf('[%s] Calling constructor\n',mfilename);
                localObj = Inputs.IntanUdp;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
    end
end
