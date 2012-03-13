function [bird_bytes] = bird_stream_bytes(nbytes,bird)
%
% data aquistion for bird
%
% read a single bird record in stream mode
% 
% Must start stream first by calling: bird_stream_start(bird)
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

if nbytes==0
    bird_bytes=[];
    return;
end
bird_port = bird.bird_port;

% wait until bytes are availabe
while (get(bird_port,'BytesAvailable')<nbytes)
end

% read ONLY nbytes of binary data
bird_bytes = fread(bird_port,nbytes,'uint8');


