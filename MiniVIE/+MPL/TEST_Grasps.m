% Setup Devices
hSink = MPL.VulcanXSink('127.0.0.1',9027);
hMud = MPL.MudCommandEncoder();
%% Send manual commands
graspId = 4;
graspVal = 0;
w(1) = 0; % Wrist Rotation
w(2) = 0; % Wrist Deviation
w(3) = 0; % Wrist Flexion
msg = hMud.ArmPosVelHandRocGrasps([zeros(1,4) w],zeros(1,7),1,graspId,graspVal,1);
hSink.putbytes(msg);