function bird_close(bird)
%
% bird_close.m
%
% Close serial port opened for bird communication

if ~isempty(instrfind)
    
    % Stop serial port communication
    try, stopasync(bird.bird_port); catch, end;
    
    % Close the port and delete serial port object.
    fclose(bird.bird_port)
    delete(bird.bird_port)
end