function bird_stream_stop(bird)
%
% data aquistion for bird
% stop bird stream
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01



% Point command stops Stream
fprintf(bird.bird_port,'B'); 

