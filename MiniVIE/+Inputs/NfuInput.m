classdef NfuInput < Inputs.CpcHeadstage
    % Class for interfacing JHU/APL NFU to MiniVIE.
    %
    % This is focused on the streaming data from the CPC Headstage which is
    % a traitional daq channel Input block.  Other streaming types are
    % percepts, vulcanx, algorithm, etc. however these will be handled by
    % the NfuUdp object which holds a singleton interface to the Nfu Udp
    % stream
    %
    % 1Jan2012 Armiger: Created
    properties
        EnableDataLogging = false;
        EnableHPF = false;
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
        function [ status ] = initialize(obj)
            
            obj.hNfu = MPL.NfuUdp.getInstance;
            status = obj.hNfu.initialize();  % streaming begins here

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
            
            obj.hNfu.update();  % read available packets
            
            cellData = obj.hNfu.get_buffer(1);
            if isempty(cellData)
                %fprintf('[%s] %s No Data\n',mfilename, datestr(now));
            end

            
            % Loop through all available packets and find cpch data
            for i = 1:length(cellData)

                convertedFrame = cellData{i};
                
                % Perform Logging
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
                if obj.EnableHPF
                    convertedFrame = bsxfun(@minus,convertedFrame,mean(convertedFrame,2));
                % convertedFrame = mean(abs(convertedFrame));
                end
                
                % Place new data in the buffer.  Note this won't overrun
                % the buffer since there are only 10 samples per packet
                [numChannels, numNewSamples] = size(convertedFrame);
                obj.dataBuffer = circshift(obj.dataBuffer,[0 -numNewSamples]);
                
                obj.dataBuffer(1:numChannels,end-numNewSamples+1:end) = convertedFrame;
            end
            
            dataBuff = obj.dataBuffer(:,end-numSamples+1:end)';
            
            EMG_GAIN = 50;  %TODO abstract
            data = EMG_GAIN .* double(dataBuff(:,idxChannel)) ./ 512;
            
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
