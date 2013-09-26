%% Set joint angle for either a particular joint or a list of joints
%% Specify iXYZ: 1 = X 2 = Y 3 = Z
%% Secify val_0_1 as a percentage of the total joint ROM
function KChain = f_SetJointAngle(KChain,iLink,iXYZ,val_0_1)

%% Validate input to 0-1
val_0_1 = min(val_0_1,1);
val_0_1 = max(val_0_1,0);

%% Set ROM as percentage (0-1) of ROM
for i = 1:length(iLink)
    minVal = KChain(iLink(i)).Joint_Min(iXYZ);
    maxVal = KChain(iLink(i)).Joint_Max(iXYZ);
    KChain(iLink(i)).Joint_Param(iXYZ) = minVal+(maxVal-minVal)*val_0_1;
end
