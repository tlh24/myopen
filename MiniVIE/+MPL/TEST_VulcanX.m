%% Quick test of vMPL / MPL control via VulcanX
%  Create the udp transmission via pnet
UdpLocalPort = 56789;
UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
UdpAddress = '127.0.0.1'; % '192.168.1.101';
% PnetClass(localPort,remotePort,remoteIP)
hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
hSink.initialize()

% Create the command encoder which translates joint angles to
% command bytes
mce = MPL.MudCommandEncoder;
upperArmAngles = zeros(1,7);
handAngles = zeros(1,20);

%% Specify joint angles and transmit bytes
upperArmAngles(1) = 0.25;
upperArmAngles(4) = 1;
msg = mce.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
hSink.putData(msg);

%% Specify joint angles and ROC command
graspId = 4;
graspValue = 1;
upperArmAngles(1) = 0.5;
upperArmAngles(3) = 0.5;
upperArmAngles(4) = 1;
msg = mce.ArmPosVelHandRocGrasps(upperArmAngles,zeros(1,7),1,graspId,graspValue,1);
hSink.putData(msg);

%% Specify joint angles using MiniVIE ROC command (user editable)
localRoc = MPL.RocTable.createRocTables();
graspId = 2;
graspValue = 0.8;
roc = localRoc(graspId+1);
handAngles = interp1(roc.waypoint,roc.angles,graspValue);
upperArmAngles(1) = 0.3;
upperArmAngles(3) = 0.3;
upperArmAngles(4) = 1.3;
msg = mce.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
hSink.putData(msg);






%% Alternate test for endpoint velocity, using joystick
% create joystick
hJoystick = JoyMexClass();
%%
StartStopForm([]);
while StartStopForm
    drawnow
    hJoystick.getdata();
    endPtVelocities = [hJoystick.axisVal(1:3)./10]'
    endPtOrientationVelocities = [0 0 0]';
    rocMode = 1;
    rocTableIDs = 1;
    rocTableValues = 1;
    rocWeights  = 1;
    
    msg = mce.EndpointVelocity6HandRocGrasps( ...
        endPtVelocities, endPtOrientationVelocities, ...
        rocMode, rocTableIDs, rocTableValues, rocWeights);
    
    hSink.putData(msg);
end
