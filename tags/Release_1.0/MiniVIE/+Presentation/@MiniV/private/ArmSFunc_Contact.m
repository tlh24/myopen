function [sys,x0,str,ts] = ArmSFunc_Contact(t,x,u,flag)
%SFUNTMPL General M-file S-function template
%   With M-file S-functions, you can define you own ordinary differential
%   equations (ODEs), discrete system equations, and/or just about
%   any type of algorithm to be used within a Simulink block diagram.
%
%   The general form of an M-File S-function syntax is:
%       [SYS,X0,STR,TS] = SFUNC(T,X,U,FLAG,P1,...,Pn)
%
%   What is returned by SFUNC at a given point in time, T, depends on the
%   value of the FLAG, the current state vector, X, and the current
%   input vector, U.
%
%   FLAG   RESULT             DESCRIPTION
%   -----  ------             --------------------------------------------
%   0      [SIZES,X0,STR,TS]  Initialization, return system sizes in SYS,
%                             initial state in X0, state ordering strings
%                             in STR, and sample times in TS.
%   1      DX                 Return continuous state derivatives in SYS.
%   2      DS                 Update discrete states SYS = X(n+1)
%   3      Y                  Return outputs in SYS.
%   4      TNEXT              Return next time hit for variable step sample
%                             time in SYS.
%   5                         Reserved for future (root finding).
%   9      []                 Termination, perform any cleanup SYS=[].
%
%
%   The state vectors, X and X0 consists of continuous states followed
%   by discrete states.
%
%   Optional parameters, P1,...,Pn can be provided to the S-function and
%   used during any FLAG operation.
%
%   When SFUNC is called with FLAG = 0, the following information
%   should be returned:
%
%      SYS(1) = Number of continuous states.
%      SYS(2) = Number of discrete states.
%      SYS(3) = Number of outputs.
%      SYS(4) = Number of inputs.
%               Any of the first four elements in SYS can be specified
%               as -1 indicating that they are dynamically sized. The
%               actual length for all other flags will be equal to the
%               length of the input, U.
%      SYS(5) = Reserved for root finding. Must be zero.
%      SYS(6) = Direct feedthrough flag (1=yes, 0=no). The s-function
%               has direct feedthrough if U is used during the FLAG=3
%               call. Setting this to 0 is akin to making a promise that
%               U will not be used during FLAG=3. If you break the promise
%               then unpredictable results will occur.
%      SYS(7) = Number of sample times. This is the number of rows in TS.
%
%
%      X0     = Initial state conditions or [] if no states.
%
%      STR    = State ordering strings which is generally specified as [].
%
%      TS     = An m-by-2 matrix containing the sample time
%               (period, offset) information. Where m = number of sample
%               times. The ordering of the sample times must be:
%
%               TS = [0      0,      : Continuous sample time.
%                     0      1,      : Continuous, but fixed in minor step
%                                      sample time.
%                     PERIOD OFFSET, : Discrete sample time where
%                                      PERIOD > 0 & OFFSET < PERIOD.
%                     -2     0];     : Variable step discrete sample time
%                                      where FLAG=4 is used to get time of
%                                      next hit.
%
%               There can be more than one sample time providing
%               they are ordered such that they are monotonically
%               increasing. Only the needed sample times should be
%               specified in TS. When specifying than one
%               sample time, you must check for sample hits explicitly by
%               seeing if
%                  abs(round((T-OFFSET)/PERIOD) - (T-OFFSET)/PERIOD)
%               is within a specified tolerance, generally 1e-8. This
%               tolerance is dependent upon your model's sampling times
%               and simulation time.
%
%               You can also specify that the sample time of the S-function
%               is inherited from the driving block. For functions which
%               change during minor steps, this is done by
%               specifying SYS(7) = 1 and TS = [-1 0]. For functions which
%               are held during minor steps, this is done by specifying
%               SYS(7) = 1 and TS = [-1 1].

%   Copyright 1990-2002 The MathWorks, Inc.
%   $Revision$

%
% The following outlines the general structure of an S-function.
%
switch flag,

    %%%%%%%%%%%%%%%%%%
    % Initialization %
    %%%%%%%%%%%%%%%%%%
    case 0,
        [sys,x0,str,ts]=mdlInitializeSizes;

        %%%%%%%%%%%%%%%
        % Derivatives %
        %%%%%%%%%%%%%%%
    case 1,
        sys=mdlDerivatives(t,x,u);

        %%%%%%%%%%
        % Update %
        %%%%%%%%%%
    case 2,
        sys=mdlUpdate(t,x,u);

        %%%%%%%%%%%
        % Outputs %
        %%%%%%%%%%%
    case 3,
        sys=mdlOutputs(t,x,u);

        %%%%%%%%%%%%%%%%%%%%%%%
        % GetTimeOfNextVarHit %
        %%%%%%%%%%%%%%%%%%%%%%%
    case 4,
        sys=mdlGetTimeOfNextVarHit(t,x,u);

        %%%%%%%%%%%%%
        % Terminate %
        %%%%%%%%%%%%%
    case 9,
        sys=mdlTerminate(t,x,u);

        %%%%%%%%%%%%%%%%%%%%
        % Unexpected flags %
        %%%%%%%%%%%%%%%%%%%%
    otherwise
        error(['Unhandled flag = ',num2str(flag)]);

end

% end sfuntmpl

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
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 2;
sizes.NumInputs      = 8;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

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
% initialize the array of sample times
%
ts  = [0 0];

syst = get_param(gcs,'Parent');
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

set_param(gcbh,'UserData',Fig);

% end mdlInitializeSizes

%
%=============================================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%=============================================================================
%
function sys=mdlDerivatives(t,x,u)

sys = [];

% end mdlDerivatives

%
%=============================================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, and major time step
% requirements.
%=============================================================================
%
function sys=mdlUpdate(t,x,u)

sys = [];

% end mdlUpdate

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u)

sys = [];

fig = get_param(gcbh,'UserData');
if ishandle(fig),
    if strcmp(get(fig,'Visible'),'on'),
        ud = get(fig,'UserData');
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
        
        %% If hand is close to ball
        if dist < ud.Ball.radius
            set(ud.Ball.handle,'FaceColor','Yellow')
            sys = [2.5 2.5];
        else
            set(ud.Ball.handle,'FaceColor',ud.Ball.color)
            sys = [0 0];
        end

        % Force plot to be drawn
        drawnow

        set(fig,'UserData',ud);
    end
end;


% end mdlOutputs

%
%=============================================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block.  Note that the result is
% absolute time.  Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] in the sample time array in
% mdlInitializeSizes.
%=============================================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

% end mdlGetTimeOfNextVarHit

%
%=============================================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=============================================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate
