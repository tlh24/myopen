function h = f_show_surface(surface,color)

if nargin == 1
    color = 'blue';
elseif nargin == 0 | nargin > 2
    error('Usage: f_show_surface(surface,color)');
end

h = patch('Vertices',surface.nodeData,'Faces',surface.elementData);

set(h,'FaceColor',color);
set(h,'EdgeColor','none');
