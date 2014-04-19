% sensor read test.  Note that the
hNfu = obj.Presentation.hNfu

StartStopForm([]);

numBuffered = length(hNfu.UdpBuffer2);

while StartStopForm
    hNfu.update
    mostRecent = hNfu.ptr2-1;
    if mostRecent == 0
        mostRecent = numBuffered;
    end
    hNfu.UdpBuffer2{mostRecent}
    drawnow
end

%%

jointAngles = zeros(1,27);

jointAngles(7+MPL.MudCommandEncoder.THUMB_MCP) = 1

hNfu.sendAllJoints(jointAngles)

for i = 1:10
hNfu.update
mostRecent = hNfu.ptr2-1;
if mostRecent == 0
    mostRecent = numBuffered;
end
hNfu.UdpBuffer2{mostRecent}
pause(0.02)
end
