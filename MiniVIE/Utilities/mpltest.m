function mpltest
% Test Script to test MPL functions with NFU

strRouterIp = UserConfig.getUserConfigVar('mplRouterIp','192.168.1.1');
strNfuIp = UserConfig.getUserConfigVar('mplNfuIp','192.168.1.111');

AA = -0.3;
armTestStart = [[0 AA 0] 1.6 0 0 0];

% Note for changing limb stream-To address:
%     Telnet in to limb:
%     Launch windows command prompt (cmd.exe)
%     c:\> telnet 192.168.1.111
%     login as root
%     > cat /fs/etfs/hostname
%     > vi /fs/etfs/hostname
%     > reboot


% Note for quick NFU based limb position adjust:
% hNfu = MPL.NfuUdp.getInstance;
% s = hNfu.initialize();
% hNfu.sendAllJoints([ [-0.35 -0.2 0] 1.8 -0.7 -0.5 -0.5])  % radians



fprintf('\n\n\n\n\n');
fprintf('******************************\n');
fprintf('********MiniVIE Tests*********\n');
fprintf('******************************\n');
fprintf('Which Test?\n');

% cellTests = { testIdentifier, test description }
cellTests = {
    'Ping01',       sprintf('[1] Ping router using OS [ping %s -t]',strRouterIp)
    'Ping02',       sprintf('[2] Ping limb system using OS [ping %s -t]',strNfuIp)
    'Telnet01',     sprintf('[3] Open telnet session (pkgmgr /iu:"TelnetClient") [telnet %s]',strNfuIp)
    'Pnet01',       '[4] basic pnet tcpsocket and tcplisten on 6200'
    'NfuStream01',  '[5] NFU Streaming [Inputs.NfuInput]'
    'MplWrist01',   '[6] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'MplHand',      '[7] Test MPL ROC grasps [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'Haptics01',    '[8] Tactor manual control'
    'Haptics02',    '[9] HapticAlgorithm Runs HapticAlgorithm within  MPL.MplNfu < Scenarios.ScenarioBase'
    'Joystick01',   '[10] Joystick Runs JoyMexClass preview for 15 seconds'
    'Edit01',       '[11] edit mpltest.m'
    'MplWrist02',   '[12] Test MPL wrist range of motion [MPL.NfuUdp.getInstance MPL.MudCommandEncoder]'
    'MplWrist03',   '[13] Test MPL wrist range of motion with tactor'
    'MplShoulderFe','[14] Test MPL shoulder fe range of motion'
    'MplShouldAbAd','[15] Test MPL shoulder abad range of motion'
    'MplHumeralRot','[16] Test MPL humeral rot range of motion'
    'MplElbow',     '[17] Test MPL elbow range of motion'
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
        cmd = sprintf('ping %s -t',strRouterIp);
        disp(cmd);
        system(cmd);
    case 'Ping02'
        cmd = sprintf('ping %s -t',strNfuIp);
        disp(cmd);
        system(cmd);
    case 'Telnet01'
        cmd = sprintf('telnet %s',strNfuIp);
        disp(cmd);
        system(cmd);
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
        hNfu.sendAllJoints([ [0 AA 0] 1.5 -0.7 -0.5 -0.5]);
        pause(1.0)
        AA = -0.25;
        hNfu.sendAllJoints([ [0 AA 0] 1.5 -0.7 -0.5 -0.5]);
        pause(1.0)
        hNfu.sendAllJoints([ [0 AA 0] 1.6 0.7 0.5 0.5]);
        pause(1.0)
        hNfu.sendAllJoints(armTestStart);
        
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
            hNfu.sendAllJoints([zeros(1,4) val val val]);
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
            hNfu.sendAllJoints(armTestStart);
            
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
        
        structRoc = MPL.RocTable.createRocTables();

        for iRoc = [3 5 6 8 16]%1:length(roc)
            RocId = structRoc(iRoc).id;
            RocName = structRoc(iRoc).name;
            
            numOpenSteps = 30;
            numWaitSteps = 10;
            numCloseSteps = 30;
            
            mplAngles = zeros(1,27);
            mplAngles(2) = -0.3;
            mplAngles(4) = 1.5;
            
            graspVal = [linspace(0,1,numOpenSteps) ones(1,numWaitSteps) linspace(1,0,numCloseSteps)];
            for i = 1:length(graspVal)
                fprintf('Entry #%d, RocId=%d, %14s %6.2f Pct\n',...
                    iRoc,RocId,RocName,graspVal(i)*100);
                
                % perform local interpolation
                mplAngles(structRoc(iRoc).joints) = interp1(structRoc(iRoc).waypoint,structRoc(iRoc).angles,graspVal(i));
                
                hNfu.sendAllJoints(mplAngles);
                pause(0.02);
            end
            disp('Press any key...');pause;
        end
        hNfu.sendAllJoints(armTestStart);
    case 'Haptics01'
        % Test tactors manually
        test_tactor_nfu();
        return
    case 'Haptics02'
        % HapticAlgorithm: Runs HapticAlgorithm within  MPL.MplScenarioMud < Scenarios.ScenarioBase
        tData = PatternRecognition.TrainingData;
        
        h = MPL.MplNfu;
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
