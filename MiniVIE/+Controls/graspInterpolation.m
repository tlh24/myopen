function handAngles = graspInterpolation(pctGrasp, graspID)

pctGrasp = min(1, pctGrasp);
pctGrasp = max(0, pctGrasp);
A = zeros(29,1);

if isempty(graspID)
    warning('Received empty grasp ID. Default to Relaxed Hand State');
    graspID = 'Relaxed';
elseif ~isa(graspID,'Controls.GraspTypes')
    warning('Received grasp ID as number. Default to Relaxed Hand State');
    graspID = 'Relaxed';
elseif ~ischar(graspID)
    % Convert enumeration type to string
    graspID = char(graspID);
end

try
    B = Controls.GraspAngles.(graspID);
catch ME
    fprintf('[%s] ERROR: Invalid graspID. Error was: "%s"\n',mfilename,ME.message);
end

handAngles = A + ((B-A)*pctGrasp);
%handAngles = interp1(A, B, pctGrasp)
