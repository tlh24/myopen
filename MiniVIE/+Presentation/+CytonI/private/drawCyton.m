function [hTransforms, hPatches, hTriads] = drawCyton(hAxes,patchData)
% Function to setup a cyton virtual robot
% hTransforms   = handles to the transformations
% hPatches      = patch handles
% hTriads       = coordinate system triads

import Presentation.CytonI.*

nPatches = length(patchData);
nTransforms = 12;
hPatches = zeros(1,nPatches);
for i = 1:nPatches
    %     rgb = {'r' 'g' 'b'};
    %     color = rgb{mod(i-1,3)+1};
    
    colorMap = hot(nPatches);
    color = colorMap(i,:);
    %     color = [0.1647    0.3843    0.2745]
    hPatches(i) = patch(patchData(i),'EdgeColor','none','FaceColor',color,'Parent',hAxes);
end

triadScale = 50;
hTriads = zeros(1,nTransforms);
for i = 1:nTransforms
    hTriads(i) = Utils.plot_triad(hAxes,eye(4),triadScale);
end

hGlobal = hgtransform('Parent',hAxes);

hTransforms(1) = hgtransform('Parent',hGlobal);
hTransforms(2) = hgtransform('Parent',hTransforms(1));
hTransforms(3) = hgtransform('Parent',hTransforms(2));
hTransforms(4) = hgtransform('Parent',hTransforms(3));
hTransforms(5) = hgtransform('Parent',hTransforms(4));
hTransforms(6) = hgtransform('Parent',hTransforms(5));
hTransforms(7) = hgtransform('Parent',hTransforms(6));
% Note each gripper w.r.t wrist
hTransforms(8) = hgtransform('Parent',hTransforms(7));
hTransforms(9) = hgtransform('Parent',hTransforms(7));

hTransforms(10) = hGlobal;


set(hPatches(1),'Parent',hGlobal);
set(hPatches(2),'Parent',hTransforms(1));
set(hPatches(3),'Parent',hTransforms(2));
set(hPatches(4),'Parent',hTransforms(3));
set(hPatches(5),'Parent',hTransforms(4));
set(hPatches(6),'Parent',hTransforms(5));
set(hPatches(7),'Parent',hTransforms(6));
set(hPatches(8),'Parent',hTransforms(7));
set(hPatches(9),'Parent',hTransforms(8));
set(hPatches(10),'Parent',hTransforms(9));

set(hTriads(2),'Parent',hTransforms(1));
set(hTriads(3),'Parent',hTransforms(2));
set(hTriads(4),'Parent',hTransforms(3));
set(hTriads(5),'Parent',hTransforms(4));
set(hTriads(6),'Parent',hTransforms(5));
set(hTriads(7),'Parent',hTransforms(6));
set(hTriads(8),'Parent',hTransforms(7));
set(hTriads(9),'Parent',hTransforms(8));
set(hTriads(10),'Parent',hTransforms(9));

end
