% Write ROC tables
%
% MPL.RocTable.createRocTables
% MPL.RocTable.Test
%
%
% To reload from MiniVIE GUI:
% hNfu.readRocTable

%test mpl hand Roc
hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

for rocID = 1*ones(1,19);
    graspVal = [linspace(0,1,30) ones(1,10) linspace(1,0,30)];
    for i = 1:length(graspVal)
        fprintf('ROC %d, %6.2f Pct\n',rocID,graspVal(i)*100);
        %hNfu.sendUpperArmHandRoc([zeros(1,4) 0 0 0],rocID,graspVal(i));
        hNfu.sendUpperArmHandLocalRoc([zeros(1,4) 0 0 0],rocID,graspVal(i));
        pause(0.02);
    end
    disp('Press any key...');
    hNfu.readRocTable;
    {hNfu.localRoc.name}'
    pause(0.1);
end
%hNfu.sendUpperArmHandRoc([zeros(1,4) 0 0 0],0,0);
hNfu.sendUpperArmHandLocalRoc([zeros(1,4) 0 0 0],0,0);
