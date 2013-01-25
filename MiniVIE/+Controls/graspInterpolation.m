function handAngles = graspInterpolation(pctGrasp, graspID)

pctGrasp = min(1, pctGrasp);
pctGrasp = max(0, pctGrasp);
A = zeros(29,1);

if ~ischar(graspID)
    % Convert enumeration type to string
    graspID = char(graspID);
end

if isfield(Controls.GraspAngles,graspID)
    B = Controls.GraspAngles.(graspID);
else
    error ('Invalid graspID');
end

handAngles = A + ((B-A)*pctGrasp);
%handAngles = interp1(A, B, pctGrasp)
