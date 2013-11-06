function mpltest
% Test Script to test MPL functions with NFU


fprintf('\n\n\n\n\n');
fprintf('******************************\n');
fprintf('********MiniVIE Tests*********\n');
fprintf('******************************\n');
fprintf('Which Test?\n');

% cellTests = { testIdentifier, test description }
cellTests = {
    'Ping01',       '[1] Ping router using OS [ping 192.168.1.1 -t]'
    'Ping02',       '[2] Ping limb system using OS [ping 192.168.1.111 -t]'     
    'Telnet01',     '[3] Open telnet session (pkgmgr /iu:"TelnetClient") [telnet 192.168.1.111]'
    'Pnet01',       '[4] basic pnet tcpsocket and tcplisten on 6200'
    'NfuStream01',  '[5] NFU Streaming [Inputs.NfuInput]'
    'MplWrist01',   '[6] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'MplHand',      '[7] Test MPL ROC grasps [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'Haptics01',    '[8] Tactor manual control'
    'Haptics02',    '[9] HapticAlgorithm Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase'
    'Joystick01',   '[10] Joystick Runs JoyMexClass preview for 15 seconds'
    'Edit01',       '[11] edit mpltest.m'
    'MplWrist02',   '[12] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'MplWrist03',   '[13] Test MPL wrist range of motion with tactor'
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
        !ping 192.168.1.1 -t
    case 'Ping02'
        !ping 192.168.1.111 -t
    case 'Telnet01'
        !telnet 192.168.1.111
    case 'NfuStream01'
        
        h = Inputs.NfuInput();
        
        fprintf('Adding Filters\n');
        h.addfilter(Inputs.HighPass());
        h.addfilter(Inputs.Notch());
        h.NumSamples = 2000;
        s = h.initialize();
        assert(s >= 0,'NFU Init failed');
        
        GUIs.guiSignalViewer(h);
        return
    case 'MplWrist01'
        %test mpl wrist ROM
        hNfu = MPL.NfuUdp.getInstance;
        s = hNfu.initialize();
        if s < 0
            error('NFU Init failed');
        end
        hNfu.sendUpperArmHandRoc([zeros(1,3) 0 -0.7 -0.5 -0.5],0,0);
        pause(1)
        hNfu.sendUpperArmHandRoc([zeros(1,3) 0.1 0.7 0.5 0.5],0,0);
        pause(1)
        hNfu.sendUpperArmHandRoc([zeros(1,3) 0 0 0 0],0,0);
        
    case 'MplWrist02'
        %test mpl wrist ROM
        hNfu = MPL.NfuUdp.getInstance;
        s = hNfu.initialize();
        if s < 0
            error('NFU Init failed');
        end
        
        tic;
        while StartStopForm
            drawnow
            val = sin(toc);
            fprintf('Wrist Angle: %f\n',val);
            hNfu.sendUpperArmHandRoc([zeros(1,4) val val val],0,0);
            pause(0.02);
        end
    case 'MplWrist03'
        % this test runs the wrist doms through a 1 Hz sine wave.
        % It also activates the tactors on/off at 1 Hz
        
        %test mpl wrist ROM
        hNfu = MPL.NfuUdp.getInstance;
        assert(hNfu.initialize() >=0 ,'NFU Init Failed');

        tic;
        while StartStopForm
            drawnow
            
            % Wrist
            val = sin(toc);
            hNfu.sendUpperArmHandRoc([zeros(1,4) val val val],0,0);
            
            % Tactors
            isOdd = @(x)rem(x,2);
            if isOdd(round(toc))
                tVal = 100;
            else
                tVal = 0;
            end
            
            tactorId = 3;
            hNfu.tactorControl(tactorId, 100, tVal, 100, 100, 0);
            tactorId = 4;
            hNfu.tactorControl(tactorId, 100, 100-tVal, 100, 100, 0);

            fprintf('Wrist Angle: %6.2f\t Tactor: %d\n',val,tVal);
            
            pause(0.02);  % control rate here
        end
        tactorId = 3;
        hNfu.tactorControl(tactorId, 100, 0, 100, 100, 0);
        tactorId = 4;
        hNfu.tactorControl(tactorId, 100, 0, 100, 100, 0);
        
        
    case 'MplHand'
        %test mpl hand Roc
        hNfu = MPL.NfuUdp.getInstance;
        hNfu.initialize();

        for rocID = [0 1 2 3 4 5 6 7 8 9 10 11 12 13]
            graspVal = [linspace(0,1,30) ones(1,10) linspace(1,0,30)];
            for i = 1:length(graspVal)
                fprintf('ROC %d, %6.2f Pct\n',rocID,graspVal(i)*100);
                %hNfu.sendUpperArmHandRoc([zeros(1,4) 0 0 0],rocID,graspVal(i));
                hNfu.sendUpperArmHandLocalRoc([zeros(1,4) 0 0 0],rocID,graspVal(i));
                pause(0.02);
            end
            disp('Press any key...');pause;
        end
        %hNfu.sendUpperArmHandRoc([zeros(1,4) 0 0 0],0,0);
        hNfu.sendUpperArmHandLocalRoc([zeros(1,4) 0 0 0],0,0);
    case 'Haptics01'
        % Test tactors manually
        test_tactor_nfu();
        return
    case 'Haptics02'
        % HapticAlgorithm: Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase
        tData = PatternRecognition.TrainingData;
        
        h = MPL.MplScenarioMud;
        h.initialize([],[],tData);
        h.Verbose = 0;
        h.EnableFeedback = 1;
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
