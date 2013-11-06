%%
obj = Inputs.CyberGloveSerial('COM5');
obj.initialize();

enableNfu = 0;
if enableNfu
    hNfu = MPL.NfuUdp.getInstance;
    status = hNfu.initialize();
    
    if status < 0
        error('Failed to initialize MPL.NfuUdp');
    end
    
    hMud = MPL.MudCommandEncoder();
else
    UdpAddress = '127.0.0.1';
    UdpDestinationPort = 9027;
    obj.hSink = PnetClass(UdpAddress,UdpDestinationPort);
    obj.hSink.initialize();
    
    obj.hMud = MPL.MudCommandEncoder();
end


%%

StartStopForm([]);
while StartStopForm
    pause(0.02)
    raw = obj.getRawData()';
    val = obj.mudFormat(raw);
    q_arm = [0 0 0 0 0];
    q = obj.adjustForMPL(q_arm, val);

    if enableNfu
        hNfu.sendAllJoints(q);
    else
        msg = hMud.AllJointsPosVelCmd([shoulderAngles e w],zeros(1,7),handPos,zeros(1,20));
        hSink.putData(msg);
    end
end
