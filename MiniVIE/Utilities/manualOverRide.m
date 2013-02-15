function [w,e,rocValue,rocId] = manualOverRide(w,e,rocValue,rocId)
% Units radians

% Currently applies to MPL.MplScenarioMud.update

% rocId = 7;
% rocValue = min(rocValue,0.8);

%rocValue = max(rocValue,0.2);
% rocValue = 0;

% w(1) = -w(1); % flip wrist rot direction
%w(2) = -w(2); % flip dev direction

% Elbow
%e = 55*pi/180;  % elbow
elbowLimitsRadians = [70 140]*pi/180;
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
% w(3) = -0.55;  % fe

