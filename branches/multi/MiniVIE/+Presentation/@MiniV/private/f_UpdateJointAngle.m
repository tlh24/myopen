%% Set joint angle for either a particular joint or a list of joints
%% Specify iXYZ: 1 = X 2 = Y 3 = Z
%% Secify val_0_1 as a percentage of the total joint ROM
function KChain = f_UpdateJointAngle(KChain,iLink,iXYZ,updateVal)

%% Validate input from -1 to 1
% updateVal = min(updateVal,1);
% updateVal = max(updateVal,-1);

%% Set ROM as percentage (0-1) of ROM
for i = 1:length(iLink)
    minVal = KChain(iLink(i)).Joint_Min(iXYZ);
    maxVal = KChain(iLink(i)).Joint_Max(iXYZ);
    oldVal = KChain(iLink(i)).Joint_Param(iXYZ);   
    newVal = min(maxVal, oldVal + KChain(iLink(i)).Increment*updateVal);
    KChain(iLink(i)).Joint_Param(iXYZ) = max(minVal, newVal);
end

return