% cleanup
% There's quite a lot to do to clean up the MATLAB workspace
try
    dbquit('all');
end
try
    pnet('closeall');
end
try
    stop(timerfindall);
end
delete(timerfindall);
try
    delete(imaqfind);
end
try
    delete(instrfindall);
end
try
    delete(daqfind);
end
close all force;
clear classes;
disp('cleanup');
