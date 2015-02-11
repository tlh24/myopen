function hTriad = f_update_triad(F,hTriad,scale)
% Update a trid plot without recreating 
% Inputs:
%   F = a 4x4 Frame transformation (latest)
%   hTriad = handle to the original triad
%   scale = (optional) updated scale
%
% see f_plot_triad
%
% 12-Feb-2008 Fixed a bug in the order children are accessed 

hLine = get(hTriad,'Children');

if nargin < 3
    
    xDat = get(hLine,'XData');
    yDat = get(hLine,'YData');
    zDat = get(hLine,'ZData');
    ptDat = cell2mat([xDat yDat zDat]);
    scaleX = f_magnitude(ptDat(:,1),ptDat(:,2));
    scaleY = f_magnitude(ptDat(:,3),ptDat(:,4));
    scaleZ = f_magnitude(ptDat(:,5),ptDat(:,6));
else
    if length(scale) == 1
        % Uniform Scaling
        scaleX = scale;
        scaleY = scale;
        scaleZ = scale;
    elseif length(scale) == 3
        scaleX = scale(1);
        scaleY = scale(2);
        scaleZ = scale(3);
    else
        error('Scale Parameter should be a scalar or 3 element array')
    end
end

F(4,1:4) = [0 0 0 1];
set(hTriad,'Matrix',F);

Xaxis = scaleX.*[0 1;0 0; 0 0];
Yaxis = scaleY.*[0 0;0 1; 0 0];
Zaxis = scaleZ.*[0 0;0 0; 0 1];

% Note that the 'xaxis' is the third child.  children are stored backwards
% from creation order!!!
set(hLine(3),{'XData','YData','ZData'},{Xaxis(1,:),Xaxis(2,:),Xaxis(3,:)});
set(hLine(2),{'XData','YData','ZData'},{Yaxis(1,:),Yaxis(2,:),Yaxis(3,:)});
set(hLine(1),{'XData','YData','ZData'},{Zaxis(1,:),Zaxis(2,:),Zaxis(3,:)});

