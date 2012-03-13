% bird_real_time_setup.m
%
% Sets up figure for real-time data acquisition and plotting
%
% See run_bird.m for use
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

TRUE=1;FALSE=0;ON=1;OFF=0;
X=1;Y=2;Z=3;

global bird_run    % starts and stops I/O
bird_run = OFF;    % set to stop during setup


% Create Pull Down Menu to Start/Stop I?O if not yet up
if length(findobj(gcf,'Label','Run Bird'))==0
    % Create a new a menu on the menu bar at the top of the figure window with the handle hfig
    h_menu = uimenu(gcf,'Label','Run Bird');
    
    % submenus are added by specfiying the handle to the column menu
    uimenu(h_menu,'Label','Start', ...
        'Callback', 'bird_real_time_plot;');
    uimenu(h_menu,'Label','Stop', ...
        'Callback', 'bird_run=0;');
end

title('Start Real Time Bird I/O from "Run Bird" Pull Down Menu')
% define labels and titles
xlabel('X');
ylabel('Y');
zlabel('Z');


% Setup Handlge Graphics for high speed animation
vec_length = 0.05;  % length of vector on plot showing bird axes

% Gather one point to start plot off at current values
bird_bytes = bird_group_bytes(bird);
[pos_flock, ang_flock] = bird_group_bytes_2_data(bird_bytes,bird);

% Define an array of colors for each bird
colorstr_ar = [{'r'} {'b'} {'g'} {'m'} {'y'} {'c'} ];
while length(colorstr_ar)<bird.nbird  
    colorstr_ar = [colorstr_ar colorstr_ar]; % repeat colors if array is not long enough
end
hold on
for ibird=1:bird.nbird
    
    pos = pos_flock(ibird,X:Z);
    ang = ang_flock(ibird,X:Z);
    R = birdR(ang);             % Calculate Rotation matrix R whose columsn are the unit axes of each bird coordinate system
    xvec = pos' + R(:,X)*vec_length;  
    yvec = pos' + R(:,Y)*vec_length;
    zvec = pos' + R(:,Z)*vec_length;
    
    colorstr = char(colorstr_ar(ibird));
    hreal_time_xvec(ibird) = plot3([pos(X);xvec(X)],[pos(Y);xvec(Y)],[pos(Z);xvec(Z)],colorstr,'EraseMode','xor');
    hreal_time_yvec(ibird) = plot3([pos(X);yvec(X)],[pos(Y);yvec(Y)],[pos(Z);yvec(Z)],colorstr,'EraseMode','xor');
    hreal_time_zvec(ibird) = plot3([pos(X);zvec(X)],[pos(Y);zvec(Y)],[pos(Z);zvec(Z)],colorstr,'EraseMode','xor');
    
    
    hreal_time_xtext(ibird) = text(xvec(X),xvec(Y),xvec(Z),['x' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
    hreal_time_ytext(ibird) = text(yvec(X),yvec(Y),yvec(Z),['y' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
    hreal_time_ztext(ibird) = text(zvec(X),zvec(Y),zvec(Z),['z' int2str(ibird)],'Color',colorstr,'EraseMode','xor');
end        

axis vis3d  % set axis for proper 3D visulization
