function handAngles = graspInterpolation(pctGrasp, graspID)

pctGrasp = min(1, pctGrasp);
pctGrasp = max(0, pctGrasp);
A = zeros(29,1);

switch graspID
    
    case {'Relaxed', Controls.GraspTypes.Relaxed}
        B = Controls.GraspAngles.Relaxed;
        
    case {'Hook', Controls.GraspTypes.Hook}
        B = Controls.GraspAngles.Hook;
        
    case {'Extension', Controls.GraspTypes.Extension}
        B = Controls.GraspAngles.Extension;
        
    case {'Power', Controls.GraspTypes.Power}
        B = Controls.GraspAngles.Power;
        
    case {'Spherical', Controls.GraspTypes.Spherical}
        B = Controls.GraspAngles.Spherical;
        
    case {'Tripod', Controls.GraspTypes.Tripod}
        B = Controls.GraspAngles.Tripod;
        
    case {'Lateral', Controls.GraspTypes.Lateral}
        B = Controls.GraspAngles.Lateral;
        
    case {'Tip', Controls.GraspTypes.Tip}
        B = Controls.GraspAngles.Tip;
        
    case {'Index', Controls.GraspTypes.Index}
        B = Controls.GraspAngles.Index;
        
    case {'Middle', Controls.GraspTypes.Middle}
        B = Controls.GraspAngles.Middle;
        
    case {'Ring', Controls.GraspTypes.Ring}
        B = Controls.GraspAngles.Ring;
        
    case {'Little', Controls.GraspTypes.Little}
        B = Controls.GraspAngles.Little;
        
    case {'Thumb', Controls.GraspTypes.Thumb}
        B = Controls.GraspAngles.Thumb;
        
    otherwise
        error ('Invalid graspID');
        
end

handAngles = A + ((B-A)*pctGrasp);

%handAngles = interp1(A, B, pctGrasp)
