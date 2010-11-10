function hTriad = f_plot_triad(varargin)
%%f_plot_triad(F,scale,xyz_color)
%%see also f_update_triad

if nargin > 0
    if isscalar(varargin{1}) && ishandle(varargin{1})
        %% axis handle provided, shift all inputs down
        idxOffset = 1;
        hAx = varargin{1};
    else
        idxOffset = 0;
        hAx = gca;
    end
end

ax = hAx;

if nargin < (1 + idxOffset)
    F = eye(4);
else
    F = varargin{1 + idxOffset};
end


%     F = varargin{1};
% scale = varargin{2};
% xyz_color = varargin{3};


if nargin < (2 + idxOffset)
    scaleX = 1;
    scaleY = 1;
    scaleZ = 1;
else
    scale = varargin{2 + idxOffset};
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
        error('Scale Parameter should be a scalar or 3 element array');
    end
end

if nargin < (3 + idxOffset)
    xyz_color = {'r-','g-','b-'};
else
    xyz_color = varargin{3 + idxOffset};
    xyz_color = {xyz_color xyz_color xyz_color};
end

if isequal(size(F),[3 3])
    R = F; %% Rotation matrix provided
    F = eye(4);
    F(1:3,1:3) = R;
end

Xaxis = scaleX.*[0 1;0 0; 0 0];
Yaxis = scaleY.*[0 0;0 1; 0 0];
Zaxis = scaleZ.*[0 0;0 0; 0 1];

holdState = ishold(ax);
hold(ax,'on');
hLine(1) = plot3(ax,Xaxis(1,:),Xaxis(2,:),Xaxis(3,:),xyz_color{1},'LineWidth',2);
hLine(2) = plot3(ax,Yaxis(1,:),Yaxis(2,:),Yaxis(3,:),xyz_color{2},'LineWidth',2);
hLine(3) = plot3(ax,Zaxis(1,:),Zaxis(2,:),Zaxis(3,:),xyz_color{3},'LineWidth',2);

hTriad = hgtransform('Parent',ax);
set(hLine,'Parent',hTriad);
set(hTriad,'Matrix',F);

% Restore hold state
if holdState
    hold(ax,'on');
else
    hold(ax,'off');
end

xlabel(ax,'x-axis');
ylabel(ax,'y-axis');
zlabel(ax,'z-axis');
