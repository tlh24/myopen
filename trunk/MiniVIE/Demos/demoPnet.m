function demoPnet
% Demo pnet usage
% pnet('closeall')

% Step one: setup a port for receive UDP data
receivePortNumber = 9009;
udpReceiveSocket = pnet('udpsocket',receivePortNumber);
% check for validity
assert(udpReceiveSocket >= 0,'Failed to open receive socket');
% make non-blocking
pnet(udpReceiveSocket, 'setreadtimeout',0)

% Step 2: create a timer function that will display when messages are
% received (requires MiniVIE\Utilities)

% define a callback function that will check for packets
rcvCallback = @(src,evt)pnetRcv(udpReceiveSocket,receivePortNumber);
% create timer function and assign callback
hTimer = UiTools.create_timer('pnetRcvDemo',rcvCallback);
hTimer.Period = 0.02; % refresh rate (seconds)
start(hTimer);

% Step 3: create a seperate port from which we will send data
sendPortNumber = 6006;
udpCmdSocket = pnet('udpsocket',sendPortNumber);
% check for validity
assert(udpCmdSocket >= 0,'Failed to open send socket');

% Step 4: send a couple packets from our source to our destintion
for i = 1:5
    % select destination
    destinationHostname = '127.0.0.1';
    destinationPortNumber = receivePortNumber;
    % put data in buffer
    someData = uint8([8 6 7 5 3 0 9]);
    pnet( udpCmdSocket, 'write', someData );
    % send to destination
    pnet( udpCmdSocket, 'writepacket', destinationHostname, destinationPortNumber );
    pause(1);
end

% Step 5: clean things up
stop(hTimer)
pnet(udpCmdSocket,'close');
pnet(udpReceiveSocket,'close');



return;


function pnetRcv(udpReceiveSocket,receivePortNumber)
% Callback function for UDP receipt

% Check stream port for new data
len = 1;
newPackets = 0;
while len > 0
    len = pnet(udpReceiveSocket,'readpacket','noblock');
    if len > 0
        newPackets = newPackets + 1;
    end
end

if newPackets
    fprintf('%d new packets received on port number %d\n',newPackets,receivePortNumber);
end
