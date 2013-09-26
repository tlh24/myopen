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
sizes.NumOutputs     = 0;
sizes.NumInputs      = -1;
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
ts  = [-1 0];

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

try
ud = get(gcbf,'UserData');
set_param(ud.Block,'UserData',-1);
catch
end
  
% end LocalDeleteFigure

%
%=============================================================================
% LocalArmSets
% Local function to set the position of the graphics objects in the
% inverted pendulum animation window.
%=============================================================================
%
function LocalArmSets(time,ud,u)

% Use this so that the animation doesn't try to update every time step
refreshRate = 0.05;  %% [simulation] seconds
if rem(time,refreshRate)
    return
end

switch length(u)
    case 26
        u = u*180/pi; %% Convert radians to degrees
        AdAbOffset = -30;
        
        %% Per Actions ICD take radians in and update chain
        %% (+) Flex, (+) Ulnar / Adduction / toward Pinky unless otherwise
        %% stated!
        ud.KChain(3).Joint_Param(2) = -u(1);                %% Shoulder Flexion (+) Flex
        ud.KChain(3).Joint_Param(3) = AdAbOffset-(u(2));    %% Shoulder Ab/Adduction (+) Add
        ud.KChain(3).Joint_Param(1) = u(3);                 %% Shoulder Rotation (+) Internal
        ud.KChain(4).Joint_Param(3) = u(4);                 %% Elbow Flexion (+) Flex
        ud.KChain(5).Joint_Param(2) = -u(5);                %% Wrist Rotation (+) Pro
        ud.KChain(5).Joint_Param(1) = u(6);                 %% Wrist Ab/Adduction (+) Ulnar
        ud.KChain(5).Joint_Param(3) = -u(7);                %% Wrist Flexion (+) Flex

        ud.KChain(9).Joint_Param(1)  = u(8);                % Index Ab/Ad (+) Add
        ud.KChain(9).Joint_Param(3)  = -u(9);               % Index MCP
        ud.KChain(10).Joint_Param(3)  = -u(10);             % Index PIP
        ud.KChain(11).Joint_Param(3)  = -u(11);             % Index DIP

        ud.KChain(12).Joint_Param(3)  = -u(12);             % Middle MCP
        ud.KChain(13).Joint_Param(3)  = -u(13);             % Middle PIP
        ud.KChain(14).Joint_Param(3)  = -u(14);             % Middle DIP

        ud.KChain(15).Joint_Param(1)  = u(15);              % Ring Ab/Ad
        ud.KChain(15).Joint_Param(3)  = -u(16);             % Ring MCP
        ud.KChain(16).Joint_Param(3)  = -u(17);             % Ring PIP
        ud.KChain(17).Joint_Param(3)  = -u(18);             % Ring DIP

        ud.KChain(18).Joint_Param(1)  = u(19);              % Little Ab/Ad
        ud.KChain(18).Joint_Param(3)  = -u(20);             % Little MCP
        ud.KChain(19).Joint_Param(3)  = -u(21);             % Little PIP
        ud.KChain(20).Joint_Param(3)  = -u(22);             % Little DIP

        ud.KChain(6).Joint_Param(2)  = u(23);               % Thumb Ab/Ad
        ud.KChain(6).Joint_Param(1)  = -u(24);              % Thumb Rot (+) Internal
        ud.KChain(7).Joint_Param(3)  = -u(25);              % Thumb MCP
        ud.KChain(8).Joint_Param(3)  = -u(26);              % Thumb IP

        f_KChain_Redraw(ud.KChain,2,0,0);

        % Force plot to be drawn
        drawnow

    case {16,10}
        %% Per MSMS take radians in and updates chain
        ud.KChain(3).Joint_Param(2) = -u(1)*180/pi;  %% Shoulder Flexion
%         ud.KChain = f_SetJointAngle(ud.KChain,3,3,u(2));  %% Shoulder Ab/Adduction
        ud.KChain(3).Joint_Param(1) = u(2)*180/pi;  %% Shoulder Rotation
        ud.KChain(4).Joint_Param(3) = u(3)*180/pi;  %% Elbow Flexion
        ud.KChain(5).Joint_Param(2) = -u(4)*180/pi; %% Wrist Rotation
        ud.KChain(5).Joint_Param(3) = u(5)*180/pi;  %% Wrist Flexion
%         ud.KChain = f_SetJointAngle(ud.KChain,5,1,u(6));  %% Wrist Ab/Adduction
%         ud.KChain = f_SetJointAngle(ud.KChain,[8:20],3,u(8)); % Hand Open/Close
        ud.KChain(12).Joint_Param(3) = -u(6)*180/pi; % Middle
        ud.KChain(9).Joint_Param(3)  = -u(7)*180/pi; % Index
        ud.KChain(6).Joint_Param(3)  = u(8)*180/pi; % Thumb
        ud.KChain(15).Joint_Param(3)  = -u(9)*180/pi; % Ring
        ud.KChain(18).Joint_Param(3)  = -u(10)*180/pi; % Pinky

        f_KChain_Redraw(ud.KChain,2,0,0);

        % Force plot to be drawn
        drawnow
    case 12
        fingerOffset = -30;
        u(1); %% null
        ud.KChain(3).Joint_Param(1) = 0;
        %% Per MSMS take radians in and updates chain
        ud.KChain(3).Joint_Param(3) = u(2)*180/pi;  %% Shoulder Flexion
%         ud.KChain = f_SetJointAngle(ud.KChain,3,3,u(2));  %% Shoulder Ab/Adduction
        ud.KChain(3).Joint_Param(1) = -u(3)*180/pi;  %% Shoulder Rotation
        ud.KChain(4).Joint_Param(3) = u(4)*180/pi;  %% Elbow Flexion
        ud.KChain(5).Joint_Param(2) = -u(5)*180/pi; %% Wrist Rotation
        ud.KChain(5).Joint_Param(3) = -u(6)*180/pi;  %% Wrist Flexion
%         ud.KChain = f_SetJointAngle(ud.KChain,5,1,u(6));  %% Wrist Ab/Adduction
%         ud.KChain = f_SetJointAngle(ud.KChain,[8:20],3,u(8)); % Hand Open/Close
        ud.KChain(12).Joint_Param(3) = -u(7)*180/pi + fingerOffset; % Middle
        ud.KChain(9).Joint_Param(3)  = -u(8)*180/pi + fingerOffset; % Index
        ud.KChain(6).Joint_Param(3)  = u(9)*180/pi - fingerOffset; % Thumb
        ud.KChain(15).Joint_Param(3)  = -u(10)*180/pi + fingerOffset; % Ring
        ud.KChain(18).Joint_Param(3)  = -u(11)*180/pi + fingerOffset; % Pinky
        u(12); %% null

        f_KChain_Redraw(ud.KChain,2,0,0);

        % Force plot to be drawn
        drawnow
    case 8
        ud.KChain = f_SetJointAngle(ud.KChain,3,2,u(1));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,3,3,u(2));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,3,1,u(3));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,4,2,u(4));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,5,1,u(5));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,5,2,u(6));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,5,3,u(7));  %% Wrist Ab/Adduction
        ud.KChain = f_SetJointAngle(ud.KChain,[8:20],3,u(8)); % Hand Open/Close
        
        f_KChain_Redraw(ud.KChain,2,0,0);

        % Force plot to be drawn
        drawnow
    case 1
        disp('No Data');
    otherwise
        length(u)
        error('Wrong Vector Size')
end

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
  'toolbar',         'figure',...
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
