% Create a test script that runs the Cyton Robot in real time

import Presentation.CytonI.*
obj = CytonI;
stop(obj.hPlant.hTimer)
t = linspace(0,5);
q = sin(t);

evalPts = [];
eTime = 0;
myClock = tic;
while eTime < max(t)
    disp('running')
    idxTime = find(t > eTime,1);
    obj.setJointIdValue(1,q(idxTime) )
    
    evalPts = cat(1,evalPts,sin(eTime));
    obj.setJointIdValue(1, evalPts(end) )
    %while ~obj.hPlant.allMovesComplete
        disp('waiting')
        T = obj.hControls.getT_0_N;
        obj.hDisplay.setTarget(T);
        drawnow
    %end

    eTime = toc(myClock);
end
