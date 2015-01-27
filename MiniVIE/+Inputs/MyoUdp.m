classdef MyoUdp < Inputs.SignalInput
    % Class for interfacing Thalmic Labs Myo Cuff via pnet udp.
    %
    %     % Test usage:
    %     obj = Inputs.MyoUdp.getInstance;
    %     obj.initialize();
    %     hViewer = GUIs.guiSignalViewer(a);
    properties
        UdpStreamReceivePortNumLocal = 10001;
    end
    properties (SetAccess = private)
        IsInitialized = 0;
        UdpStreamReceiveSocket;
        Buffer
        numPacketsReceived = 0;
        numValidPackets = 0;
    end
    methods (Access = private)
        function obj = MyoUdp
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
            obj.SampleFrequency = 200; % Hz
            obj.ChannelIds = (1:8);
            
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
            
            % data is [numSamples x numChannels]
            obj.Buffer = Common.DataBuffer(5000,obj.NumChannels);
            
            obj.IsInitialized = true;
            
        end
        function data = getData(obj,numSamples)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.
            %
            % data is [numSamples x numChannels]
            
            if nargin < 2
                numSamples = obj.NumSamples;
            end
            
            obj.update();
            
            data = obj.Buffer.getData(numSamples);
            
        end
        function update(obj)
            
            % Update function reads any buffered udp packets and stores
            % them for later use.
            [cellDataBytes, numReads] = obj.UdpStreamReceiveSocket.getAllData(1e6);
            
            packetSize = 12;
            isCorrectSize = cellfun(@length,cellDataBytes) == packetSize;
            nValidPackets = sum(isCorrectSize);
            
            % update totals
            obj.numPacketsReceived = obj.numPacketsReceived + numReads;
            obj.numValidPackets = obj.numValidPackets + nValidPackets;
            
            % convert 2 2d array: [newPackets by numElements]
            M = reshape([cellDataBytes{isCorrectSize}],packetSize,[]);
            
            % convert uchar to int8 to double
            b = double(M);
            b(b>127) = b(b>127) - 255;
            
            if isempty(b) && sum(~isCorrectSize) > 0
                fprintf('[%s] Unexpected Packet Size Received\n',mfilename);
            end
            
            % perform upsample
            upsampleFactor = 5;
            
            % repeat samples
            %e = repmat(b,[5 1]);
            %f = reshape(e(:),size(b,1),[]);
            %convertedFrame = f(obj.ChannelIds,:);
            
            %interp sampled
            if nValidPackets > 1
                g = interp1(b',linspace(1,nValidPackets,nValidPackets*upsampleFactor-upsampleFactor+1));
            else
                % can't interpolate
                g = repmat(b,[1 5])';
                %disp('Cannot Interpolate')
            end
            
            EMG_GAIN = 0.01;  %TODO abstract
            
            obj.Buffer.addData(EMG_GAIN .* g(:,obj.ChannelIds));
            return
            
            % Add however many new samples we received to the rolling
            % buffer
            
            % Place new data in the buffer.  Note this won't overrun
            % the buffer since there are only 10 samples per packet
            [numNewSamples, numChannels] = size(convertedFrame);
            obj.dataBuffer = circshift(obj.dataBuffer,[0 -numNewSamples]);
            
            obj.dataBuffer(1:numChannels,end-numNewSamples+1:end) = convertedFrame;
            dataBuff = obj.dataBuffer(:,end-numSamples+1:end)';
            
            
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
        
    end
    methods (Static)
        function [obj, hViewer] = Default
            % [obj hViewer] = Default
            % Test usage:
            obj = Inputs.MyoUdp.getInstance;
            obj.initialize();
            hViewer = GUIs.guiSignalViewer(obj);
        end
        function Simulator
            % Demo the compact version of pnet wrapped into a class.  This can be run
            % across two matlab session ir within it's own session
            pnet('closeall')
            
            %% Setup Sender (Session 2)
            hUdpHostSend = PnetClass(4096,10001,'127.0.0.1');
            [success, msg] = hUdpHostSend.initialize()
            
            %% Send (Session 2)
            i = 1;
            while StartStopForm
                i = mod(i+1,255);
                %hUdpHostSend.putData(char(rand(1,12)*255));
                hUdpHostSend.putData(char(i*ones(1,12)));
                pause(eps)
            end
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
                localObj = Inputs.MyoUdp;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
    end
end
