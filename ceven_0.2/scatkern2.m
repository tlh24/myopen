% Compute contours and scatterplots of the features of each class.
% Compute the contour only if trial=1, implyinga training set.
% Author: Kevin Englehart
% Modified by: Rosie Buerkle, Feb. 5, 2004
% Modified by: Blair Lock, Oct. 21, 2004
function [lineSpec, spotSpec] = scatkern2(handles,PCTrainCoef,classvec,classtxt,trial)

global g xg yg;

for idx = 1:max(classvec)
    vec{idx} = find(classvec==idx);
end

if (trial==1)
    maxPC = ceil(max(max(PCTrainCoef)));
    minPC = floor(min(min(PCTrainCoef)));

    npts = 256;
    xg = linspace(minPC,maxPC,npts);
    yg = linspace(minPC,maxPC,npts);
    X = ones(npts,1)*xg;
    Y = ones(npts,1)*yg; Y = Y';

    s = 0.25;
    
    for idx = 1:max(classvec)
        dum = vec{idx};
        n = length(dum);
        g{idx} = zeros(npts); 
        for k = 1:n
            yp = Y-PCTrainCoef(2, dum(k));
            xp = X-PCTrainCoef(1, dum(k));
            g{idx} = g{idx} + exp(-0.5*((xp.^2 + yp.^2))/s); 
        end
    end
axis([minPC maxPC minPC maxPC])
end

lineSpec = {'r'   'b'   'g'   'c'   'm'   'y'   'k'  ...
            'r--' 'b--' 'g--' 'c--' 'm--' 'y--' 'k--'...
            'r:'  'b:'  'g:'  'c:'  'm:'  'y:'  'k:' ...
            'r-.' 'b-.' 'g-.' 'c-.' 'm-.' 'y-.' 'k-.'...
            'r'   'b'   'g'   'c'   'm'   'y'   'k'  ...
            'r--' 'b--' 'g--' 'c--' 'm--' 'y--' 'k--'...
            'r:'  'b:'  'g:'  'c:'  'm:'  'y:'  'k:' ...
            'r-.' 'b-.' 'g-.' 'c-.' 'm-.' 'y-.' 'k-.'};
spotSpec = {'r*' 'b*' 'g*' 'c*' 'm*' 'y*' 'k*' ...
            'r+' 'b+' 'g+' 'c+' 'm+' 'y+' 'k+' ...
            'rx' 'bx' 'gx' 'cx' 'mx' 'yx' 'kx' ...
            'ro' 'bo' 'go' 'co' 'mo' 'yo' 'ko' ...
            'r*' 'b*' 'g*' 'c*' 'm*' 'y*' 'k*' ...
            'r+' 'b+' 'g+' 'c+' 'm+' 'y+' 'k+' ...
            'rx' 'bx' 'gx' 'cx' 'mx' 'yx' 'kx' ...
            'ro' 'bo' 'go' 'co' 'mo' 'yo' 'ko'};
lev = 2;
for idx = 1:max(classvec)
    contour(xg,yg,g{idx},[lev lev],lineSpec{idx});
    hold on;
    dum = vec{idx};
    r{idx} = 1:length(dum);
    plot(PCTrainCoef(1,dum(r{idx})),PCTrainCoef(2,dum(r{idx})),spotSpec{idx})
end
xlabel(''); ylabel(''); title('');

if isempty(findobj('Tag','acqleg'))
    acqlegend(handles,classtxt,lineSpec,spotSpec)
end