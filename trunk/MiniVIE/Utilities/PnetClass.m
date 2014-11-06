classdef PnetClass < handle
    %PnetClass Class for interfacing pnet tcp-ip-udp library
    %   Wrapper for pnet udp functions
    %
    % Handles some of the non-intuitive cases with pnet to prevent timeouts
    % and also to read down a fast filling buffer without delay
    % 
    % Usage:
    %   obj = PnetClass(localPort,remotePort,remoteIP);         % create object
    %   [success, msg] = initialize(obj);                       % open local port
    %   [dataBytes, numReads] = getData(obj);                   % read down buffer and return only the latest packet
    %
    % 27-Feb-2013 Armiger: Created
    
    properties
        localPort = 45000;      %Port that originates data and also receives from another system
        remotePort = 45001;     %Remote Destination port for sending data
        remoteIP = '127.0.0.1'; %Remote Destination IP for sending data
        
        hSocket;            % Handle from pnet.  These look like integers
    end
    
    methods
        function obj = PnetClass(localPort,remotePort,remoteIP)
            %obj = PnetClass(localPort,remotePort,remoteIP)
            %obj = PnetClass(localPort)
            % Creator
            
            if nargin > 2
                obj.remoteIP = remoteIP;
            end
            if nargin > 1
                obj.remotePort = remotePort;
            end
            if nargin > 0
                obj.localPort = localPort;
            end
            
            
        end
        function [success, msg] = initialize(obj)
            % [success, msg] = initialize(obj)
            % Open udp port using pnet with no read delay
            
            msg = '';
            success = false;
            
            % Create a socket at the local port
            obj.hSocket = pnet('udpsocket',obj.localPort);
            
            % check for validity
            if obj.hSocket < 0
                msg = sprintf('[%s] Failed to open socket at local port: %d\n',...
                    mfilename,obj.localPort);
                return
            else
                fprintf('[%s] Opened pnet socket #%d at local port: %d; Default destination: port %d @ %s\n',...
                    mfilename,obj.hSocket,obj.localPort,obj.remotePort, obj.remoteIP);
            end
            
            % make non-blocking
            pnet(obj.hSocket, 'setreadtimeout',0);
            
            success = true;
            
        end
        function [dataBytes, numReads] = getData(obj)
            % [dataBytes, numReads] = getData(obj)
            % read down buffer and return only the latest packet
            
            assert(~isempty(obj.hSocket),'[%s] PnetClass not initialized\n');

            % initialize return arguments
            dataBytes = [];
            numReads = 0;
            
            if ~isequal(pnet(obj.hSocket,'status'),6)
                fprintf(['[%s] pnet socket is disconnected but not closed. '...
                    'Not ready to getData() on port %d \n'],mfilename,obj.localPort);
                return
            end

            len = 1;
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
        function [cellDataBytes, numReads] = getAllData(obj,maxReads)
            % [cellDataBytes, numReads] = getAllData(obj,maxReads)
            % read down buffer and return all packets as cell array
            
            assert(~isempty(obj.hSocket),'[%s] PnetClass not initialized\n');
            
            if nargin < 2
                maxReads = 500;
            end

            % initialize return arguments
            cellDataBytes = cell(1,maxReads);
            numReads = 0;
            

            if ~isequal(pnet(obj.hSocket,'status'),6)
                fprintf(['[%s] pnet socket is disconnected but not closed. '...
                    'Not ready to getData() on port %d \n'],mfilename,obj.localPort);
                return
            end

            
            len = 1;
            while (len > 0) && (numReads < maxReads)
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
                        numReads = numReads + 1;
                        cellDataBytes{numReads} = pnet(obj.hSocket,'read',len,'uint8','noblock');
                    catch ME
                        fprintf('[%s] Caught pnet error during read: "%s"\n',mfilename,ME.message);
                        cellDataBytes{numReads} = [];
                        numReads = numReads - 1;
                    end
                end
            end
            %drawnow;
        end %getAllData        
        function putData(obj,dataBytes,destinationHostname,destinationPortNumber)
            % putData(obj,dataBytes)
            % putData(obj,dataBytes,destinationHostname,destinationPortNumber)
            % Either send bytes to the location stored as parameters, or
            % provide additional input arguments for destination

            assert(~isempty(obj.hSocket),'[%s] PnetClass not initialized');

            status = pnet(obj.hSocket,'status');
            if ~isequal(status,6)
                fprintf('[%s] UDP Port %d not ready. Unable to write data.\n',mfilename,obj.localPort);
                return
            end
            
            if nargin < 3
                destinationHostname = obj.remoteIP;
                destinationPortNumber = obj.remotePort;
            end
            
            pnet( obj.hSocket, 'write', dataBytes );
            pnet( obj.hSocket, 'writepacket', destinationHostname, destinationPortNumber );
        end
        function close(obj)
            pnet(obj.hSocket,'close');
            fprintf('[%s] Closed pnet socket #%d at local port: %d\n',...
                mfilename,obj.hSocket,obj.localPort);
            obj.hSocket = [];
        end
    end
end

