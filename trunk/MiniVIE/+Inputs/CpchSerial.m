classdef CpchSerial < Inputs.CpcHeadstage
    % Class for interfacing CPCH via serial port
    %
    % Oct-2011 Helder: Created
    % 13Mar2012 Armiger: Improved efficiancy of data processing from raw
    % bytes to data vals.  Added support for singleEnded data streaming
    
    properties (Access = public)
        SerialPort = 'COM1';                    % Port must be capable of 921600 baud
        BioampMask = uint16(hex2dec('FFFF'));
        GPIMask = uint16(hex2dec('0000'));
        
        EnableDataLogging = 0;  % Enables logging data stream to disk
        
        % Gain values form normalized values
        GainSingleEnded = 10;
        GainDifferential = 50;
    end
    
    properties (SetAccess = private)
        CountTotalMessages = 0;
        CountBadLength = 0;
        CountBadChecksum = 0;
        CountBadStatus = 0;
        CountBadSequence = 0;
        
    end
    
    properties (Access = private)
        hLogFile        % Handle to optional log file
        SerialObj = [];
        DataBuffer = double([]);
        SerialBuffer = uint8([]);
        PrevDataFrameID = -1;
        BioampCnt = 0
        GPICnt = 0
        ChannelMask = [];
        T = tic;
        IsRunning = false();
    end
    
    methods (Access = public)
        function obj = CpchSerial(comPort, bioampMask, gpiMask)
            % Constructor
            if nargin > 0
                obj.SerialPort = comPort;
            end
            
            if nargin > 1
                obj.BioampMask = uint16(bioampMask);
            end
            
            if nargin > 2
                obj.GPIMask = uint16(gpiMask);
            end
            
            obj.ChannelIds = 0:31;
            obj.SampleFrequency = 1000;
        end
        function initialize(obj)
            assert(isa(obj.SerialPort, 'char'));
            assert(isa(obj.BioampMask, 'uint16'));
            assert(isa(obj.GPIMask, 'uint16'));
            
            obj.BioampCnt = obj.BitCount(obj.BioampMask);
            obj.GPICnt = obj.BitCount(obj.GPIMask);
            
            % Create the holding buffer for collected data
            rows = obj.NumSamples;
            cols = 32;
            obj.DataBuffer = zeros(rows, cols, 'double');
            
            % Destroy all existing references to the selected serial port
            % and (re)open the port
            inst = instrfind('Type', 'serial', 'Port', obj.SerialPort);
            
            if (numel(inst) > 0)
                fclose(inst);
                delete(inst);
            end
            
            obj.SerialObj = serial(obj.SerialPort);
            
            try
                set(obj.SerialObj, ...
                    'BaudRate', 921600, ...
                    'DataBits', 8, ...
                    'StopBits', 1, ...
                    'Parity', 'None', ...
                    'FlowControl', 'None', ...
                    'Timeout', 1, ...
                    'ByteOrder', 'BigEndian', ...
                    'InputBufferSize', 190000);
                fopen(obj.SerialObj);
                
                fprintf('[%s] Port Opened: %s\n',mfilename,obj.SerialPort);
            catch ME
                fprintf('[%s] Port FAILED\n',mfilename);
                rethrow(ME);
            end
            
            % Transmit STOP message in case data is flowing so the system
            % can sanely start
            msg = obj.EncodeStopMsg();
            fwrite(obj.SerialObj, msg, 'uint8');
            
            while 1
                pause(0.1);  % delay here to ensure all bytes have time for receipt
                bytesAvailable = obj.SerialObj.BytesAvailable;
                if bytesAvailable
                    fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                else
                    break;
                end
            end
            
            % Get CPCH ID
            % Read param to verify the message.  Note that this must be
            % read back to ensure the message structure is correct since
            % not all channels can (or will) return data.  Unrequested channels
            % are unreturned by the system.
            msg = obj.EncodeConfigReadMsg(1);
            fwrite(obj.SerialObj, msg, 'uint8');
            % Check response
            [r, rcnt] = fread(obj.SerialObj, 7, 'uint8');
            
            % Do this after the first read so that we can establish if any
            % response was given
            assert(rcnt > 0,'No response from CPCH. Check power, check connections');
            
            msgId = obj.msgIdConfigurationReadResponse;
            assert(rcnt == 7,'Wrong number of bytes returned');
            assert(r(1) == msgId,'Bad response message id');
            assert(r(2) == 1,'Bad parameter id');
            assert(~obj.XorChksum(r),'Bad checksum');
            u32Parameter = typecast(uint8(r(3:6)),'uint32');
            fprintf('[%s] Device ID = %d\n',mfilename,u32Parameter);
            
            % Reconfigure the CPCH
            % msg example: [ 4    2  255  255    0    0  249]
            % 4 = write param
            % 2 = param type 2 (active channels)
            
            % Send Request
            channel_config = bitshift(uint32(obj.GPIMask), 16) + uint32(obj.BioampMask);
            msg = obj.EncodeConfigWriteMsg(2, channel_config);
            fwrite(obj.SerialObj, msg, 'uint8');
            
            % Check response
            [r, rcnt] = fread(obj.SerialObj, 3, 'uint8');
            msgId = obj.msgIdConfigurationWriteResponse;
            assert(rcnt == 3,'Wrong number of bytes returned');
            assert(r(1) == msgId,'Bad response message id. Expected %d, got %d',msgId,r(1));
            assert(bitget(r(2),1) == 1,'Configuration Write Failed');
            
            % Read param to verify the message.  Note that this must be
            % read back to ensure the message structure is correct since
            % not all channels can (or will) return data.  Unrequested channels
            % are unreturned by the system.
            msg = obj.EncodeConfigReadMsg(2);
            fwrite(obj.SerialObj, msg, 'uint8');
            % Check response
            [r, rcnt] = fread(obj.SerialObj, 7, 'uint8');
            
            msgId = obj.msgIdConfigurationReadResponse;
            assert(rcnt == 7,'Wrong number of bytes returned');
            assert(r(1) == msgId,'Bad response message id');
            
            frameB = obj.DecodeMsg(r, obj.BioampCnt, obj.GPICnt);
            
            % % Apply a workaround to a noted problem that the CPCH doesn;t
            % % reply with the correct mask.  It appears that on the seData
            % % mask needs to be circshifted by 2 bits
            % circShiftMask = frameB.Mask;
            % for bitIn = 17:32
            %     bitOut = bitIn+2;
            %     if bitOut > 32
            %         bitOut = bitOut-16;
            %     end
            %     circShiftMask = bitset(circShiftMask,bitOut,bitget(frameB.Mask,bitIn));
            % end
            % frameB.Mask = circShiftMask;
            
            %Debug
            reshape(dec2binvec(double(frameB.Mask),32),16,[])';
            reshape(dec2binvec(double(channel_config),32),16,[])';
            
            
            assert(frameB.Mask == channel_config,'Defined channel mask does not match returned mask. Expected: uint32[%d] Got:uint32[%d]',...
                channel_config,frameB.Mask);
            
            obj.ChannelMask = dec2binvec(double(frameB.Mask), size(obj.DataBuffer,2));
            %fclose(obj.SerialObj);  % not clear why we are closing here (RSA)
        end
        function data = getData(obj)
            
            % Start device if not already running
            if (strcmpi(obj.SerialObj.Status, 'closed') || (obj.IsRunning == false))
                obj.start();
            end
            
            % Check for new data
            if (obj.SerialObj.BytesAvailable == 0)
                %fprintf('[%s] No new data in serial buffer.\n',mfilename);
                data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
                return;
            end
            
            % Read samples from serial buffer and place in internal buffer
            % (potentially with leftover remaining bytes)
            r = fread(obj.SerialObj, obj.SerialObj.BytesAvailable, 'uint8');  % Read whole buffer
            rawBytes = [obj.SerialBuffer, uint8(r')];
            
            payloadSize = 2*(obj.BioampCnt+obj.GPICnt);
            msgSize = payloadSize + 6;
            
            % Align the data bytes.  If all's well the first byte of the
            % remainder should be a start char which is saved for the next
            % time the buffer is read
            [alignedData remainderBytes] = obj.AlignDataBytes(rawBytes,msgSize);
            
            % Store remaining bytes for next read
            obj.SerialBuffer = remainderBytes;
            
            % Check validation parameters (chksum, etc)
            [validData sumBadStatus sumBadLength sumBadChecksum sumBadSequence] = ...
                obj.ValidateMessages(alignedData,payloadSize);
            
            obj.CountTotalMessages = obj.CountTotalMessages + size(alignedData,2);
            obj.CountBadLength = obj.CountBadLength + sumBadLength;
            obj.CountBadChecksum = obj.CountBadChecksum + sumBadChecksum;
            obj.CountBadStatus = obj.CountBadStatus + sumBadStatus;
            obj.CountBadSequence = obj.CountBadSequence + sumBadSequence;

            [numBytes numValidSamples] = size(validData);
            assert(msgSize == numBytes);
            
            % Extract the signals
            [diffDataI16 seDataU16] = obj.GetSignalData(validData,obj.BioampCnt,obj.GPICnt);
            
            % Perform Scaling
            deDataNormalized = double(diffDataI16) / 512 * obj.GainDifferential;
            seDataNormalized = double(seDataU16) ./ 1024 * obj.GainSingleEnded;
            
            % Log data
            try
                if obj.EnableDataLogging
                    if isempty(obj.hLogFile)
                        fname = sprintf('%04d%02d%02d_%02d%02d%02d_CPCH_Stream.log',fix(clock));
                        fprintf('[%s] Creating Log File: "%s"\n',mfilename,fname);
                        obj.hLogFile = fopen(fname,'w+');
                    end
                    %fwrite(obj.hLogFile,now,'double');
                    %                     fwrite(obj.hLogFile,deDataInt16,'int16');
                    %                     fwrite(obj.hLogFile,seDataU16,'int16');
                    fwrite(obj.hLogFile,rawBytes,'uint8');
                    
                else
                    if ~isempty(obj.hLogFile)
                        fprintf('[%s] Closing Log File\n',mfilename);
                        fclose(obj.hLogFile);
                        obj.hLogFile = [];
                    end
                end
            catch ME
                fprintf('[%s] Error Logging: %s\n',ME.message);
            end
            
            % Update internal formatted data buffer
            % RSA: These channel mappings are updated based on the
            % channel mask
            deChannelIdx = logical([dec2binvec(double(obj.BioampMask),16) zeros(1,16)]);
            seChannelIdx = logical([zeros(1,16) dec2binvec(double(obj.GPIMask),16)]);
            if numValidSamples > size(obj.DataBuffer,1)
                % Replace entire buffer
                obj.DataBuffer(:,deChannelIdx) = deDataNormalized(:,end-size(obj.DataBuffer,1)+1:end)';
                obj.DataBuffer(:,seChannelIdx) = seDataNormalized(:,end-size(obj.DataBuffer,1)+1:end)';
            else
                % Check for buffer overrun
                obj.DataBuffer = circshift(obj.DataBuffer,[-numValidSamples 0]);
                rowIdx = size(obj.DataBuffer,1)-numValidSamples+1:size(obj.DataBuffer,1);
                obj.DataBuffer(rowIdx,deChannelIdx) = deDataNormalized';
                obj.DataBuffer(rowIdx,seChannelIdx) = seDataNormalized';
            end
            
            % return the most recently requested data
            data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
            
        end
        function isReady = isReady(obj,numSamples)
            if (strcmpi(obj.SerialObj.Status, 'closed') || (obj.IsRunning == false))
                obj.start();
            end
            
            % If buffer is almost full, clear so as to not return stale
            % data.
            if (obj.SerialObj.BytesAvailable > 0.95*obj.SerialObj.InputBufferSize)
                fprintf('CPCH.isReady  ::  Clearing buffer (%i bytes)\n', obj.SerialObj.BytesAvailable);
                x = fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                
                while (obj.SerialObj.BytesAvailable > 0)
                    fprintf('CPCH.isReady  ::  Clearing buffer (%i bytes)\n', obj.SerialObj.BytesAvailable);
                    x = fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                end
            end
            
            % Return true if the buffer contains at least as many bytes as
            % the number of requested messages.  This does not mean that
            % all meassges will be sucessfully decoded (perhaps due to
            % communication bit failures).
            isReady = obj.SerialObj.BytesAvailable > (numSamples*(6+2*(obj.GPICnt+obj.BioampCnt)));
            fprintf('CPCH.isReady  ::  %i, %i, %i\n', isReady, obj.SerialObj.BytesAvailable, numSamples*(6+2*(obj.GPICnt+obj.BioampCnt)));
        end
        function start(obj)
            %profile on -history;
            obj.T = tic;
            fprintf('[%s] Starting CPCH with %d differential and %d single-ended inputs...',mfilename,obj.BioampCnt,obj.GPICnt);
            
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = obj.EncodeStartMsg();
                
                if (obj.SerialObj.BytesAvailable > 0)
                    fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                end
                
                fwrite(obj.SerialObj, msg, 'uint8');
                obj.IsRunning = true();
            end
            
            fprintf('OK\n');
        end
        function stop(obj)
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = obj.EncodeStopMsg();
                fwrite(obj.SerialObj, msg, 'uint8');
                
                while (obj.SerialObj.BytesAvailable > 0)
                    fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                end
                
                fclose(obj.SerialObj);
                obj.IsRunning = false();
            end
            
            %profile viewer;
        end
        function close(obj)
            stop(obj);
        end
    end
    methods (Static = true)
        function obj = Test
            
            obj = Inputs.CpchSerial('COM11',...
                uint16(hex2dec('FFFF')),uint16(hex2dec('FFFF')));
            fprintf('Adding Filters\n');
            Fs = 1000;
            obj.addfilter(Inputs.HighPass(10,8,Fs));
            %h.addfilter(Inputs.LowPass(350,8,Fs));
            %h.addfilter(Inputs.Notch(60.*(1:4),5,Fs));
            obj.addfilter(Inputs.Notch(60.*1,5,Fs));
            % obj.SignalSource.addfilter(Inputs.MAV(150));
            obj.NumSamples = 2000;
            obj.initialize();
            
            GUIs.guiSignalViewer(obj);
            
        end
    end
end
