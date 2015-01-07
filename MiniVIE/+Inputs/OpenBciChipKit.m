classdef OpenBciChipKit < Inputs.SignalInput
    % Class for interfacing chipKit OpenBCI 16 channel module
    %
    % This board communicates wirelessly using paire RFduino chip sets and
    % streams 16 channels of data in 24-bit format from a TI1299 chipset.
    % In addition a 3 channel accelerometer is included on the base board
    %
    % 06Jan2015 Armiger: Created
    
    % Inherited Properties
    % SampleFrequency = 1000; % Hz
    % ChannelIds = []; % Id numbers for activated channels.
    % NumSamples = 1000; % This is the number of samples maintained
    %
    % Verbose = 1;
    % hFilter = {};      % contains handles to filter objects
    % FilterPadding = 250; % Number of samples to pad data when getting filtered data to avoid edge effects
    
    % Inherited Dependant Properties
    % NumChannels;       % this is the length of filter ids
    properties
        
    end
    properties (SetAccess = private)
        SerialObj     % handle to serial port
        SerialPort = 'COM1';
        NumReceived
        DataBuffer1     % holds odd samples, ch 1-8
        DataBuffer2     % holds even samples ch 9-16
        ByteRemainder
    end
    methods
        function obj = OpenBciChipKit(comPort)
            % Constructor
            if nargin > 0
                obj.SerialPort = comPort;
            end
            
            obj.SampleFrequency = 125; % Hz TEMP FIX
            obj.ChannelIds = 1:16;
            
        end
        
        function initialize(obj)
            % Perform initialization and open port
            assert(isa(obj.SerialPort, 'char'),'Expected SerialPort to be type char');
            
            
            % Create the holding buffer for collected data
            rows = 3000;%obj.NumSamples;
            cols = 8;
            obj.DataBuffer1 = zeros(rows, cols, 'double');
            obj.DataBuffer2 = zeros(rows, cols, 'double');
            
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
                    'BaudRate', 115200, ...
                    'DataBits', 8, ...
                    'StopBits', 1, ...
                    'Parity', 'None', ...
                    'FlowControl', 'None', ...
                    'Timeout', 1, ...
                    'ByteOrder', 'BigEndian', ...
                    'InputBufferSize', 330000);
                fopen(obj.SerialObj);
                
                fprintf('[%s] Port Opened: %s\n',mfilename,obj.SerialPort);
            catch ME
                fprintf('[%s] Port FAILED\n',mfilename);
                rethrow(ME);
            end
            
            fwrite(obj.SerialObj,uint8('s'));  % Stop Streaming
            
            pause(0.1)
            n = obj.SerialObj.BytesAvailable;
            if n > 0, fread(obj.SerialObj,n); end
            
            fwrite(obj.SerialObj,uint8('v'));  % Reset
            
            t = tic;
            timeout = 10; %sec
            while obj.SerialObj.BytesAvailable < 118 && toc(t) < timeout
                % waiting...
                drawnow
            end
            
            n = obj.SerialObj.BytesAvailable;
            if n == 0
                error('Invalid Reset Procedure. No response from board');
            else
                % read 118 startup bytes
                x = fread(obj.SerialObj,n);
                disp(char(x'))
            end
            
            fwrite(obj.SerialObj,uint8('b'));  % Start Streaming
            
        end
        function data = getData(obj,numSamplesRequested)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.
            
            
            if nargin < 2
                numSamplesRequested = obj.NumSamples;
            end
            
            % Read available bytes from serial device
            n = obj.SerialObj.BytesAvailable;
            if n > 0
                x = fread(obj.SerialObj,n);
                x = uint8(x);
            else
                x = uint8([]);
            end
            
            % Tag on any remaining bytes from last check:
            
            x = cat(1,obj.ByteRemainder,x);
            
            % Message Format:
            %
            % Header
            %
            %     Byte 1: 0xA0
            %     Byte 2: Sample Number
            %
            % EMG Data
            % Note: values are 24-bit signed, MSB first
            %
            %     Bytes 3-5: Data value for EEG channel 1
            %     Bytes 6-8: Data value for EEG channel 2
            %     Bytes 9-11: Data value for EEG channel 3
            %     Bytes 12-14: Data value for EEG channel 4
            %     Bytes 15-17: Data value for EEG channel 5
            %     Bytes 18-20: Data value for EEG channel 6
            %     Bytes 21-23: Data value for EEG channel 6
            %     Bytes 24-26: Data value for EEG channel 8
            %
            % Accelerometer Data
            % Note: values are 16-bit signed, MSB first
            %
            %     Bytes 27-28: Data value for accelerometer channel X
            %     Bytes 29-30: Data value for accelerometer channel Y
            %     Bytes 31-32: Data value for accelerometer channel Z
            %
            % Footer
            %
            %     Byte 33: 0xC0
            
            
            % First, trim from the first '0xA0' to the last '0xC0'
            idxStart = find(x == hex2dec('A0'),1,'first');
            idxLast = find(x == hex2dec('C0'),1,'last');
            
            xTrim = x(idxStart:idxLast);
            
            % Store any remaining bytes for the next iteration
            obj.ByteRemainder = x(idxLast:end);
            
            try
                xMat = reshape(xTrim,33,[]);
            catch
                xMat = reshape([],33,[]);
                DefaultName = ['BadSerial' datestr(now,'yyyymmdd_HHMMSS') '.mat'];
                %save(DefaultName,'x');
            end
            isValid = xMat(1,:) == hex2dec('A0') & xMat(end,:) == hex2dec('C0');
            
            xValid = xMat(:,isValid);
            
            seqNum = xValid(2,:);
            
            ch8 = xValid(3:26,:);
            
            bits24 = reshape(ch8,3,[]);
            
            bits32 = cat(1,bits24,zeros(1,size(bits24,2)));
            l = typecast(bits32(:),'int32');
            
            isNeg = logical(bitget(l,24));
            %l(isNeg) = bitor(l(isNeg),hex2dec('FF000000'),'int32');
            l(isNeg) = bitset(l(isNeg),25,1);
            l(isNeg) = bitset(l(isNeg),26,1);
            l(isNeg) = bitset(l(isNeg),27,1);
            l(isNeg) = bitset(l(isNeg),28,1);
            l(isNeg) = bitset(l(isNeg),29,1);
            l(isNeg) = bitset(l(isNeg),30,1);
            l(isNeg) = bitset(l(isNeg),31,1);
            l(isNeg) = bitset(l(isNeg),32,1);
            
            
            newSamples = reshape(l,8,[]);
            %newSamples = newSamples(:,isOdd(seqNum));
            
            % Scale Factor (Volts/count) = 4.5 Volts / gain / (2^23 - 1);
            newSamples = double(newSamples);
            newSamples = newSamples .* (4.5 / 24 / (2^23 - 1) );

            isOdd = @(x) logical(mod(x,2));
            newOddSamples = newSamples(:,isOdd(seqNum));
            newEvenSamples = newSamples(:,~isOdd(seqNum));
            
            numOdd = size(newOddSamples,2);
            numEven = size(newEvenSamples,2);
            if size(newSamples,2) > 0
                fprintf('%d new samples\n', size(newSamples,2));
            end
            
            if numOdd >= size(obj.DataBuffer1,1)
                % Replace entire buffer
                obj.DataBuffer1 = newOddSamples(:,end-size(obj.DataBuffer1,1)+1:end)';
            else
                % Check for buffer overrun
                obj.DataBuffer1 = circshift(obj.DataBuffer1,[-numOdd 0]);
                rowIdx = size(obj.DataBuffer1,1)-numOdd+1:size(obj.DataBuffer1,1);
                obj.DataBuffer1(rowIdx,:) = newOddSamples';
            end
            
            if numEven >= size(obj.DataBuffer2,1)
                % Replace entire buffer
                obj.DataBuffer2 = newEvenSamples(:,end-size(obj.DataBuffer2,1)+1:end)';
            else
                % Check for buffer overrun
                obj.DataBuffer2 = circshift(obj.DataBuffer2,[-numEven 0]);
                rowIdx = size(obj.DataBuffer2,1)-numEven+1:size(obj.DataBuffer2,1);
                obj.DataBuffer2(rowIdx,:) = newEvenSamples';
            end
            
            % return the most recently requested data
            data = cat(2,...
                obj.DataBuffer1(end-numSamplesRequested+1:end,:),...
                obj.DataBuffer2(end-numSamplesRequested+1:end,:));
            
            
        end
        function isReady = isReady(obj,numSamples)
            isReady = 1;
        end
        function start(obj)
            fwrite(obj.SerialObj,uint8('b'));  % Start Streaming
        end
        function stop(obj)
            fwrite(obj.SerialObj,uint8('s'));  % Stop Streaming
            
            pause(0.1)
            n = obj.SerialObj.BytesAvailable;
            if n > 0, fread(obj.SerialObj,n); end
        end
        function close(obj)
            stop(obj);
        end
    end
end
