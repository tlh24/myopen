classdef CpcHeadstage < Inputs.SignalInput
    % Base class for CPCH
    % Contains methods for creating and parsing messages
    % as well as parsing streaming data
    % 14Mar2012 Armiger: Created
    % 15Jan2013 Armiger: Updated signal parsing to search for only start
    % characters ('128') since start sequence [128 0 0] cannot be relied
    % upon if transmission errors occur
    % 08Mar2013 Armiger: added check for returned bytes with no message (too small)
    
    properties (Constant = true)
        msgIdStartStreaming = 1;
        msgIdStopStreaming  = 2;
        msgIdStatusRequest  = 3;
        msgIdConfigurationWrite = 4;
        msgIdConfigurationRead = 5;
        msgIdCpcData = 128;
        msgIdStopStreamingResponse = 129;
        msgIdStatusData = 130;
        msgIdConfigurationReadResponse = 131;
        msgIdConfigurationWriteResponse = 132;
        
        crcTable = Inputs.CpcHeadstage.CpchCrcGen;
    end
    %methods (Static, Access = protected)
    methods (Static)
        function [diffDataAll seDataAll] = LoadLogData( fname, BioampCnt ,GPICnt )
            % Load logged CPC data and return converted, unscaled values
            % Usage:
            %       [diffDataI16 seDataU16] = LoadLogData( fname, BioampCnt ,GPICnt )
            %
            
            fp = fopen(fname,'r');
            data = fread(fp,'uint8=>uint8');
            fclose(fp);
            
            payloadSize = 2*(BioampCnt+GPICnt);
            msgSize = payloadSize + 6;
            expectedLength = payloadSize;
            
            [diffDataAll, seDataAll] = deal([]);
            readStart = 1;
            readMax = 10e6;
            remainder = [];
            while readStart < length(data)
                readEnd = min(readStart+readMax-1,length(data));
                %fprintf('Reading %d to %d.\n',readStart,readEnd);
                bytesIn = [remainder data(readStart:readEnd)'];
                [dataAligned, remainder] = Inputs.CpcHeadstage.AlignDataBytes(bytesIn,msgSize);
                validData = Inputs.CpcHeadstage.ValidateMessages(dataAligned,expectedLength);
                [diffDataI16, seDataU16] = Inputs.CpcHeadstage.GetSignalData(validData,BioampCnt,GPICnt);
                
                diffDataAll = [diffDataAll diffDataI16];
                
                readStart = readEnd + 1;
            end
            
        end
        
        function [diffDataInt16 seDataU16] = GetSignalData(validData,diffCnt,seCnt)
            % Typecast the data to the approprate data size
            % TODO: Endian is not accounted for here
            
            % Get data size
            numValidSamples = size(validData,2);
            
            % Convert the valid data to Int16
            payloadIdxStart = 6;
            payloadIdxEnd = payloadIdxStart + 2*diffCnt - 1;  % diff data starts after header
            deDataU8 = validData(payloadIdxStart:payloadIdxEnd,:);
            diffDataInt16 = reshape(typecast(deDataU8(:),'int16'),diffCnt,numValidSamples);
            
            payloadIdxStart = 6+2*diffCnt;  % se data starts after diff data
            payloadIdxEnd = payloadIdxStart + 2*seCnt -1;
            seDataU8 = validData(payloadIdxStart:payloadIdxEnd,:);
            
            seDataU16 = reshape(typecast(seDataU8(:),'uint16'),seCnt,numValidSamples);
            
%             if any(abs(diffDataInt16(:)) > 2000) %|| any(abs(seDataU16(:)) > 1024)
%                 fprintf(2,'[%s] Out of Range Values\n',mfilename);
%                 %keyboard
%                 % TODO need better solution than returning
%                 %return
%             end
            
        end
        
        function [validData, errorStats] = ValidateMessages(alignedData,expectedLength)
            % Validate a matrix of messages using a criteria of checksum,
            % appropriate message length, and status bytes
            %
            % alignedData should be size [numBytesPerMessage numMessages]
            %
            % 14Mar2012 Armiger: Created
            
            if size(alignedData,1) == 1
                % single sample case
                alignedData = alignedData(:);
            end
            
            % Compute CRC
            computedChecksum = Inputs.CpcHeadstage.XorChksum(alignedData);
            
            % Find 'validated' data by ensuring it is the correct length
            % and has the correct checksum
            % status byte upper four bits are set 2 zero
            isValidStatusByte = ~bitand(alignedData(3,:),uint8(240));
            
            % msgIdError = bitget(alignedData(3,:),1);
            % cmdMsgChecksumError = bitget(alignedData(3,:),2);
            % cmdMsgLengthError = bitget(alignedData(3,:),3);
            isAdcError = bitget(alignedData(3,:),4);
            errorStats.sumAdcError = sum(isAdcError);
            
            isValidLength = (alignedData(5,:) == expectedLength);
            isValidChecksum = (computedChecksum == 0);
            isValidData = isValidChecksum & isValidLength & isValidStatusByte;

            % TODO: if checksum is bad, data can't be trusted to accurately
            % reflect length, status, or adc errors
            errorStats.sumBadStatus = sum(~isValidStatusByte);
            errorStats.sumBadLength = sum(~isValidLength);
            errorStats.sumBadChecksum = sum(~isValidChecksum);
            errorStats.sumBadSequence = 0;

%             if (sum(isValidData) / length(isValidData)) < 0.99
%                 fprintf('[%s] %d of %d samples have valid checksum.\r',mfilename,sum(isValidData),length(isValidData));
%             end
            
            validData = alignedData(:,isValidData);
            
            % No valid data in packet
            if isempty(validData)
                return
            end
            
%             % Check for transmission errors in validated data
%             %isTransmitError = bitand(validData(3,:),uint8(240));
%             isTransmitError = validData(3,:);
%             if any(isTransmitError)
%                 fprintf('[%s] Transmit Error.\r',mfilename);
%             end
                        
            % Check sequence bytes in batch operation:
            sequenceRow = double(validData(4,:));
            sequenceExpected = mod(sequenceRow(1)+(0:size(validData,2)-1),256);
            
%             numMessages = length(isValidData);
            isValidSequence = (sequenceExpected - sequenceRow) == 0;
            
            errorStats.sumBadSequence = sum(~isValidSequence);
%             if sumBadSequence > 0
%                 fprintf('[%s] Out of sequence data received. %d of %d samples validated\r',mfilename,sum(isValidData),numMessages);
%             end
        end
        
        function [dataAligned remainderBytes] = AlignDataBytes(dataStream,msgSize)
            %             tic
            %             [dataAligned remainderBytes] = Inputs.CpcHeadstage.ByteAlignSlow(dataStream,msgSize);
            %             t1 = toc;
            %             tic
            [dataAligned, remainderBytes] = Inputs.CpcHeadstage.ByteAlignFast(dataStream,msgSize);
            %             t2 = toc;
            %             [t1 t2 t1<t2]

        end
        function [dataAligned remainderBytes] = ByteAlignFast(dataStream,msgSize)
            
            assert(size(dataStream,1) == 1,'Data Stream must be a [1 N] array');
            
            % Find all start chars ('128') and index the next set of bytes
            % off of these starts.  This could lead to overlapping data
            % but valid data will be verified using the checksum

            searchMethod = 1;
            if searchMethod == 1
                bytePattern = [128 0 0];
                idxStartBytes = find((dataStream == 128));
            else
                % TODO: this could be a problem if msg id, length, or checksum
                % errors occur
                bytePattern = [128 0 0];
                idxStartBytes = strfind(dataStream,bytePattern);
            end
            if isempty(idxStartBytes)
                disp(dataStream);
                error('No start sequence [%d %d %d] found in data stream of length %d.  Try resetting CPCH',...
                bytePattern,length(dataStream));
            end
            % Check if there are too few bytes between the last start
            % character and the end of the buffer
            isInRange = idxStartBytes <= 1+length(dataStream)-msgSize;
            if ~any(isInRange)
                % no full messages found
                dataAligned = [];
                remainderBytes = dataStream;
                return
            end
            idxStartBytesInRange = idxStartBytes(isInRange);
            remainderBytes = dataStream(idxStartBytesInRange(end)+msgSize:end);
            
            % Align the data based on the validated start characters
            msgIndexTemplate = repmat((0:msgSize-1)',1,length(idxStartBytesInRange));
            msgIndex = bsxfun(@plus,msgIndexTemplate,idxStartBytesInRange);
            
            dataAligned = dataStream(msgIndex);
            
        end
        function [dataAligned remainderBytes] = ByteAlignSlow(dataStream,msgSize)
            
            assert(size(dataStream,1) == 1,'Data Stream must be a [1 N] array');
            
            if length(dataStream) < msgSize
                dataAligned = []
                remainderBytes = dataStream;
                return
            end
            
            % Find all start chars ('128') and index the next set of bytes
            % off of these starts.  This could lead to overlapping data
            % but valid data will be verified using the checksum
            idxStartBytesAny = find((dataStream == 128));
            
            % Check for false starts, which are start chars in the data
            % we can find these if the 'next' message start char is the
            % exact spacing of the message size
            idxStartBytes = idxStartBytesAny;
            falseStartBytes = false(size(idxStartBytes));
            for iStartChar = 1:length(idxStartBytes)-1
                if falseStartBytes(iStartChar)
                    % if byte is already flagged as a data byte, just
                    % continue
                    continue
                end
                % nextStartChar will store how far 'forward' to check for start bytes
                % that match our message size.  typically there will only
                % be a few of these interspersed, but we need to keep
                % reading until we exceed the message length
                nextStartChar = 1;
                
                % while: (we're not going to overrun) && (the next
                % startChar isn't further away than 1 message size
                while (length(idxStartBytes) >= iStartChar+nextStartChar) &&...
                        (idxStartBytes(iStartChar+nextStartChar) < idxStartBytes(iStartChar)+msgSize)
                    % read ahead to next char
                    nextStartChar = nextStartChar + 1;
                end
                
                % If the next message start and this one add up to a
                % message size, then only the first is a true message
                % start, the others are just data bytes (i.e. false start
                % bytes)
                if (length(idxStartBytes) >= iStartChar+nextStartChar) && (idxStartBytes(iStartChar+nextStartChar)-idxStartBytes(iStartChar) == msgSize)
                    falseStartBytes(iStartChar+1:iStartChar+nextStartChar-1) = true;
                end
            end
            % remove any data bytes labelled as start chars
            idxStartBytes(falseStartBytes) = [];
            
            % Check if there are too few bytes between the last start
            % character and the end of the buffer
            isInRange = idxStartBytes <= 1+length(dataStream)-msgSize;
            idxStartBytesInRange = idxStartBytes(isInRange);
            remainderBytes = dataStream(idxStartBytesInRange(end)+msgSize:end);
            
            % Align the data based on the validated start characters
            msgIndexTemplate = repmat((0:msgSize-1)',1,length(idxStartBytesInRange));
            msgIndex = bsxfun(@plus,msgIndexTemplate,idxStartBytesInRange);
            
            dataAligned = dataStream(msgIndex);
        end
        
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
                
                x = Inputs.CpcHeadstage.XorChksum(msg);
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
                    error('Unkonwn message id: %d',msg(1));
            end
            
            return;
        end
        
        function msg = EncodeStartMsg()
            msg(1) = uint8(1);
            msg(end+1) = Inputs.CpcHeadstage.XorChksum(msg);
            return;
        end
        
        function msg = EncodeStopMsg()
            msg(1) = uint8(2);
            msg(end+1) = Inputs.CpcHeadstage.XorChksum(msg);
            return;
        end
        
        function msg = EncodeStatusMsg()
            msg(1) = uint8(3);
            msg(end+1) = Inputs.CpcHeadstage.XorChksum(msg);
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
            
            msg(end+1) = Inputs.CpcHeadstage.XorChksum(msg);
            return;
        end
        
        function msg = EncodeConfigReadMsg(indx)
            msg(1) = uint8(5);
            msg(2) = uint8(indx);
            msg(end+1) = Inputs.CpcHeadstage.XorChksum(msg);
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
        
        function r = XorChksum(msg)
            
            % Updated for a matrix of inputs
            % Size should be numBytes x numSample
            % RSA 
            
            if size(msg,1) == 1 || size(msg,2) == 1
                % array input
                numMessages = 1;
                msg = msg(:);
                numBytes = length(msg);
            else           
                [numBytes numMessages] = size(msg);
            end
            
            if (~isa(msg, 'uint8'))
                if (~all(msg < 256 & msg > -1))
                    error('Passed vector contains elements below 0 or above 255');
                end
            end
            
            r = zeros(1,numMessages,'uint8');
            for k = 1:numBytes
                msgRow = msg(k,:);
                xorResult = double(bitxor(r, msgRow));
                
                r = Inputs.CpcHeadstage.crcTable(1 + xorResult);
                %r = Inputs.CpcHeadstage.crcTable(1 + (bitxor(r, msgRow)));
                assert(all(r <= 255 & r >= 0 ),'Out of range');
                r = uint8(r);
            end
            
            
            
            
            
            
        end
        
        function t = CpchCrcGen()
            
            t = zeros(1,256);
            for k=0:255
                t(k+1) = p_cpch_crc_gen(k);
            end
        end
    end
    
end



function r = p_cpch_crc_gen(package)

if (~isempty(find(package > 255, 1)))
    error('Passed vector contains elements above 255');
end

if (~isempty(find(package < 0, 1)))
    error('Passed vector contains elements below 0');
end


%% Direct bit method
p = [1 0 1 0 0 1 1 0 1];             % Poly = 0xA6, MSB is on the right
x = (dec2bin(package, 8))';
x = [double(x(:)' - '0'), ones(1, 8)];

xr=x(1:9);

for k=1:(length(x)-8)
    if xr(1) == p(1)
        xr = xor(xr,p);
    end;
    
    xr(1:8)=xr(2:9);
    
    if (k < (length(x)-8))
        xr(9)=x(k+9);
    end
end

r = uint8(bin2dec(char(~xr(1:8)+'0')));
end
function r = p_cpch_crc_lut(msg)
persistent t;

if (isempty(t))
    for k=0:255
        t(k+1) = p_cpch_crc_gen(k);
    end
end

r = 0;

for k = msg(:)'
    r = t(1 + (bitxor(r, k)));
end

end
