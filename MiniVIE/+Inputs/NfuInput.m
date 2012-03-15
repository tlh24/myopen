classdef NfuInput < Inputs.CpcHeadstage
    % Class for interfacing JHU/APL NFU to MiniVIE.
    % 1Jan2012 Armiger: Created
    properties
        EnableDataLogging = 0;
    end
    properties (SetAccess = private)
        hNfu            % Handle to NFU Comms Object
        hLogFile        % Handle to optional log file
        dataBuffer      % internal data buffer
    end
    methods
        function obj = NfuInput()
            % Constructor
            obj.SampleFrequency = 1000; % Hz TEMP FIX
            obj.ChannelIds = (1:32);
            obj.dataBuffer = zeros(32,5000);
        end
        function initialize(obj)
            
            obj.hNfu = MPL.NfuUdp.getInstance;
            obj.hNfu.initialize();
            obj.hNfu.enableStreaming(1);
            
        end
        function data = getFilteredData(obj)
            % Temp = make the NFU agnostic to filter settings since this is
            % done in hardware
            %data = getData(obj);
            
            data = getFilteredData@Inputs.SignalInput(obj);
            
        end
        function data = getData(obj)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.  User should check obj.AnalogInput.SamplesAvailable
            % for a deterministic result
            len = 1;
            while(len > 0)
                len = pnet(obj.hNfu.UdpSocket,'readpacket','noblock');
                if len > 0
                    stream = pnet(obj.hNfu.UdpSocket,'read',len,'UINT8');
                    
                    numPacketHeaderBytes = 6;
                    numSamplesPerPacket = 20;
                    numSampleHeaderBytes = 4;
                    numChannelsPerPacket = 8;
                    numBytesPerChannel = 2;
                    numBytesPerSample = numChannelsPerPacket*numBytesPerChannel + numSampleHeaderBytes;
                    packetSize = numPacketHeaderBytes+numBytesPerSample*numSamplesPerPacket;
                    if len ~= packetSize
                        error('Unexpected Packet Size: Expected %d, Received %d\n',packetSize,len);
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
                    
                    % convertedFrame = mean(abs(convertedFrame));
                    
                    [numChannels numSamples] = size(convertedFrame);
                    obj.dataBuffer = circshift(obj.dataBuffer,[0 -numSamples]);
                    
                    obj.dataBuffer(1:numChannels,end-numSamples+1:end) = convertedFrame;
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

        end
        function close(obj)
            stop(obj);
        end
    end
end
