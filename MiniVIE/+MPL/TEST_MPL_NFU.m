% 7/28/2015

% RSA setup to test dynamic impedance
% Config is clinical system (TR) with NFU
hNfu = MPL.NfuUdp.getInstance;
hNfu.ping(1);
hNfu.initialize();
mud = MPL.MudCommandEncoder();

%% Check for Heartbeats
StartStopForm([])
while StartStopForm
    drawnow
    hNfu.update;
end

%%
% Create All joint + impedance command
% msg = AllJointsPosVelImpCmd(obj,armPositions[7],armVelocities[7], ...
%                                 fingerPositions[20],fingerVelocities[20], ...
%                                 stiffnessCmd[27])
armPositions = [0 0 0 0 0.1*randn 0 0.0];
armVelocities = zeros(1,7);
fingerPositions = 0.1*ones(1,20);
fingerPositions(mud.INDEX_AB_AD) = -fingerPositions(mud.INDEX_AB_AD);
fingerPositions(mud.THUMB_CMC_AD_AB) = 2*fingerPositions(mud.THUMB_CMC_AD_AB);
fingerVelocities = zeros(1,20);
stiffnessCmd = [5.0*ones(1,7) 0.1*ones(1,20)]; % 16 Nm/rad Upper Arm  0.1-1 Hand

msg = mud.AllJointsPosVelImpCmd(armPositions,armVelocities,fingerPositions,fingerVelocities,stiffnessCmd);
msg = [uint8(61);msg];  % append nfu message ID

hNfu.sendUdpCommand(msg);  % append nfu msg header

%% Stream EMG
h = Inputs.NfuInput();
s = h.initialize();
assert(s >= 0,'NFU Init failed');
GUIs.guiSignalViewer(h);

%% Test Percept streaming and parsing

hPlot = LivePlot(10,100,{'INDEX_AB_AD','INDEX_MCP','MIDDLE_MCP','RING_MCP',...
    'LITTLE_AB_AD','LITTLE_MCP','THUMB_CMC_AD_AB','THUMB_CMC','THUMB_MCP','THUMB_DIP'});
StartStopForm([]);
while StartStopForm
    drawnow
    hNfu.update
    cellData = hNfu.get_buffer(2);
    for i = 1:length(cellData)
        %%p = [cellData{i}.UnactuatedPercept.Position];
        %p = [cellData{i}.Percept.Position];
        %p = [cellData{i}.Percept.Velocity];
        p = [cellData{i}.Percept.Torque];
        %p = [cellData{i}.Percept.Temperature];
        %p(10) = 0;
        hPlot.putdata(p);
    end
end


%%
% Send streaming command and pause before checking output
hNfu.enableStreaming(5);
pause(1)

% Setup timer to read packets and display heartbeat
hTimer = UiTools.create_timer('NFU Test Timer',@(src,evt)hNfu.update);
hTimer.Period = 0.02;
start(hTimer)
