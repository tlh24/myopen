function [bird_bytes] = bird_group_bytes(bird)
%
% data acquistion for bird
% Gather bird bytes for a single point on complete flock
% 
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

ON=1; OFF=0;  % "CONSTANTS"

bird_port = bird.bird_port;  % to shorten notation

% turn group mode on if necessary
if bird.group_mode==OFF
    fwrite(bird_port,[bird.base_add+1 80 35 ON])
end

nbytes = bird.nbytes_point;  


% request data to be sent 
fprintf(bird_port,'B'); % Point command

% wait until bytes are availabe
%while (get(bird_port,'BytesAvailable')<nbytes)
%end

while 1
    bytes_avail = get(bird_port,'BytesAvailable');
    if bytes_avail >= nbytes;
        break
    end
end

% read binary data
bird_bytes = fread(bird_port,bird_port.BytesAvailable,'uint8');

