function h = f_show_surface(surface,color,hAxes)

if nargin < 2
    color = 'blue';
end

if nargin < 3
    hAxes = gca;
end
h = patch('Vertices',surface.nodeData,'Faces',surface.elementData,'Parent',hAxes);

set(h,'FaceColor',color);
set(h,'EdgeColor','none');
