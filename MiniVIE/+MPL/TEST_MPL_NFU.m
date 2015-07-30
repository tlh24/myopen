% 7/28/2015

% RSA setup to test dynamic impedance
% Config is clinical system (TR) with NFU
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();
mud = MPL.MudCommandEncoder();

%%
% Create All joint + impedance command
% msg = AllJointsPosVelImpCmd(obj,armPositions[7],armVelocities[7], ...
%                                 fingerPositions[20],fingerVelocities[20], ...
%                                 stiffnessCmd[27])
armPositions = [0 0 0 0 0.0 0 0.3*randn];
armVelocities = zeros(1,7);
fingerPositions = 0.3*rand*ones(1,20);
fingerPositions(mud.INDEX_AB_AD) = -fingerPositions(mud.INDEX_AB_AD);
fingerPositions(mud.THUMB_CMC_AD_AB) = 2*fingerPositions(mud.THUMB_CMC_AD_AB);
fingerVelocities = zeros(1,20);
stiffnessCmd = [5.0*ones(1,7) 0.1*ones(1,20)]; % 16 Nm/rad Upper Arm  0.1-1 Hand

msg = mud.AllJointsPosVelImpCmd(armPositions,armVelocities,fingerPositions,fingerVelocities,stiffnessCmd);
% msg = [uint8(62);msg];  % append nfu message ID
msg = [uint8(61);msg];  % append nfu message ID

hNfu.sendUdpCommand(msg);  % append nfu msg header

%%
armPositions = zeros(1,7);
armVelocities = zeros(1,7);
fingerPositions = zeros(1,20);
fingerVelocities = zeros(1,20);
stiffnessCmd = [5.0*ones(1,7) 1*ones(1,20)]; % 16 Nm/rad Upper Arm  0.1-1 Hand
N = 50;
maxVal = 0.9;
for i = 20:-1:17
    for j = [linspace(0,maxVal,N) linspace(maxVal,0,N)]
        fingerPositions(i) = j;
        fingerPositions(mud.INDEX_AB_AD) = -fingerPositions(mud.INDEX_AB_AD);
        fingerPositions(mud.THUMB_CMC_AD_AB) = 2*fingerPositions(mud.THUMB_CMC_AD_AB);
        msg = mud.AllJointsPosVelImpCmd(armPositions,armVelocities,fingerPositions,fingerVelocities,stiffnessCmd);
        msg = [uint8(61);msg];  % append nfu message ID
        %msg = mud.AllJointsPosVelCmd(armPositions,armVelocities,fingerPositions,fingerVelocities);
        %msg = [uint8(61),msg];  % append nfu message ID
        hNfu.sendUdpCommand(msg);  % append nfu msg header

        pause(0.01)
    end
end


%%
% Enable Streaming (CPCH and Percepts)
hNfu.enableStreaming(5);

%%
h = Inputs.NfuInput();
s = h.initialize();
assert(s >= 0,'NFU Init failed');
GUIs.guiSignalViewer(h);
