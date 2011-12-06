function h = f_plot3(varargin)
h = [];
if nargin < 2, arg = '.'; end;
if isempty(varargin{1}),return,end
columnVec = varargin{1};
if size(columnVec,1) ~= 3, error('Use Column Vectors'),end;

h = plot3(columnVec(1,:),columnVec(2,:),columnVec(3,:),varargin{2:nargin});

return

npts = size(columnVec,2);
text(columnVec(1,:),columnVec(2,:),columnVec(3,:),[repmat(' ',npts,1), num2str([1:npts]')],'FontSize',18)
