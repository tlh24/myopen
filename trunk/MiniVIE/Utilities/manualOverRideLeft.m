function [armAngles,rocValue,rocId] = ...
    manualOverRideLeft(armAngles,rocValue,rocId)

% % Units radians
% 
% % Currently applies to MPL.MplScenarioMud.update
% FE_Lim = [-30 90]*pi/180;
% AA_Lim = [-30 0]*pi/180;
% HR_Lim = [-30 30]*pi/180;
% EL_Lim = [  0 120]*pi/180;
% armAngles(1) = max(min(armAngles(1),FE_Lim(2)),FE_Lim(1));
% armAngles(2) = max(min(armAngles(2),AA_Lim(2)),AA_Lim(1));
% armAngles(3) = max(min(armAngles(3),HR_Lim(2)),HR_Lim(1));
% armAngles(4) = max(min(armAngles(4),EL_Lim(2)),EL_Lim(1));
% % Wrist
% armAngles(7) = -armAngles(7);  % Flip wrist FE
