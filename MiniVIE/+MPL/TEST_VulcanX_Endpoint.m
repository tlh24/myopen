%% Quick test of vMPL / MPL control via VulcanX
%  Create the udp transmission via pnet
UdpLocalPort = 56789;
UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
UdpAddress = '192.168.1.100'; % '192.168.1.101';
% PnetClass(localPort,remotePort,remoteIP)
hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
hSink.initialize()

% Create the command encoder which translates joint angles to
% command bytes
mce = MPL.MudCommandEncoder;

%%
endPtVelocities = [0 0 0];
endPtOrientationVelocities = [0 0 0];
rocMode = mce.ROC_MODE_VELOCITY;
rocTableIDs = 1;
rocTableValues = 0;
rocWeights  = 1;

msg = mce.EndpointVelocity6HandRocGrasps( ...
    endPtVelocities, endPtOrientationVelocities, ...
    rocMode, rocTableIDs, rocTableValues, rocWeights);

hSink.putData(msg);
