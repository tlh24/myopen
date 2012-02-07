classdef CpchSerial < Inputs.SignalInput
    % Class for interfacing CPCH via serial port
    %
    % Oct-2011 Helder: Created
    properties (Access = public)
        SerialPort = 'COM1';                    % Port must be capable of 921600 baud
        BioampMask = uint16(hex2dec('FFFF'));
        GPIMask = uint16(hex2dec('0000'));
    end
    
    
    properties (Access = private)
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
            
            obj.BioampCnt = obj.BitCount(obj.BioampMask);
            obj.GPICnt = obj.BitCount(obj.GPIMask);
            obj.ChannelIds = 0:31;
            obj.SampleFrequency = 1000;
        end
        
        function initialize(obj)
            assert(isa(obj.SerialPort, 'char'));
            assert(isa(obj.BioampMask, 'uint16'));
            assert(isa(obj.GPIMask, 'uint16'));
            
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
                
                fprintf('CPCH Port Opened: %s\n',obj.SerialPort);
            catch ex
                fprintf('CPCH Port FAILED\n');
                rethrow(ex);
            end

            % Transmit STOP message in case data is flowing so the system
            % can sanely start
            msg = Inputs.CpchSerial.EncodeStopMsg();
            fwrite(obj.SerialObj, msg, 'uint8');
            
            while (obj.SerialObj.BytesAvailable > 0)
                fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                pause(0.1);  % delay here to ensure all bytes have time for receipt
            end
            
%             msg = Inputs.CpchSerial.EncodeStopMsg();
%             fwrite(obj.SerialObj, msg, 'uint8');
%             
%             if(obj.SerialObj.BytesAvailable > 0)
%                 fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
%             end
%             
%             fclose(obj.SerialObj);
%             fopen(obj.SerialObj);
            
            % Reconfigure the CPCH
            channel_config = bitshift(uint32(obj.GPIMask), 16) + uint32(obj.BioampMask);
            msg = Inputs.CpchSerial.EncodeConfigWriteMsg(2, channel_config);
            fwrite(obj.SerialObj, msg, 'uint8');
            [r, rcnt] = fread(obj.SerialObj, 3, 'uint8');
            
            if (rcnt ~= 3)
                fclose(obj.SerialObj);
                error('CPCH did not properly respond to writing the channel configuration.')
            end
            
            % Check that the message was accepted.  Note that this must be
            % read back to ensure the message structure is correct since
            % not all channels can (or will) return data.  Unrequested channels
            % are unreturned by the system.
            msg = Inputs.CpchSerial.EncodeConfigReadMsg(2);
            fwrite(obj.SerialObj, msg, 'uint8');
            [r, rcnt] = fread(obj.SerialObj, 7, 'uint8');
            
            if (rcnt == 7)
                frameB = Inputs.CpchSerial.DecodeMsg(r, obj.BioampCnt, obj.GPICnt);
                
                if (frameB.Mask ~= channel_config)
                    error('Defined channel mask does not match returned mask.\n');
                end
            
                obj.ChannelMask = dec2binvec(double(frameB.Mask), size(obj.DataBuffer,2));
                fclose(obj.SerialObj);  % not clear why we are closing here (RSA)
            else
                fclose(obj.SerialObj);
                error('CPCH did not properly respond to reading the channel configuration.\n')
            end
            
            %obj.start();
        end
        
        
        function data = getData(obj)
%             blockTime = toc(obj.T);    % seconds
%             obj.T = tic;
            
            newData = zeros(obj.NumSamples, obj.NumChannels);
            
            if (strcmpi(obj.SerialObj.Status, 'closed') || (obj.IsRunning == false))
                fprintf('Starting CPCH...');
                obj.start();
                fprintf('OK\n');
            end
            
            numSamples = obj.NumSamples;
            rcnt = 0;
            
            % Read samples from serial buffer and place in internal buffer
            % (potentially with leftover remaining bytes)
            if (obj.SerialObj.BytesAvailable > 0)
                [r, rcnt] = fread(obj.SerialObj, obj.SerialObj.BytesAvailable, 'uint8');  % Read whole buffer
                obj.SerialBuffer = [obj.SerialBuffer, uint8(r')];
            else
                fprintf('[%s] No new data in serial buffer.\n',mfilename);
                data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
                return;
            end
            
            
            
            if 1

                % Find all start chars ('128') and index the next 38 bytes
                % off of these starts.  This could lead to overlapping data
                % but valid data will be verified using the checksum
                payloadSize = 2*(obj.BioampCnt+obj.GPICnt);
                msgSize = payloadSize + 6;
                idxStartBytes = find((obj.SerialBuffer == 128));
                
                % Check if there are too few bytes between last start
                % character and the end of the buffer
                isInRange = idxStartBytes <= 1+length(obj.SerialBuffer)-msgSize;
                idxStartBytes = idxStartBytes(isInRange);
                remainderBytes = obj.SerialBuffer(idxStartBytes(end)+msgSize:end);
                
                % Align the data based on the start characters
                msgIndexTemplate = repmat((0:msgSize-1)',1,length(idxStartBytes));
                msgIndex = bsxfun(@plus,msgIndexTemplate,idxStartBytes);
                
                dataAligned = obj.SerialBuffer(msgIndex);
                [numBytes numAlignedSamples] = size(dataAligned);
                
                % Compute expected checksum
                computedChecksum = 255*ones(1,numAlignedSamples,'uint8');
                for i = 1:numBytes-1
                    computedChecksum = bitxor(dataAligned(i,:),computedChecksum);
                end
                
                % Received Checksum
                receivedChecksum = dataAligned(end,:);
                
                isValidChecksum = (receivedChecksum == computedChecksum);
                isValidLength = (dataAligned(5,:) == payloadSize);
                
                isValidData = isValidChecksum & isValidLength;
                
                if (sum(isValidData) / length(isValidData)) < 0.4
                    fprintf('[%s] %d of %d samples have valid checksum.\r',mfilename,sum(isValidData),length(isValidData));
                end
                
                validData = dataAligned(:,isValidData);
                [numBytes numValidSamples] = size(validData);
                
                % Check sequence bytes in batch operation:
                sequenceRow = double(validData(4,:));
                sequenceExpected = mod(sequenceRow(1)+(0:size(validData,2)-1),256);
                
                if any(sequenceExpected - sequenceRow)
                    fprintf('[%s] Out of sequence data received. numValidSamples=%d\r',mfilename,numValidSamples);
                end
                
                % Convert the valid data to Int16
                diffCnt = obj.BioampCnt;
                deDataU8 = validData(6:6+2*diffCnt-1,:);
                deDataInt16 = reshape(typecast(deDataU8(:),'int16'),diffCnt,numValidSamples);
                
                if any(deDataInt16(:) > 10000)
                    fprintf(2,'Bad Data\n');
                end
                
                idOK = ~any(deDataInt16 > 10000);
                deDataInt16 = deDataInt16(:,idOK);
                numValidSamples = size(deDataInt16,2);
                
                EMG_GAIN = 50;  %TODO abstract
                deDataNormalized = EMG_GAIN .* double(deDataInt16) ./ 512;

                seCnt = obj.GPICnt;
                seDataU8 = validData(6+2*diffCnt:end-1,:);
                seDataU16 = reshape(typecast(seDataU8(:),'uint16'),seCnt,numValidSamples);
                
                seDataNormalized = double(seDataU16) ./ 1024;
                
                %data = deDataInt16;
                
%                 fprintf('[%s] %d bytes remaining in buffer.\r',mfilename,length(remainderBytes));
%                 fprintf('[ ');
%                 fprintf('%d ',remainderBytes);
%                 fprintf(']\r');

                obj.SerialBuffer = remainderBytes;

                if numValidSamples > size(obj.DataBuffer,1)
                    % Replace entire buffer
                    obj.DataBuffer(:,1:16) = deDataNormalized(:,end-size(obj.DataBuffer,1)+1:end)';
                else
                    % TODO Check for buffer overrun
                    obj.DataBuffer = circshift(obj.DataBuffer,[-numValidSamples 0]);
                    rowIdx = size(obj.DataBuffer,1)-numValidSamples+1:size(obj.DataBuffer,1);
                    obj.DataBuffer(rowIdx,1:16) = deDataNormalized';
                end
                
                % return the most recently requested data
                data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
                
                return
                
            end
            
            
            numAvailable = 0;
            first = true();
            offsetLastByte = 1;
            
            % Find all the indices ahead of time so the buffer sent to the
            % extract routine is small.
            
            indxList = find(obj.SerialBuffer == 128);
            %isStartOfFrame = (obj.SerialBuffer == 128);
            if (~isempty(indxList))
                offsetEnd = indxList(end);
                
                if (numel(indxList) > 2)
                    indxStart = numel(indxList) - 1;
                else
                    indxStart = 1;
                end
            else
                indxStart = 0;
                offsetEnd = 0;
            end
            

            % Work from newest data first.  Oldest data will be lost if this
            % function is not called regularly enough.
            while ((numAvailable < numSamples) && (indxStart > 0))
                [s, msg, indx] = Inputs.CpchSerial.ExtractMsg(obj.SerialBuffer(indxList(indxStart):offsetEnd), obj.GPICnt+obj.BioampCnt);  % Find a valid message
                
                if (s)
                    frame = Inputs.CpchSerial.DecodeMsg(msg, obj.BioampCnt, obj.GPICnt);    % Decode message
                    
                    switch msg(1) % Also frame.Type
                        case 128
                            newData(end-numAvailable,obj.ChannelMask) = [frame.DiffData, frame.SEData];
                            offsetEnd = indxList(indxStart) - 1; % Exclude first byte of next message
                            numAvailable = numAvailable + 1;
                            
                            if (obj.PrevDataFrameID ~= -1)
                                if (mod(obj.PrevDataFrameID - (frame.Sequence + 1), 255) > 0)
                                    fprintf('*** Data out of sequence. Missing %i frames\n', obj.PrevDataFrameID - frame.Sequence - 1)
                                end
                            end
                                
                            obj.PrevDataFrameID = frame.Sequence;
                            
                            if (first)
                                offsetLastByte = indxList(indxStart) + numel(msg) + 1;
                                first = false;
                            end
                            
                            
                        otherwise
                            % Ignore data
                    end
                end
                
                indxStart = indxStart - 1;
            end
            
            % Reset ID sequence check so errors are not thown during cross
            % call loss of data.
            obj.PrevDataFrameID = -1;
            
            % TODO Check for buffer overrun
            obj.DataBuffer = circshift(obj.DataBuffer,[-numAvailable 0]);
            obj.DataBuffer(end-numAvailable+1:end,:) = newData(end-numAvailable+1:end,:);
            
            data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
            
%             if max(data(:) > 5)
%                 disp('Data Jump > 5');
%             end
            
            % Limit data saving to the maximum packet size
            if ((numel(obj.SerialBuffer) - offsetLastByte) > 6+2*(obj.GPICnt+obj.BioampCnt))
                offsetLastByte = numel(obj.SerialBuffer) - 6+2*(obj.GPICnt+obj.BioampCnt);
            end
            
            if (offsetLastByte > numel(obj.SerialBuffer))
                offsetLastByte = numel(obj.SerialBuffer);
            end
            
            obj.SerialBuffer = obj.SerialBuffer(offsetLastByte : end);
            %fprintf('CPCH.getData:  %2.4g, InputCnt=%1.0f, Excess=%1.0f, numAvailable=%i\n', blockTime, rcnt, numel(obj.SerialBuffer), numAvailable);

            %global dataSave;
            %dataSave = obj.DataBuffer;
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
            
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = Inputs.CpchSerial.EncodeStartMsg();
                
                if (obj.SerialObj.BytesAvailable > 0)
                    fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                end
                
                fwrite(obj.SerialObj, msg, 'uint8');
                obj.IsRunning = true();
            end
        end
        function stop(obj)
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = Inputs.CpchSerial.EncodeStopMsg();
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
    
    methods (Static, Access = private)
        function [success, msg, indx] = ExtractMsg(arr, payloadCnt)                
            %indxList = find(arr >= uint8(128) & arr < uint8(133));
            indxList = find(ismember(arr, 128:132));
            len = numel(arr);
            
            for indx = indxList(:)'
                msg = arr(indx);
                
                switch arr(indx)
                    case 128       % 1KHz CPCH Data Stream
                        if ((indx + (6+2*payloadCnt-1)) <= len)
                            msg = arr(indx + (0:(6+2*payloadCnt-1)));
                        end
                    
                    case 129       % Async. Stop Stream Response
                        if (indx + 1 <= len);
                            msg = arr(indx + (0:1));
                        end
                     
                    case 130       % Async. Status Response
                        if (indx + 3 <= len);
                            msg = arr(indx + (0:3));
                        end
                        
                    case 131       % Async. Config Read Response
                        if (indx + 6 <= len);
                            msg = arr(indx + (0:6));
                        end
                        
                    case 132       % Async. Config Write Response  
                        if (indx + 2 <= len);
                            msg = arr(indx + (0:2));
                        end
                end
                
                x = Inputs.CpchSerial.XorChksum(msg);
                success = (x == 0);
                
                if (success == true())
                    return;
                end
            end
            
            msg = [];
            success = false();
            return;
        end
        
        function frame = DecodeMsg(msg, diffCnt, seCnt)
            [~, ~, endian] = computer();
            
            msgx = uint8(msg);
            
            frame.Type = msgx(1);
            
            switch msg(1)
                case 128       % 1KHz CPCH Data Stream
                    frame.Status.CommErrCnt = msgx(2);
                    frame.Status.MsgIDErr   = (bitget(msgx(3), 1)) ~= 0;
                    frame.Status.ChksumErr  = (bitget(msgx(3), 2)) ~= 0;
                    frame.Status.LengthErr  = (bitget(msgx(3), 4)) ~= 0;
                    frame.Status.ADCErr     = (bitget(msgx(3), 8)) ~= 0;
                    
                    frame.Sequence = msg(4);
                    frame.DataBytes = msg(5);
                    de = typecast(msgx(6:(6 + 2*diffCnt - 1)), 'int16');
                    se = typecast(msgx((6+2*diffCnt):((6+2*diffCnt) + 2*seCnt - 1)), 'uint16');
                    
                    if (endian == 'B')
                        de = swapbytes(de);
                        se = swapbytes(se);
                    end
                    EMG_GAIN = 50;  %TODO abstract
                    frame.DiffData = EMG_GAIN * double(de) ./ 512;
                    frame.SEData = double(se) ./ 1024;
                    
                case 129        % Async. Stop Sream Response
                    frame = []; % Contains no data, only ID & Chksum

                case 130       % Async. Status Response  
                    frame.Status.CommErrCnt = msgx(2);
                    frame.Status.MsgIDErr   = (bitget(msgx(3), 1)) ~= 0;
                    frame.Status.ChksumErr  = (bitget(msgx(3), 2)) ~= 0;
                    frame.Status.LengthErr  = (bitget(msgx(3), 3)) ~= 0;
                    frame.Status.ADCErr     = (bitget(msgx(3), 4)) ~= 0;

                case 131       % Async. Config Read Response 
                    frame.ID = msgx(2);
                    m = typecast(msgx(3:(end-1)), 'uint32');
                    
                    if (endian == 'B')
                        m = swapbytes(m);
                    end
                    
                    frame.Mask = m;

                case 132       % Async. Config Write Response  
                    frame.Success = (bitget(msgx(3), 1)) ~= 0;

                otherwise
            end
            
            return;
        end
        
        function msg = EncodeStartMsg()
            msg(1) = uint8(1);
            msg(end+1) = Inputs.CpchSerial.XorChksum(msg(1:end));
            return;
        end
        
        function msg = EncodeStopMsg()
            msg(1) = uint8(2);
            msg(end+1) = Inputs.CpchSerial.XorChksum(msg(1:end));
            return;
        end
        
        function msg = EncodeStatusMsg()
            msg(1) = uint8(3);
            msg(end+1) = Inputs.CpchSerial.XorChksum(msg(1:end));
            return;
        end
        
        function msg = EncodeConfigWriteMsg(indx, payload)
            [~, ~, endian] = computer();
            
            msg(1) = uint8(4);
            msg(2) = uint8(indx);
            
            if (endian == 'B')
                msg(3:6) = typecast(swapbytes(uint32(payload)), 'uint8');
            else
                msg(3:6) = typecast(uint32(payload), 'uint8');
            end
            
            msg(end+1) = Inputs.CpchSerial.XorChksum(msg(1:end));
            return;
        end
        
        function msg = EncodeConfigReadMsg(indx)
            msg(1) = uint8(5);
            msg(2) = uint8(indx);
            msg(end+1) = Inputs.CpchSerial.XorChksum(msg(1:end));
            return;
        end 
        
        function cnt = BitCount(val)
            % Convert a scalar value to bits and return the sum of true
            % bits
            switch class(val)
                case {'uint32', 'int32', 'single'}
                    cntmax = 32;
                    val = typecast(val, 'uint32');

                case {'uint16', 'int16'}
                    cntmax = 16;
                    val = typecast(val, 'uint16');

                case {'uint8', 'int8', 'char'}
                    cntmax = 8;
                    val = typecast(val, 'uint8');

                case {'uint64', 'int64', 'double'}
                    cntmax = 64;
                    val = typecast(val, 'uint64');
                
                otherwise
                    error('Invalid type');
            end

            % Compute total number of data entries to read            
            cnt = sum(bitget(val, 1:cntmax));
            
            return;
        end
        
        function r = XorChksum(msg, seed)
            if (~isa(msg, 'uint8'))
                if (~all(msg < 256 & msg > -1))
                    error('Passed vector contains elements below 0 or above 255');
                end
            end
            
            if (nargin < 2)
                r = uint8(255);
            else
                if ((seed < 0) || (seed > 255))
                    error('Seed value is outside the valid range of 0 to 255');
                end
            
                r = uint8(seed);
            end
            
            msgx = uint8(msg);
            for m = 1:numel(msgx)
                r = bitxor(msgx(m), r);
            end
            
            %for p = msgx
            %    r = bitxor(p, r);
            %end
        end
    end
end
