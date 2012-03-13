function pl_bird_pos(pos_ar,ang_ar,s,bird)
%
% Plot positon trajectory of each bird in flock
%
% See run_bird.m for use
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

X=1;Y=2;Z=3;


hold on

view(-37.5,30) % set to isometric view point

% Define an array of colors for each bird
colorstr_ar = [{'r'} {'b'} {'g'} {'m'} {'y'} {'c'} ];
while length(colorstr_ar)<bird.nbird  
    colorstr_ar = [colorstr_ar colorstr_ar]; % repeat colors if array is not long enough
end

% plot trajectory of each 
for ibird=1:bird.nbird
    colorstr = char(colorstr_ar(ibird));
    plot3(pos_ar(:,X,ibird),pos_ar(:,Y,ibird),pos_ar(:,Z,ibird),colorstr)
end        


% define labels and titles
xlabel('X');
ylabel('Y');
zlabel('Z');

[npoint, ndim, nbird] = size(pos_ar);
title_str = ['Position of Flock: ' int2str(npoint) ' points, sampled at approx. ' num2str(s.sample_freq_est,3) ' hz'];
title(title_str);

% setup legend
for ibird=1:bird.nbird
    legend_str(ibird) = {['Bird ' int2str(ibird)]};    
end        
legend(legend_str);




