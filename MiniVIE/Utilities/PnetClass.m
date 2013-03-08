classdef PnetClass < handle
    %PnetClass Class for interfacing pnet tcp-ip-udp library
    %   Wrapper for pnet udp functions
    
    properties
        localPort = 45000;      %Port that originates data and also receives from another system
        remotePort = 45001;     %Remote Destination port for sending data
        remoteIP = '127.0.0.1'; %Remote Destination IP for sending data
        
        hSocket;            % Handle from pnet.  These look like integers
    end
    
    methods
        function obj = PnetClass
            % Creator
        end
        function initialize(obj)
            
            % Create a socket at the local port
            obj.hSocket = pnet('udpsocket',obj.localPort);
            
            % check for validity
            if obj.hSocket < 0
                error('Failed to open socket at local port: %d\n',obj.localPort);
            else
                fprintf('[%s] Opened pnet socket #%d at local port: %d\n',...
                    mfilename,obj.hSocket,obj.localPort);
            end
            
            % make non-blocking
            pnet(obj.hSocket, 'setreadtimeout',0);
            
        end
        function [dataBytes, numReads] = getData(obj)
            % [dataBytes, numReads] = getData(obj)
            % read down buffer and return only the latest packet
            
            assert(~isempty(obj.hSocket),'[%s] PnetClass not initialized\n');
            
            len = 1;
            dataBytes = [];
            numReads = 0;
            while len > 0
                try
                    % If system is busy, this call to pnet can error out:
                    % "One or more output arguments not assigned during call to "pnet"."
                    len = pnet(obj.hSocket,'readpacket','noblock');
                catch ME
                    fprintf('[%s] Caught pnet error during readpacket: "%s"\n',mfilename,ME.message);
                    len = 0;
                end
                if len > 0
                    try
                        dataBytes = pnet(obj.hSocket,'read',len,'uint8','noblock');
                        numReads = numReads + 1;
                    catch ME
                        fprintf('[%s] Caught pnet error during read: "%s"\n',mfilename,ME.message);
                        dataBytes = [];
                    end
                end
            end
        end %getData
        function putData(obj,dataBytes)
            % putData(obj,dataBytes)

            assert(~isempty(obj.hSocket),'[%s] PnetClass not initialized\n');

            destinationHostname = obj.remoteIP;
            destinationPortNumber = obj.remotePort;
            pnet( obj.hSocket, 'write', dataBytes );
            pnet( obj.hSocket, 'writepacket', destinationHostname, destinationPortNumber );
        end
    end
end

