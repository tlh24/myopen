classdef OdeSink < handle
    properties
        address
        port
        localport
        id
        startTime
        handle
        
        NeckAngles = [0 0 0];
        
        EyeXYZ = [0 0 0]; 
        EyeRxRyRz = [0 0 0];
        
        limbType = 'P1'; %default
    end
    properties (Constant = true)
        limbTypes = {'P1','P2'};
    end
    methods
        
        function obj = OdeSink(address, port, localport)
            % ODESINK
            %
            % obj = OdeSink(address, port)
            %
            % Constructor.
            %
            % This sink sends packets to ODE after formatting them according to the ODE ICD.
            
            if nargin < 1
                address = '127.0.0.1';
            end
            if nargin < 2
                port = 25000;
            end
            if nargin < 3
                localport = 25001;
            end
            
            obj.address = address;
            obj.port = port;
            obj.localport = localport;
            obj.id = tempname;
            obj.startTime = clock;
            
            obj.handle = pnet('udpsocket', obj.localport);
            if obj.handle == -1
                error(['Unable to open port ' obj.port '.'])
            end
            pnet(obj.handle, 'udpconnect', obj.address, obj.port);
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

        function putdata(obj, jointAngles)
            % PUTDATA
            %
            % putdata(obj, jointAngles)
            %
            % Sends joint angles over UDP. Data is reformatted to fit the ODE ICD.
            
            data = angles_to_packets(jointAngles,obj.startTime,obj.limbType,obj.NeckAngles,[obj.EyeXYZ; obj.EyeRxRyRz]);
            pnet(obj.handle, 'write', single(data), 'native');
            pnet(obj.handle, 'writepacket');
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

%
function data = angles_to_packets(jointAngles,t0,limbType,neckAngles,eyeView)

    % P1 and P2 are different
    switch limbType
        case 'P1'
            data = zeros(1, 22);
            
            data(1:3) = neckAngles;
            
            data(4) = 0; % 'Ground-Shoulder'
            data(5) = jointAngles(action_bus_enum.Shoulder_FE);
            data(6) = jointAngles(action_bus_enum.Humeral_Rot);
            data(7) = jointAngles(action_bus_enum.Elbow);
            data(8) = jointAngles(action_bus_enum.Wrist_Rot);
            data(9) = jointAngles(action_bus_enum.Wrist_FE);
            data(10) = jointAngles(action_bus_enum.Thumb_IP);
            data(11) = 1.5-(0.5*jointAngles(action_bus_enum.Thumb_Rot));
            data(12) = jointAngles(action_bus_enum.Index_MCP);
            data(13) = jointAngles(action_bus_enum.Middle_MCP);
            data(14) = jointAngles(action_bus_enum.Ring_MCP);
            data(15) = jointAngles(action_bus_enum.Little_MCP);
            
            data(16:21) = eyeView;
            

            data(22) = etime(clock, t0);

        case 'P2'
            % Swap wrist_fe and wrist_dev for ODE.
            temp = jointAngles(6);
            jointAngles(6) = jointAngles(7);
            jointAngles(7) = temp;

            data = zeros(1, 36);

            data(36) = etime(clock, t0);
            %            data(4:29) = jointAngles(1:26);

            % Upper arm.
            data(4:10) = jointAngles(1:7);

            % Index finger MCP, PIP, DIP.
            data(12:14) = jointAngles(8:10);
            data(11) = jointAngles(11);		% AA.

            % Middle finger MCP, PIP, DIP.
            data(15:17) = jointAngles(12:14);

            % Ring finger MCP, PIP, DIP.
            data(19:21) = jointAngles(16:18);
            data(18) = jointAngles(19);		% AA.

            % Little finger MCP, PIP, DIP.
            data(23:25) = jointAngles(20:22);
            data(22) = jointAngles(23);		% AA.

            % Thumb.
            data(26) = jointAngles(24);		% AA.
            data(27:29) = jointAngles(26:28);	% Rot, MCP, IP.

        otherwise
            error('Unrecognized Limb Type')
    end
end
