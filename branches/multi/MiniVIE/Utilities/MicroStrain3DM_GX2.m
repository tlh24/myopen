classdef MicroStrain3DM_GX2 < hgsetget  % inherit from hgsetget so that returning object is unneccessary ('pass by reference')
    % Class object for accessing microstrain devices.  This first pass is
    % designed to connect to the device on object creatation.  When
    % streaming is enabled, received bytes are interpreted by a callback
    % and parsed and the latest data is made available via the angularPosition property field
    %
    % Note: nodeAddr = Last two digits of serial number 4200-20xx
    
    % Example usage:
    %  m = MicroStrain3DM_GX2('COM9',21,20); % these need to be configured per system/device
    %  m.ping
    %  m.start_streaming
    %  m.preview
    %  m.stop_streaming
    %  m.close
    %
    % Note: the stream_rcv() method must be called before getting properties to update data if BytesAvailableFunc is disabled
    %
    % Configure device (ensure streaming stopped first)
    % Enable auto-stream
    %   m.send_command(['e4';'C1';'29';'00';'FC';'A6';'80','CE']);
    % Read eeprom value
    %   m.send_command(['e5';'00';'FC';'A6']);
    % Read device strings:
    %   m.send_command(['ea';'00'])
    %   m.send_command(['ea';'01'])
    %   m.send_command(['ea';'02'])
    %   m.send_command(['ea';'03'])
    %
    % Created 2009-Apr-21 Robert Armiger, Johns Hopkins University Applied
    % Physics Lab
    %
    % $Log: MicroStrain3DM_GX2.m  $
    % Revision 1.20 2011/02/09 14:52:02EST Armiger, Robert S. (ArmigRS1-a) 
    % more connect revisions
    % Revision 1.19 2011/01/28 12:21:00EST Armiger, Robert S. (ArmigRS1-a) 
    % Added rf channel check
    % Revision 1.18 2011/01/25 15:40:01EST Armiger, Robert S. (ArmigRS1-a) 
    % further refined device init
    % Revision 1.17 2010/12/29 16:03:29EST Armiger, Robert S. (ArmigRS1-a)
    % improved startup (connect) function
    % Revision 1.16 2010/12/29 13:09:27EST Armiger, Robert S. (ArmigRS1-a)
    % updated bytes count
    % Revision 1.15 2010/11/11 12:05:50EST Armiger, Robert S. (ArmigRS1-a)
    % updated messaging
    % Revision 1.14 2010/11/03 13:26:29EDT Armiger, Robert S. (ArmigRS1-a)
    % updated references to Data Comms Protocol
    % Revision 1.13 2010/10/13 17:25:12EDT Armiger, Robert S. (ArmigRS1-a)
    % added base station ping
    % Revision 1.12 2010/09/24 17:13:26EDT Armiger, Robert S. (ArmigRS1-a)
    % added verbose display to user during init
    % Revision 1.11 2010/07/29 21:39:08EDT armigrs1-a
    % added configuration command set
    % Revision 1.10 2010/06/14 13:16:39EDT armigrs1-a
    % updated object calls with new name
    % Revision 1.9 2010/05/25 15:17:09EDT armigrs1-a
    % Member renamed from MicroStrain.m to MicroStrain3DM_GX2.m in project d:/SCM/NSTD/RP2009/VRE/Common/SourcesAndSinks/project.pj.
    % Revision 1.8 2010/05/25 15:17:09EDT armigrs1-a
    % added LQI and RSSI to preview pane for diagnostics
    % Revision 1.7 2010/05/25 12:56:49EDT armigrs1-a
    % updated typecasts and fixed timer conversion
    % Revision 1.6 2010/05/25 12:17:05EDT armigrs1-a
    % Updated function for robustness and completed testing with MicroStrainSrc
    %
    properties
        hPort;          % [serial] port handle
        devName;        % string identifier
        nodeAddr;       % node ID (decimel)
        RfChannel;
        angularPosition;
        angularVelocity;
        
        rotationMatrix;
        
        Timer;          % Device timer value
        LQI;            % Link Quality
        RSSI;           % Device Signal Strength
        
        serialBuffer;   % internal buffer
        
        Verbose = 0;
    end
    properties (Constant = true,Access = private)
        timerConst = 19660800;
        
        Roll    = 1;
        Pitch   = 2;
        Yaw     = 3;
        
        % Command Reference (hex)
        
        % Per Version 1.19 3DM-GX2® Data Communications Protocol
        cmdWirelessPing                                         = '02';
        cmdRawAccelerometerAndAngularRateSensorOutputs          = 'C1';
        cmdAccelerationAndAngularRate                           = 'C2';
        cmdDeltaAngleAndDeltaVelocity                           = 'C3';
        cmdSetContinuousMode                                    = 'C4';
        cmdOrientationMatrix                                    = 'C5';
        cmdOrientationUpdateMatrix                              = 'C6';
        cmdScaledMagnetometerVector                             = 'C7';
        cmdAccelerationAngularRateAndOrientationMatrix          = 'C8';
        cmdWriteAccelerometerBiasCorrection                     = 'C9';
        cmdWriteGyroBiasCorrection                              = 'CA';
        cmdAccelerationAngularRateAndMagnetometerVector         = 'CB';
        cmdAccelerationAngularRateAndMagVectorsAndOrientationMatrix = 'CC'; % "Magnetometer" truncated per 63 charater limit
        cmdCaptureGyroBias                                      = 'CD';
        cmdEulerAngles                                          = 'CE';
        cmdEulerAnglesAndAngularRates                           = 'CF';
        cmdTransferQuantityToNonVolatileMemory                  = 'D0';
        cmdTemperatures                                         = 'D1';
        cmdGyroStabilizedAccelerationAngularRateAndMagnetometerVector = 'D2';
        cmdDeltaAngleAndDeltaVelocityAndMagnetometerVectors     = 'D3';
        cmdWriteWordToEEPROM                                    = 'E4';
        cmdReadWordFromEEPROM                                   = 'E5';
        cmdReadFirmwareVersionNumber                            = 'E9';
        cmdReadDeviceIdentifierString                           = 'EA';
        cmdStopContinuousMode                                   = 'FA'; %(no reply)
        cmdBuiltInTest                                          = 'FB';
        
        cmdContinousConfirmByte1    = 'C1';
        cmdContinousConfirmByte2    = '29';
        cmdNack                     = '21';
        cmdAck                      = 'AA';
        cmdPingBaseStation          = '01';
        cmdReadBaseStationEeprom    = '72';
        
    end
    methods
        function obj = MicroStrain3DM_GX2(comPort,nodeAddr, RfChannel)
            if nargin < 3
                error('Usage: obj = MicroStrain3DM_GX2(comPort,nodeAddr, RfChannel)');
            end
            
            obj.nodeAddr = nodeAddr; % Last two digits of serial number 4200-20xx
            obj.RfChannel = RfChannel;
            
            % create port or find existing
            
            obj.devName = ['MicroStrain3DM_GX2:'  comPort];
            hExisting = instrfind('Name',obj.devName);
            if isempty(hExisting)
                s = serial(comPort);
                s.Name = obj.devName;
                s.BaudRate = 115200;
                s.Timeout = 2;
                s.InputBufferSize = 4096;
                %s.BytesAvailableFcnMode = 'byte';
                % Note the BytesAvailableFcnCount should be larger than the
                % expected message size [13] so that a full message is
                % guarenteed to be read.
                %s.BytesAvailableFcnCount = 30;  % was 30
            else
                s = hExisting(1);
                delete(hExisting(2:end));
                obj.devName = s.Name;
            end
            
            % open port
            if ~strcmpi(s.status,'open')
                try
                    fprintf('[%s] Opening %s...',mfilename,comPort);
                    fopen(s);
                    fprintf('OK\n');
                catch ME
                    fprintf('FAILED\n');
                    delete(s);
                    rethrow(ME);
                end
            end
            
            % If auto-starting
            %s.BytesAvailableFcn = @(src,evt)stream_rcv(obj);
            
            obj.hPort = s;
        end
        function success = connect(obj)

            %Function map
            
            % connect()
            % stop_streaming()
            %     test_buffer_autofill()
            %         disable_bytes_available_callback()
            %         purge_buffer()
            % ping()
            %     ping_base_station()
            %     ping_wireless_node()
            %         stop_streaming()
            % start_streaming()
            %     disable_bytes_available_callback()
            %     test_buffer_autofill()
            %     connect(); %% ERROR
            %     stop_streaming();
            %     ping_wireless_node()
            % verify_valid_data()
            %     start_streaming()
            % 

            
            println(['Attempting to STOP data stream for Node ' num2str(obj.nodeAddr)]);
            if obj.stop_streaming()
                println('Stop Stream...OK');
            else
                println('Stop Stream...FAILED');
                success = -1;
                return
            end
            
            if obj.ping()
                println('Node Ping...OK');
            else
                println('Node Ping...FAILED');
                success = -2;
                return
            end
            
            println(['Attempting to START data stream for Node ' num2str(obj.nodeAddr)]);
            if obj.start_streaming()
                println('Start Stream...OK');
            else
                println('Start Stream...FAILED');
                success = -3;
                return
            end
            
            if obj.verify_valid_data()
                println('Valid Data...OK\n');
            else
                println('Valid Data...FAILED');
                success = -4;
                return
            end
            
            success = 1;
            
        end
        function success = ping_base_station(obj)

            numRetries = 5;
            success = 0;
            
            while ~success && numRetries > 0
                
                % Check Comms:
                cmdByte = 1;
                fwrite(obj.hPort,cmdByte,'uint8');
                baseReply = fread(obj.hPort,1);
                baseResponseSuccess = cmdByte;
                
                fprintf('[%s] Base Station Ping %s...',mfilename,obj.hPort.Port);
                if isempty(baseReply)
                    fprintf(2,'NO RESPONSE\n');
                elseif isequal(baseReply,baseResponseSuccess)
                    fprintf('OK');
                    fprintf('\t Expected: 0x%02x, Received: 0x%02x\n',baseResponseSuccess,baseReply);
                    MicroStrainDCP.getBaseStationInfo(obj.hPort);
                else
                    fprintf(2,'FAILED');
                    fprintf('\t Expected: 0x%02x, Received: ',baseResponseSuccess);
                    fprintf('0x%02x ',baseReply);
                    fprintf('\n');
                    %warning('MicroStrain3DM_GX2:UnexpectedReply','Base Ping FAILED - Bad Reply. Try stop_streaming\n');
                end
                
                success = isequal(baseReply,baseResponseSuccess);
                numRetries = numRetries - 1;
                pause(0.1);
            end
            
            
            
        end
        function success = ping(obj)
            success = ping_base_station(obj) && ping_wireless_node(obj);
        end
            function success = ping_wireless_node(obj)
            numRetries = 5;
            
            success = 0;
            
            while ~success && numRetries > 0
                
                fwrite(obj.hPort,[2 0 obj.nodeAddr],'uint8')
                deviceReply = fread(obj.hPort,1,'uint8');
                deviceResponseSuccess = 2;
                
                
                fprintf('[%s] Device Ping Node #%d...',mfilename,obj.nodeAddr);
                if isempty(deviceReply)
                    fprintf(2,'NO RESPONSE\n');
                elseif isequal(deviceReply,deviceResponseSuccess)
                    fprintf('OK');
                    fprintf('\t Expected: 0x%02x, Received: 0x%02x\n',deviceResponseSuccess,deviceReply);
                else
                    fprintf(2,'FAILED');
                    fprintf('\t Expected: 0x%02x, Received: ',deviceResponseSuccess);
                    fprintf('0x%02x ',deviceReply);
                    fprintf('\n');
                    
                    % Try stop streaming
                    obj.stop_streaming();
                    %warning('MicroStrain3DM_GX2:UnexpectedReply','Device Ping FAILED - Bad Reply. Try stop_streaming\n');
                end
                
                success = isequal(deviceReply,deviceResponseSuccess);
                numRetries = numRetries - 1;
                pause(0.1);
            end
            
            
        end
        function close(obj)
            delete(obj.hPort);
            obj.hPort = [];
        end
        function send_command(obj,hxCmd)
            % note: send multi byte commands as row vectors (['ea';'00'])
            msg = [
                'AA'                        % Start of Packet (SOP)
                '0B'                        % Delivery Flag
                '00'                        % App Data Type
                '00'                        % Node Address MSB
                dec2hex(obj.nodeAddr,2)     % Node Address LSB
                dec2hex(size(hxCmd,1)+1,2)  % Length of command + 1
                '00'                        % Command MSB
                hxCmd                       % Command LSB
                ];
            % Compute Command Packet Checksum
            numMsg = hex2dec(msg);
            sumMsg = sum(numMsg(2:end));  % Sum of all bytes except SOP
            chkSumMSB = floor(sumMsg/2^8);
            chkSumLSB = mod(sumMsg,2^8);
            
            % transmit command
            completeMsg = [numMsg; chkSumMSB; chkSumLSB];
            fwrite(obj.hPort,completeMsg);
            
            %out = read_command(obj,hxCmd);
        end
        function out = read_command(obj,hxCmd)
            % this command reads from the serial buffer only enough data as
            % is expected
            
            out = [];
            
            % read first received byte
            [reply nRead] = fread(obj.hPort,1);
            if nRead == 0
                fprintf('[%s] No Reply, retrying\n',mfilename);
                [reply nRead] = fread(obj.hPort,1);
                if nRead == 0
                    return
                end
            end
            
            if strcmpi(hxCmd,MicroStrain3DM_GX2.cmdStopContinuousMode)% || size(hxCmd,1) > 1
                % No further reply expected
                return
            end
            
            if strcmpi(dec2hex(reply(1)),MicroStrain3DM_GX2.cmdNack)
                disp('Received NACK');
                return
            elseif strcmpi(dec2hex(reply(1)),MicroStrain3DM_GX2.cmdAck)
                %disp('ACK')
                %fprintf('Sent: %s  Received: %02x \n',hxCmd,reply)
                
                % read header, find out how many bytes of reply we have
                [header nRead] = fread(obj.hPort,6);
                if nRead == 0
                    fprintf('[%s] No Reply after ACK\n',mfilename);
                    return
                elseif nRead < 6
                    fprintf('[%s] Incomplete Header: ',mfilename);
                    fprintf('%02x ',header);
                    fprintf('\n');
                    purge_buffer(obj);
                    return
                end
                
                isValid = MicroStrain3DM_GX2.check_header(header,obj.nodeAddr);
                if ~isValid
                    % sometimes we get two ACKS, try to realign and continue
                    if all(header(1:2) == hex2dec('AA')) && ...
                            (obj.hPort.BytesAvailable > 0)
                        fprintf('[%s] Two ACKS received...\n',mfilename)
                        header(1) = [];
                        [newByte nRead] = fread(obj.hPort,1);
                        if nRead == 0
                            % give up
                            fprintf('[%s] Failed trying to repair buffer\n',mfilename);
                            return
                        end
                        header(6) = newByte;
                        if ~MicroStrain3DM_GX2.check_header(header,obj.nodeAddr)
                            fprintf('[%s] Failed trying to repair buffer\n',mfilename);
                            return
                        end
                    end
                end
                
                replyLength = header(6);
                
                % read variable length reply
                [payload nRead] = fread(obj.hPort,replyLength + 4);
                if nRead == 0
                    fprintf('[%s] No data returned after header\n',mfilename);
                    return
                elseif nRead < replyLength + 4
                    fprintf('[%s] Incomplete Payload Data: ',mfilename);
                    fprintf('%02x ',payload);
                    fprintf('\n');
                    
                    fprintf('Header: ');
                    fprintf('%02x ',header);
                    fprintf('\n');
                    
                    purge_buffer(obj);
                    return
                end
                
                % now we have the complete message
                replyData = payload(1:replyLength);
                
                % verify the checksum first:
                chkSumMSB = payload(replyLength+3);
                chkSumLSB = payload(replyLength+4);
                
                expectedChecksum = sum([header(2:end); replyData]);
                receivedChecksum = chkSumMSB * 256 + chkSumLSB;
                
                validMsg = expectedChecksum == receivedChecksum;
                
                if validMsg
                    obj.LQI = payload(replyLength+1);
                    obj.RSSI = payload(replyLength+2);
                    
                    out = process_msg(obj,hxCmd,replyData);
                end
                
            else
            end
            
            
        end
        
        function disable_bytes_available_callback(obj)
            
            if obj.Verbose
                println('Disabling Bytes Available Function');
            end
            
            obj.hPort.BytesAvailableFcn = '';
        end
        
        function enable_bytes_available_callback(obj)
            if obj.Verbose
                println('Enabling Bytes Available Function');
            end
            %obj.hPort.BytesAvailableFcn = @(src,evt)stream_rcv(obj);
        end
        
        
        function isFilling = test_buffer_autofill(obj)
            % Function tests to see if the serial port is 'auto-filling'
            % i.e. data is appearing without being requested
            
            % disable bytes function
            obj.disable_bytes_available_callback();
            
            % purge_buffer
            obj.purge_buffer();
            
            % wait for new bytes to appear
            pause(0.1);
            
            % check buffer again
            data1 = obj.purge_buffer();

            % wait for new bytes to appear
            pause(0.1);
            
            % check buffer again
            data2 = obj.purge_buffer();
            
            isFilling = (~isempty(data1)) && (~isempty(data2));
            
        end
        function success = start_streaming(obj)
            
            success = 0;
            numRetries = 10;
            
            while ~success && numRetries > 0
                %obj.disable_bytes_available_callback();
                
                % Repeat start command 3 times just as stop command sent 3
                % times
                send_command(obj,[...
                    MicroStrain3DM_GX2.cmdSetContinuousMode; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte1; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte2; ...
                    MicroStrain3DM_GX2.cmdEulerAngles]);
                send_command(obj,[...
                    MicroStrain3DM_GX2.cmdSetContinuousMode; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte1; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte2; ...
                    MicroStrain3DM_GX2.cmdEulerAngles]);
                send_command(obj,[...
                    MicroStrain3DM_GX2.cmdSetContinuousMode; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte1; ...
                    MicroStrain3DM_GX2.cmdContinousConfirmByte2; ...
                    MicroStrain3DM_GX2.cmdEulerAngles]);
                
                % Ensure data is being received
                isFilling = test_buffer_autofill(obj);
                
                if isFilling
                    println('Data Stream Started Successfully');
                    obj.enable_bytes_available_callback
                    success = true;
                else
                    println('Data Stream FAILED to start');
                    success = false;
                    
                    %obj.connect();
                    obj.stop_streaming();
                    obj.ping_wireless_node();
                    
                end
                numRetries = numRetries - 1;
            end
%             if ~success
%                 warning('Start Stream Failed')
%                 keyboard
%             end

            
        end
        function success = stop_streaming(obj)
            % Per 3DM-GX2™ Data Communications Protocol:
            %
            % Wireless devices often require repeated transmissions of the termination packet. A single
            % packet is not always successful. This is because the continuous data being broadcast by
            % the Inertia-Link® or 3DM-GX2™ reduces the radio bandwidth available for commands
            % from the host. The base station radio on the host will often time-out when trying to
            % broadcast a command to an Inertia-Link® or 3DM-GX2™ that is in continuous mode.
            %
            % A new alternate single byte termination command (0xFA) was added to version 2.1.00 of
            % the firmware. This new single byte command does not generate a response packet.
            % Because of the smaller size of the packet and the absence of the response packet, the
            % wireless bandwidth requirement of this command is much lower than the standard
            % termination packet and it terminates continuous mode much more successfully than the
            % standard termination packet.
                        
            nTriesRemaining = 7;
            
            isFilling = test_buffer_autofill(obj);
            while isFilling && nTriesRemaining > 0
                println('Sending Stop Streaming Command');
                send_command(obj,MicroStrain3DM_GX2.cmdStopContinuousMode);
                send_command(obj,MicroStrain3DM_GX2.cmdStopContinuousMode);
                send_command(obj,MicroStrain3DM_GX2.cmdStopContinuousMode);
                
                for i = 1:3
                    isFilling = test_buffer_autofill(obj);
                end
                
                nTriesRemaining = nTriesRemaining - 1;
                
            end
            
            success = ~isFilling;
            
        end
        function success = verify_valid_data(obj)
            
            success = 0;
            numRetries = 5;
            
            obj.angularPosition=[];
            
            while ~success && numRetries > 0
                numWaits = 5;
                while ~success && numWaits > 0
                    fprintf('[%s] Waiting for valid data...',mfilename);
                    pause(0.2)
                    success = ~isempty(obj.angularPosition);
                    fprintf('\n');
                    numWaits = numWaits - 1;
                end
                % No Luck getting good data, try re-starting stream
                if ~success
                    obj.start_streaming();
                end
                numRetries = numRetries - 1;
            end
        end
        function stream_rcv(obj)
            
            %{
            % Callback Heartbeat:
            persistent iCount
            if isempty(iCount)
                iCount = 0;
            else
                iCount = iCount + 1;
                if ~mod(iCount,20)
                    disp(iCount)
                end
            end
            %}
            
            
            nBytes = obj.hPort.BytesAvailable;
            if nBytes == 0
                disp('No Data');
                return
            else
                rawBytes = fread(obj.hPort,nBytes);
                % [rawBytes nRead] = fread(src,nBytes);
            end
            
            % Force rebroadcast
            %obj.start_streaming
            
            synchSequence = 'AA070000';
            
            a = dec2hex(rawBytes)';
            b = a(:)';
            
            tokens = strfind(b,synchSequence);
            
            if length(tokens) < 2
                return
            else
                
                oneMsg = b(tokens(end-1):tokens(end)-1);
                
                wholeMsg = hex2dec(reshape(oneMsg,2,[])');
                
                header = wholeMsg(1:6);
                payload = wholeMsg(7:end);
                
                % validate node ID
                receivedNodeID = header(5);
                if receivedNodeID ~= obj.nodeAddr
                    fprintf(2,'[%s] Received Data from node # %02d, expected node # %02d\n',mfilename,receivedNodeID,obj.nodeAddr);
                end
                
                replyLength = header(6);
                replyData = payload(1:replyLength);
                % cmdMSB = replyData(1); 0x00
                cmdLSB = replyData(2); %echo of command
                
                % verify checksum
                chkSumMSB = payload(replyLength+3);
                chkSumLSB = payload(replyLength+4);
                
                expectedChecksum = sum([header(2:end); replyData]);
                receivedChecksum = chkSumMSB * 256 + chkSumLSB;
                validMsg = expectedChecksum == receivedChecksum;
                
                if validMsg
                    obj.LQI = payload(replyLength+1);
                    obj.RSSI = payload(replyLength+2);
                    obj.angularPosition = obj.process_msg(dec2hex(cmdLSB),replyData);
                    T_WCS_TRNS = [ [0 1 0]' [1 0 0]' [0 0 -1]' [0 0 0]'; [0 0 0 1] ];
                    %T_WCS_TRNS = eye(4);
                    obj.rotationMatrix = T_WCS_TRNS * pinv(MicroStrain3DM_GX2.euler_to_matrix(obj.angularPosition));
                else
                    fprintf('[%s] Invalid Checksum received',mfilename);
                end
                
            end
        end
        function out = process_msg(obj,msgId,replyData)
            out = [];
            switch lower(msgId(1,:))
                case 'c2' % orientation matrix
                    out = replyData;
                case 'c5' % orientation matrix
                    if length(replyData) < 42
                        return
                    end
                    M11 = double(typecast(uint8(replyData([6 5 4 3])),'single'));
                    M12 = double(typecast(uint8(replyData([10 9 8 7])),'single'));
                    M13 = double(typecast(uint8(replyData([14 13 12 11])),'single'));
                    
                    M21 = double(typecast(uint8(replyData([18 17 16 15])),'single'));
                    M22 = double(typecast(uint8(replyData([22 21 20 19])),'single'));
                    M23 = double(typecast(uint8(replyData([26 25 24 23])),'single'));
                    
                    M31 = double(typecast(uint8(replyData([30 29 28 27])),'single'));
                    M32 = double(typecast(uint8(replyData([34 33 32 31])),'single'));
                    M33 = double(typecast(uint8(replyData([38 37 36 35])),'single'));
                    
                    M = [M11 M12 M13; M21 M22 M23; M31 M32 M33];
                    
                    obj.Timer = double(typecast(uint8(replyData([42 41 40 39])),'uint32')) / obj.timerConst;
                    
                    %[Pitch Roll Yaw] = f_orientation_to_euler(M)
                    
                    out = M;
                    
                case 'ce' % Euler Angles
                    if length(replyData) < 18
                        return
                    end
                    
                    % process Euler Angles
                    ang = zeros(1,3);  % radians
                    
                    ang(MicroStrain3DM_GX2.Roll)   = double(typecast(uint8(replyData([6 5 4 3])),'single'));
                    ang(MicroStrain3DM_GX2.Pitch)  = double(typecast(uint8(replyData([10 9 8 7])),'single'));
                    ang(MicroStrain3DM_GX2.Yaw)    = double(typecast(uint8(replyData([14 13 12 11])),'single'));
                    
                    obj.Timer = double(typecast(uint8(replyData([18 17 16 15])),'uint32')) / obj.timerConst;
                    
                    out = ang;
                case 'e9'
                    if length(replyData) < 6
                        return
                    end
                    firmwareVersion = typecast(uint8(replyData([6 5 4 3])),'uint32');
                    fprintf('[%s] Firmware Version: %d\n',mfilename,firmwareVersion);
                    
                    out = double(firmwareVersion);
                case 'ea'
                    if length(replyData) < 19
                        return
                    end
                    stringSelectorValue = replyData(3);
                    switch stringSelectorValue
                        case 0
                            fprintf('Model Number:');
                        case 1
                            fprintf('Serial Number:');
                        case 2
                            fprintf('Model Name:');
                        case 3
                            fprintf('Device Options:');
                        otherwise
                            fprintf('Unknown Device Identifier String Selector Value: %d\n',stringSelectorValue);
                            return;
                    end
                    charString = sprintf('%c',replyData(4:17));
                    fprintf('%s',charString);
                    fprintf('\n');
                    
                    out = charString;
                case {'e4' 'e5'}
                    
                    eePromWord = typecast(uint8(replyData([4 3])),'uint16');
                    out = double(eePromWord);
                otherwise
                    lower(msgId)
                    disp('bad id')
            end
        end
        function data = purge_buffer(obj)
            
            
            if obj.Verbose
                println('Purging Buffer');
            end
            
            nBytes = obj.hPort.BytesAvailable;
            if nBytes > 0
                data = fread(obj.hPort,nBytes);
            else
                data = [];
                % fprintf('Buffer is Empty\n');
            end
        end
        function results = CommsBIT(obj,numTests)
            
            fname = sprintf('%s_%04d-%02d-%02d_%02d-%02d-%02d_CommsBIT.txt',mfilename,fix(clock));
            fp = fopen(fname,'w');
            if fp < 0
                fprintf(2,'Failed to create log file "%s"\n',fname);
                results = [];
                return
            end
            c = onCleanup(@()fclose(fp));
            
            fprintf(fp,'Testing Communications. Connect %d times\n',numTests);
            fprintf(fp,'Device is Node Id %d, Channel %d, at Port %s \n',...
                obj.nodeAddr,obj.RfChannel,obj.hPort.Name);
            
            results = zeros(1,numTests);
            for iTest = 1:numTests,
                try
                    results(iTest) = obj.connect;
                catch ME
                    fprintf(fp,'Unexpected Error on Trial %d.  Error was:\n%s\n\n',ME.message);
                    results(iTest) = -5;
                end
            end
                
            
            fprintf(fp,'%d of %d Successful Connections\n',sum(results == 1),iTest);
            fprintf(fp,'Failures Include:\n');
            fprintf(fp,'%d Failed to Stop Stream\n',sum(results == -1));
            fprintf(fp,'%d Failed to Ping\n',sum(results == -2));
            fprintf(fp,'%d Failed to Start Stream\n',sum(results == -3));
            fprintf(fp,'%d Failed to Receive Valid Data\n',sum(results == -4));
            fprintf(fp,'%d Unknown Exception\n',sum(results == -5));
            fprintf(fp,'\n\n');

        end

        function preview(obj)
            
            obj.stream_rcv();
            if isempty(obj.angularPosition)
                error('No data.  Try start_streaming');
            end
            
            hPlot = LivePlot(5,500,{'Roll' 'Pitch' 'Yaw' 'LQI' 'RSSI'},1);
            
            figure(2);
            clf;
            PlotUtils.triad(eye(4));
            hTriad = PlotUtils.triad(eye(4));
            axis([-2 2 -2 2 -2 2]);
            daspect([1 1 1]);
            
            
            while StartStopForm
                obj.stream_rcv();

                putdata(hPlot,[obj.angularPosition*180/pi obj.LQI obj.RSSI]);
                set(hTriad,'Matrix',obj.rotationMatrix);
                
                drawnow
            end
            
        end % preview
    end % methods
    methods (Static=true)
        function M = euler_to_matrix(eulerAnglesRadians)
            % Input angles as Euler [Roll Pitch Yaw] (radians)
            % Per 3DM-GX2™ Data Communications Protocol v1.13
            cTheta = cos(eulerAnglesRadians(MicroStrain3DM_GX2.Pitch));
            cPhi = cos(eulerAnglesRadians(MicroStrain3DM_GX2.Roll));
            cGamma = cos(eulerAnglesRadians(MicroStrain3DM_GX2.Yaw));
            
            sTheta = sin(eulerAnglesRadians(MicroStrain3DM_GX2.Pitch));
            sPhi = sin(eulerAnglesRadians(MicroStrain3DM_GX2.Roll));
            sGamma = sin(eulerAnglesRadians(MicroStrain3DM_GX2.Yaw));
            
            M = eye(4);  % Return full 4x4 frame matrix
            
            M(1,1) = cGamma*cTheta;
            M(1,2) = sGamma*cTheta;
            M(1,3) = -sTheta;
            M(2,1) = cGamma*sTheta*sPhi - sGamma*cPhi;
            M(2,2) = sGamma*sTheta*sPhi + cGamma*cPhi;
            M(2,3) = cTheta*sPhi;
            M(3,1) = cGamma*sTheta*cPhi + sGamma*sPhi;
            M(3,2) = sGamma*sTheta*cPhi - cGamma*sPhi;
            M(3,3) = cTheta*cPhi;
            
        end %euler_to_matrix
        function RollPitchYaw = matrix_to_euler(M)
            
            aPitch   = asin(-M(1,3));
            aRoll    = atan2(M(2,3),M(3,3));
            aYaw     = atan2(M(1,2),M(1,1));
            
            RollPitchYaw = [aRoll aPitch aYaw];
            
        end %matrix_to_euler
        function isValid = check_header(header,nodeAddr)
            isValid = length(header) == 6;
            isValid = isValid && header(1) == hex2dec('AA');
            isValid = isValid && header(2) == hex2dec('07');
            isValid = isValid && header(3) == hex2dec('00');
            isValid = isValid && header(4) == hex2dec('00');
            isValid = isValid && header(5) == nodeAddr;
        end
    end %static methods
end %classdef


function println(str)

fprintf('[%s] %s\n',mfilename,str);

end
