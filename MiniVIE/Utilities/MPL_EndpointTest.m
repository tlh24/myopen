% Solves the Flock of Birds portion of HW3

%% Quick test of vMPL / MPL control via VulcanX
%  Create the udp transmission via pnet
UdpLocalPort = 56789;
UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
UdpAddress = '127.0.0.1'; % '192.168.1.101';
% PnetClass(localPort,remotePort,remoteIP)
hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
hSink.initialize()

% Create the command encoder which translates joint angles to
% command bytes
mce = MPL.MudCommandEncoder;

handAngles = zeros(20,1);
%%
% Setup MiniVIE Utilities
MiniVIE.configurePath

T_Arm = makehgtform('translate',[0 -3 8],'yrotate',pi/2,'xrotate',pi/2);

% Plot the individual frames

% create all frames and show stick arm with cyninders
clf
ax = gca;
hold on
hGlobal = PlotUtils.triad(eye(4),2,ax,'Global');

hBase = PlotUtils.triad(T_Arm,1,ax,'ArmBase');

[X,Y,Z] = cylinder(0.2);
hBody = surf(X,Y,Z+0.3);
set(hBody,'Parent',hBase,'EdgeColor','None','FaceColor','m')

label = {'FE', '     AA' 'HR' '     EL'  'WR'};
for i = 1:length(label)
    h(i) = PlotUtils.triad(eye(4),1,ax,label{i});
    if i == 1
        set(h(i),'Parent',hBase);
    else
        set(h(i),'Parent',h(i-1));
    end
end

[X,Y,Z] = cylinder(0.2);
hBody = surf(X,2*Z+0.3,Y);
set(hBody,'Parent',h(3),'EdgeColor','None','FaceColor','c')

[X,Y,Z] = cylinder(0.2);
hForearm = surf(X,2*Z-2.3,Y);
set(hForearm,'Parent',h(5),'EdgeColor','None','FaceColor','Red')

view(65,20)
daspect([1 1 1])
axis([-4     8    -8     8    -2    12])
rotate3d
grid on

[T, A] = MPL_Frames([0 pi/2 pi/2 pi/2 0]);

for i = 1:size(A,3)
    set(h(i),'Matrix',A(:,:,i));
end

%%
try,hJoystick = JoyMexClass();catch;hJoystick =[];end
%%
% array of joint angles for arm (adjustable)
theta = [0 pi/2 pi/2 pi/2 pi/2];

[T, A] = MPL_Frames(theta);

StartStopForm([]);
while StartStopForm
    pause(0.05)
    
    
    %     hJoystick.getdata();
    %     joyVal = hJoystick.axisVal(1:3);
    %     joyVal(abs(joyVal) < 0.1) = 0;
    %
    %     endPtVelocities = joyVal(:)/10;
    endPtVelocities = [-.1 .1 -.1];  % problem with enabled joint limits
%     endPtVelocities = [-.1 -.1 .1];
    
    [jV, ~, theta] = MPL_JacobianBound(theta, endPtVelocities);
    jV
    
    %     %%
    %     theta(:) = 0
    %     theta(2) = deg2rad(90)
    %     theta(3) = deg2rad(90)
    %     theta(4) = deg2rad(90)
    
    [T, A] = MPL_Frames(theta);
    for i = 1:size(A,3),set(h(i),'Matrix',A(:,:,i));end
    upperArmAngles = [theta(1) theta(2)-pi/2 -(theta(3)-pi/2) theta(4) -(theta(5)-pi/2) 0 0];
    
    hSink.putData(mce.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20)));

    %
    T(1:3,4,end)'
    %
    
end

return
%%

% array of joint angles for arm (adjustable)
offset = [0 pi/2 pi/2 0 pi/2];
theta = [0 0 0 1 0 ] + offset;
[T, A] = MPL_Frames(theta);

for i = 1:size(A,3)
    set(h(i),'Matrix',A(:,:,i));
end
%
T(1:3,4,end)';
%
upperArmAngles = [theta(1) theta(2)-pi/2 -(theta(3)-pi/2) theta(4) -(theta(5)-pi/2) 0 0];
msg = mce.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
hSink.putData(msg);




