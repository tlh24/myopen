function bird_stream_start(bird)
%
% data aquistion for bird
% start bird stream 
% Written by Nathan Delson, UC San Diego: Updated 9/5/01


% request data to be sent as Stream
fprintf(bird.bird_port,'@'); % Stream command

