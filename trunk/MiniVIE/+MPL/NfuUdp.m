classdef (Sealed) NfuUdp < handle
    % Class for interfacing JHU/APL NFU via pnet.
    % Note instances are limited so use NfuUdp.getInstance
    properties
        
        hNFU = []; % Handle to NFU Comms Object
        
        Host = '10.3.1.11';
        UdpPortNum = 9027
        TcpPortNum = 6200;
        
        TcpConnection = [];
        
        EnableDataLogging = 0;
        
        hLogFile
        
    end
    properties (SetAccess = private)
        IsInitialized = false;
        UdpSocket = [];
        TcpSocket = [];
    end
    methods (Access = private)
        function obj = NfuUdp
            % Creator is private to force singleton
        end
    end
    methods (Static)
        function singleObj = getInstance
            persistent localObj
            if isempty(localObj) || ~isvalid(localObj)
                fprintf('[%s] Calling constructor\n',mfilename);
                localObj = MPL.NfuUdp;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
    end
    methods
        function [ status ] = initialize(obj)
            if obj.IsInitialized
                fprintf('[%s] NFU Comms already initialized\n',mfilename);
                status = 0;
                return
            end
            
            obj.UdpSocket=pnet('udpsocket',obj.UdpPortNum);
            pnet(obj.UdpSocket, 'setreadtimeout',0);
            
            % open a CMD connection to the NFU
            fprintf( '[%s] Creating tcpsocket on port %d...', mfilename,obj.TcpPortNum);
            obj.TcpSocket = pnet( 'tcpsocket', obj.TcpPortNum );
            if (-1 ~= obj.TcpSocket)
                fprintf('OK\n');
                pnet( obj.TcpSocket, 'setreadtimeout', 1 );
                fprintf( '[%s] tcplisten on tcpsocket...',mfilename);
                obj.TcpConnection = pnet( obj.TcpSocket, 'tcplisten' );
                if (-1 ~= obj.TcpConnection)
                    fprintf('OK\n');
                    pnet( obj.TcpConnection, 'setreadtimeout', 1 );
                    
                    %fprintf( 'Sending NFU reset message\n' );
                    %pnet( cmdCon, 'write', reset_Nfu ) %reset NFU
                    %fprintf( 'Sending NFU write cfg message\n' );
                    %pnet( cmdCon, 'write', write_cfg_Nfu ); %write cfg NFU
                    %pnet( cmdCon, 'readline' );
                else
                    fprintf('FAILED\n' );
                    status = -1;
                    return
                end
            else
                fprintf('FAILED\n' );
                status = -1;
                return
            end
            status = 0;
            obj.IsInitialized = true;
        end
        function enableStreaming(obj,type)
            if nargin < 2
                type = 1;
            end
            
            [ status ] = obj.disable_streaming( obj.TcpConnection, type );
            if status
                error('Failed to stop NFU streaming');
            end
            
            [ status ] = obj.enable_streaming( obj.TcpConnection, type );
            if status
                error('Failed to start NFU streaming');
            end
        end
        function disableStreaming(obj,type)
            if nargin < 2
                type = 1;
            end
            
            [ status ] = obj.disable_streaming( obj.TcpConnection, type );
            if status
                error('Failed to stop NFU streaming');
            end
            
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
            % If value not passed, update param with the .Value field
            if nargin > 2
                if ~isequal(size(value),param.Dimensions)
                    error('Bad Value Size');
                end
                
                param.Value = value;
            end
            [ status, msg ] = obj.update_param( obj.TcpConnection, param );
            if status
                fprintf(2,'Failed to update parameter: %s',param.Description);
            end
            
        end
        function mud = getMud(obj)

            mud = [];
            len = 1;

            while len > 0
                len = pnet(obj.UdpSocket,'readpacket','noblock');
                if len > 0
                    stream = pnet(obj.UdpSocket,'read',len,'UINT8');
                    mud = typecast(uint8(stream(5:32)),'single');
                    if ~isequal(mod(sum(stream(1:43)),256),stream(44))
                        fprintf('[%s] Bad Checksum\n',mfilename);
                    end
                    fprintf('%8.3f ',mud);
                    fprintf('\n');
                end
            end
        end
        function close(obj)
%             try
%                 pnet(obj.UdpSocket,'close');
%             end
%             try
%             pnet(obj.TcpConnection,'close');
%             end
%             try
%             pnet(obj.TcpSocket,'close');
%             end
        end
    end
    methods (Static)
        function [ status ] = enable_streaming( pnet_conn, type )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 1, zeros(7,1));
            elseif type == 2
                %VULCANX
                enable_stream_Nfu = char( uint8(150), 9, 8, zeros(7,1));
            end
            
            %pnet( pnet_conn, 'write', enable_stream_Nfu ); %write cfg NFU
            %status = 0;
            [ status ] = MPL.NfuUdp.send_msg( pnet_conn, enable_stream_Nfu );
        end
        function [ status ] = disable_streaming( pnet_conn, type )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            
            if type == 1
                %CPC HS
                enable_stream_Nfu = char( uint8(150), 38, 0, zeros(7,1));
            elseif type == 2
                %VIE
                enable_stream_Nfu = char( uint8(150), 9, 0, zeros(7,1));
            end
            
            %pnet( pnet_conn, 'write', enable_stream_Nfu ); %write cfg NFU
            %status = 0;
            [ status ] = MPL.NfuUdp.send_msg( pnet_conn, enable_stream_Nfu );
        end
        function [ status, msg ] = update_param( pnet_conn, param )
            %update_param Summary of this function goes here
            %   Detailed explanation goes here
            msg = '';
            
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
            write_cfg_Nfu = char( msgId, reshape(char(param.Description),length(param.Description),1), zeros(128-length(param.Description),1), 8, 0, 0, 0, reshape(dim_X, length(dim_X),1), reshape(dim_Y, length(dim_Y),1), reshape(bval, length(bval),1));
            
            [ status ] = MPL.NfuUdp.send_msg( pnet_conn, write_cfg_Nfu );
            
        end
        function [ status ] = send_msg( pnet_conn, msg )

            % Clear read buffer of any existing data:
            reply = 0;
            while ~isempty(reply)
                try
                    reply = pnet(pnet_conn,'read',1,'uint8','noblock');
                catch ME
                    fprintf(2,'[%s] Error: %s\n',mfilename,ME.message);
                end
            end
            
            msgId = msg(1);
            pnet( pnet_conn, 'write', msg );
            
            % Check for receipt
            checkReceipt = false;
            
            if checkReceipt
            try
                reply = pnet(pnet_conn,'read',1,'uint8');
            catch ME
                fprintf(2,'[%s] Error: %s\n',mfilename,ME.message);
            end
            if reply == msgId
                status = 0;
            else
                status = -1;
                msg = sprintf('Failed to receive ACK on parameter update. Reply = "%d"\n',reply);
            end
            else
                status = 0;
            end
            
        end
    end
end
