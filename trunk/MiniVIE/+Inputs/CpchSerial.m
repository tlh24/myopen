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
        PrevDataFrameID = 0;
        BioampCnt = 0
        GPICnt = 0
        ChannelMask = [];
        T = 0;
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
                   'InputBufferSize', 640000);
                fopen(obj.SerialObj);
                
                fprintf('CPCH Port Opened\n');
            catch ex
                fprintf('CPCH Port FAILED\n');
                rethrow(ex);
            end

            % Transmit STOP message in case data is flowing so the system
            % can sanely start
            msg = Inputs.CpchSerial.EncodeStopMsg();
            fwrite(obj.SerialObj, msg, 'uint8');
            fclose(obj.SerialObj);
            
            while (obj.SerialObj.BytesAvailable > 0)
                fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
            end
            
            fopen(obj.SerialObj);
            
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
            % not all channels can (or will) return data.  Unused channels
            % permanently masked by the system.
            msg = Inputs.CpchSerial.EncodeConfigReadMsg(2);
            fwrite(obj.SerialObj, msg, 'uint8');
            [r, rcnt] = fread(obj.SerialObj, 7, 'uint8');
            
            if (rcnt == 7)
                frameB = Inputs.CpchSerial.DecodeMsg(r, obj.BioampCnt, obj.GPICnt);
                
                if (frameB.Mask ~= channel_config)
                    fwrite('Defined channel mask does not match returned mask.\n');
                end
            
                obj.ChannelMask = dec2binvec(double(frameB.Mask), size(obj.DataBuffer,2));
                fclose(obj.SerialObj);
            else
                fclose(obj.SerialObj);
                error('CPCH did not properly respond to reading the channel configuration.\n')
            end
            
            %obj.start();
        end
        
        
        function data = getData(obj)
            newData = zeros(obj.SampleFrequency, obj.NumChannels);
            
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                obj.start();
            end
            
            numSamples = obj.NumSamples;
            rcnt = 0;
            
            if (obj.SerialObj.BytesAvailable > 0)
                [r, rcnt] = fread(obj.SerialObj, obj.SerialObj.BytesAvailable, 'uint8');  % Read whole buffer
                obj.SerialBuffer = [obj.SerialBuffer, uint8(r')];
            end
            
            
            numAvailable = 0;
            offset = 1;
            len = numel(obj.SerialBuffer);
            while ((numAvailable <= numSamples) && (offset <= len))
                [s, msg, indx] = Inputs.CpchSerial.ExtractMsg(obj.SerialBuffer(offset:end), obj.GPICnt+obj.BioampCnt);  % Find a valid message
                
                offset = offset + indx + numel(msg) - 1;
                
                if (s)
                    frame = Inputs.CpchSerial.DecodeMsg(msg, obj.BioampCnt, obj.GPICnt);    % Decode message
                    
                    switch msg(1)
                        case 128
                            numAvailable = numAvailable + 1;
                            newData(numAvailable,obj.ChannelMask) = [frame.DiffData, frame.SEData];
                            
                            
                        otherwise
                            % Ignore data
                    end
                else
                    % Ran out of data
                    break;
                end
            end
            
            obj.DataBuffer = circshift(obj.DataBuffer,[-numAvailable 0]);
            obj.DataBuffer(end-numAvailable+1:end,:) = newData(1:numAvailable,:);
            
            data = obj.DataBuffer(end-obj.NumSamples+1:end,:);
            
            offset = offset - 6+2*(32);
            
            if (offset > 35000)
                offset = len-35000;
                fprintf('Deleting excess CPCH buffer.  Excess data exceeds 35000 bytes.\n');
            elseif (offset < 0)
                offset = 0;
            end
            
            obj.SerialBuffer = obj.SerialBuffer(offset : end);
            fprintf('%2.4g, InputCnt=%1.0f, Excess=%1.0f:  numAvailable: %i\n', hat-obj.T, rcnt, numel(obj.SerialBuffer), numAvailable);
            obj.T = hat;
            
            global dataSave;
            dataSave = obj.DataBuffer;
        end
        function isReady = isReady(obj,numSamples)
            obj.start();
            
            isReady = obj.DataBufferRow >= numSamples;
        end
        function start(obj)
            %profile on -history;
            
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = Inputs.CpchSerial.EncodeStartMsg();
                
                if (obj.SerialObj.BytesAvailable > 0)
                    fread(obj.SerialObj, obj.SerialObj.BytesAvailable);
                end
                
                fwrite(obj.SerialObj, msg, 'uint8');
            end
        end
        function stop(obj)
            if (strcmpi(obj.SerialObj.Status, 'closed'))
                fopen(obj.SerialObj);
            end
            
            if (~strcmpi(obj.SerialObj.Status, 'closed'))
                msg = Inputs.CpchSerial.EncodeStopMsg();
                fwrite(obj.SerialObj, msg, 'uint8');
                fclose(obj.SerialObj);
            end
            
            %profile viewer;
            obj.T = hat;
        end
        function close(obj)
            stop(obj);
        end
    end
    
    methods (Static, Access = private)
        function [success, msg, indx] = ExtractMsg(arr, payloadCnt)                
            indxList = find(arr >= 128 & arr <= 132);
            len = numel(arr);
            
            for indx = indxList(:)'
                msg = arr(indx);
                
                switch arr(indx)
                    case 128       % 1KHz CPCH Data Stream
                        if ((indx + (6+2*payloadCnt-1)) <= len)
                            msg = arr(indx + (0:(6+2*payloadCnt-1)));
                        end
                    
                    case 129       % Async. Stop Sream Response
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
                    
                    frame.DiffData = double(de) ./ 512;
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
            cnt = 0;

            for n = val
                for m = 1:cntmax
                    cnt = cnt + 1*(bitget(n, m) ~= 0);
                end
            end
            
            return;
        end
        
        function r = XorChksum(msg, seed)
            if (~isempty(find(msg > 255 | msg < 0, 1)))
                error('Passed vector contains elements below 0 or above 255');
            end            

            
            if (nargin < 2)
                r = uint8(255);
            else
                if ((seed < 0) || (seed > 255))
                    error('Seed value is ouside the valid range of 0 to 255');
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
