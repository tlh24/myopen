function nfuSimulator
% Simulate nfu messages and data response

% may be needed for cleanup
% pnet('closeall')

% Test streaming:

hUdp = PnetClass(60664,9027,'127.0.0.1');
hUdp.initialize();

%% Run data transmit loop
tic
l = 0;

while StartStopForm
    pause(.1);
    
    % select destination
    % put data in buffer
    payLoad = zeros(36,20,'uint8');
    v = int16(l + (1:20));
    v8 = reshape(typecast(v,'uint8'),2,[]);
    
    payLoad(5:6,:) = v8;
    someData = uint8(payLoad);
    hdr = uint8([8 6 7 5 3 0]);

    hUdp.putData([hdr(:); someData(:)]);
        
    % increment counter
    l = l + 20;
    if l > 50000
        l = 0;
    end
end

hUdp.close();

