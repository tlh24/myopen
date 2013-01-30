function [w,e,rocValue,rocId] = manualOverRide(w,e,rocValue,rocId)
% Units radians

% Currently applies to MPL.MplScenarioMud.update

% rocId = 7;
% rocValue = min(rocValue,0.8);

%rocValue = max(rocValue,0.2);
% rocValue = 0;

w(1) = w(1); % flip wrist rot direction
%w(2) = -w(2); % flip dev direction

% e = 55*pi/180;  % elbow
% w(1) = -90*pi/180;  % rotation
% w(2) = 0.0;   % dev
%w(3) = 0.6;  % fe

