% Setup Devices
hSink = MPL.VulcanXSink('127.0.0.1',9035);  % check port number against VulcanX config
hMud = MPL.MudCommandEncoder();
%% Send manual commands
graspId = 7;
graspVal = 0/20;
e = 19*5*pi/180;
w(1) = -4*5*pi/180; % Wrist Rotation
w(2) = 0*5*pi/180; % Wrist Deviation
w(3) = 1*5*pi/180; % Wrist Flexion
msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) e w],zeros(1,7),1,graspId,graspVal,1);
hSink.putbytes(msg);

%% Three move init to overcome wrist dev stiction
graspId = 1;
graspVal = 0.2;
elbow = 0;
msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) elbow pi/2 pi/2 pi/2],zeros(1,7),1,graspId,graspVal,1);
hSink.putbytes(msg);

pause(0.7)

msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) pi/8 pi/2 -pi/2 -pi/2],zeros(1,7),1,graspId,graspVal,1);
hSink.putbytes(msg);

pause(0.7)


msg = hMud.ArmPosVelHandRocGrasps([zeros(1,3) elbow 0 0 0],zeros(1,7),1,graspId,graspVal,1);
hSink.putbytes(msg);



%%
return

%%
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

hNfu.setParam(NFU_run_algorithm,0)
hNfu.setParam(NFU_output_to_MPL,2)

%%
pnet_conn = hNfu.TcpConnection;
mud = MPL.MudCommandEncoder();
%%
w = [-20 6 10]*5*pi/180;
rocPos = 0.9;
rocID = 7;
elbow = 5*5*pi/180;

msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1);
% pnet( hNfu.TcpConnection, 'write', char(59,msg)); %Upper arm and wrist DOM PV, ROC for hand
hNfu.send_msg(hNfu.TcpConnection,char(59,msg));

%%
tic
while StartStopForm
    w = [0 sin(toc) 0];
    rocPos = .5;
    rocID = 2;
    
    msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) w],zeros(1,7),1,rocID,rocPos,1);
    hNfu.send_msg(hNfu.TcpConnection,char(59,msg));
    drawnow
end
