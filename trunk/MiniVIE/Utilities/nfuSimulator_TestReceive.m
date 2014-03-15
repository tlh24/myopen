function nfuSimulator_TestReceive
% Simulate nfu messages and data response

% may be needed for cleanup
% pnet('closeall')

% Test streaming:

% Step 3: create a seperate port from which we will send data
udpReceiveSocket = pnet('udpsocket',9027);
% check for validity
assert(udpReceiveSocket >= 0,'Failed to open send socket');
% make non-blocking
pnet(udpReceiveSocket, 'setreadtimeout',0)

%%
% Determine expected packet size
numPacketHeaderBytes = 6;
numSamplesPerPacket = 20;
numSampleHeaderBytes = 4;
numChannelsPerPacket = 16;
numBytesPerChannel = 2;
numBytesPerSample = numChannelsPerPacket*numBytesPerChannel + numSampleHeaderBytes;
cpchpacketSize = numPacketHeaderBytes+numBytesPerSample*numSamplesPerPacket;




%%
len = pnet(udpReceiveSocket,'readpacket','noblock');
assert(len > 0,'No Data')

%data=pnet(udpReceiveSocket,'read' [,size] [,datatype] [,swapping] [,'view'] [,'noblock'])
stream = pnet(udpReceiveSocket,'read',len,'UINT8','noblock');

assert(length(stream) == cpchpacketSize,'Packet size mismatch')

% First 6 bytes of messgae are global header
data = reshape(stream(numPacketHeaderBytes+1:cpchpacketSize),numBytesPerSample,numSamplesPerPacket);

% First 5 bytes per sample are header
databytes = data(numSampleHeaderBytes+1:end,:);
convertedFrame = reshape(typecast(databytes(:),'int16'),numChannelsPerPacket,numSamplesPerPacket);

convertedFrame

%%
pnet(udpReceiveSocket,'close');
