%% Quick test of vMPL / MPL control via VulcanX to confirm joint angles and directions

%  Create the udp transmission via pnet
UdpLocalPort = 56789;
UdpDestinationPort = 9027; %9024 = Left; 9027 = Right;
UdpAddress = '127.0.0.1'; % '192.168.1.101';
% PnetClass(localPort,remotePort,remoteIP)
hSinkLeft = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
hSinkLeft.initialize()

UdpLocalPort = 56788;
UdpDestinationPort = 9024; %9024 = Left; 9027 = Right;
UdpAddress = '127.0.0.1'; % '192.168.1.101';
% PnetClass(localPort,remotePort,remoteIP)
hSinkRight = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
hSinkRight.initialize()

% Create the command encoder which translates joint angles to
% command bytes
mce = MPL.MudCommandEncoder;
upperArmAngles = zeros(1,7);
handAngles = zeros(1,20);

%% Create a handle to the MiniV animated arm
hMiniVLeft = Presentation.MiniV;
hMiniVLeft.redraw
hMiniVRight = Presentation.MiniV(gca,0);
hMiniVRight.redraw
xlim([-0.5 0.5])


%%
% pctGrasp = 1.0;
% [enumGrasp, strGrasps] = enumeration('Controls.GraspTypes');
% id = enumGrasp(1);
% handAngles = Controls.graspInterpolation(pctGrasp, id);
% 
% % set the new angles and redraw
% hMiniV.set_hand_angles_degrees(handAngles)

%%
upperArmAngles = zeros(1,7);
upperArmAngles(7) = -1;

hMiniVRight.set_upper_arm_angles_degrees(upperArmAngles * 180 / pi)
hMiniVRight.redraw 
hMiniVLeft.set_upper_arm_angles_degrees(upperArmAngles * 180 / pi)
hMiniVLeft.redraw 

% Specify joint angles and transmit bytes
msg = mce.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
hSinkLeft.putData(msg);
hSinkRight.putData(msg);

%%
% Shoulder Flexion (+) / Shoulder Extension (-)
% Shoulder Adduction (+) / Shoulder Abduction (-)
% Humeral Internal Rotation (+) / Humeral External Rotation  (-)
% Elbow Flexion (+) / Elbow Extension (-)
% Wrist Pronation (+) / Wrist Supination (-)
% Ulnar Deviation (+) / Radial Deviation (-)
% Wrist Flexion (+) / Wrist Extension (-)


