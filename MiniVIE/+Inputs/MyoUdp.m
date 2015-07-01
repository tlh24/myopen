classdef MyoUdp < Inputs.SignalInput
    % Class for interfacing Thalmic Labs Myo Armband via pnet udp.  The basic
    % architecture is that the Myo SDK is used within MyoUdp.exe which
    % handles device interface and low level communications.  The
    % executable file then streams the EMG, orientation, accelerometer, and
    % gyroscope data via UDP on port 10001 at 200Hz.  Note this is so far
    % independant from MATLAB so any receiver code could be written to take
    % the EMG data.  Note that the device pairing and connection can be
    % managed using the myo armband manager software from thalmic
    % On the matlab side, the getData command reads buffered UDP packets,
    % interpolated the EMG data up to the expected 1kHz and returns the
    % data.  The orientation, accelerometer, and gyroscope data are
    % currently returned as property values.  Future versions may make
    % these available as seperate channel data for pattern classification.
    %
    % Data packet information:
    % Data packet size is 48 bytes.
    %     uchar values encoding:
    %     Bytes 0-7: int8 [8] emgSamples
    %     Bytes 8-23: float [4]  quaternion (rotation)
    %     Bytes 24-35: float [3] accelerometer data, in units of g
    %     Bytes 36-47: float [3] gyroscope data, in units of deg / s
    %
    %
    % Known Limitations:
    % As stated above, the maximum data rate is 200Hz for the armband and
    % the data resolution is only 8-bits.  Also, the myo is set to timeout
    % after 30 seconds of no motion to conserve battery.  Shaking the
    % device will wake it and resue streaming.  Currently only one myo can
    % stream at a time, though this is targeted for future revisions in the
    % MiniVIE software
    %
    %     % Test usage:
    %     MiniVIE.configurePath
    %     obj = Inputs.MyoUdp.getInstance;
    %     obj.initialize();
    %     hViewer = GUIs.guiSignalViewer(obj);
    %
    % Installation Notes
    %
    % The MyoUdp class will launch a helper program MyoUdp.exe based on the
    % Myo Armband SDK for streaming EMG data.  This executable requires the
    % Microsoft Visual Studio 2013 Redistributable Package.  If it is not
    % installed, you may get an error about missing DLL files.
    % http://www.microsoft.com/en-us/download/confirmation.aspx?id=40784
    %
    %
    % Revisions:
    %   1/27/2015 Armiger: Initial revision for streaming EMG
    %   2/24/2015 Armiger: Updated .exe to include orientation data
    %   7/01/2015 Armiger: Added support for dual streaming armbands (2
    %                      computers)
    properties
        UdpPortNum8 = 10001;     % stream port for channels 1-8
        UdpPortNum16 = 10002;    % stream port for channels 9-16
        
        EMG_GAIN = 0.01;  %Scaling from int8 to voltage
    end
    properties (SetAccess = private)
        IsInitialized = 0;
        UdpSocket8;
        UdpSocket16;
        Buffer
        numPacketsReceived = 0;
        numValidPackets = 0;
        
        Orientation         % Euler Angles, Degrees
        Accelerometer       % X,Y,Z Acceleration, (g)
        Gyroscope           % X,Y,Z Angular Rate, (deg/s)
        
    end
    methods (Access = private)
        function obj = MyoUdp
            obj.Verbose = 0;
        end
    end
    methods
        %initialize(obj);
        function [ status ] = initialize(obj)
            % Initialize network interface to NFU.
            % [ status ] = initialize(obj)
            %
            % status = 0: no error
            % status < 0: Failed
            
            % Note, true sample rate is 200 Hz, but this is upsampled to
            % 100Hz for compatability
            obj.SampleFrequency = 1000; % Hz
            obj.ChannelIds = 1:16;
            
            status = 0;
            
            if obj.IsInitialized
                fprintf('[%s] UDP Comms already initialized\n',mfilename);
                return
            end
            
            % Open a udp port to receive streaming data on
            obj.UdpSocket8 = PnetClass(obj.UdpPortNum8);
            obj.UdpSocket16 = PnetClass(obj.UdpPortNum16);
            if ~obj.UdpSocket8.initialize()
                fprintf(2,'[%s] Failed to initialize udp socket\n',mfilename);
                status = -1;
                return
            elseif (obj.UdpSocket8.hSocket ~= 0)
                fprintf(2,'[%s] Expected receive socket id == 0, got socket id == %d\n',mfilename,obj.UdpSocket8.hSocket);
            end
            if ~obj.UdpSocket16.initialize()
                fprintf(2,'[%s] Failed to initialize udp socket\n',mfilename);
                status = -1;
                return
            end
            
            % check for data:
            [~, numReads] = obj.UdpSocket8.getAllData(1e6);
            if numReads > 0
                fprintf('[%s] UDP Data Stream 1-8 Detected\n', mfilename);
            else
                fprintf('[%s] UDP Data Stream 1-8 NOT Detected\n', mfilename);
            end
            [~, numReads] = obj.UdpSocket16.getAllData(1e6);
            if numReads > 0
                fprintf('[%s] UDP Data Stream 9-16 Detected\n', mfilename);
            else
                fprintf('[%s] UDP Data Stream 9-16 NOT Detected\n', mfilename);
            end
            
            % data is [numSamples x numChannels]
            obj.Buffer = Common.DataBuffer(5000,obj.NumChannels);
            
            obj.IsInitialized = true;
            
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
            
            obj.update();
            
            data = obj.Buffer.getData(numSamples,idxChannel);
            
        end
        function update(obj)
            
            % Update function reads any buffered udp packets and stores
            % them for later use.
            
            maxRead = 1e6; % max number of buffered UDP packets to read
            
            % read udp for channels 1-8
            [cellDataBytes, numReads] = obj.UdpSocket8.getAllData(maxRead);
            if numReads > 0
                % convert data bytes
                [emgData,angle,accel,gyro,nValidPackets] = obj.convertPackets(cellDataBytes);
                if nValidPackets == 0
                    disp('Invalid Packets for channels 1-8');
                    return
                end
                
                % Display Output
                if obj.Verbose > 0
                    fprintf('angle: [%6.1f %6.1f %6.1f]; accel: [%6.2f %6.2f %6.2f]; gyro: [%8.1f %8.1f %8.1f] \n',...
                        angle(1,end),angle(2,end),angle(3,end),...
                        accel(1,end),accel(2,end),accel(3,end),...
                        gyro(1,end),gyro(2,end),gyro(3,end) );
                end
                
                % update object
                obj.Orientation = angle;
                obj.Accelerometer = accel;
                obj.Gyroscope = gyro;
                
                obj.Buffer.addData(obj.EMG_GAIN .* emgData,1:8);
            end
            
            
            % read udp for channels 9-16
            [cellDataBytes, numReads] = obj.UdpSocket16.getAllData(maxRead);
            if numReads > 0
                % convert data bytes
                [emgData,angle,accel,gyro,nValidPackets] = obj.convertPackets(cellDataBytes);
                if nValidPackets == 0
                    disp('Invalid Packets for channels 9-16');
                    return
                end
                
                obj.Buffer.addData(obj.EMG_GAIN .* emgData,9:16);
            end
            
        end
        
        function isReady = isReady(obj,numSamples) % Consider removing extra arg
            isReady = 1;
        end
        function start(obj)
        end
        function stop(obj)
        end
        function close(obj)
            Inputs.MyoUdp.getInstance(-1);
        end
        
    end
    methods (Static)
        function [obj, hViewer] = Default
            % [obj hViewer] = Default
            % Test usage:
            obj = Inputs.MyoUdp.getInstance;
            obj.initialize();
            hViewer = GUIs.guiSignalViewer(obj);
        end
        function Simulator
            % Demo the compact version of pnet wrapped into a class.  This can be run
            % across two matlab sessions or within it's own session
            pnet('closeall')
            
            %% Setup Sender (Session 2)
            hUdpHostSend = PnetClass(4096,10001,'127.0.0.1');
            [success, msg] = hUdpHostSend.initialize();
            
            %% Send (Session 2)
            i = 1;
            while StartStopForm
                i = mod(i+1,255);
                %hUdpHostSend.putData(char(rand(1,12)*255));
                hUdpHostSend.putData(char(i*ones(1,12)));
                pause(eps)
            end
        end
        function [emgData, xyz, accel, gyro,nValidPackets] = convertPackets(cellDataBytes)
            % Read buffered udp packets and return results
            
            % default outputs
            [emgData, xyz, accel, gyro] = deal([]);
            
            % compute number of valid packets
            packetSize = 48;
            isCorrectSize = cellfun(@length,cellDataBytes) == packetSize;
            nValidPackets = sum(isCorrectSize);
            
            if nValidPackets == 0
                % no new data, nothing to do
                return
            end
            
            % convert 2d array: [newPackets by numElements]
            orderedBytes = reshape([cellDataBytes{isCorrectSize}],packetSize,[]);
            
            nValidPackets = size(orderedBytes,2);
            
            % convert EMG samples first (bytes 0..7)
            emgBytes = orderedBytes(1:8,:);
            
            % convert uchar to int8 to double
            emgSamples = double(emgBytes);
            emgSamples(emgSamples > 127) = emgSamples(emgSamples > 127) - 255;
            
            if isempty(emgSamples) && sum(~isCorrectSize) > 0
                fprintf('[%s] Unexpected Packet Size Received\n',mfilename);
            end
            
            % perform upsample
            upsampleFactor = 5;
            
            %interp sampled
            if nValidPackets > 1
                emgData = interp1(emgSamples',linspace(1,nValidPackets,nValidPackets*upsampleFactor-upsampleFactor+1));
            else
                % can't interpolate
                emgData = repmat(emgSamples,[1 5])';
                %disp('Cannot Interpolate')
            end
            
            try
                % convert Orientation data (bytes 9..48)
                motionBytes = orderedBytes(9:48,:);  % single bytes
                singleData = reshape( typecast(motionBytes(:),'single'), 10, []);
                
                % onOrientationData provides its current orientation, which is
                % represented as a unit quaternion.
                quat = singleData(1:4,:);
                % onAccelerometerDataprovides the accelerometer data of myo, in
                % units of g.
                accel = singleData(5:7,:);
                % onGyroscopeData provides the gyroscope data of myo, in units
                % of deg / s.
                gyro = singleData(8:10,:);
                
                % Convert quaternion to rotation matrix
                % This could fail if all zeros are sent as quaternion
                % data
                R = repmat(eye(3),[1 1 nValidPackets]);
                for i = 1:nValidPackets
                    try
                        % renormalize quaternion in case of rounding errors
                        normQ = quat(:,i) ./ norm(quat(:,i));
                        % convert to rotation matrix
                        R(:,:,i) = LinAlg.quaternionToRMatrix(normQ);
                    catch ME
                        warning(ME.message);
                    end
                end
                % Convert to Euler angles
                xyz = LinAlg.decompose_R(R);
                
            catch ME
                disp(mfilename);
                disp('Caught an error');
                disp(ME.message)
                keyboard
            end
            
        end
        function singleObj = getInstance(cmd)
            persistent localObj
            if nargin < 1
                cmd = 0;
            end
            
            if cmd < 0
                fprintf('[%s] Deleting Udp comms object\n',mfilename);
                try
                    localObj.UdpSocket8.close();
                end
                try
                    localObj.UdpCommandSocket.close();
                end
                %IsInitialized
                localObj = [];
                return
            end
            
            if isempty(localObj) || ~isvalid(localObj)
                fprintf('[%s] Calling constructor\n',mfilename);
                localObj = Inputs.MyoUdp;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
    end
end
