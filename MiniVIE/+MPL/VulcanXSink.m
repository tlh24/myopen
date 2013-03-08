classdef VulcanXSink < MPL.DataSink
    % 3/8/2013 RSA: Added local port optional input argument
    properties
        address
        port              % remote destination port
        localport         % local transmit port
        id
        handle
    end
    
    methods
        function obj = VulcanXSink(address, destinationPort, localPort)
            % UDPSINK
            %
            % obj = VulcanXSink(address, destinationPort, localPort)
            %
            % Constructor.
            
            obj.address = address;
            obj.port = destinationPort;
            obj.id = tempname;
            
            if nargin < 3
                obj.localport = 9098;
            else
                obj.localport = localPort;
            end
            
            obj.handle = pnet('udpsocket', obj.localport);
            if obj.handle == -1
                error('Unable to open local port: %d ',obj.localport);
            end
            pnet(obj.handle, 'udpconnect', obj.address, destinationPort);
        end
        function val = get(udp, name)
            switch(name)
                case 'handle'
                    val = udp.handle;
                case 'port'
                    val = udp.port;
                case 'id'
                    val = udp.id;
                otherwise
                    disp(['No public member named ' name])
                    val = [];
            end
        end
        function putdata(udp, jointAngles)
            % PUTDATA
            %
            % putdata(udp, jointAngles)
            %
            % Sends joint angles over UDP.
            
            pnet(udp.handle, 'write', single(jointAngles) );
            pnet(udp.handle, 'writepacket');
        end
        function putbytes(udp, bytedata)
            % PUTBYTES
            %
            % putdata(udp, bytedata)
            %
            % Sends bytes over UDP.
            
            pnet(udp.handle, 'write', bytedata );
            pnet(udp.handle, 'writepacket');
        end
        function close(udp)
            % CLOSE
            %
            % close(udp)
            %
            % Closes the UDP socket.
            
            pnet(udp.handle, 'close');
        end
    end
end
