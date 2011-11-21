classdef UdpDevice < Inputs.SignalInput
    % Class for interfacing to myopen via UDP.
    properties
        DaqDeviceName = 'mcc';  
        DaqDeviceId = '0';
    end
    properties (SetAccess = private)
        AnalogInput = [];
        AnalogInputName = '';
        udp = [];
        dd = zeros(8,1);
    end
    methods
        function obj = UdpDevice(deviceName,deviceId,channelIds)
            % Constructor
            if nargin > 0
                obj.DaqDeviceName = deviceName;
            end
            if nargin > 1
                obj.DaqDeviceId = deviceId;
            end
            if nargin > 2
                obj.ChannelIds = channelIds;
            else
                obj.ChannelIds = 0:7;
            end
            obj.SampleFrequency = 1000; % Hz TEMP FIX
        end
        function initialize(obj)
            obj.udp=pnet('udpsocket',4340);
            pnet(obj.udp, 'setreadtimeout',0);
            
        end
        function data = getData(obj)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.  User should check obj.AnalogInput.SamplesAvailable
            % for a deterministic result
            len = 1;
            while(len > 0)
                len=pnet(obj.udp,'readpacket','noblock');
                if len>0
                    d = [];
                    i = 0;
                    % if packet larger then 1 byte then read maximum of 1000 shorts in network byte order
                    stream = pnet(obj.udp,'read',10000,'UINT8');
                    frames = numel(stream)/580;
                    for f = 0:frames-1
                        frame = double(stream(f*580+1:f*580+580));
                        frame = frame(5:end); % ignore dropped pkts. 
                        packets = numel(frame)/36;
                        for p = 0:packets-1
                           pk = frame(p*36+1:p*36+36);
                           timestamp = pk(4)*2^24 + pk(3)*2^16 + pk(2)*2^8 + pk(1); 
                           dm = reshape(pk(5:end),2,16); 
                           dm(2,:) = dm(2,:)*256; 
                           dm = sum(dm,1); 
                           d(:,i*2+1:i*2+2) = reshape(dm, 8, 2)/6e4 + repmat((1:8)',1,2); 
                           i = i + 1; 
                        end
                    end
                    obj.dd = [obj.dd d];  % store a second of data. 
                    s2 = size(obj.dd,2);
                    if(s2 > 10000)
                        obj.dd = obj.dd(:,s2-9999:s2);
                    end
                end
            end
            numSamples = obj.NumSamples*5;
            s = size(obj.dd, 2);
            if numSamples < s
                data = obj.dd(:, s - numSamples + 1 : end);
            else
                data = zeros(8,numSamples);
                data(:,numSamples - s + 1 : end) = obj.dd; 
            end
            data = data' * 100; % # samples by # channels.
            data = data(1:5:end, :); 
        end
        function isReady = isReady(obj,numSamples)
            isReady = 1;
        end
        function start(obj)
            
        end
        function stop(obj)
            pnet(obj.udp,'close');
        end
        function close(obj)
            stop(obj);
        end
    end
end
