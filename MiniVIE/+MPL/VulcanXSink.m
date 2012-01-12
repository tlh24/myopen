classdef VulcanXSink < MPL.DataSink
    properties
        address
        port              % remote destination port
        localport = 9099; % local transmit port
        id
        handle
    end
    
    methods
        function obj = VulcanXSink(address, port)
            % UDPSINK
            %
            % obj = MSMSSink(address, port)
            %
            % Constructor.
            
            obj.address = address;
            obj.port = port;
            obj.id = tempname;
            
            obj.handle = pnet('udpsocket', obj.localport);
            if obj.handle == -1
                error(['Unable to open port ' port '.'])
            end
            pnet(obj.handle, 'udpconnect', obj.address, port);
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
