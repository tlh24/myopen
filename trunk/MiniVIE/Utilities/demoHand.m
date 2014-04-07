%test mpl hand Roc
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

for iRoc = 10:14
    RocId = hNfu.localRoc(iRoc).id;
    RocName = hNfu.localRoc(iRoc).name;
    
    numOpenSteps = 20;
    numWaitSteps = 10;
    numCloseSteps = 20;
    
    graspVal = [linspace(0,1,numOpenSteps) ones(1,numWaitSteps) linspace(1,0,numCloseSteps)];
    for i = 1:length(graspVal)
        fprintf('Entry #%d, RocId=%d, %14s %6.2f Pct\n',...
            iRoc,RocId,RocName,graspVal(i)*100);
        %hNfu.sendUpperArmHandRoc([zeros(1,4) 0 0 0],rocID,graspVal(i));
        hNfu.sendUpperArmHandLocalRoc([zeros(1,4) 0 0 0],RocId,graspVal(i));
        pause(0.01);
    end
    pause(0.1);
end
