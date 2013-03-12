function [shoulderAngles,e,w,rocValue,rocId] = ...
    manualOverRideLeft(shoulderAngles,e,w,rocValue,rocId)
% Units radians

% Currently applies to MPL.MplScenarioMud.update

% rocId = 7;
% rocValue = min(rocValue,0.8);

%rocValue = max(rocValue,0.2);
% rocValue = 0;

% w(1) = -w(1); % flip wrist rot direction
w(2) = -w(2); % flip dev direction

% Elbow
% e = 55*pi/180;  % elbow
elbowLimitsRadians = [0 140]*pi/180;
assert(elbowLimitsRadians(2) >= elbowLimitsRadians(1),...
    'Upper limit must be greater than lower limit');
if e > elbowLimitsRadians(2)
    disp('Upper Elbow limit.');
    e = elbowLimitsRadians(2);
elseif e < elbowLimitsRadians(1)
    e = elbowLimitsRadians(1);
    disp('Lower Elbow limit');
end
% disp(e);
% w(1) = -90*pi/180;  % rotation
% w(2) = 0.0;   % dev
% w(3) = -0.055;  % fe

% Lock Shoulder
% shoulderAngles(1) = 0*pi/180;
% shoulderAngles(2) = -0*pi/180;
% shoulderAngles(3) = 20*pi/180;

AA_Lim = [-30 0]*pi/180;
HR_Lim = [-30 30]*pi/180;
shoulderAngles(2) = max(min(shoulderAngles(2),AA_Lim(2)),AA_Lim(1));
shoulderAngles(3) = max(min(shoulderAngles(3),HR_Lim(2)),HR_Lim(1));

% fprintf('[%s] Left Arm tracking: %4.1f %4.1f %4.1f|%4.1f\n',...
%     mfilename,shoulderAngles*180/pi,e*180/pi);
