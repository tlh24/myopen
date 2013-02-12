classdef UdpDevice < Inputs.SignalInput
    % Class for interfacing to myopen via UDP.
    properties
        Host = '192.168.0.2';  
        Port = 4341
        DaqDeviceId = '0';
    end
    properties (SetAccess = private)
        AnalogInput = [];
        AnalogInputName = '';
        udp = [];
        dd = zeros(8,1);
    end
    methods
        function obj = UdpDevice()
            % Constructor
            obj.SampleFrequency = 1000; % Hz TEMP FIX
			obj.ChannelIds = (1:8);
        end
        function initialize(obj)
            obj.udp=pnet('udpsocket',4340);
			pnet(obj.udp, 'setreadtimeout',0);
            % on linux, we can locate the bridge automatically
            % using broadcast packets -- 
            % just be sure to sudo ifconfig ethX allmulti
            if ispc ~= 1; 
                disp('waiting for multicast from bridge')
                len = 0;
                while len ~= 10
                    len = pnet(obj.udp,'readpacket','noblock');
                    [ip,port]=pnet(obj.udp,'gethost');
                    obj.Host = [num2str(ip(1)) '.' num2str(ip(2)) '.' ...
                        num2str(ip(3)) '.'  num2str(ip(4))];
                    disp(['bridge appears to be at ' host ' ' num2str(port)]);
                    obj.Port = port; 
                    pnet(obj.udp, 'udpconnect',obj.Host,obj.Port);
                    % radio channel 124
                    msg = uint8([124+128 0]);
                    pnet(obj.udp, 'write',char(msg));
                    pnet(obj.udp, 'writepacket');
                end
                while len == 10
                    len = pnet(obj.udp,'readpacket','noblock');
                    pnet(obj.udp,'read',10000,'UINT8');
                end
            else
                % on windows, you must configure the host / port
                % manually (for now)  (see above in this file)
                % eventually need to update the firmware to support win32
                % networking. 
                pnet(obj.udp, 'udpconnect',obj.Host,obj.Port);
                % radio channel 124
                msg = uint8([124+128 0]);
                pnet(obj.udp, 'write',char(msg));
                pnet(obj.udp, 'writepacket');
            end
        end
        function data = getData(obj,numSamplesRequested)
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
            numSamples = numSamplesRequested*5;
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
