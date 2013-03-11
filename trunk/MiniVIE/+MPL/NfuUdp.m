classdef (Sealed) NfuUdp < handle
    % Class for interfacing JHU/APL NFU via pnet.
    % Note instances are limited so use NfuUdp.getInstance
    %
    % This handles streaming of all data types (cpch, percepts, etc.)
    %
    % Usage:
    % hNfu = MPL.NfuUdp.getInstance;
    % hNfu.initialize();
    %
    % hNfu.setParam(NFU_run_algorithm,0)  %% 0 implies algorithm runs on laptop
    % hNfu.setParam(NFU_output_to_MPL,2)  %% 2 = NFU CAN to limb
    %
    % Note data streams start in the initialize function
    %
    %
    % Note: cellData = get_buffer(obj,id) currently uses two methods for
    % percepts and for EMG data.  one with flipud and one without.  Needs
    % to be investigated further
    properties
        
        Hostname = '192.168.1.111';  % Destination
        UdpStreamReceivePortNumLocal = 9027
        TcpPortNum = 6200;
        UdpCommandPortNumLocal = 52000;  % This is where udp commands originate locally
        UdpCommandPortNumRemote = 6201;  % This is where udp commands are sent to
        
        EnableDataLogging = 0;
        
        UdpBuffer1
        UdpBuffer2
        UdpBuffer3
        UdpBuffer4
        
        hLogFile
        
    end
    properties (SetAccess = private)
        hMud = MPL.MudCommandEncoder();
        IsInitialized = false;
        
        TcpConnection = [];
        TcpSocket = [];
        UdpStreamReceiveSocket = [];
        UdpCommandSocket = [];
        
        BufferSize = 100;
        
        newData1
        newData2
        newData3
        newData4
        
        ptr1
        ptr2
        ptr3
        ptr4
        
        sum1
        sum2
        sum3
        sum4
        
        numPacketsReceived = 0;
        
        localRoc
    end
    methods (Access = private)
        function obj = NfuUdp
            % Creator is private to force singleton
            
            reset_buffers(obj);
        end
    end
    methods
        function [ status ] = initialize(obj)
            % Initialize network interface to NFU.
            % [ status ] = initialize(obj)
            %
            % status = 0: no error
            % status < 0: Failed
            
            status = 0;
            obj.readRocTable();
            
            if obj.IsInitialized
                fprintf('[%s] NFU Comms already initialized\n',mfilename);
                return
            end
            
            % Open a udp port to receive streaming data on
            obj.UdpStreamReceiveSocket = pnet('udpsocket',obj.UdpStreamReceivePortNumLocal);
            if obj.UdpStreamReceiveSocket < 0
                fprintf(2,'[%s] Failed to create UDP Socket on local port #%d\n',mfilename,obj.UdpStreamReceivePortNumLocal);
                status = -1;
                return
            elseif (obj.UdpStreamReceiveSocket ~= 0)
                fprintf(2,'[%s] Expected receive socket id == 0, got socket id == %d\n',mfilename,obj.UdpStreamReceiveSocket);
            end
            pnet(obj.UdpStreamReceiveSocket, 'setreadtimeout',0);
            
            % Open a udp port to send commands
            obj.UdpCommandSocket = pnet('udpsocket',obj.UdpCommandPortNumLocal);
            if obj.UdpCommandSocket < 0
                fprintf(2,'Failed to create UDP Socket on local port #%d\n',obj.UdpCommandPortNumLocal);
                status = -2;
                return
            elseif (obj.UdpCommandSocket ~= 1)
                fprintf(2,'[%s] Expected receive socket id == 1, got socket id == %d\n',mfilename,obj.UdpCommandSocket);
            end
            pnet(obj.UdpCommandSocket, 'setreadtimeout',0);
            
            % StartStreams
            
            % Enable CPCH Data
            fprintf('[%s] Enabling CPCH Data Stream\n',mfilename);
            obj.enableStreaming(1);
            % 1/28/2012 RSA, KDK observed cpc stream did not start without
            % delay between messages
            pause(0.1);
            
            % Enable Percepts
            fprintf('[%s] Enabling Percepts Data Stream\n',mfilename);
            obj.enableStreaming(4);
            
            % Test a few updates since these have been problematic
            obj.update();
            pause(0.1);
            obj.update();
            pause(0.1);
            obj.update();
            pause(0.1);
            
            obj.IsInitialized = true;
            
            obj.enableRunMode;
            
            return
            % open a CMD connection to the NFU
            fprintf( '[%s] Creating local tcpsocket on port %d...', mfilename,obj.TcpPortNum);
            obj.TcpSocket = pnet( 'tcpsocket', obj.TcpPortNum );
            socketSuccess = (-1 ~= obj.TcpSocket);
            
            if socketSuccess
                fprintf('OK\n');
                pnet( obj.TcpSocket, 'setreadtimeout', 1 );
                
                % Try to crate connection to NFU.  Only works if NFU is
                % ready to receive commands
                fprintf( '[%s] tcplisten on tcpsocket...',mfilename);
                obj.TcpConnection = pnet( obj.TcpSocket, 'tcplisten' );
                connectionSuccess = (-1 ~= obj.TcpConnection);
                if connectionSuccess
                    fprintf('OK\n');
                    pnet( obj.TcpConnection, 'setreadtimeout', 1 );
                    
                    %fprintf( 'Sending NFU reset message\n' );
                    %pnet( cmdCon, 'write', reset_Nfu ) %reset NFU
                    %fprintf( 'Sending NFU write cfg message\n' );
                    %pnet( cmdCon, 'write', write_cfg_Nfu ); %write cfg NFU
                    %pnet( cmdCon, 'readline' );
                else
                    fprintf('FAILED\n' );
                    fprintf( '[%s] Closing tcpsocket...\n',mfilename);
                    pnet(obj.TcpSocket, 'close' )
                    status = -1;
                    return
                end
            else
                fprintf('FAILED\n' );
                status = -1;
                return
            end
            status = 0;
            
            % StartStreams
            
            % Enable CPCH Data
            fprintf('[%s] Enabling CPCH Data Stream\n',mfilename);
            obj.enableStreaming(1);
            
            % Enable Percepts
            fprintf('[%s] Enabling Percepts Data Stream\n',mfilename);
            obj.enableStreaming(4);
            
            obj.IsInitialized = true;
            
            obj.enableRunMode;
            
        end
        function enableRunMode(obj)
            
            % get handle to database
            db = MplDb.getInstance();
            
            %NFU_run_algorithm = evalin('base','NFU_run_algorithm');
            NFU_run_algorithm = db.get_parameter('NFU_run_algorithm');
            obj.setParam(NFU_run_algorithm,0)  %% 0 implies algorithm runs on laptop
            db.set_value('NFU_run_algorithm',single(0))  %% 0 implies algorithm runs on laptop
            
            pause(0.2);
            
            %NFU_output_to_MPL = evalin('base','NFU_output_to_MPL');
            val = 2;
            NFU_output_to_MPL = db.get_parameter('NFU_output_to_MPL');
            obj.setParam(NFU_output_to_MPL,val)  %% 2 = NFU CAN to limb
            db.set_value('NFU_output_to_MPL',single(val))  %% 2 = NFU CAN to limb
            
        end
        function readRocTable(obj)
            obj.localRoc = MPL.RocTable.createRocTables('test.xml');
        end
        function sendAllJoints(obj,jointAngles)
            
            p = zeros(27,1);
            if length(jointAngles) == 7
                p(1:7) = jointAngles;
                p(8:27) = 0;
            elseif length(jointAngles) == 27
                p = jointAngles(:);
            else
                error('Wrong size for Joint Angles');
            end
            
            msg = obj.hMud.DOMPositionCmd(p);
            obj.sendUdpCommand(char(61,msg));  % append nfu msg header
            
        end
        function sendUpperArmHandLocalRoc(obj,upperJointAngles,RocId,RocVal)
            
            % use local ROC's
            assert(RocVal >= 0,'RocVal < 0');
            assert(RocVal <= 1,'RocVal > 1');
            assert(~isempty(obj.localRoc),'Roc Table Empty');
            roc = obj.localRoc(RocId+1);
            
            handPos = interp1(roc.waypoint,roc.angles,RocVal);
            p = [upperJointAngles(:); handPos(:)];
            obj.sendAllJoints(p);
            
        end
        function sendUpperArmHandRoc(obj,upperJointAngles,RocId,RocVal)
            
            % override remote ROC
            sendUpperArmHandLocalRoc(obj,upperJointAngles,RocId,RocVal);
            return
            
            msg = obj.hMud.ArmPosVelHandRocGrasps(upperJointAngles,zeros(1,7),1,RocId,RocVal,1);
            obj.sendUdpCommand(char(59,msg));  % append nfu msg header
            
        end
        
        function sendUdpCommand(obj,msg)
            %sendUdpCommand(obj,msg)
            % send a udp message to the command socket
            
            
            obj.send_udp( obj.UdpCommandSocket, msg,...
                obj.Hostname, obj.UdpCommandPortNumRemote);
        end
        function enableStreaming(obj,type)
            if nargin < 2
                type = 1;
            end
            
            % With wireless, multiple streams are ok
            [ msg ] = obj.msg_enable_streaming( type );
            
            obj.send_udp( obj.UdpCommandSocket, msg,...
                obj.Hostname, obj.UdpCommandPortNumRemote);
            
        end
        function disableStreaming(obj,type)
            if nargin < 2
                type = 1;
            end
            
            [ msg ] = obj.msg_disable_streaming( type );
            
            obj.send_udp( obj.UdpCommandSocket, msg,...
                obj.Hostname, obj.UdpCommandPortNumRemote);
            
        end
        function resetNfu(obj)
            disp('Incomplete');
            return
            %reset NFU message
            reset_Nfu = char(70, 9);
            %write cfg NFU message
            
            write_cfg_Nfu = char( 4, reshape(char(szParam),length(szParam),1), zeros(128-length(szParam),1), 8, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 128, 63);
            
        end
        function setParam(obj,param,value)
            % Take input parameter and send to NFU.  if value is provided
            % the new value will be updated.  If not provided, the value
            % used from the base workspace parameter will be used
            % if param is a string, it should be the name of a base
            % workspace SimulinkParamter, otherwise, param should be the
            % actual paramter
            
            %             if ischar(param)
            %                 % Input can be either the actual simulink parameter or a
            %                 % string corresponding to the parameter in the base
            %                 % workspace.
            %                 simulinkParam = evalin('base',param);
            %             elseif isa(param,'Simulink.Parameter')
            %                 % input is the actual simulink parameter
            %                 simulinkParam = param;
            %             else
            %                 error('Unknown data type passed into input parameter');
            %             end
            
            % If value not passed, update param with the .Value field
            if nargin > 2
                if ~isequal(size(value),param.Dimensions)
                    error('Bad Value Size');
                end
                
                param.Value = value;
            end
            
            fprintf('[%s] Setting NFU parameter %s to %d\n',mfilename,param.Description,value);
            
            [ msg ] = obj.msg_update_param( param );
            
            obj.send_udp( obj.UdpCommandSocket, msg,...
                obj.Hostname, obj.UdpCommandPortNumRemote);
            
        end
        function reset_buffers(obj)
            obj.BufferSize = 100;
            
            obj.UdpBuffer1 = cell(obj.BufferSize,1);
            obj.UdpBuffer2 = cell(obj.BufferSize,1);
            obj.UdpBuffer3 = cell(obj.BufferSize,1);
            obj.UdpBuffer4 = cell(obj.BufferSize,1);
            
            obj.newData1 = false(obj.BufferSize,1);
            obj.newData2 = false(obj.BufferSize,1);
            obj.newData3 = false(obj.BufferSize,1);
            obj.newData4 = false(obj.BufferSize,1);
            
            obj.ptr1 = 1;
            obj.ptr2 = 1;
            obj.ptr3 = 1;
            obj.ptr4 = 1;
            
            obj.sum1 = 0;
            obj.sum2 = 0;
            obj.sum3 = 0;
            obj.sum4 = 0;
            
        end
        function tactorControl(obj, nodeid, period, amplitude, duration, currentLimit, offset )
            % If value not passed, update param with the .Value field
            [ msg ] = obj.msg_tactor_control( nodeid, period, amplitude, duration, currentLimit, offset );
            
            obj.send_udp( obj.UdpCommandSocket, msg,...
                obj.Hostname, obj.UdpCommandPortNumRemote);
        end
        
        function cellData = get_buffer(obj,id)
            % read unread buffer data and return array of cells
            
            switch id
                case 1
                    %fprintf('[%s] reading %d unread data packets\n',mfilename,sum(obj.newData1));
                    
                    idOfInterest = obj.ptr1:(obj.ptr1+obj.BufferSize-1);
                    idOfInterest = idOfInterest(:) & obj.newData1(:);
                    
                    % wrap indices eg: 99 100 1 2 3
                    idOfInterest(idOfInterest > obj.BufferSize) = idOfInterest(idOfInterest > obj.BufferSize) - obj.BufferSize;
                    
                    % return newest signals first
                    % 05Feb2013: Verified signal packet ordering is correct
                    % using the nfuSimulator
                    cellData = obj.UdpBuffer1(idOfInterest);
                    
                    obj.newData1(:) = false;
                    
                case 2
                    %fprintf('[%s] reading %d unread data packets\n',mfilename,sum(obj.newData2));
                    
                    idOfInterest = obj.ptr2:(obj.ptr2+obj.BufferSize-1);
                    idOfInterest = idOfInterest(:) & obj.newData2(:);
                    
                    % wrap indices eg: 99 100 1 2 3
                    idOfInterest(idOfInterest > obj.BufferSize) = idOfInterest(idOfInterest > obj.BufferSize) - obj.BufferSize;
                    
                    % return newest signals first                    
                    cellData = obj.UdpBuffer2(idOfInterest);
                    
                    obj.newData2(:) = false;
                    
                    
            end
            
        end
        function update(obj)
            % Update function reads any buffered udp packets and stores
            % them for later use.  Packets are routed based on size to the
            % appropriate buffer
            
            assert(isequal(pnet(obj.UdpStreamReceiveSocket,'status'),6),...
                'pnet socket is disconnected but not closed');
            
            %UdpBuffer
            len = 1;
            while(len > 0)
                try
                    % try block here is for cases where an output
                    % argument is not returned by pnet (
                    len = pnet(obj.UdpStreamReceiveSocket,'readpacket','noblock');
                catch ME
                    fprintf(2,'[%s] Caught a pnet error reading udp stream packets: "%s"\n',mfilename,ME.message);
                    return
                end
                
                if (len == 406) || (len == 726)
                    % Store EMG Data
                    %
                    % advance packet counter
                    obj.numPacketsReceived = obj.numPacketsReceived + 1;
                    
                    % read data and mark as new
                    obj.UdpBuffer1{obj.ptr1} = ...
                        pnet(obj.UdpStreamReceiveSocket,'read',len,'UINT8');
                    obj.newData1(obj.ptr1) = true;
                    
                    % advance ptr
                    obj.ptr1 = obj.ptr1 + 1;
                    if obj.ptr1 > obj.BufferSize
                        obj.ptr1 = 1;
                    end
                    
                    obj.sum1 = obj.sum1 + 1;
                elseif (len == 131) || (len == 143)
                    % Store percept data
                    
                    % advance packet counter
                    obj.numPacketsReceived = obj.numPacketsReceived + 1;
                    
                    % read data and mark as new
                    obj.UdpBuffer2{obj.ptr2} = pnet(obj.UdpStreamReceiveSocket,'read',len,'UINT8');
                    obj.newData2(obj.ptr2) = true;
                    
                    % advance ptr
                    obj.ptr2 = obj.ptr2 + 1;
                    if obj.ptr2 > obj.BufferSize
                        obj.ptr2 = 1;
                    end
                    
                    obj.sum2 = obj.sum2 + 1;
                    
                elseif (len == 32)
                    % Store heartbeat message
                    % typedef struct
                    % {
                    %      System_state_mode_type limb_state_mode; // should be 4 bytes
                    %      Int32u number_of_cpchs_messages;
                    % }Heartbeat_msg;
                    %
                    %
                    % typedef enum System_state_mode_type
                    % {
                    %      SW_STATE_INIT                      = 0,
                    %      SW_STATE_PRG                       = 1,
                    %      SW_STATE_FS                        = 2,
                    %      SW_STATE_NOS_CONTROL_STIMULATION   = 3,
                    %      SW_STATE_NOS_IDLE                  = 4,
                    %      SW_STATE_NOS_SLEEP                 = 5,
                    %      SW_STATE_NOS_CONFIGURATION         = 6,
                    %      SW_STATE_NOS_HOMING                = 7,
                    %      SW_STATE_NOS_DATA_ACQUISITION      = 8,
                    %      SW_STATE_NOS_DIAGNOSTICS           = 9,
                    %      SW_STATE_NUM_STATES                = 10
                    % } System_state_mode_type;
                    
                    cellStates = {
                        'SW_STATE_INIT'
                        'SW_STATE_PRG'
                        'SW_STATE_FS'
                        'SW_STATE_NOS_CONTROL_STIMULATION'
                        'SW_STATE_NOS_IDLE'
                        'SW_STATE_NOS_SLEEP'
                        'SW_STATE_NOS_CONFIGURATION'
                        'SW_STATE_NOS_HOMING'
                        'SW_STATE_NOS_DATA_ACQUISITION'
                        'SW_STATE_NOS_DIAGNOSTICS'
                        'SW_STATE_NUM_STATES'
                        };
                    try
                        newData = pnet(obj.UdpStreamReceiveSocket,'read',len,'UINT8');
                        SW_STATE = typecast(newData(1:4),'uint32');
                        numMsgs = typecast(newData(5:8),'uint32');
                        nfuStreaming = typecast(newData(9:16),'uint64');
                        lcStreaming = typecast(newData(17:24),'uint64');
                        cpchStreaming = typecast(newData(25:32),'uint64');
                        
                        fprintf('[%s] NFU: State = "%s", CPC msgs = "%d", Streaming NFU = %d LC = %d CPCH = %d\n',...
                            mfilename,cellStates{SW_STATE},numMsgs,nfuStreaming,lcStreaming,cpchStreaming);
                    catch ME
                        disp(newData)
                        fprintf('[%s] Error parsing heartbeat.  Msg: %s \n',mfilename, ME.message);
                        
                    end
                elseif len > 0
                    %len
                    fprintf('[%s] Unexpected Packet Size: %d bytes\n',mfilename,len);
                end
            end
        end
    end
    methods (Static)
        function singleObj = getInstance(cmd)
            persistent localObj
            if nargin < 1
                cmd = 0;
            end
            
            if cmd < 0
                fprintf('[%s] Deleting NfuUdp comms object\n',mfilename);
                try
                    pnet(obj.UdpStreamReceiveSocket,'close');
                end
                try
                    pnet(obj.UdpCommandSocket,'close');
                end
                %IsInitialized
                localObj = [];
                return
            end
            
            if isempty(localObj) || ~isvalid(localObj)
                fprintf('[%s] Calling constructor\n',mfilename);
                localObj = MPL.NfuUdp;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
        function [ status ] = send_udp( sock, msg, hostname, port)
            
            status = pnet(sock,'status');
            assert(isequal(status,6),'UDP Port %d not ready',port);
            pnet( sock, 'write', msg );
            pnet( sock, 'writepacket', hostname, port );
            
        end
        function [ msg ] = msg_enable_streaming( type )
            %enable_streaming Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 1, zeros(7,1));
            elseif type == 2
                %VULCANX
                enable_stream_Nfu = char( uint8(150), 9, 8, zeros(7,1));
            elseif type == 3
                %ALGORITHM
                enable_stream_Nfu = char( uint8(150), 9, 4, zeros(7,1));
            elseif type == 4
                %LC PERCEPTS
                enable_stream_Nfu = char( uint8(150), 10, 1, zeros(7,1));
            else
                error('Unmatched Type');
            end
            
            msg = enable_stream_Nfu;
        end
        function [ msg ] = msg_disable_streaming( type )
            %disable_streaming Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 0, zeros(7,1));
            elseif type == 2
                %VIE
                enable_stream_Nfu = char( uint8(150), 9, 0, zeros(7,1));
            elseif type == 3
                %ALGORITHM
                enable_stream_Nfu = char( uint8(150), 9, 0, zeros(7,1));
            elseif type == 4
                %LC PERCEPTS
                enable_stream_Nfu = char( uint8(150), 10, 0, zeros(7,1));
            else
                error('Unmatched Type');
            end
            
            msg = enable_stream_Nfu;
        end
        function [ msg ] = msg_update_param( param )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            
            % calculate dimensions
            dim_X = typecast(uint32(param.Dimensions(1)), 'uint8');
            dim_Y = typecast(uint32(param.Dimensions(2)), 'uint8');
            
            % calculate fields
            bval = zeros(4*param.Dimensions(1)*param.Dimensions(2),1,'uint8');
            
            % KDK: 1/30/2012
            % Note: Performing transpose to account for row-major c-code versus column
            % major Matlab parameters
            for i=1:param.Dimensions(1)
                for j=1:param.Dimensions(2)
                    %a = int32(single2int32(param.Value(i,j)));
                    a = typecast(single(param.Value(i,j)),'int32');
                    c = typecast(a, 'uint8');
                    bval((4*(((j-1)*param.Dimensions(1) + i) - 1))+...
                        1:(4*(((j-1)*param.Dimensions(1) + i) - 1))+4) = c;
                    
                end
            end
            
            msgId = 4;
            write_cfg_Nfu = char( ...
                msgId, ...
                reshape(char(param.Description),length(param.Description),1),...
                zeros(128-length(param.Description),1),...
                8, 0, 0, 0, ...
                reshape(dim_X, length(dim_X),1), ...
                reshape(dim_Y, length(dim_Y),1), ...
                reshape(bval, length(bval),1));
            
            msg = write_cfg_Nfu;
            
        end
        function [ msg ] = msg_tactor_control( nodeid, period, amplitude, duration, currentLimit, offset )
            tactor_node = typecast(int32(nodeid), 'uint8');
            
            per = uint8(period);
            amp = typecast(int16(amplitude), 'uint8');
            dur = typecast(uint16(duration), 'uint8');
            curr = typecast(uint16(currentLimit), 'uint8');
            off = typecast(int16(offset), 'uint8');
            
            
            tactor_control_Nfu = char( 60, reshape(tactor_node, length(tactor_node),1), per, reshape(amp, length(amp),1), reshape(dur, length(dur),1), reshape(curr, length(curr),1), reshape(off, length(off),1));
            
            msg = tactor_control_Nfu;
            
        end
    end
end
