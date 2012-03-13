function [bird_bytes] = bird_point_bytes(bird)
%
% data aquistion for bird
% Gather bird bytes for a single point on a singe master bird sensor
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

ON=1; OFF=0;  % "CONSTANTS"

bird_port = bird.bird_port;

% turn group mode off if necessary
if bird.group_mode==ON
    fwrite(bird_port,[p.bird.base_add+1 80 35 OFF])
end
nbytes = 12;  % only a single sensor (not in group mode)

% request data to be sent Point or Stream
fprintf(bird_port,'B'); % Point command

% RSA: disabling this while loop since the fread command should naturally
% block with timeout
%{
% wait until bytes are availabe
while (get(bird_port,'BytesAvailable')<nbytes)
end

% read binary data
bird_bytes = fread(bird_port,bird_port.BytesAvailable,'uint8');
%}

% read binary data
bird_bytes = fread(bird_port,nbytes,'uint8');
