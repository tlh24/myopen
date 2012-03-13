function [bird_bytes_ar,s] = bird_group_stream(bird)
%
%
% Gathers a stream of points of all birds in a group (flock)
% The Bird Stream command provides fast data acquisition. 
% Once the Stream command is initiated the Bird microprocessor continually sends data 
% to the host computer. This data loads into the serial port buffer, and one needs to ensure 
% that the data from the buffer is removed and stored before the buffer overflows. 
% If the serial port buffer is not read frequently enough then the buffer will overflow. 
% However, if the buffer is read too frequently (such as for every record), 
% then the overhead associated with checking and reading the buffer can slow down the computer, 
% and also cause the buffer to overflow. The solution selected was to read to buffer in "bunches" 
% which are groups of bytes at a time. 
%
% A stream of data points can be acquired in this fashion by using the following two function calls: 
%
% [bird_bytes_ar,s] = bird_group_stream(bird);
% [pos_ar,ang_ar,s] = bird_stream_bytes_2_data(bird_bytes_ar,bird,s);
% 
% Output of bird_group_stream:
%
% bird_bytes_ar => array of bytes returned from bird
% (use bird_stream_bytes_2_data to convert bird_bytes_ar to positon and angle data)
%
% s => series/stream paramaters
% s.sample_freq
% s.sample_freq_est => estimated sample frequency, determined from computer clock
% s.npoint => number of points in stream
% s.nbytes_rec => bytes per record (one sensors' XYZ data); used in preprocessing
% s.nbytes_point =>  % bytes per point of all sensors gathered
% s.nbytes_ar => total bytes in array
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

% A Matlab GUI is used to start and stop the I/O. Matlab does not have a function to monitor the 
% keyboard (such as kbhit in C). Accordingly, the command line does not provide a convenient way to 
% stop a loop with a keyboard input. The GUI approach opens a figure with a pushbutton commands. 
% Implementing the "drawnow" Matlab command within the loop, forces Matlab to monitor the GUI 
% for mouse and button activity.


global gui

TRUE=1;FALSE=0;ON=1;OFF=0;
X=1;Y=2;Z=3;

gui.start_proc = 0;
gui.stop_proc = 0;

% Setup up groups and bunch of bytes to be read
nbytes_rec = bird.nbytes_rec;
nbytes_point = bird.nbytes_point;

nrec_bunch = bird.stream_bunch; % number of records to read at a time (to speed up I/O)
nbytes_read = nbytes_point*nrec_bunch; % number of bytes read at a time



hfig = figure('Position',[408 327 360 244],...
    'MenuBar','none', ...
    'Name','Procedure Menu',...
    'NumberTitle','off');


hpush_start = uicontrol(hfig,'Style','pushbutton');
set(hpush_start,'Position',[20 200 150 20]); %[left bottom width height]
set(hpush_start,'String','Start STREAM I/O of Flock');
set(hpush_start,'Callback','gui.start_proc=1;');

% stop button
hpush_stop = uicontrol(hfig,'Style','pushbutton');
set(hpush_stop,'Position',[20 150 150 20]); %[left bottom width height]
set(hpush_stop,'String','Stop STREAM I/O of Flock');
set(hpush_stop,'Callback','gui.stop_proc=1;');
set(hpush_stop,'Enable','off');


while gui.start_proc == 0
    drawnow
    %    disp('waiting to start')
end
set(hpush_start,'Enable','off');
set(hpush_stop,'Enable','on');

bird_bytes_ar=[];
ibunch = 0;
% turn group mode on
[bird] = bird_group_mode(ON,bird);
% *** start stream
bird_stream_start(bird);

t_start = clock;
while gui.stop_proc == 0
    % data collection from stream
    bytes_avail = get(bird.bird_port,'BytesAvailable');
    if (bytes_avail<nbytes_read)
        bird_bytes = bird_stream_bytes(nbytes_read,bird);
        bird_bytes_ar = [bird_bytes_ar;bird_bytes];
        ibunch = ibunch + 1;
    end
   
    drawnow  % forces Matlab to evaluate Callback in figure
end


t_stop = clock;
% shut stream off
bird_stream_stop(bird);
% read rest of points
pause(.1);
nbytes_left = get(bird.bird_port,'BytesAvailable');
bird_bytes = bird_stream_bytes(nbytes_left,bird);
bird_bytes_ar = [bird_bytes_ar;bird_bytes];

[nrec, tmp] = size(bird_bytes_ar);
s.nbytes_ar = nrec;
%disp([nrec nbytes_point nrec/nbytes_point])
npoint = floor(nrec/nbytes_point);
t_total = etime(t_stop,t_start);
s.sample_freq_est = npoint/t_total;
s.sample_freq = bird.sample_freq;  % set sample freq to estimate for now

set(hpush_stop,'Enable','off'); % show that button has been pressed


close(hfig)


