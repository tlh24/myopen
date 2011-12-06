%% Demo the Arm Model:

% Setup a figure
figure(1); clf
set(gcf,'Renderer','OpenGL','DoubleBuffer','on')
% get axis handles for 2 different views
hAxes = [subplot(1,2,1) subplot(1,2,2)];

% Setup the graphics chain (Note builitin matlab functions such as rotate
% and hgtransform could have been used, but I prefer the manual control
% method here)
% Also note that if the graphics are destroyed (figure closed) then the
% model is destroyed
KChain = f_SetupKinematics(hAxes);

% Set axis limits, turn some lights on, etc.
%% -----------------------------------------------------------------------
axes(hAxes(1));
axis('off');
set(gca,'CameraUpVector',[0 1 0])
axis([0 .3 0.35 0.7 -.1 .2])
daspect([1 1 1])
lighting gouraud
material dull
view(2);
camlight left

%% -----------------------------------------------------------------------
axes(hAxes(2));
axis('off')
view(90,0);
set(gca,'CameraUpVector',[0 1 0])
axis([0 .3 0.35 0.7 -.1 .2])
daspect([1 1 1])
lighting gouraud
material dull
% camlight left
camlight(0,15);
camlight(120,15);
camlight(240,15);

drawnow

%% Now start moving things:
isWireframe = 0;
isTriad = 0;

pause(0.1)
%% Set elbow joint angle using degrees:
%% elbow flexion is Rz on segment 4
KChain(4).Joint_Param(3) = 45;
f_KChain_Redraw(KChain,2,isWireframe,isTriad);

pause(0.1)
%% Set wrist joint angle using a percentage of the total ROM:
%% wrist flexion is Rz on segment 5
KChain = f_SetJointAngle(KChain,5,3,0.75);
f_KChain_Redraw(KChain,2,isWireframe,isTriad);

%% Haversine Curve (wavey)
a = linspace(0,2*pi);
b = (1-cos(a))/2;
flex_angle = b; %% 0 to 1

% Start each finger at a different place on the curve
finger(1) = 1;
finger(2) = 11;
finger(3) = 21;
finger(4) = 31;

i = 0;step=3;nLoop = 2;
duty = 0.033; % (milliseconds), ~30 fps
for iloop = 1:nLoop
    for i = 1:100
        tic
        for iFinger = 1:4
            finger(iFinger) = finger(iFinger) + step;
            if finger(iFinger) > length(flex_angle),finger(iFinger) = finger(iFinger) - length(flex_angle);end
        end

        KChain = f_SetJointAngle(KChain,[ 9 10],3,flex_angle(finger(1)));
        KChain = f_SetJointAngle(KChain,[12 13],3,flex_angle(finger(2)));
        KChain = f_SetJointAngle(KChain,[15 16],3,flex_angle(finger(3)));
        KChain = f_SetJointAngle(KChain,[18 19],3,flex_angle(finger(4)));
        f_KChain_Redraw(KChain,2,isWireframe,isTriad);
        handles.KChain = KChain;
        drawnow
        pause(duty-toc)
    end
end

% Set all joints to 50% ROM position
KChain = f_SetJointAngle(KChain,1:19,1:3,0.5);
f_KChain_Redraw(KChain,2,isWireframe,isTriad);
