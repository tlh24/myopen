% Setup Devices
hSink = PnetClass(56791,9027,'127.0.0.1');  % check port number against VulcanX config
hSink.initialize();

hMud = MPL.MudCommandEncoder();
%% Send manual commands
graspId = 0;
graspVal = 20/20;
e = 130*pi/180;
s = [0 0 0]*pi/180;
w(1) = -4*5*pi/180; % Wrist Rotation
w(2) = -1*5*pi/180; % Wrist Deviation
w(3) = 1*5*pi/180; % Wrist Flexion
msg = hMud.ArmPosVelHandRocGrasps([s e w],zeros(1,7),1,graspId,graspVal,1);
hSink.putData(msg);
%% Test endpoint commands
% +X Forward
% +Y Up
% +Z Right (Right Arm) (away from arm)
tic
while toc < 1
    msg = hMud.EndpointVelocity6HandRocGrasps([0 0 -.1],[0 0.1 0],1,graspId,graspVal,1);
    hSink.putData(msg);
end

%% Three move init to overcome wrist dev stiction
graspId = 1;
graspVal = 0.2;
elbow = 0;
msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) elbow pi/2 pi/2 pi/2],zeros(1,7),1,graspId,graspVal,1);
hSink.putData(msg);

pause(0.7)

msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) pi/8 pi/2 -pi/2 -pi/2],zeros(1,7),1,graspId,graspVal,1);
hSink.putData(msg);

pause(0.7)


msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) elbow 0 0 0],zeros(1,7),1,graspId,graspVal,1);
hSink.putData(msg);



%%
return
% Startup notes:  0) run cc / go (create simulink variables)


%%
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

hNfu.setParam(NFU_run_algorithm,0)  %% 0 implies algorithm runs on laptop
hNfu.setParam(NFU_output_to_MPL,2)  %% 2 = NFU CAN to limb
%%
%Stream CPCH
hNfu.enableStreaming(1);
% Enlable Percepts
hNfu.enableStreaming(4);

%%
pnet_conn = hNfu.TcpConnection;
mud = MPL.MudCommandEncoder();
%%
w = [-15 0 0]*5*pi/180;
rocPos = 0/10;
rocID = 5;
elbow = 5*5*pi/180;

msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1);
% pnet( hNfu.TcpConnection, 'write', char(59,msg)); %Upper arm and wrist DOM PV, ROC for hand
hNfu.sendUdpCommand(char(59,msg));  % append nfu msg header

%%
tic
while StartStopForm
    w = [0 sin(toc) 0];
    rocPos = .5;
    rocID = 2;
    
    msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) w],zeros(1,7),1,rocID,rocPos,1);
    hNfu.sendUdpCommand(char(59,msg));
    drawnow
end
