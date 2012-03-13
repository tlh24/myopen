function pl_bird_animate(pos_ar,ang_ar,s,bird)
%
% Animates bird position and axes after data has been acquired        
% See run_bird.m for use
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

X=1;Y=2;Z=3;

vec_length = 0.05;  % length of vector on plot showing bird axes
pause_delay = 0;  % seconds between frames of animation

% Define an array of colors for each bird
colorstr_ar = [{'r'} {'b'} {'g'} {'m'} {'y'} {'c'} ];
while length(colorstr_ar)<bird.nbird  
    colorstr_ar = [colorstr_ar colorstr_ar]; % repeat colors if array is not long enough
end

[npoint, ndim, nbird]=size(pos_ar);

xlabel('X');
ylabel('Y');
zlabel('Z');

hold on

[npoint, ndim, nbird] = size(pos_ar);
title_str = ['Animation of Flock: ' int2str(npoint) ' points, sampled at approx. ' num2str(s.sample_freq_est,3) ' hz'];
title(title_str);

% plot axes at each bird locaiton for first point in series
i=1;
for ibird=1:bird.nbird
    pos = pos_ar(i,X:Z,ibird);
    ang = ang_ar(i,X:Z,ibird);
    R = birdR(ang);             % Calculate Rotation matrix R whose columsn are the unit axes of each bird coordinate system
    xvec = pos' + R(:,X)*vec_length;  
    yvec = pos' + R(:,Y)*vec_length;
    zvec = pos' + R(:,Z)*vec_length;
    
    colorstr = char(colorstr_ar(ibird));
    hxvec(ibird) = plot3([pos(X);xvec(X)],[pos(Y);xvec(Y)],[pos(Z);xvec(Z)],colorstr,'EraseMode','xor');
    hyvec(ibird) = plot3([pos(X);yvec(X)],[pos(Y);yvec(Y)],[pos(Z);yvec(Z)],colorstr,'EraseMode','xor');
    hzvec(ibird) = plot3([pos(X);zvec(X)],[pos(Y);zvec(Y)],[pos(Z);zvec(Z)],colorstr,'EraseMode','xor');


    hxtext(ibird) = text(xvec(X),xvec(Y),xvec(Z),['x' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
    hytext(ibird) = text(yvec(X),yvec(Y),yvec(Z),['y' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
    hztext(ibird) = text(zvec(X),zvec(Y),zvec(Z),['z' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
axis vis3d
    
end        


for i=1:npoint
    % plot trajectory of each 
    for ibird=1:bird.nbird
        pos = pos_ar(i,X:Z,ibird);
        ang = ang_ar(i,X:Z,ibird);
        R = birdR(ang);             % Calculate Rotation matrix R whose columsn are the unit axes of each bird coordinate system
        xvec = pos' + R(:,X)*vec_length;  
        yvec = pos' + R(:,Y)*vec_length;
        zvec = pos' + R(:,Z)*vec_length;

        set(hxvec(ibird),'XData',[pos(X);xvec(X)]);
        set(hxvec(ibird),'YData',[pos(Y);xvec(Y)]);
        set(hxvec(ibird),'ZData',[pos(Z);xvec(Z)]);

        set(hyvec(ibird),'XData',[pos(X);yvec(X)]);
        set(hyvec(ibird),'YData',[pos(Y);yvec(Y)]);
        set(hyvec(ibird),'ZData',[pos(Z);yvec(Z)]);

        set(hzvec(ibird),'XData',[pos(X);zvec(X)]);
        set(hzvec(ibird),'YData',[pos(Y);zvec(Y)]);
        set(hzvec(ibird),'ZData',[pos(Z);zvec(Z)]);
    
        % set texdt position
        set(hxtext(ibird),'Position',xvec);
        set(hytext(ibird),'Position',yvec);
        set(hztext(ibird),'Position',zvec);
        
        drawnow
        pause(pause_delay);
    end        
end






