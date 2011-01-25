% cleanup
% There's quite a lot to do to clean up the MATLAB workspace
try
    stop(timerfindall);
end
delete(timerfindall);
delete(instrfindall);
delete(daqfind);
close all force;
clear classes;
disp('cleanup');
