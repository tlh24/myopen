% cleanup
% There's quite a lot to do to clean up the MATLAB workspace
try
    stop(timerfindall);
end
delete(timerfindall);
try
    delete(imaqfind);
    delete(instrfindall);
    delete(daqfind);
end
close all force;
clear classes;
disp('cleanup');
