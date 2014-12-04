
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
%pnet_conn = hNfu.TcpConnection;
mud = MPL.MudCommandEncoder();
%%
w = [0 0 0];
rocPos = 0/10;
rocID = 5;
elbow = 80+(30*rand);

msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) deg2rad(elbow) deg2rad(w)],zeros(1,7),1,rocID,rocPos,1);

msg = mud.AllJointsPosVelImpCmd([zeros(1,3) deg2rad(elbow) w],zeros(1,7),...
    0.3*ones(1,20),zeros(1,20),...
    [250*ones(1,7) 0.1*ones(1,20)]);

% pnet( hNfu.TcpConnection, 'write', char(59,msg)); %Upper arm and wrist DOM PV, ROC for hand
hNfu.sendUdpCommand(char(61,msg));  % append nfu msg header

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
