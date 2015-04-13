classdef MyoUdp < Inputs.SignalInput
    % Class for interfacing Thalmic Labs Myo Cuff via pnet udp.  The basic
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
    % Revisions:
    %   1/27/2015 Armiger: Initial revision for streaming EMG
    %   2/24/2015 Armiger: Updated .exe to include orientation data
    properties
        UdpStreamReceivePortNumLocal = 10001;
    end
    properties (SetAccess = private)
        IsInitialized = 0;
        UdpStreamReceiveSocket;
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
            obj.ChannelIds = (1:8);
            
            status = 0;
            
            if obj.IsInitialized
                fprintf('[%s] UDP Comms already initialized\n',mfilename);
                return
            end
            
            % Open a udp port to receive streaming data on
            obj.UdpStreamReceiveSocket = PnetClass(obj.UdpStreamReceivePortNumLocal);
            if ~obj.UdpStreamReceiveSocket.initialize()
                fprintf(2,'[%s] Failed to initialize udp socket\n',mfilename);
                status = -1;
                return
            elseif (obj.UdpStreamReceiveSocket.hSocket ~= 0)
                fprintf(2,'[%s] Expected receive socket id == 0, got socket id == %d\n',mfilename,obj.UdpStreamReceiveSocket.hSocket);
            end
            
            % check for data:
            [~, numReads] = obj.UdpStreamReceiveSocket.getAllData(1e6);
            
            if numReads > 0
                fprintf('[%s] UDP Data Stream Detected\n', mfilename);
            else
                f = fullfile(fileparts(which('MiniVIE')),'+Inputs','MyoUdp.exe');
                fprintf('[%s] UDP Data Stream NOT Detected\n', mfilename);
                
                reply = questdlg({'UDP Data not detected.' ...
                    'Launch MyoUdp.exe to begin streaming?'...
                    '(Ensure that Myo Armband is connected before proceeding)'},...
                    'Launch MyoUdp.exe','OK','Cancel','OK');
                if strcmp(reply,'OK')
                    fprintf('[%s] Launching %s\n', mfilename, f);
                    system(strcat(f,' &'));
                end
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
            [cellDataBytes, numReads] = obj.UdpStreamReceiveSocket.getAllData(1e6);
            
            packetSize = 48;
            isCorrectSize = cellfun(@length,cellDataBytes) == packetSize;
            nValidPackets = sum(isCorrectSize);
            
            if nValidPackets == 0
                % no new data, nothing to do
                return
            end
            
            % update totals
            obj.numPacketsReceived = obj.numPacketsReceived + numReads;
            obj.numValidPackets = obj.numValidPackets + nValidPackets;
            
            % convert 2 2d array: [newPackets by numElements]
            M = reshape([cellDataBytes{isCorrectSize}],packetSize,[]);
            
            channelIds = obj.ChannelIds;
            %%
            
            nValidPackets = size(M,2);
            
            % convert EMG samples first (bytes 0..7
            E = M(1:8,:);
            
            % convert uchar to int8 to double
            b = double(E);
            b(b > 127) = b(b > 127) - 255;
            
            if isempty(b) && sum(~isCorrectSize) > 0
                fprintf('[%s] Unexpected Packet Size Received\n',mfilename);
            end
            
            % perform upsample
            upsampleFactor = 5;
            
            % repeat samples
            %e = repmat(b,[5 1]);
            %f = reshape(e(:),size(b,1),[]);
            %convertedFrame = f(obj.ChannelIds,:);
            
            %interp sampled
            if nValidPackets > 1
                g = interp1(b',linspace(1,nValidPackets,nValidPackets*upsampleFactor-upsampleFactor+1));
            else
                % can't interpolate
                g = repmat(b,[1 5])';
                %disp('Cannot Interpolate')
            end
            
            try
                % convert Orientation data (bytes 9..48)
                b = M(9:48,:);  % single bytes
                s = reshape( typecast(b(:),'single'), 10, []);
                
                % onOrientationData provides its current orientation, which is
                % represented as a unit quaternion.
                quat = s(1:4,:);
                % onAccelerometerDataprovides the accelerometer data of myo, in
                % units of g.
                accel = s(5:7,:);
                % onGyroscopeData provides the gyroscope data of myo, in units
                % of deg / s.
                gyro = s(8:10,:);
                
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
                
                % Display Output
                if obj.Verbose > 0
                    fprintf('orient: [%6.1f %6.1f %6.1f]; accel: [%6.2f %6.2f %6.2f]; gyro: [%8.1f %8.1f %8.1f] \n',...
                        xyz(1,end),xyz(2,end),xyz(3,end),...
                        accel(1,end),accel(2,end),accel(3,end),...
                        gyro(1,end),gyro(2,end),gyro(3,end) );
                end
                
                obj.Orientation = xyz;
                obj.Accelerometer = accel;
                obj.Gyroscope = gyro;
                
            catch ME
                disp(mfilename);
                disp('Caught an error');
                disp(ME.message)
                keyboard
            end
            EMG_GAIN = 0.01;  %TODO abstract
            obj.Buffer.addData(EMG_GAIN .* g(:,channelIds));
            
            return
            
            % Add however many new samples we received to the rolling
            % buffer
            
            % Place new data in the buffer.  Note this won't overrun
            % the buffer since there are only 10 samples per packet
            [numNewSamples, numChannels] = size(convertedFrame);
            obj.dataBuffer = circshift(obj.dataBuffer,[0 -numNewSamples]);
            
            obj.dataBuffer(1:numChannels,end-numNewSamples+1:end) = convertedFrame;
            dataBuff = obj.dataBuffer(:,end-numSamples+1:end)';
            
            
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
            [success, msg] = hUdpHostSend.initialize()
            
            %% Send (Session 2)
            i = 1;
            while StartStopForm
                i = mod(i+1,255);
                %hUdpHostSend.putData(char(rand(1,12)*255));
                hUdpHostSend.putData(char(i*ones(1,12)));
                pause(eps)
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
                    localObj.UdpStreamReceiveSocket.close();
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
