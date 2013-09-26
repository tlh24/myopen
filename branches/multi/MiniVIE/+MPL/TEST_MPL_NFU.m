% Startup notes:  0) run cc / go (create simulink variables)


%%
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

%hNfu.setParam(NFU_run_algorithm,0)  %% 0 implies algorithm runs on laptop
%hNfu.setParam(NFU_output_to_MPL,2)  %% 2 = NFU CAN to limb
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
