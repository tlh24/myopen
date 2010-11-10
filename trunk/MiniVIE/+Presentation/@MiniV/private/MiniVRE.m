function [sys,x0,str,ts] = MiniVRE(t,x,u,flag)

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
sizes.NumOutputs     = 0;
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
function LocalArmSets(time,ud,u)

if ~isequal(size(u),[8 1])
    error('Wrong Vector Size')
end

mode = 'angles';
switch mode
    case 'normalized'
        ud.KChain = f_SetJointAngle(ud.KChain,3,2,u(1));  %% Shoulder Flexion
        ud.KChain = f_SetJointAngle(ud.KChain,3,3,u(2));  %% Shoulder Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,3,1,u(3));  %% Shoulder Rotation
        ud.KChain = f_SetJointAngle(ud.KChain,4,3,u(4));  %% Elbow Flexion
        ud.KChain = f_SetJointAngle(ud.KChain,5,3,u(5));  %% Wrist Flexion
        ud.KChain = f_SetJointAngle(ud.KChain,5,1,u(6));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,5,2,u(7)); %% Wrist Rotation
        ud.KChain = f_SetJointAngle(ud.KChain,[8:20],3,u(8)); % Hand Open/Close
    case 'angles'
        ud.KChain(3).Joint_Param(2) = u(1);  %% Shoulder Flexion
        ud.KChain(3).Joint_Param(2) = u(2);  %% Shoulder Ab/Adduction
        ud.KChain(3).Joint_Param(2) = u(3);  %% Shoulder Rotation
        ud.KChain(4).Joint_Param(2) = u(4);  %% Elbow Flexion
        ud.KChain(5).Joint_Param(2) = u(5);  %% Wrist Flexion
        ud.KChain(5).Joint_Param(2) = u(6);  %% Wrist Ab/Adduction
        ud.KChain(5).Joint_Param(2) = u(7);  %% Wrist Rotation
        list = 8:20;
        for i = 1:length(list)
            ud.KChain(list(i)).Joint_Param(3) = u(8);  %% Hand Open/Close
        end
end

f_KChain_Redraw(ud.KChain,2,0,0);

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
  'Units',           'pixel',...
  'Position',        [100 100 400 500],...
  'Name',            FigureName,...
  'NumberTitle',     'off',...
  'menubar',         'none',...
  'IntegerHandle',   'off',...
  'HandleVisibility','callback',...
  'Resize',          'on',...
  'DeleteFcn',       'ArmSFunction([],[],[],''DeleteFigure'')',...
  'CloseRequestFcn', 'ArmSFunction([],[],[],''Close'');');
AxesH = axes(...
  'Parent',  Fig,...
  'Units',   'pixel',...
  'Visible', 'off');
%
% all the HG objects are created, store them into the Figure's UserData
%
set(Fig,'HandleVisibility','on')
set(Fig,'Renderer','OpenGL','DoubleBuffer','on')
KChain = f_SetupKinematics(AxesH);
KChain = f_KChain_Redraw(KChain,2,0,0);
axis('tight')
axis([0 .3 -.3 .3 0.36 0.7])
daspect([1 1 1])
set(gca,'CameraUpVector',[0 1 0])
view(AxesH,0,0);
lighting gouraud
material dull
camlight left
set(Fig,'HandleVisibility','callback')

FigUD.KChain       = KChain;
FigUD.Block        = get_param(gcbh,'Handle');
set(Fig,'UserData',FigUD);

drawnow

%
% store the figure handle in the animation block's UserData
%
set_param(gcbh,'UserData',Fig);

% end LocalArmInit
