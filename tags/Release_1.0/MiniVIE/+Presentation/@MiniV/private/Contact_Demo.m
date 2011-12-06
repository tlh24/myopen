%% Demo the Arm Model:

% Setup a figure
figure(1); clf
set(gcf,'Renderer','OpenGL','DoubleBuffer','on','units','normalized','position',[0.05 0.05 0.9 0.85])
hAxes = gca;
KChain = f_SetupKinematics(hAxes);

a = f_stlMesh_to_surface(f_read_stl('Ball.stl'));
ballColor = [1.0000    0.5020    0.2510]
hBall = f_show_surface(a,ballColor );

% Set axis limits, turn some lights on, etc.
%% -----------------------------------------------------------------------
axes(hAxes(1));
axis('off');
set(gca,'CameraUpVector',[0 1 0])
daspect([1 1 1])
lighting gouraud
material dull
view(-180,-90)
camlight left
view(2);
camlight left
axis('tight')

set(hAxes,'CameraPositionMode','manual')
set(hAxes,'CameraPosition',[0.0559    5.2109   -4.1675])
set(hAxes,'CameraTargetMode','manual')
set(hAxes,'CameraTarget',[0.0639    0.5412    0.1239])
set(hAxes,'CameraUpVectorMode','manual')
set(hAxes,'CameraUpVector',[0.0122    0.6766    0.7362])
set(hAxes,'CameraViewAngleMode','manual')
set(hAxes,'CameraViewAngle',1.7849)

%% Now start moving things:
isWireframe = 0;
isTriad = 0;

f_KChain_Redraw(KChain,2,isWireframe,isTriad);

Ball_Loc = [0.1000    0.4977    0.1770]';

hold on

f_plot3(Ball_Loc,'r*');
rBall = 0.05;
hP = plot(0);
n = 50;
move = linspace(0,1,n)
for i = 1:n
    KChain = f_SetJointAngle(KChain,4,3,move(i));
    KChain = f_KChain_Redraw(KChain,2,isWireframe,isTriad);
    
    iSegment = 11;
    iParent = 10;
    Joint_Loc = KChain(iSegment).Joint_Loc;
    F_Loc = [f_make_R(Joint_Loc(1:3)) Joint_Loc(4:6)'; 0 0 0 1];
    
    F_link = KChain(iParent).F_link*F_Loc;
    Fing_Pos = F_link(1:3,4);
    
    dist = f_magnitude(Ball_Loc,Fing_Pos)
    set(hP,'XData',[Fing_Pos(1),Ball_Loc(1)])
    set(hP,'YData',[Fing_Pos(2),Ball_Loc(2)])
    set(hP,'ZData',[Fing_Pos(3),Ball_Loc(3)])
    
    if dist < rBall
        set(hBall,'FaceColor','Yellow')
    else
        set(hBall,'FaceColor',ballColor)
    end
    drawnow
    pause(0.01)
end
