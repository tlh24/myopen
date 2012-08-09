function mpltest
% Test Script to test MPL functions with NFU


fprintf('\n\n\n\n\n');
fprintf('******************************\n');
fprintf('********MiniVIE Tests*********\n');
fprintf('******************************\n');
fprintf('Which Test?\n');

% cellTests = { [test identifier, test description, 
cellTests = {
    'Ping01',       '[1] Ping router using OS [ping 192.168.1.1]'
    'Ping02',       '[2] Ping limb system using OS [ping 192.168.1.111]'     
    'Telnet01',     '[3] Open telnet session via plink [plink -telnet 192.168.1.111]'
    'Pnet01',       '[4] basic pnet tcpsocket and tcplisten on 6200'
    'NfuStream01',  '[5] NFU Streaming [Inputs.NfuInput]'
    'MplWrist',     '[6] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'MplHand',      '[7] Test MPL ROC grasps [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'Haptics01',    '[8] Tactor manual control'
    'Haptics02',    '[9] HapticAlgorithm\t Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase'
    'Joystick01',   '[10] Joystick\t Runs JoyMexClass preview for 15 seconds'
    'Edit01',       '[11] edit mpltest.m'
    'exit',         '[0] Exit'
    };

for i = 1:size(cellTests,1)
    fprintf('%s\n',cellTests{i,2});
end

response = str2double(input('Select Test: ','s'));

if isnan(response) || (response == 0)
    return
end

testId = cellTests{response,1};
switch testId
    case 'Ping01'
        !ping 192.168.1.1
    case 'Ping02'
        !ping 192.168.1.111
    case 'Telnet01'
        !plink -telnet 192.168.1.111
    case 'NfuStream01'
        
        h = Inputs.NfuInput();
        
        fprintf('Adding Filters\n');
        Fs = 1000;
        h.addfilter(Inputs.HighPass(10,8,Fs));
        %h.addfilter(Inputs.Notch(60.*(1:4),5,Fs));
        h.addfilter(Inputs.Notch(60.*1,5,Fs));
        h.NumSamples = 2000;
        s = h.initialize();
        if s < 0
            error('NFU Init failed');
        end
        
        GUIs.guiSignalViewer(h);
        return
    case 'MplWrist'
        %test mpl wrist ROM
        hNfu = MPL.NfuUdp.getInstance;
        s = hNfu.initialize();
        if s < 0
            error('NFU Init failed');
        end
        mud = MPL.MudCommandEncoder();
        
        % msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) -0.7 -0.5 -0.5],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
        pause(1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0.7 0.5 0.5],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
        pause(1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0 0 0],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
    case 'MplHand'
        %test mpl hand Roc
        hNfu = MPL.NfuUdp.getInstance;
        hNfu.initialize();
        mud = MPL.MudCommandEncoder();
        
        for rocID = [0 1 2 3 4 5 6 7 8 9 10 11 12 13]
            fprintf('ROC %d,open\n',rocID)
            % msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1)
            msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0 0 0],zeros(1,7),1,rocID,0,1);
            hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
            disp('Press any key...');pause;
            fprintf('ROC %d,close\n',rocID)
            % msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1)
            msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0 0 0],zeros(1,7),1,rocID,1,1);
            hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
            disp('Press any key...');pause;
        end
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0 0 0],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
    case 'Haptics01'
        % Test tactors manually
        test_tactor_nfu();
        return
    case 'Haptics02'
        % HapticAlgorithm: Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase
        
        h = MPL.MplScenarioMud;
        h.initialize([],[]);
        h.Verbose = 0;
        start(h.Timer);
        
        fprintf('Feedback Algorithm is running\n');
        
        return
    case 'Joystick01'
        obj = JoyMexClass;
        obj.preview;
    case 'Edit01'
        edit(mfilename);
        return
    case 'Pnet01'
        pnet('closeall');
        pause(0.1);
        p = pnet('tcpsocket',6200);
        pnet(p,'setreadtimeout',1);
        t = pnet(p,'tcplisten');
        if t < 0
            error('tcplisten failed: %d\n',t);
        else
            fprintf('tcplisten success: %d\n',t);
            pnet(t,'close');
            pnet(p,'close');
        end
    otherwise
        fprintf('Unmatched test "%s"\n',testId);
        return
end
fprintf('***********END****************\n');
fprintf('Restarting test script\n');
mpltest

end
