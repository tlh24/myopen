% bird_real_time_plot.m
%
% Implements real-time data acquisition and plotting (called from pull down menu)
%
% See run_bird.m for use
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01



bird_run = ON;  % global variable used in pull down menu to start and stop data acquisition

while bird_run == ON
    bird_bytes = bird_group_bytes(bird);
    [pos_flock, ang_flock] = bird_group_bytes_2_data(bird_bytes,bird);
    % plot postion and axes
    for ibird=1:bird.nbird
        pos = pos_flock(ibird,X:Z);
        ang = ang_flock(ibird,X:Z);
        R = birdR(ang);             % Calculate Rotation matrix R whose columsn are the unit axes of each bird coordinate system
        xvec = pos' + R(:,X)*vec_length;  
        yvec = pos' + R(:,Y)*vec_length;
        zvec = pos' + R(:,Z)*vec_length;

        set(hreal_time_xvec(ibird),'XData',[pos(X);xvec(X)]);
        set(hreal_time_xvec(ibird),'YData',[pos(Y);xvec(Y)]);
        set(hreal_time_xvec(ibird),'ZData',[pos(Z);xvec(Z)]);

        set(hreal_time_yvec(ibird),'XData',[pos(X);yvec(X)]);
        set(hreal_time_yvec(ibird),'YData',[pos(Y);yvec(Y)]);
        set(hreal_time_yvec(ibird),'ZData',[pos(Z);yvec(Z)]);

        set(hreal_time_zvec(ibird),'XData',[pos(X);zvec(X)]);
        set(hreal_time_zvec(ibird),'YData',[pos(Y);zvec(Y)]);
        set(hreal_time_zvec(ibird),'ZData',[pos(Z);zvec(Z)]);
    
        % set texdt position
        set(hreal_time_xtext(ibird),'Position',xvec);
        set(hreal_time_ytext(ibird),'Position',yvec);
        set(hreal_time_ztext(ibird),'Position',zvec);        
    end        

    drawnow
end

