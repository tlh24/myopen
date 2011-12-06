function [sys,x0,str,ts] = ArmSFunction(t,x,u,flag)

% Plots every major integration step, but has no states of its own
switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
    sys=mdlUpdate(t,x,u);

  %%%%%%%%%%%%%%%%
  % Unused flags %
  %%%%%%%%%%%%%%%%
  case { 1, 3, 4, 9 },
    sys = [];
    
  %%%%%%%%%
  % Close %
  %%%%%%%%%
  case 'Close',
    LocalClose

  %%%%%%%%%%%%%%%
  % DeleteBlock %
  %%%%%%%%%%%%%%%
  case 'DeleteBlock',
    LocalDeleteBlock
    
  %%%%%%%%%%%%%%%
  % DeleteFigure %
  %%%%%%%%%%%%%%%
  case 'DeleteFigure',
    LocalDeleteFigure
   
  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end

% end pendan

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts]=mdlInitializeSizes

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 2;
sizes.NumInputs      = 8;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;

sys = simsizes(sizes);

%
% initialize the initial conditions
%
x0  = [];

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times, for the pendulum demo,
% the animation is updated every 0.1 seconds
%
%ts  = [0.1 0];
ts  = [0 0];

%
% create the figure, if necessary
%
LocalArmInit;

% end mdlInitializeSizes

%
%=============================================================================
% mdlUpdate
% Update the pendulum animation.
%=============================================================================
%
function sys=mdlUpdate(t,x,u)

fig = get_param(gcbh,'UserData');
if ishandle(fig),
  if strcmp(get(fig,'Visible'),'on'),
    ud = get(fig,'UserData');
    LocalArmSets(t,ud,u);
    set(fig,'UserData',ud);
  end
end;
 
sys = [];

% end mdlUpdate

%
%=============================================================================
% LocalClose
% The callback function for the animation window close button.  Delete
% the animation figure window.
%=============================================================================
%
function LocalClose

delete(gcbf)

% end LocalClose

%
%=============================================================================
% LocalDeleteBlock
% The animation block is being deleted, delete the associated figure.
%=============================================================================
%
function LocalDeleteBlock

fig = get_param(gcbh,'UserData');
if ishandle(fig),
  delete(fig);
  set_param(gcbh,'UserData',-1)
end

% end LocalDeleteBlock

%
%=============================================================================
% LocalDeleteFigure
% The animation figure is being deleted, set the S-function UserData to -1.
%=============================================================================
%
function LocalDeleteFigure

ud = get(gcbf,'UserData');
set_param(ud.Block,'UserData',-1);
  
% end LocalDeleteFigure

%
%=============================================================================
% LocalArmSets
% Local function to set the position of the graphics objects in the
% inverted pendulum animation window.
%=============================================================================
%
function ud = LocalArmSets(time,ud,u)

if ~isequal(size(u),[8 1])
    error('Wrong Vector Size')
end

ud.KChain = f_SetJointAngle(ud.KChain,4,3,u(1));
ud.KChain = f_SetJointAngle(ud.KChain,5,3,u(2));
ud.KChain = f_SetJointAngle(ud.KChain,6,3,u(3));
ud.KChain = f_SetJointAngle(ud.KChain,7,3,u(4));
ud.KChain = f_SetJointAngle(ud.KChain,8,3,u(5));
ud.KChain = f_SetJointAngle(ud.KChain,9,3,u(6));
ud.KChain = f_SetJointAngle(ud.KChain,[10 11],3,u(7));
ud.KChain = f_SetJointAngle(ud.KChain,[12:20],3,u(8));

ud.KChain = f_KChain_Redraw(ud.KChain,2,0,0);

%% Collision check
iSegment = 11;
iParent = 10;
Joint_Loc = ud.KChain(iSegment).Joint_Loc;
F_Loc = [f_make_R(Joint_Loc(1:3)) Joint_Loc(4:6)'; 0 0 0 1];

F_link = ud.KChain(iParent).F_link*F_Loc;
Fing_Pos = F_link(1:3,4);

dist = f_magnitude(ud.Ball.center,Fing_Pos);
set(ud.Ball.hLine,'XData',[Fing_Pos(1),ud.Ball.center(1)])
set(ud.Ball.hLine,'YData',[Fing_Pos(2),ud.Ball.center(2)])
set(ud.Ball.hLine,'ZData',[Fing_Pos(3),ud.Ball.center(3)])

if dist < ud.Ball.radius
    set(ud.Ball.handle,'FaceColor','Yellow')
else
    set(ud.Ball.handle,'FaceColor',ud.Ball.color)
end




% Force plot to be drawn
drawnow

% end LocalArmSets

%
%=============================================================================
% LocalArmInit
% Local function to initialize the pendulum animation.  If the animation
% window already exists, it is brought to the front.  Otherwise, a new
% figure window is created.
%=============================================================================
%
function LocalArmInit

%
% The name of the reference is derived from the name of the
% subsystem block that owns the pendulum animation S-function block.
% This subsystem is the current system and is assumed to be the same
% layer at which the reference block resides.
%
sys = get_param(gcs,'Parent');

%
% The animation figure handle is stored in the pendulum block's UserData.
% If it exists, initialize the reference mark, time, cart, and pendulum
% positions/strings/etc.
%
Fig = get_param(gcbh,'UserData');
if ishandle(Fig),
  FigUD = get(Fig,'UserData');
      
  %
  % bring it to the front
  %
  figure(Fig);
  return
end

%
% the animation figure doesn't exist, create a new one and store its
% handle in the animation block's UserData
%
FigureName = 'Arm Visualization';
Fig = figure(...
  'Units',           'normalized',... 'pixel',...
  'Position',        [0.05 0.05 0.9 0.85],...[100 100 400 500],...
  'Name',            FigureName,...
  'NumberTitle',     'off',...
  'menubar',         'none',...
  'IntegerHandle',   'off',...
  'HandleVisibility','callback',...
  'Resize',          'on',...
  'Renderer',        'OpenGL',...
  'DoubleBuffer',    'on',...
  'DeleteFcn',       'ArmSFunction([],[],[],''DeleteFigure'')',...
  'CloseRequestFcn', 'ArmSFunction([],[],[],''Close'');');
hAxes = axes(...
  'Parent',  Fig,...
  'Units',   'pixel',...
  'Visible', 'off');
%
% all the HG objects are created, store them into the Figure's UserData
%
set(Fig,'HandleVisibility','on')
set(Fig,'Renderer','OpenGL','DoubleBuffer','on')
KChain = f_SetupKinematics(hAxes);
KChain = f_KChain_Redraw(KChain,2,0,0);

a = f_read_model('Ball.model');
BallColor = [1.0000    0.5020    0.2510]
hBall = f_show_surface(a,BallColor);


lighting gouraud
material dull
material dull
view(-180,-90)
camlight left
view(2);
camlight left
axis('tight')

% axis('tight')
% axis([0 .3 0.36 0.7 -.1 .2])
daspect([1 1 1])
% set(gca,'CameraUpVector',[0 1 0])
% view(hAxes,2);

set(hAxes,'CameraPositionMode','manual')
set(hAxes,'CameraPosition',[0.0559    5.2109   -4.1675])
set(hAxes,'CameraTargetMode','manual')
set(hAxes,'CameraTarget',[0.0639    0.5412    0.1239])
set(hAxes,'CameraUpVectorMode','manual')
set(hAxes,'CameraUpVector',[0.0122    0.6766    0.7362])
set(hAxes,'CameraViewAngleMode','manual')
set(hAxes,'CameraViewAngle',1.7849)

[c,r] = f_fit_sphere(a.nodeData')
hold on
hLine = plot(0);

Ball.handle = hBall;
Ball.center = c;
Ball.radius = r;
Ball.hLine = hLine;
Ball.color = BallColor;

set(Fig,'HandleVisibility','callback')

FigUD.KChain       = KChain;
FigUD.Ball         = Ball;
FigUD.Block        = get_param(gcbh,'Handle');
set(Fig,'UserData',FigUD);

drawnow

%
% store the figure handle in the animation block's UserData
%
set_param(gcbh,'UserData',Fig);

% end LocalArmInit
