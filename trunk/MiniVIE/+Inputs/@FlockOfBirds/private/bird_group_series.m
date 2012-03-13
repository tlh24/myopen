function [pos_ar,ang_ar,s] = bird_group_series(bird)
%
% bird_group_series.m
% gathers a series of points of all birds in a group by calling 
% bird_group_bytes repeatedly. 
% 
% Note: Faster data acquyistion can be achived using the Bird Stream Command
% (see bird_group_stream.m)
% 
% Output:
% pos_ar => X,Y,Z positions
% pos_ar => array of positions in a three dimensional array of the following format
%   pos_ar(i,X:Z,ibird) => where i is the point counter, X:Z are coordinates, and ibird is the bird counter
% ang _ar=> array of positions in a three dimensional array of the following format
%   ang_ar(i,X:Z,ibird) => where i is the point counter, X:Z are coordinates, and ibird is the bird counter
%
% s => series data
% s.sample_freq_est => Estimate of sample frequnecy (uses computer clock, not bird microprocessor)  
% s.npoint
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

% A Matlab GUI is used to start and stop the I/O. Matlab does not have a function to monitor the 
% keyboard (such as kbhit in C). Accordingly, the command line does not provide a convenient way to 
% stop a loop with a keyboard input. The GUI approach opens a figure with a pushbutton commands. 
% Implementing the "drawnow" Matlab command within the loop, forces Matlab to monitor the GUI 
% for mouse and button activity.

global gui


gui.start_proc = 0;
gui.stop_proc = 0;

%bird = p.bird;

hfig = figure('Position',[408 325 191 246],...
    'MenuBar','none', ...
    'NumberTitle','off');

%set(hfig,'MenuBar','none');
%set(hfig,'NumberTitle','off');


hpush_start = uicontrol(hfig,'Style','pushbutton');
set(hpush_start,'Position',[20 200 150 20]); %[left bottom width height]
set(hpush_start,'String','Start SERIES I/O of Flock');
set(hpush_start,'Callback','gui.start_proc=1;');

% stop button
hpush_stop = uicontrol(hfig,'Style','pushbutton');
set(hpush_stop,'Position',[20 150 150 20]); %[left bottom width height]
set(hpush_stop,'String','Stop SERIES I/O of Flock');
set(hpush_stop,'Callback','gui.stop_proc=1;');
set(hpush_stop,'Enable','off');


while gui.start_proc == 0
    drawnow
%    disp('waiting to start')
end
set(hpush_start,'Enable','off');
set(hpush_stop,'Enable','on');

i=0;
bird_bytes_ar=[];
t_start = clock;
while gui.stop_proc == 0
    i=i+1;
    % data collection
    bird_bytes = bird_group_bytes(bird);
    bird_bytes_ar = [bird_bytes_ar;bird_bytes'];   
    %    disp(i)
    drawnow  % forces Matlab to evaluate Callback in figure
end
t_stop = clock;
s.npoint = i;
t_total = etime(t_stop,t_start);
s.sample_freq_est = s.npoint/t_total;
set(hpush_stop,'Enable','off'); % show that button has been pressed

% convert to position and angles
pos_ar=[];ang_ar=[];
nrec_bytes = 13;   % bytes per record

for i=1:s.npoint
    for ibird=1:bird.nbird
        byte_start = (ibird-1)*nrec_bytes + 1;    % start of nrec segment
        byte_end = byte_start + nrec_bytes - 1;   % stop of nrec segment
        % last byte of each data record contains bird number 
        % check that the correct bird is read in
        if ibird~=bird_bytes_ar(i,byte_end)
            error('Bird Record in Group Does Not Correspond to Bird Number')
        end
        % set indivudal data record - without bird number
        bird_bytes_ibird = bird_bytes_ar(i,byte_start:byte_end-1);
        [pos_ar(i,:,ibird), ang_ar(i,:,ibird)] = bird_bytes_2_data(bird_bytes_ibird,bird);
    end
end

close(hfig)


