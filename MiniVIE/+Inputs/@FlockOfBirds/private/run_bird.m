% run_bird.m
%
% Run this program to start bird menu
%
% See bird_io_doc.htm for documentation

% Nathan Delson
% 8/12/2001

ON=1; OFF=0;

% Define global variables used in gui
global gui  % paramters passed to gui (like start_proc, and stop_proc)

% Setup Menu 
header_str = 'Run Bird';
clear menu_str;
im=1;
menu_str(im) = {'Setup Bird'}; im = im+1;
menu_str(im) = {'Reset Bird'}; im = im+1;
menu_str(im) = {'Read Position of Bird No. 1 and Display'}; im = im+1;
menu_str(im) = {'Read Position of Flock of Birds and Plot with Axes'}; im = im+1;
menu_str(im) = {'Repeatedly Read Position of Flock of Birds then Plot'}; im = im+1;
menu_str(im) = {'Stream Data on Flock of Birds then Plot'}; im = im+1;
menu_str(im) = {'Stream Data on Flock of Birds then Animate with Axes'}; im = im+1;
menu_str(im) = {'Real Time I/O and Plotting'}; im = im+1;
menu_str(im) = {'Examine Bird Settings'}; im = im+1;
menu_str(im) = {'Clear Figure'}; im = im+1;
menu_str(im) = {'Close Serial Port'}; im = im+1;
menu_str(im) = {'Exit'}; im = im+1;

% load default bird settings
bird_setting_default;   

% setup figure
figure  % open new figure
hold on
view(-37.5,30)
axis vis3d  % set axis for proper 3D visulization
setup_views    % load pull downmenu for pre defined views


in_loop_run_laryn = ON;
% loop until 'Exit' is selected
while in_loop_run_laryn       
    im = menu(header_str,menu_str);  % call menu and return selection
    switch char(menu_str(im))
    case 'Setup Bird'
        bird = bird_setup(bird);  % setup bird        
    case 'Reset Bird'
        bird_reset(bird)
    case 'Read Position of Bird No. 1 and Display'
        bird_bytes = bird_point_bytes(bird);
        [pos, ang] = bird_bytes_2_data(bird_bytes,bird);
        disp(pos)
            
    case 'Read Position of Flock of Birds and Plot with Axes'
       bird_bytes = bird_group_bytes(bird);
       [pos_flock, ang_flock] = bird_group_bytes_2_data(bird_bytes,bird);
       disp(sprintf('Units: Meters and Degrees'))
       disp(sprintf('Bird\tX\t\tY\t\tZ\t\tthx\t\tthy\t\tthz'))
       for ibird=1:bird.nbird
           disp(sprintf('Bird %i\t%+3.3f\t%+3.3f\t%+3.3f\t%+3.1f\t%+3.1f\t%+3.1f',ibird,pos_flock(ibird,:),ang_flock(ibird,:)*180/pi))
       end
       % plot postion and axes
       pl_bird_axes(pos_flock,ang_flock,bird)
    case 'Repeatedly Read Position of Flock of Birds then Plot'
        % Use series approach for bird i/o. This approach reads on point at a time and
        % is slower than the stream approach
        [pos_ar,ang_ar,s] = bird_group_series(bird);
        pl_bird_pos(pos_ar,ang_ar,s,bird)

    case  'Stream Data on Flock of Birds then Plot'
        [bird_bytes_ar,s] = bird_group_stream(bird);
        [pos_ar,ang_ar,s] = bird_stream_bytes_2_data(bird_bytes_ar,bird,s);
        pl_bird_pos(pos_ar,ang_ar,s,bird)

    case 'Stream Data on Flock of Birds then Animate with Axes'
        [bird_bytes_ar,s] = bird_group_stream(bird);
        [pos_ar,ang_ar,s] = bird_stream_bytes_2_data(bird_bytes_ar,bird,s);
        pl_bird_animate(pos_ar,ang_ar,s,bird)

    case 'Real Time I/O and Plotting'
        bird_real_time_setup

    case 'Examine Bird Settings'
        disp('Please Wait ...')
        bird = bird_examine_value(bird);
        for ibird=1:bird.nbird
            disp(['Bird No: ' int2str(ibird)]) 
            disp(bird.examine(ibird))
        end        
   case 'Clear Figure'
       h_ar = get(gca,'Children');   % find all graphics handles
       delete(h_ar);                 % delete them
%       set(h_ar,'Visible','Off');   % Turn off visible would also work
   case 'Close Serial Port'
       bird_close(bird);
   case 'Exit'
        in_loop_run_laryn = OFF;
    otherwise
        error('Invalid menu option in run_bird');
    end
end



% Advanced Options
% find vecotr to stylus tip
% examine bird values
