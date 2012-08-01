function mpltest
% Test Script to test MPL functions with NFU


fprintf('\n\n\n\n\n');
fprintf('******************************\n');
fprintf('********MiniVIE Tests*********\n');
fprintf('******************************\n');
fprintf('Which Test?\n');
fprintf('[1] Ping limb system using OS [ping 192.168.1.111]\n');
fprintf('[2] Open telnet session [plink -telnet 192.168.1.111]\n');
fprintf('[3] NFU Streaming\n');
fprintf('[4] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]\n');
fprintf('[5] Test MPL ROC grasps [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]\n');
fprintf('[6] HapticAlgorithm\t Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase\n');
fprintf('[7] Tactor manual control\n');
fprintf('[8] Joystick\t Runs JoyMexClass preview for 15 seconds\n');
fprintf('[9] edit mpltest.m\n');

fprintf('[0] Exit\n');

response = input('Select Test: ','s');

switch response
    case '1'
        !ping 192.168.1.111
    case '2'
        !plink -telnet 192.168.1.111
    case '3'
        
        h = Inputs.NfuInput();
        
        fprintf('Adding Filters\n');
        Fs = 1000;
        h.addfilter(Inputs.HighPass(10,8,Fs));
        %h.addfilter(Inputs.Notch(60.*(1:4),5,Fs));
        h.addfilter(Inputs.Notch(60.*1,5,Fs));
        h.NumSamples = 2000;
        h.initialize();
        
        GUIs.guiSignalViewer(h);
        return
    case '4'
        %test mpl wrist ROM
        hNfu = MPL.NfuUdp.getInstance;
        hNfu.initialize();
        mud = MPL.MudCommandEncoder();
        
        % msg = mud.ArmPosVelHandRocGrasps([zeros(1,3) elbow w],zeros(1,7),1,rocID,rocPos,1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) -0.5 -0.5 -0.5],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
        pause(1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0.5 0.5 0.5],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
        pause(1)
        msg = mud.ArmPosVelHandRocGrasps([zeros(1,4) 0 0 0],zeros(1,7),1,0,0,1);
        hNfu.send_msg(hNfu.TcpConnection,char(59,msg));  % append nfu msg header
    case '5'
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
    case '6'
        %% HapticAlgorithm: Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase
        
        h = MPL.MplScenarioMud;
        h.initialize([],[]);
        h.Verbose = 0;
        start(h.Timer);
        
        fprintf('Feedback Algorithm is running\n');
        
        return
    case '7'
        % Test tactors manually
        test_tactor_nfu();
        
        return
    case '8'
        obj = JoyMexClass;
        obj.preview;
    case '9'
        edit(mfilename);
        return
    otherwise
        return
end
fprintf('***********END****************\n');
fprintf('Restarting test script\n');
mpltest

end
