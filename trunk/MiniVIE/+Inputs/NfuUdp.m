classdef NfuUdp < Inputs.SignalInput
    % Class for interfacing JHU/APL NFU to MiniVIE.
    properties
        Host = '10.3.1.11';
        UdpPort = 9027
        CmdPort = 6200;
        
        EnableDataLogging = 0;

        hLogFile
        
        hCmdSock
    end
    properties (SetAccess = private)
        udp;
        dataBuffer;
    end
    methods
        function obj = NfuUdp()
            % Constructor
            obj.SampleFrequency = 1000; % Hz TEMP FIX
            obj.ChannelIds = (1:32);
            obj.dataBuffer = zeros(32,5000);
        end
        function initialize(obj)
            obj.udp=pnet('udpsocket',obj.UdpPort);
            pnet(obj.udp, 'setreadtimeout',0);
            
            % open a CMD connection to the NFU
            fprintf( 'create CMD tcp socket\n' );
            obj.hCmdSock = pnet( 'tcpsocket', obj.CmdPort );
            if (-1 ~= obj.hCmdSock)
                fprintf( 'connect CMD tcp socket\n' );
                pnet( obj.hCmdSock, 'setreadtimeout', 20 );
                cmdCon = pnet( obj.hCmdSock, 'tcplisten' );
                if (-1 ~= cmdCon)
                    %fprintf( 'Sending NFU reset message\n' );
                    %pnet( cmdCon, 'write', reset_Nfu ) %reset NFU
                    %fprintf( 'Sending NFU write cfg message\n' );
                    %pnet( cmdCon, 'write', write_cfg_Nfu ); %write cfg NFU
                    %pnet( cmdCon, 'readline' );
                else
                    fprintf( 'connect CMD tcp socket FAILED!\n' );
                end
            else
                fprintf( 'create CMD tcp socket FAILED\n' );
            end
            
            [ status ] = obj.disable_streaming( cmdCon, 1 );
            if status
                error('Failed to stop NFU streaming');
            end
            
            [ status ] = obj.enable_streaming( cmdCon, 1 );
            if status
                error('Failed to start NFU streaming');
            end
        end
        function data = getFilteredData(obj)
            % Temp = make the NFU agnostic to filter settings since this is
            % done in hardware
            data = getData(obj);
        end
        function data = getData(obj)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.  User should check obj.AnalogInput.SamplesAvailable
            % for a deterministic result
            len = 1;
            while(len > 0)
                len = pnet(obj.udp,'readpacket','noblock');
                if len > 0
                    stream = pnet(obj.udp,'read',len,'UINT8');
                    
                    numPacketHeaderBytes = 6;
                    numSamplesPerPacket = 20;
                    numSampleHeaderBytes = 4;
                    numChannelsPerPacket = 8;
                    numBytesPerChannel = 2;
                    numBytesPerSample = numChannelsPerPacket*numBytesPerChannel + numSampleHeaderBytes;
                    packetSize = numPacketHeaderBytes+numBytesPerSample*numSamplesPerPacket;
                    if len ~= packetSize
                        error('Unexpected Packet Size');
                    end
                    
                    % First 6 bytes are global header
                    data = reshape(stream(numPacketHeaderBytes+1:packetSize),numBytesPerSample,numSamplesPerPacket);
                    % First 5 bytes per sample are header
                    databytes = data(5:end,:);
                    convertedFrame = reshape(typecast(databytes(:),'int16'),numChannelsPerPacket,numSamplesPerPacket);
                    
                    try
                        if obj.EnableDataLogging
                            if isempty(obj.hLogFile)
                                fname = sprintf('%04d%02d%02d_%02d%02d%02d_NFU_Stream.log',fix(clock));
                                obj.hLogFile = fopen(fname,'w+');
                            end
                            %fwrite(obj.hLogFile,now,'double');
                            fwrite(obj.hLogFile,convertedFrame,'int16');
                        else
                            if ~isempty(obj.hLogFile)
                                fclose(obj.hLogFile);
                                obj.hLogFile = [];
                            end
                        end
                    catch ME
                       fprintf('[%s] Error Logging: %s\n',ME.message); 
                    end
                    
                    % Check for error blips
                    if any(abs(convertedFrame(:)) > 10000)
                        fprintf(2,'[%s] Bad Sample\n',mfilename);
                    end
                    
                    % Poor mans HPF where we subtract off the mean value
                    % over 20 samples from each sample
                    convertedFrame = double(convertedFrame);
                    convertedFrame = bsxfun(@minus,convertedFrame,mean(convertedFrame,2));
                    
                    obj.dataBuffer = circshift(obj.dataBuffer,[0 -numSamplesPerPacket]);
                    
                    obj.dataBuffer(1:numChannelsPerPacket,end-numSamplesPerPacket+1:end) = convertedFrame;
                end
            end
            
            dataBuff = obj.dataBuffer(:,end-obj.NumSamples+1:end)';
            
            EMG_GAIN = 50;  %TODO abstract
            data = EMG_GAIN .* double(dataBuff) ./ 512;
            
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
    methods (Static)
        function [ status ] = enable_streaming( pnet_conn, type )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 1, zeros(7,1));
            elseif type == 2
                %VULCANX
                enable_stream_Nfu = char( uint8(150), 9, 8, zeros(7,1));
            end
            
            pnet( pnet_conn, 'write', enable_stream_Nfu ); %write cfg NFU
            status = 0;
        end
        function [ status ] = disable_streaming( pnet_conn, type )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 0, zeros(7,1));
            elseif type == 2
                %VIE
                enable_stream_Nfu = char( uint8(150), 9, 0, zeros(7,1));
            end
            
            pnet( pnet_conn, 'write', enable_stream_Nfu ); %write cfg NFU
            status = 0;
        end
    end
end
