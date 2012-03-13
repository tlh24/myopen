function pl_bird_axes(pos_flock,ang_flock,bird)
%
% pl_bird_axes
%
% Plot positon trajectory of each bird in flock, along with axes for
% each bird coordinate system
%
% See run_bird.m for use
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

X=1;Y=2;Z=3;

vec_length = 0.05;  % length of vector on plot showing bird axes

%figure  % open new figure
%hold on
%view(-37.5,30)

% Define an array of colors for each bird
colorstr_ar = [{'r'} {'b'} {'g'} {'m'} {'y'} {'c'} ];
while length(colorstr_ar)<bird.nbird  
    colorstr_ar = [colorstr_ar colorstr_ar]; % repeat colors if array is not long enough
end

% plot trajectory of each 
for ibird=1:bird.nbird
    pos = pos_flock(ibird,:);
    ang = ang_flock(ibird,:);

    R = birdR(ang);             % Calculate Rotation matrix R whose columsn are the unit axes of each bird coordinate system
    xvec = pos' + R(:,X)*vec_length;  
    yvec = pos' + R(:,Y)*vec_length;
    zvec = pos' + R(:,Z)*vec_length;
    
    colorstr = char(colorstr_ar(ibird));
    hxvec(ibird) = plot3([pos(X);xvec(X)],[pos(Y);xvec(Y)],[pos(Z);xvec(Z)],colorstr);
    hyvec(ibird) = plot3([pos(X);yvec(X)],[pos(Y);yvec(Y)],[pos(Z);yvec(Z)],colorstr);
    hzvec(ibird) = plot3([pos(X);zvec(X)],[pos(Y);zvec(Y)],[pos(Z);zvec(Z)],colorstr);

    text(xvec(X),xvec(Y),xvec(Z),['x' int2str(ibird)],'Color',colorstr);
    text(yvec(X),yvec(Y),yvec(Z),['y' int2str(ibird)],'Color',colorstr);
    text(zvec(X),zvec(Y),zvec(Z),['z' int2str(ibird)],'Color',colorstr);

end        

%axis vis3d  % set axis for proper 3D visulization

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Flock of Birds Postion and Axes')
%setup_views    % load pull downmenu for pre defined views




