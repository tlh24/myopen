function nfuSimulator
% Simulate nfu messages and data response

% may be needed for cleanup
% pnet('closeall')

% Test streaming:
%%
% Step 3: create a seperate port from which we will send data
localSendPortNumber = 60664;
udpCmdSocket = pnet('udpsocket',localSendPortNumber);
% check for validity
assert(udpCmdSocket >= 0,'Failed to open send socket');

destinationHostname = '127.0.0.1';
destinationPortNumber = 9027;
%%
% Step 4: send a couple packets from our source to our destintion
tic
l = 0;

while toc < 20
    % select destination
    %% put data in buffer
    payLoad = zeros(36,20,'uint8');
    v = int16(l + (1:20));
    v8 = reshape(typecast(v,'uint8'),2,[]);
    
    payLoad(5:6,:) = v8;
    someData = uint8(payLoad);
    hdr = uint8([8 6 7 5 3 0]);
    pnet( udpCmdSocket, 'write', [hdr(:); someData(:)] );
    % send to destination
    pnet( udpCmdSocket, 'writepacket', destinationHostname, destinationPortNumber );
    pause(.1);
    l = l + 20;
    if l > 50000
        l
        l = 0;
    end
    %%
end


pnet(udpCmdSocket,'close');
