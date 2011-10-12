function varargout = ceven(varargin)
% CEVEN M-file for ceven.fig
%      CEVEN, by itself, creates a new CEVEN or raises the existing
%      singleton*.
%
%      H = CEVEN returns the handle to a new CEVEN or the handle to
%      the existing singleton*.
%
%      CEVEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CEVEN.M with the given input arguments.
%
%      CEVEN('Property','Value',...) creates a new CEVEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ceven_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ceven_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
%   Author: Blair Lock 
%           Thesis Release ver 1.0 - September 13th, 2005
%         (Don't worry, this code has grown beyond my comprehension too... 
%          If you think this is bad, check out the corresponding .fig file!)
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ceven

% Last Modified by GUIDE v2.5 26-Jan-2006 13:33:25
global limits default_limits 

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ceven_OpeningFcn, ...
                   'gui_OutputFcn',  @ceven_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --------------------------------------------------------------------
% --- Executes just before ceven is made visible.
function ceven_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ceven (see VARARGIN)

% Choose default command line output for ceven
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ceven wait for user response (see UIRESUME)
% uiwait(handles.armlayout);

clear global acq_list con_list ven_list pro_list                        % clear all global variables
global limits acq_list con_list ven_list pro_list mes_list

set(0,'defaultUicontrolBackgroundColor',[0.753 0.753 0.753]);           % set default bg to gray

objects = findobj('Type','uicontrol');                                  % populate list of all uicontrol objects
objectlist = get(objects,'Tag');                                        % associate tag names
acq_list = objects(strmatch('acq_',objectlist));                        % compile handle list of 'acq_' items
con_list = objects(strmatch('con_',objectlist));                        % compile handle list of 'con_' items
ven_list = objects(strmatch('ven_',objectlist));                        % compile handle list of 'ven_' items
pro_list = objects(strmatch('pro_',objectlist));                        % compile handle list of 'pro_' items
mes_list = objects(strmatch('mes_',objectlist));                        % compile handle list of 'mes_' items
                                                                        % fill array of handles for virt. env. toggle controls
tgl_hdls = [objects(strmatch('ven_s',objectlist)); ...                  % select any shoulder controls
            objects(strmatch('ven_e',objectlist)); ...                  % select any elbow controls
            objects(strmatch('ven_w',objectlist)); ...                  % select any wrist controls
            objects(strmatch('ven_h',objectlist)); ...                  % select any hand controls
            objects(strmatch('ven_t',objectlist))];                     % select any text fields
dum.handles = tgl_hdls;                                                 % group of ven handles that get toggled later
held = get(handles.ven_home,'UserData');                                % get stored info from home button
if isempty(held)                                                        % if no info is stored (first call)
    dum.tgl_flag = 0;                                                   % set toggle flag to 0
else                                                                    % if program is re-called
    dum.tgl_flag = held.tgl_flag;                                       % set toggle flag to stored value
end
set(handles.ven_home,'UserData',dum);                                   % store group of handles and toggle flag for later use

set(acq_list,'Visible','on')                                            % make acquisition interface visible
set([con_list; ven_list; pro_list; mes_list],'Visible','off')           % hide other interfaces
set(handles.a_toggle,'FontWeight','bold')                               % bold 'Acquisition' tab text
set([handles.c_toggle handles.v_toggle ...
    handles.m_toggle],'FontWeight','normal')                            % normal text for other tabs
set(gcf,'Renderer','painters')                                          % set to painters for controls
set(findobj('Type','surface','Visible','on'),'Visible','off');          % hide virtual arm surface objects

cardinfo = get(handles.acq_cardtype,'UserData');                        % recover structure of cardinfo per ad_card

idx = get(handles.acq_cardtype,'Value');                                % index of slected card in list
numchans = cardinfo.channels(idx);                                      % find number of channels for selected card
for i = (numchans+1):16                                                 % cycle through extra channels, and
    eval(['set(handles.acq_ch' num2str(i)...                            % turn their visibility off
            ',''Visible'',''off'')']);
end

virtualenv_OpeningFcn(gcf, eventdata, handles)                          % call to virtual environment setup

if isempty(held)                                                        % if function being called first time
    ceven('togglecontrols_Callback',hObject,[],guidata(hObject))        % toggle the virtual environment controls
end                                                                         


% --------------------------------------------------------------------
% --- Executes on callback.
function virtualenv_OpeningFcn(hObject, eventdata, handles, varargin)
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ceven (see VARARGIN)

global limits default_limits sl_moved UA_len FA_len PM_width

%%%%%%%%%%%%%%%%%%%%%%%%%%%% default arm dimensions 
EL_rad = 5;                                                             % Elbow radius
UA_len = 30;                                                            % Upper arm length
FA_len = 27;                                                            % Forearm length
PM_width = 10;                                                          % Palm width
len = UA_len+FA_len+PM_width;                                           % estimate of total arm length (for axis scaling)

%%%%%%%%%%%%%%%%%%%%%%%%%%%% axes properties and settings 
armview = findobj('Tag','ven_armview');                                 % handle to virt. env. axes
axes(armview)                                                           % set to current axes
testing = findobj('Tag','low_bar');                                     % dummy: handle to pin test bar (or empty)
cla                                                                     % clear the current axes
if isempty(varargin)                                                    % if there are no input arguments (not called from ven_home)
    axislimits = [-len*0.75 len*0.75 -len len/2 -len len/2];            % using arm length estimate
    axis(axislimits)                                                    % set axis limits
    axis equal                                                          % set to equal axes
    axis off                                                            % turn axis visibility off
    data.axislimits = axislimits;                                       % store for zoom reset use
    data.axisview = get(armview,'View');                                % store for rotation reset use
    set(armview,'UserData',data);                                       % storing
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% upper arm segment 
[X,Y,Z]=upper_arm(UA_len,EL_rad);                                       % Call to create upper arm surface data
UA=surface(X,Y,Z);
set(UA,'Tag','UA');                                                     % Name-Tagged for external use
rotate(UA,[0 0 1],90,[0 0 0])                                           % 90 rotation to hide drawing line

%%%%%%%%%%%%%%%%%%%%%%%%%%%% forearm segment 
[X,Y,Z] = forearm(FA_len,EL_rad);                                       % Call to create forearm surface data
FA=surface(X,Y,Z-UA_len);                                               % -UA_len translates in z
set(FA,'Tag','FA');                                                     % Name-Tagged for external use
rotate(FA,[1 0 0],-90,[0 0 -UA_len])                                    % 90 flexion about elbow joint

%%%%%%%%%%%%%%%%%%%%%%%%%%%% palm segment
[X,Y,Z] = palm(PM_width);                                               % Call to create palm surface data
PM=surface(X,Y-FA_len,Z-UA_len);                                        % -UA_len translates in z, -FA_len translates in y
set(PM,'Tag','PM');                                                     % Name-Tagged for external use
rotate(PM,[1 0 0],-90,[0 -FA_len -UA_len])                              % 90 rotation about wrist joint

%%%%%%%%%%%%%%%%%%%%%%%%%%%% primary finger segements 
% index
IS1_len = PM_width*0.38;
IS1_rad = PM_width.*0.1/1.2;
  % scale the segment
[X,Y,Z]=upper_arm(IS1_len,IS1_rad);
  % position the segment
IS1=surface(X+(0.04*PM_width),Y-FA_len-(0.73*PM_width),Z-UA_len+(0.25*PM_width));   
set(IS1,'Tag','IS1');               % Name-Tagged for external use        
rotate(IS1,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.73*PM_width) -UA_len+(0.25*PM_width)]) % 90 rotation about knuckle        

% middle
MS1_len = PM_width*0.41;
MS1_rad = PM_width.*0.1/1.2;
  % scale the segment
[X,Y,Z]=upper_arm(MS1_len,MS1_rad);
  % position the segment
MS1=surface(X+(0.04*PM_width),Y-FA_len-(0.74*PM_width),Z-UA_len+(0.05*PM_width)); 
set(MS1,'Tag','MS1');               % Name-Tagged for external use        
rotate(MS1,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.74*PM_width) -UA_len+(0.05*PM_width)]) % 90 rotation about knuckle        

% ring
RS1_len = PM_width*0.39;
RS1_rad = PM_width.*0.095/1.2;
  % scale the segment
[X,Y,Z]=upper_arm(RS1_len,RS1_rad);
  % position the segment
RS1=surface(X+(0.04*PM_width),Y-FA_len-(0.7*PM_width),Z-UA_len+(-0.15*PM_width));
set(RS1,'Tag','RS1');               % Name-Tagged for external use        
rotate(RS1,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.7*PM_width) -UA_len+(-0.15*PM_width)]) % 90 rotation about knuckle        

% pinky
PS1_len = PM_width*0.33;
PS1_rad = PM_width*0.09/1.2;
  % scale the segment
[X,Y,Z]=upper_arm(PS1_len,PS1_rad);
  % position the segment
PS1=surface(X+(0.04*PM_width),Y-FA_len-(0.67*PM_width),Z-UA_len+(-0.35*PM_width));
set(PS1,'Tag','PS1');               % Name-Tagged for external use        
rotate(PS1,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.67*PM_width) -UA_len+(-0.35*PM_width)]) % 90 rotation about knuckle        


%%%%%%%%%%%%%%%%%%%%%%%%%%%% secondary finger segements
% index
IS2_len = PM_width*0.24;
IS2_rad = IS1_rad;
[X,Y,Z]=finger_segment(IS2_len,IS2_rad);
  % position the segment
IS2=surface(X+(0.04*PM_width),Y-FA_len-(0.73*PM_width+IS1_len),Z-UA_len+(0.25*PM_width));  
set(IS2,'Tag','IS2');               % Name-Tagged for external use        
rotate(IS2,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.73*PM_width+IS1_len) -UA_len+(0.25*PM_width)]) % 90 rotation about knuckle        

% middle
MS2_len = PM_width*0.28;
MS2_rad = MS1_rad;
[X,Y,Z]=finger_segment(MS2_len,MS2_rad);
  % position the segment
MS2=surface(X+(0.04*PM_width),Y-FA_len-(0.74*PM_width+MS1_len),Z-UA_len+(0.05*PM_width));
set(MS2,'Tag','MS2');               % Name-Tagged for external use        
rotate(MS2,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.74*PM_width+MS1_len) -UA_len+(0.05*PM_width)]) % 90 rotation about knuckle        

% ring
RS2_len = PM_width*0.27;
RS2_rad = RS1_rad;
[X,Y,Z]=finger_segment(RS2_len,RS2_rad);
  % position the segment
RS2=surface(X+(0.04*PM_width),Y-FA_len-(0.7*PM_width+RS1_len),Z-UA_len+(-0.15*PM_width)); 
set(RS2,'Tag','RS2');               % Name-Tagged for external use        
rotate(RS2,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.7*PM_width+RS1_len) -UA_len+(-0.15*PM_width)]) % 90 rotation about knuckle        

% pinky
PS2_len = PM_width*0.21;
PS2_rad = PS1_rad;
[X,Y,Z]=finger_segment(PS2_len,PS2_rad);
  % position the segment
PS2=surface(X+(0.04*PM_width),Y-FA_len-(0.67*PM_width+PS1_len),Z-UA_len+(-0.35*PM_width)); 
set(PS2,'Tag','PS2');               % Name-Tagged for external use        
rotate(PS2,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.67*PM_width+PS1_len) -UA_len+(-0.35*PM_width)]) % 90 rotation about knuckle        


%%%%%%%%%%%%%%%%%%%%%%%%%%%% tertiary finger segements
% index
IS3_len = PM_width*0.24;
IS3_rad = IS2_rad;
  % scale the segment
[X,Y,Z]=fingertip(IS3_len,IS3_rad);
  % position the segment
IS3=surface(X+(0.04*PM_width),Y-FA_len-(0.73*PM_width+IS1_len+IS2_len),Z-UA_len+(0.25*PM_width)); 
set(IS3,'Tag','IS3');               % Name-Tagged for external use
rotate(IS3,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.73*PM_width+IS1_len+IS2_len) -UA_len+(0.25*PM_width)]) % 90 rotation about knuckle        

% middle
MS3_len = PM_width*0.25;
MS3_rad = MS2_rad;
  % scale the segment
[X,Y,Z]=fingertip(MS3_len,MS3_rad);
  % position the segment
MS3=surface(X+(0.04*PM_width),Y-FA_len-(0.74*PM_width+MS1_len+MS2_len),Z-UA_len+(0.05*PM_width));
set(MS3,'Tag','MS3');               % Name-Tagged for external use        
rotate(MS3,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.74*PM_width+MS1_len+MS2_len) -UA_len+(0.05*PM_width)]) % 90 rotation about knuckle        

% ring
RS3_len = PM_width*0.25;
RS3_rad = RS2_rad;
  % scale the segment
[X,Y,Z]=fingertip(RS3_len,RS3_rad);
  % position the segment
RS3=surface(X+(0.04*PM_width),Y-FA_len-(0.7*PM_width+RS1_len+RS2_len),Z-UA_len+(-0.15*PM_width));
set(RS3,'Tag','RS3');               % Name-Tagged for external use        
rotate(RS3,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.7*PM_width+RS1_len+RS2_len) -UA_len+(-0.15*PM_width)]) % 90 rotation about knuckle        

% pinky
PS3_len = PM_width*0.23;
PS3_rad = PS2_rad;
  % scale the segment
[X,Y,Z]=fingertip(PS3_len,PS3_rad);
  % position the segment
PS3=surface(X+(0.04*PM_width),Y-FA_len-(0.67*PM_width+PS1_len+PS2_len),Z-UA_len+(-0.35*PM_width));
set(PS3,'Tag','PS3');               % Name-Tagged for external use
rotate(PS3,[1 0 0],-90,[(0.04*PM_width) -FA_len-(0.67*PM_width+PS1_len+PS2_len) -UA_len+(-0.35*PM_width)]) % 90 rotation about knuckle        


%%%%%%%%%%%%%%%%%%%%%%%%%%%% thumb
% primary segment
TS1_len = PM_width*0.38;
TS1_rad = PM_width*0.12;
  % scale the segment
[X,Y,Z]=thumb_base(TS1_len,TS1_rad);
  % position the segment
TS1=surface(X+(-0.03*PM_width),Y-FA_len-(0.1*PM_width),Z-UA_len+(0.18*PM_width));
set(TS1,'Tag','TS1');               % Name-Tagged for external use        

% secondary segment
TS2_len = PM_width*0.28;
TS2_rad = TS1_rad/1.2;
  % scale the segment
[X,Y,Z]=upper_arm(TS2_len,TS2_rad);
  % position the segment
TS2=surface(X+(-0.03*PM_width),Y-FA_len-(0.1*PM_width),Z-UA_len+(0.18*PM_width-TS1_len));
set(TS2,'Tag','TS2');               % Name-Tagged for external use        

% tertiary segment
TS3_len = PM_width*0.27;
TS3_rad = TS2_rad;
  % scale the segment
[X,Y,Z]=fingertip(TS3_len,TS3_rad);
  % position the segment
TS3=surface(X+(-0.03*PM_width),Y-FA_len-(0.1*PM_width),Z-UA_len+(0.18*PM_width-TS1_len-TS2_len));
set(TS3,'Tag','TS3');               % Name-Tagged for external use        

rotate(TS3,[0 1 0],5,[(-0.03*PM_width) -FA_len-(0.1*PM_width) -UA_len+(0.18*PM_width-TS1_len-TS2_len)])
rotate([TS2 TS3],[0 1 0],25,[(-0.03*PM_width) -FA_len-(0.1*PM_width) -UA_len+(0.18*PM_width-TS1_len)])
rotate([TS1 TS2 TS3],[0 0 1],-60,[(-0.03*PM_width) -FA_len-(0.1*PM_width) -UA_len+(0.18*PM_width)])
rotate([TS1 TS2 TS3],[1 0 0],-145,[(-0.03*PM_width) -FA_len-(0.1*PM_width) -UA_len+(0.18*PM_width)])
rotate([TS1 TS2 TS3],[0 0 1],-13,[(-0.03*PM_width) -FA_len-(0.1*PM_width) -UA_len+(0.18*PM_width)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%% skin surface and scene lighting properties
if isempty(varargin)                                                    % check to see if a skin color is already chosen
    skin = [0.95 0.8 0.7];                                              % default skin color vector
else
    skin = varargin{1};                                                 % skin color input from home function
end
set(UA,'UserData',skin);                                                % store skin color in upper arm userdata
shading interp                                                          % set shading property
material dull                                                           % set material property
colormap(skin)                                                          % set colormap
arm = [UA FA PM IS1 MS1 RS1 PS1 TS1 ...                                 % compile list of arm surface objects 
       IS2 MS2 RS2 PS2 TS2 IS3 MS3 RS3 PS3 TS3];
set(arm,'FaceColor',skin);                                              % set arm color
lgt_color = [0.95 0.8 0.7];                                             % light color
if strfind(get(armview,'XDir'),'rev'),                                  % check to see if R or L arm (light positions are dependent)
    light('Position',[1000 1000 -1000],'Style','infinite','Color',lgt_color);
    light('Position',[-1000 1000 -1000],'Style','infinite','Color',lgt_color);
    light('Position',[10 -1000 10],'Style','infinite','Color',lgt_color);
else
    light('Position',[1000 -1000 1000],'Style','infinite','Color',lgt_color);
    light('Position',[-1000 -1000 1000],'Style','infinite','Color',lgt_color);
    light('Position',[10 1000 -10],'Style','infinite','Color',lgt_color);
end
lighting gouraud                                                        % gouraud not as good as phong but renders faster

%%%%%%%%%%%%%%%%%%%%%%%%%%%% reset clothespin test objects 
if ~isempty(testing)                                                    % if clothespin test is running
    pindraw;                                                            % call function to draw clothespin test setup
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% homing for user-changed home positions
for idx = 1:length(sl_moved)                                            % if any classes need to be homed to a custom location, handles in this array
    dum = get(sl_moved(idx), 'Tag');                                    % dummy: the tag name for associated handles
    eval([dum '_Callback(sl_moved(idx), eventdata, handles)'])          % callback to each control to adjust for other homes
end
sl_moved = [];                                                          % clear array of custom homes

%%%%%%%%%%%%%%%%%%%%%%%%%%%% ui-menu (right-click) items and callbacks 
try delete(findobj('Tag','armmenu')); catch, end
cmenu_arm = uicontextmenu;                                              % define the context menu
set(cmenu_arm,'Tag','armmenu');
set([hObject; arm'],'UIContextMenu',cmenu_arm);                         % associate with the context menu
cb1 = ['dum = findobj(''Type'',''axes'',''Tag'',''ven_armview'');'...   % callbacks
       'set(dum,''XDir'',''reverse'');'...                              
       'lights = findobj(dum,''Type'',''light'');'...
       'set(lights(1),''Position'',[1000 1000 -1000]);'...
       'set(lights(2),''Position'',[-1000 1000 -1000]);'...
       'set(lights(3),''Position'',[10 -1000 10]);'];        
cb2 = ['dum = findobj(''Type'',''axes'',''Tag'',''ven_armview'');'...   % callbacks
       'set(dum,''XDir'',''normal'');'...
       'lights = findobj(dum,''Type'',''light'');'...
       'set(lights(1),''Position'',[1000 -1000 1000]);'...
       'set(lights(2),''Position'',[-1000 -1000 1000]);'...
       'set(lights(3),''Position'',[10 1000 -10]);'];
item1 = uimenu(cmenu_arm, 'Label', 'Right Arm', 'Callback', cb1);       % define the context menu items
item2 = uimenu(cmenu_arm, 'Label', 'Left Arm', 'Callback', cb2);
item3 = uimenu(cmenu_arm, 'Label', 'Change Skin Color...', 'Callback', 'armcolor');
item4 = uimenu(cmenu_arm, 'Label', 'Zoom/Rotate...', 'Callback', 'armzoomrotate', 'Separator','on');
item5 = uimenu(cmenu_arm, 'Label', 'Toggle Manual Controls', 'Tag', 'ratio_holder', ...
        'Callback', 'ceven(''togglecontrols_Callback'',gcbo,[],guidata(gcbo))');
item6 = uimenu(cmenu_arm, 'Label', 'Adjust/Change Relative Joint Speeds...', 'Callback', 'armspeeds', 'Separator','on');
item7 = uimenu(cmenu_arm, 'Label', 'Turn Hand Auto Release OFF', 'Tag', 'hand_autorelease', 'UserData', 1, ...
        'Callback', 'ceven(''hand_autorelease_Callback'',gcbo,[],guidata(gcbo))', 'Separator','on');
item8 = uimenu(cmenu_arm, 'Label', 'Begin/Setup ''Clothespin'' Functionality Test...', 'Tag', 'function_test1', ...
        'Callback', 'ceven(''function_test1_Callback'',gcbo,[],guidata(gcbo))', 'Separator','on');

    
% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = ceven_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes during object closing.
function armlayout_CloseFcn(hObject, eventdata, handles)
% hObject    handle to armlayout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

close(findobj('Tag','contractionsgui2'));                               % if window is open, it will get closed
close(findobj('Tag','laq'));                                            % if window is open, it will get closed
close(findobj('Tag','armzoomrotate'));                                  % if window is open, it will get closed
close(findobj('Tag','armlimits'));                                      % if window is open, it will get closed
close(findobj('Tag','armcolor'));                                       % if window is open, it will get closed
close(findobj('Tag','arorder'));                                        % if window is open, it will get closed
close(findobj('Tag','paramsANN'));                                      % if window is open, it will get closed
close(findobj('Tag','paramsGMM'));                                      % if window is open, it will get closed
close(findobj('Tag','acqleg'));                                         % if window is open, it will get closed
close(findobj('Tag','unlisted'));                                       % if window is open, it will get closed
close(findobj('Tag','starterrors'));                                    % if window is open, it will get closed
close(findobj('Tag','armspeeds'));                                      % if window is open, it will get closed
close(findobj('Tag','clothespinSetup'));                                % if window is open, it will get closed

try
	UDP_close;
catch
end
clear global                                                            % clear all global variables
closereq                                                                % close ceven


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function armlayout_CreateFcn(hObject, eventdata, handles)
% hObject    handle to armlayout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits sl_moved gripFac

set(0,'defaultUicontrolBackgroundColor',[0.753 0.753 0.753]);           % set default bg to gray

%%%%%%%%%%%%%%%%%%%%%%%%%%%% structure array of limits and position
% shoulder flexion and extension
limits(1).shoulder_fe = -45;                                            % shoulder extension limit
limits(2).shoulder_fe = 90;                                             % shoulder flexion limit
limits(3).shoulder_fe = 0;                                              % shoulder initial angle
% shoulder pronation and supination
limits(1).shoulder_ps = -80;                                            % shoulder supination limit
limits(2).shoulder_ps = 80;                                             % shoulder pronation limit
limits(3).shoulder_ps = 0;                                              % shoulder initial angle
% shoulder abduction and adduction
limits(1).shoulder_aa = 0;                                              % shoulder abduction limit
limits(2).shoulder_aa = 150;                                            % shoulder adduction limit
limits(3).shoulder_aa = 0;                                              % shoulder initial angle
% elbow flexion and extension
limits(1).elbow_fe = 0;                                                 % elbow extension limit
limits(2).elbow_fe = 150;                                               % elbow flexion limit
limits(3).elbow_fe = 90;                                                % elbow initial angle
% wrist flexion and extension
limits(1).wrist_fe = -50;                                               % wrist extension limit
limits(2).wrist_fe = 55;                                                % wrist flexion limit
limits(3).wrist_fe = 0;                                                 % wrist initial angle
% wrist pronation and supination
limits(1).wrist_ps = -80;                                               % wrist supination limit
limits(2).wrist_ps = 90;                                                % wrist pronation limit
limits(3).wrist_ps = 0;                                                 % wrist initial angle
% wrist abduction and adduction
limits(1).wrist_aa = -25;                                               % wrist adduction limit
limits(2).wrist_aa = 60;                                                % wrist abduction limit
limits(3).wrist_aa = 0;                                                 % wrist initial angle
% hand power grip open and close
limits(1).hand_pg = 0;                                                  % hand open limit
limits(2).hand_pg = 45;                                                 % hand close limit
limits(3).hand_pg = 0;                                                  % hand initial position
% hand key grip open and close
limits(1).hand_kg = 0;                                                  % hand open limit
limits(2).hand_kg = 90;                                                 % hand close limit
limits(3).hand_kg = 0;                                                  % hand initial position
% hand fingers spread open and close
limits(1).hand_sf = 0;                                                  % hand close limit
limits(2).hand_sf = 18;                                                 % fingers spread limit
limits(3).hand_sf = 0;                                                  % hand initial position

gripFac.pg=0;                                                           % initial power grip factor
gripFac.kg=0;                                                           % initial key grip factor
gripFac.pgRng = abs(limits(2).hand_pg-limits(1).hand_pg);               % initial power grip range
gripFac.kgRng = abs(limits(2).hand_kg-limits(1).hand_kg);               % initial key grip range

default_limits = limits;                                                % initialize default limits
default_limits(4) = limits(3);                                          % add 4th set of data to default limits that is the original ven_home positions
sl_moved = [];                                                          % initialize empty vector to be used for user-specified homing 


% --------------------------------------------------------------------                                
% --- Executes on button press in a_toggle.
function a_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to a_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global acq_list con_list ven_list pro_list mes_list
set(hObject,'FontWeight','bold')                                        % bold tab text
set([handles.c_toggle handles.v_toggle handles.m_toggle],'FontWeight','normal')          % normal text for other tabs
set([con_list; ven_list; pro_list; mes_list],'Visible','off')           % hide other controls
set(gcf,'Renderer','painters')                                          % set to painters for controls
set(acq_list,'Visible','on')                                            % make acquisition interface visible
set(findobj('Type','surface','Visible','on'),'Visible','off');          % hide virtual arm surface objects
ceven('acq_cardtype_Callback',gcbo,[],guidata(gcbo))                    % hide extra channel select buttons


% --------------------------------------------------------------------
% --- Executes on button press in c_toggle.
function c_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global acq_list con_list ven_list pro_list mes_list
set(hObject,'FontWeight','bold')                                        % bold tab text
set([handles.a_toggle handles.v_toggle handles.m_toggle],'FontWeight','normal')          % normal text for other tabs
set([acq_list; ven_list; pro_list; mes_list],'Visible','off')           % hide other controls
set(gcf,'Renderer','painters')                                          % set to painters for controls
set(con_list,'Visible','on')                                            % make control interface visible
set(findobj('Type','surface','Visible','on'),'Visible','off');          % hide virtual arm surface objects
dispChannels(handles)                                                   % call to update 'available channel' buttons


% --------------------------------------------------------------------
% --- Executes on button press in v_toggle.
function v_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to v_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global acq_list con_list ven_list pro_list mes_list
set(hObject,'FontWeight','bold')                                        % bold tab text
set([handles.c_toggle handles.a_toggle handles.m_toggle],'FontWeight','normal')          % normal text for other tabs
tgl_hdls = [];                                                          % empty array 
dum = get(handles.ven_home,'UserData');                                 % retrieve toggle handles and flag
if dum.tgl_flag                                                         % if controls are 'off'
    tgl_hdls = dum.handles;                                             % array of handles to be kept 'off'
end
set(ven_list,'Visible','on')                                            % make virt. env. interface visible
set([con_list; acq_list; pro_list; tgl_hdls; mes_list],'Visible','off') % hide unwanted
set(findobj('Type','surface','Visible','off'),'Visible','on')           % unhide virtual arm surface objects
set(gcf,'Renderer','OpenGL')                                            % set to OpenGL for virtual images


% --------------------------------------------------------------------
% --- Executes on button press in m_toggle.
function m_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to m_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global acq_list con_list ven_list pro_list mes_list
set(hObject,'FontWeight','bold')                                        % bold tab text
set([handles.c_toggle handles.a_toggle handles.v_toggle],'FontWeight','normal')          % normal text for other tabs
set(mes_list,'Visible','on')                                            % make mes interface visible
set([con_list; acq_list; pro_list; ven_list],'Visible','off')           % hide unwanted
set(findobj('Type','surface','Visible','off'),'Visible','off')          % hide virtual arm surface objects



% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function acq_cardtype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acq_cardtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

set(0,'defaultUicontrolBackgroundColor',[0.753 0.753 0.753]);           % set default bg to gray
hw = waitbar(0.4,'Please wait, CEVEN is initializing ...');             % setup and display a waitbar

out = daqhwinfo;                                                        % poll computer for installed a/d hardware
waitbar(0.6)                                                            % advance to 60% of waitbar
dum = out.InstalledAdaptors;           
n=1;                                                                    % begin an array index
if ~isempty(strmatch('mcc',dum))                                        % if 'mcc' card is installed
    try                                                                 % monitor following statements for errors
        cards{n} = 'Measurement Computing';                             % store common name of card 
        out = daqhwinfo(analoginput('mcc',1));                          % find out number of associated channels
        cardinfo.channels(n) = out.TotalChannels;                       % store the associated number of channels
        cardinfo.min_fs(n) = 40;                                        % store min sampling frequency
        cardinfo.max_fs(n) = 100000/out.TotalChannels;                  % store max sampling frequency
        cardinfo.cur_fs(n) = 1024;                                      % store initial sampling frequency
        cardinfo.code(n) = {'mcc'};                                     % store Matlab card code
        n=n+1;                                                          % advance index counter
    catch, end                                                          % do nothing on error; continue along
end
if ~isempty(strmatch('nid',dum))                                        % if 'nidaq' card is installed
    try                                                                 % monitor following statements for errors
        cards{n} = 'National Instruments';                              % store common name of card
        out = daqhwinfo(analoginput('nidaq','Dev1'));                        % find out number of associated channels
        cardinfo.channels(n) = out.TotalChannels;                       % store the associated number of channels
        cardinfo.min_fs(n) = 40;                                        % store min sampling frequency
        cardinfo.max_fs(n) = 100000/out.TotalChannels;                  % store max sampling frequency
        cardinfo.cur_fs(n) = 1024;                                      % store initial sampling frequency
        cardinfo.code(n) = {'nidaq'};                                   % store Matlab card code
        n=n+1;                                                          % advance index counter
    catch, end                                                          % do nothing on error; continue along
end
if ~isempty(strmatch('win',dum))                                        % if 'winsound' card is installed
    try                                                                 % monitor following statements for errors
        cards{n} = 'Sound Card';                                        % store common name of card
        out = daqhwinfo(analoginput('winsound',0));                     % find out number of associated channels
        cardinfo.channels(n) = out.TotalChannels;                       % store the associated number of channels
        cardinfo.min_fs(n) = 100;                                       % store min sampling frequency
        cardinfo.max_fs(n) = 44100;                                     % store max sampling frequency
        cardinfo.cur_fs(n) = 1000;                                      % store initial sampling frequency
        cardinfo.code(n) = {'winsound'};                                % store Matlab card code
        n=n+1;                                                          % advance index counter
    catch, end                                                          % do nothing on error; continue along
    
cards{n} = 'Myopen Daq';                                        % store common name of card
cardinfo.channels(n) = 16;                       % store the associated number of channels
cardinfo.min_fs(n) = 1000;                                       % store min sampling frequency
cardinfo.max_fs(n) = 1000;                                     % store max sampling frequency
cardinfo.cur_fs(n) = 1000;                                      % store initial sampling frequency
cardinfo.code(n) = {'myopen'};                                % store Matlab card code
UDP_setup();
n=n+1;
end

waitbar(0.8)                                                            % advance to 80% of waitbar

set(hObject,'String',cards);                                            % store card names in pulldown-menu string list
set(hObject,'UserData',cardinfo);                                       % store the cards' associated info
set(findobj('Tag','acq_sampf'),...                                      % set the inital sample frequency
    'String',num2str(cardinfo.cur_fs(1)));
close(hw)                                                               % close waitbar


% --------------------------------------------------------------------
% --- Executes on selection change in acq_cardtype.
function acq_cardtype_Callback(hObject, eventdata, handles)
% hObject    handle to acq_cardtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cardinfo = get(handles.acq_cardtype,'UserData');                        % recover structure of cardinfo per ad_card
idx = get(handles.acq_cardtype,'Value');                                % index of slected card in list
numchans = cardinfo.channels(idx);                                      % find number of channels for selected card
for i = 1:numchans                                                      % cycle through appropriate channels, and
    eval(['set(handles.acq_ch' num2str(i) ',''Visible'',''on'')'])      % make them visible
end
for i = (numchans+1):16                                                 % cycle through extra channels, and
    eval(['set(handles.acq_ch' num2str(i) ',''Visible'',''off'')'])     % make them invisible
end
cur_fs = cardinfo.cur_fs(idx);                                          % get stored current sample frequency
set(handles.acq_sampf,'String',num2str(cur_fs));                        % update sample frequency text field


% --------------------------------------------------------------------
% --- Executes on string input in acq_sampf.
function acq_sampf_Callback(hObject, eventdata, handles)
% hObject    handle to acq_sampf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cardinfo = get(handles.acq_cardtype,'UserData');                        % recover structure of cardinfo per ad_card
idx = get(handles.acq_cardtype,'Value');                                % index of slected card in list
min_fs = cardinfo.min_fs(idx);                                          % get stored min sample frequency
max_fs = cardinfo.max_fs(idx);                                          % get stored max sample frequency
fs = max(min_fs, str2num(get(hObject,'String')));                       % ensure min is not exceeded by input
fs = min(fs, max_fs);                                                   % ensure max is not exceeded by input
set(hObject,'String',num2str(fs));                                      % overwrite with allowed value
cardinfo.cur_fs(idx) = fs;                                              % store current fs for later card selection
set(handles.acq_cardtype,'UserData',cardinfo);                          % store updated structure


% --------------------------------------------------------------------
% --- Executes on button press in acq_ch(1-16).
function acq_ch_Callback(hObject, eventdata, handles)
% hObject    handle to acq_ch(1-16) (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(hObject,'Value')                                                 % if button was selected
    set(hObject,'ForegroundColor',[0 0 0])                              % set text color to match plot color 
else                                                                    % if button was de-selected
    set(hObject,'ForegroundColor',[0.5 0.5 0.5])                        % return text color to default
end

cardinfo = get(handles.acq_cardtype,'UserData');                        % get selected a/d card
idx = get(handles.acq_cardtype,'Value');                                % get a/d card structure index
for i=1:cardinfo.channels(idx)                                          % cycle through all appropriate channels
    eval(['ch(i) = get(handles.acq_ch' num2str(i) ',''Value'');'])      % fill array of channel 'selected' values
end
ch = find(ch ~= 0);                                                     % indexes of selected buttons
if isempty(ch)                                                          % if no channels are selected
    set(handles.acq_liveSig,'Enable','off')                             % disable live signal viewing button
    set(handles.acq_start,'Enable','off')                               % disable start button
    set(handles.acq_abort,'Enable','off')                               % disable abort button
else                                                                    % if at least 1 channel is selected
    set(handles.acq_liveSig,'Enable','on')                              % enable live signal viewing button
    set(handles.acq_start,'Enable','on')                                % enable start button
end


% --------------------------------------------------------------------
% --- Executes on button press in acq_allchannel.
function acq_allchannel_Callback(hObject, eventdata, handles)
% hObject    handle to acq_allchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value = 1;                                                              % 'selected' value
color = '[0 0 0]';                                                      % black color for 'selected'
x = findobj('Type','uicontrol','Style','togglebutton');                 % populate list of all togglebutton uicontrol objects
objectlist = get(x,'Tag');                                              % associate tag names
x = x(strmatch('acq_ch',objectlist));                                   % compile handle list of 'acq_ch' items (the channel buttons)
x = get(x,'Value');
if sum(cell2mat(x))==16                                                 % if all are slected (special case)
    value = 0;                                                          % 'de-selected' value
    color = '[0.5 0.5 0.5]';                                            % gray color for 'de-selected'
end
for i=1:16                                                              % cycle through all channel buttons
    eval(['set(handles.acq_ch' num2str(i)...
          ',''Value'',' num2str(value)...                               % 'depress' channel buttons
          ',''ForegroundColor'',' color ')']);                          % color button number  
end

cardinfo = get(handles.acq_cardtype,'UserData');                        % get selected a/d card
idx = get(handles.acq_cardtype,'Value');                                % get a/d card structure index
for i=1:cardinfo.channels(idx)                                          % cycle through all appropriate channels
    eval(['ch(i) = get(handles.acq_ch' num2str(i) ',''Value'');'])      % fill array of channel 'selected' values
end
ch = find(ch ~= 0);                                                     % indexes of selected buttons
if isempty(ch)                                                          % if no channels are selected
    set(handles.acq_liveSig,'Enable','off')                             % disable live signal viewing button
    set(handles.acq_start,'Enable','off')                               % disable start button
    set(handles.acq_abort,'Enable','off')                               % disable abort button
else                                                                    % if at least 1 channel is selected
    set(handles.acq_liveSig,'Enable','on')                              % enable live signal viewing button
    set(handles.acq_start,'Enable','on')                                % enable start button
end


% --------------------------------------------------------------------
% --- Executes on button press in acq_liveSig.
function acq_liveSig_Callback(hObject, eventdata, handles)
% hObject    handle to acq_liveSig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global viewSigs 

cardinfo = get(handles.acq_cardtype,'UserData');                        % get selected a/d card
idx = get(handles.acq_cardtype,'Value');                                % get a/d card structure index
for i=1:cardinfo.channels(idx)                                          % cycle through all appropriate channels
    eval(['ch(i) = get(handles.acq_ch' num2str(i) ',''Value'');'])      % fill array of channel 'selected' values
end
ch = find(ch ~= 0);                                                     % indexes of selected buttons
viewSigs = [];                                                          % viewing signals structure
if ~isempty(ch)                                                         % if at least 1 channel is selected
    viewSigs.num_chans = cardinfo.channels(idx);                        % add number of channels to structure
    viewSigs.channels = ch;                                             % add selected channel indexes to structure
    viewSigs.card = char(cardinfo.code(idx));                           % add a/d card name to structure
    adaptor = viewSigs.card;                                            % string id of a/d card
    switch adaptor                                                      % select case based on current a/d card
        case 'winsound'                                                 % if sound card
            forceFS = 8000;                                             % force FS minimum
        case 'mcc'                                                      % if mcc card
            forceFS = 40;                                               % force FS minimum
        case 'nidaq'                                                    % if nidaq card
            forceFS = 40;                                               % force FS minimum
        case 'myopen'
            forceFS = 1000; 
    end
    viewSigs.sampRate = max([forceFS cardinfo.cur_fs(idx)]);            % add sample rate to structure (force soundcard min to 8Khz)
    laq                                                                 % call the live acquisition program
end


% --------------------------------------------------------------------
function acq_numtrials_Callback(hObject, eventdata, handles)
% hObject    handle to acq_numtrials (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

numtrials = str2num(get(handles.acq_numtrials,'String'));               % get number of trials from text box
if isempty(numtrials)                                                   % ensure a number was entered
    warndlg('Bad value for ''Number of Trials''','');                   % display reminder if not
    set(handles.acq_numtrials,'String','');                             % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
function acq_delay_Callback(hObject, eventdata, handles)
% hObject    handle to acq_numreps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delay = str2num(get(handles.acq_delay,'String'));                       % get contraction delay/interval from text box
if isempty(delay)                                                       % ensure a number was entered
    warndlg('Bad value for ''Contraction Delay/Interval''','');         % display reminder if not
    set(handles.acq_delay,'String','');                                 % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
function acq_duration_Callback(hObject, eventdata, handles)
% hObject    handle to acq_duration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

duration = str2num(get(handles.acq_duration,'String'));                 % get contraction duration from text box
if isempty(duration)                                                    % ensure a number was entered
    warndlg('Bad value for ''Contraction Duration''','');               % display reminder if not
    set(handles.acq_duration,'String','');                              % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes on button press in acq_contSetup.
function acq_contSetup_Callback(hObject, eventdata, handles)
% hObject    handle to acq_contSetup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

contractionsgui2                                                        % call contractions gui


% --------------------------------------------------------------------
function acq_numreps_Callback(hObject, eventdata, handles)
% hObject    handle to acq_numreps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

numreps = str2num(get(handles.acq_numreps,'String'));                   % get number of reps per contraction from text box
if isempty(numreps)                                                     % ensure a number was entered
    warndlg('Bad value for ''Repetitions per Contraction''','');        % display reminder if not
    set(handles.acq_numreps,'String','');                               % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function acq_rootDir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acq_rootDir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

dir = pwd;
dirDisp = [dir '\'];                                                    % add '\' to directory name
if length(dirDisp) > 40                                                 % if directory display string is too long for textbox
    dirDisp = ['...' dir(length(dir)-36:length(dir)) '\'];              % trim front and add '...'
end
set(hObject,'String',dirDisp)                                           % display appropriate directory string
set(hObject,'UserData',dir)                                             % store proper diretory path


% --------------------------------------------------------------------
% --- Executes on button press in acq_browseDir.
function acq_browseDir_Callback(hObject, eventdata, handles)
% hObject    handle to acq_browseDir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

startpath = get(handles.acq_rootDir,'UserData');                        % get stored current directory
dir = uigetdir(startpath,upper('Select or create root directory:'));    % call get directory box
if ~dir                                                                 % if user picked 'cancel' in box
    dir = get(handles.acq_rootDir,'UserData');                          % set directory back to current
end
dirDisp = [dir '\'];                                                    % add '\' to directory name
if length(dirDisp) > 40                                                 % if directory display string is too long for textbox
    dirDisp = ['...' dir(length(dir)-36:length(dir)) '\'];              % trim front and add '...'
end
set(handles.acq_rootDir,'String',dirDisp)                               % display appropriate directory string
set(handles.acq_rootDir,'UserData',dir)                                 % store proper diretory path


% --------------------------------------------------------------------
% --- Executes on button press in acq_recChoice.
function acq_recChoice_Callback(hObject, eventdata, handles)
% hObject    handle to acq_recChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

recp = [handles.acq_browseDir handles.acq_subDir...                     % array of handles to record controls
        handles.acq_saveLogfile handles.acq_saveParams ...
        handles.acq_saveData];
if get(hObject,'Value')                                                 % if recording is selected
    set(recp,'Enable','on')                                             % enable the record controls
    set(handles.acq_rootDir,'Enable','inactive')                        % inactivate the directory text field
else                                                                    % if recording is un-selected
    set(recp,'Enable','off')                                            % disable record controls
    set(handles.acq_rootDir,'Enable','off')                             % disable the directory text field
end


% --------------------------------------------------------------------
% --- Executes on button press in acq_abort.
function acq_abort_Callback(hObject, eventdata, handles)
% hObject    handle to acq_abort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global img wb_pos acq_list pro_list

if isempty(eventdata)                                                   % eventdata is empty on regular callback
    abortchoice = questdlg('Please select:', ...                        % setup of abort menu
        'Abort', ...
        'Quit Session','Redo Contraction','Redo Contraction');
else                                                                    % if abort was called from svd failure
    abortchoice = 'Quit Session';                                       % force quit instead of choice
end

switch abortchoice,
    case 'Quit Session', 
        if isempty(eventdata)                                           % eventdata is empty on regular callback
            quitchoice = questdlg('Are you sure you want to quit?',...  % setup of quitchoice menu
                '','Yes','No','No');
        else                                                            % if abort was called from svd failure
            quitchoice = 'Yes';                                         % force quit instead of choice
        end
        switch quitchoice,
            case 'Yes',                                                 % if 'Yes'
                try
                    UDP_close(); 
                catch end
                set(hObject,'UserData',1)                               % set quit flag
                set(handles.acq_start,'UserData',1)                     % set redo flag
                try,                                                    % try; in case no inmage shown
                    set([img handles.acq_imageAxes],'Visible','off')    % hide contraction image axes and image
                catch, 
                    set(handles.acq_imageAxes,'Visible','off')          % hide contraction image axes
                end
                set(handles.pro_conttext,'String','')                   % hide contraction text
                set(handles.pro_hinttext,'String','')                   % hide contraction hint text
                set(handles.pro_begintext,'String','')                  % hide 'Begin in' text
                set(handles.pro_beginSecs,'String','')                  % hide large seconds text
                set(handles.pro_waitbar,'Position',wb_pos,...           % re-initialize waitbar size
                    'BackgroundColor',[0.753 0.753 0.753]);             % and color
                set(handles.pro_trialStatustext,'String',...            % re-initialize trial status text
                    'Trial:  #  of  #');                                % 'Trial:  #  of  #'
                set(handles.pro_contStatustext,'String',...             % re-initialize contraction status text
                    'Contraction:  #  of  #');                          % 'Contraction:  #  of  #'
                set(acq_list,'Visible', 'on')                           % show regular acquisition controls after running
                ceven('acq_cardtype_Callback',gcbo,[],guidata(gcbo))    % hide extra channel select buttons
                set(pro_list,'Visible','off')                           % hide procedure controls after running
                set([handles.a_toggle ...                               % activate tabs after running
                     handles.c_toggle handles.v_toggle],'Enable','on')                  
                return                                                  % return to operation
            case {'No' ''},
                ceven('acq_abort_Callback',gcbo,[],guidata(gcbo))       % if 'no' call abort menu again                            
        end 
    case 'Redo Contraction',                                            % if 'Redo'
        set(handles.acq_start,'UserData',1)                             % set redo flag
        return                                                          % return to operation
end 


% --------------------------------------------------------------------
% --- Executes on button press in acq_start.
function acq_start_Callback(hObject, eventdata, handles)
% hObject    handle to acq_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global DataCurrent ParamsCurrent img wb_pos acq_list pro_list

startTime = clock;                                                      % get session starting time

subjectID = get(handles.acq_subjectID,'String');                        % get subject id from user entered
if isempty(subjectID)                                                   % if no subject ID has been entered        
    warndlg('Please enter a valid Subject ID, using  ernie by default.','');                      % display a warning box, promoting user to go back a enter a subject ID
    subjectID = 'ernie'; 
end
if get(handles.acq_recChoice,'Value')                               % if subjectID exists and 'Record' is also selected
    path = [get(handles.acq_rootDir,'UserData') '\'];                   % get root saving path from user entered
    chkfile = [path subjectID '_Fulldata.mat'];                         % file to check to see if exists
    if exist(chkfile,'file'),                                           % if file exists; question the user on overwriting
        overwrite = questdlg({'You are about to overwrite a saved acquistion session!' ...
                '    - click YES to continue' ...
                '    - click NO to abort ' ...
                '   ' '    '...
                'Change ''Subject ID'' to prevent seeing this message' ...
                '   '},' DATA OVERWRITE WARNING !','Yes','No','No');
        switch overwrite,
            case 'Yes',                                                 % if 'Yes' (overwrite) then continue
            case {'No' ''}, return                                      % if 'No' (do not overwrite) then return
        end
    end
end

numtrials = str2num(get(handles.acq_numtrials,'String'));               % get number of trials from text box
if isempty(numtrials)                                                   % ensure a number was entered
    warndlg('Bad value for ''Number of Trials''','');                   % display reminder if not
    return                                                              % exit the function and return to normal
end

numreps = str2num(get(handles.acq_numreps,'String'));                   % get number of reps per contraction from text box
if isempty(numreps)                                                     % ensure a number was entered
    warndlg('Bad value for ''Repetitions per Contraction''','');        % display reminder if not
    return                                                              % exit the function and return to normal
end

duration = str2num(get(handles.acq_duration,'String'));                 % get contraction duration from text box
if isempty(duration)                                                    % ensure a number was entered
    warndlg('Bad value for ''Contraction Duration''','');               % display reminder if not
    return                                                              % exit the function and return to normal
end

delay = str2num(get(handles.acq_delay,'String'));                       % get contraction delay/interval from text box
if isempty(delay)                                                       % ensure a number was entered
    warndlg('Bad value for ''Contraction Delay/Interval''','');         % display reminder if not
    return                                                              % exit the function and return to normal
end

reclen = str2num(get(handles.con_reclen,'String'));                     % get record length from text box
if isempty(reclen)                                                      % ensure a number was entered
    warndlg('Bad value for ''Record Length''','');                      % display reminder if not
    return                                                              % exit the function and return to normal
end

set(handles.acq_abort,'UserData',0)                                     % initialize quit flag 
set(hObject,'UserData',0,'Enable','off')                                % initialize redo flag and disable start button

info = get(handles.acq_contSetup,'UserData');                           % get structure containing list of contractions
if isempty(info)                                                        % if list of contractions does not exist yet
    ceven('acq_contSetup_Callback',gcbo,[],guidata(gcbo));              % make user call contractions setup menu
    waitfor(findobj('Tag','contractionsgui2'));                         % wait for user to ok gui
    info = get(handles.acq_contSetup,'UserData');                       % get structure containing list of contractions
end

if isempty(info.strings)                                                % check to see if at least one contraction was selected
    warndlg('No Contractions Have Been Selected','Error');              % display reminder if not
    set(hObject,'UserData',0,'Enable','on')                             % enable start button
    return                                                              % exit the function and return to normal
end

set(acq_list,'Visible','off')                                           % hide regular acquisition controls while running
set(findobj('Type','surface','Visible','on'),'Visible','off');          % hide virtual arm surface objects
set(pro_list,'Visible','on')                                            % show procedure controls while running
set([handles.acq_start handles.acq_abort ...                            % show start, abort buttons and tab frame
        handles.acq_frames],'visible','on')
set([handles.a_toggle handles.c_toggle ...                              % de-activate tabs while running
        handles.v_toggle],'Enable','Inactive')    
set(handles.acq_abort,'Enable', 'on')                                   % enable abort button when running

contlist = info.strings;                                                % compile list of selected contractions
orderedList = contlist;                                                 % keep an ordered record of included contractions
contCode = [1:length(contlist)];                                        % array of ascending integers corresponding to selected contractions
numcont = length(contlist)*numreps;                                     % number of contractions for each trial
for i = 1:numreps-1                                                     % loop for number of repetitions per contraction
    contCode = [contCode (1:length(contlist))];                         % append to contraction list
    contlist = vertcat(contlist, info.strings);                         % append to contraction list
end

files = dir('*.jpg');                                                   % find image files in directory
filelist = {files.name}';                                               % populate list of filenames

wb_pos = get(handles.pro_waitbar,'Position');                           % get waitbar full size info for later use

%%%%%%%%%%%%%%%%%%%%%%%%%%%% setup analog input object
cardinfo = get(handles.acq_cardtype,'UserData');                        % get stored info about a/d hardware
cardidx = get(handles.acq_cardtype,'Value');                            % get index of card type selection menu
for i=1:cardinfo.channels(cardidx)                                      % cycle through all appropriate channels
    eval(['ch(i) = get(handles.acq_ch' num2str(i) ',''Value'');'])      % fill array of channel 'selected' values
end
channels = find(ch ~= 0);                                               % indexes of selected buttons
chans = [1:cardinfo.channels(cardidx)];                                 % need both variables (channels unchanged for later)

card = char(cardinfo.code(cardidx));                                    % string name of selcted hardware
switch card                                                             % select case based on current a/d card
    case 'winsound'                                                     % if sound card
        skew = 'none';                                                  % no skew for sound card
        ai = analoginput(card,0);                                       % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
        forceFS = 8000;                                                 % force FS minimum
    case 'mcc'                                                          % if measurement computing a/d
        skew = 'Equisample';                                            % 'Equisample' skew for sound card
        ai = analoginput(card,1);                                       % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
        chans = chans-1;                                                % this a/d requires channel indexes begin at 0
        forceFS = 40;                                                   % force FS minimum        
    case 'nidaq'                                                        % if national instruments a/d
        ai = analoginput(card,'Dev1');                                       % create analog input object
        ai.InputType = 'SingleEnded';                                   % set ai object input type
        chans = chans-1;                                                % this a/d requires channel indexes begin at 0
        forceFS = 40;                                                   % force FS minimum        
end
% chan = addchannel(ai, chans);                                           % add channels to ai object
user_fs = str2num(get(handles.acq_sampf,'String'));                     % user entered sample frequency
decimate = 1;                                                           % decimate (1 used as flag if no value)
if user_fs < 1000                                                    % if user entered FS is below H/W limit
    decimate = ceil(forceFS/user_fs);                                   % find decimate factor
    fs = decimate*user_fs;                                              % determine adjusted FS
else                                                                    % if user entered FS is within H/W limit
    fs = user_fs;                                                       % assign FS
end
% set(ai,'SampleRate',fs);                                                % set ai sample rate
% actualRate = get(ai,'SampleRate');  
actualRate = 1000% retrieve the actual sample rate for hardware

% set(ai,'SamplesPerTrigger',floor(duration*actualRate));                 % set full record length based on sample rate
% set(ai,'TriggerType','Manual');                                         % set manual trigger for ai object
class_samples = floor(duration*actualRate/decimate);                    % samples per class
reclen = round(reclen/1000*actualRate/decimate);                        % samples per record
Npat = floor(class_samples/reclen);                                     % max number of patterns for each class
max_NPC = length(channels)*4;                                           % set to this value for simple viewing
WL = reclen;						                                    % the window length of the TD feature set
Nseg = floor(reclen/WL);		                                        % the number of segments in the TD feature set
col = 1;                                                                % initialize data column counter
clsLst = [];                                                            % initialize list of classes that will correspond to each column of data
classList = [];                                                         % initialize list of classes that will correspond to contraction
fullcount = 1;                                                          % initialize full counter
randomize = info.random;                                                % randomize state

i=1;                                                                    % initialize loop 1 counter (number of trials)
while i<=numtrials                                                      % start of while loop 1
    j=1;                                                                % initialize loop 2 counter
    if randomize                                                        % if randomize is selected
        order = randperm(length(contCode));                             % generate a random ordering of contractions
        contCode = contCode(order);                                     % randomize contractions code
        contlist = contlist(order);                                     % randomize (same random order) contractions list
    end
    classList(:,i) = contCode';                                         % add to array list of classes from this trial
    while j<=numcont                                                    % start of while loop 2 (number of contractions)
        tic;                                                            % initialize/reset calibration timer
        if get(handles.acq_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(hObject,'UserData'), set(hObject,'UserData',0), end      % after a redo request returned to beginning of loop, re-initialize flag
        
        if get(hObject,'UserData'), continue, end                       % check to catch redo request
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% display contraction image
        name = char(contlist(j));                                       % get string of current contraction
        idx = strfind(name,' -')-1;                                     % check for ' -' and keep index of string length
        if isempty(idx)                                                 % if no ' -' was found, use full string
            conttext = name;                                            % contraction text is whole sting in this case
            hinttext = '';                                              % there is no hine text in this case
        else                                                            % if ' -' was found in the string
            conttext = name(idx+3:length(name));                        % contraction text is after ' -' in this case
            hinttext = name(1:idx);                                     % hint text is before ' -' in this case
            name = hinttext;                                            % name for later use matching image
        end
        dum = strmatch(lower(name),filelist);                           % find index of image file name matching string
        if ~isempty(dum)                                                % check to proceed
            imagedata = imread(char(filelist(dum)));                    % read in image data from file
            axes(handles.acq_imageAxes)                                 % set current axes
            img = image(imagedata);                                     % display image
            set(handles.acq_imageAxes,'XTick',[],'YTick',[],...         % remove any x and y tick labelling
                'Visible','on')                                         % and make contraction image axes visible
        else    
            axes(handles.acq_imageAxes)                                 % set current axes
            cla                                                         % clear image from axes
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% display contraction text
        set(handles.pro_conttext,'String',conttext)                     % update contraction text
        set(handles.pro_hinttext,'String',hinttext)                     % update contraction hint text
              
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% update status text
        set(handles.pro_trialStatustext,'String',...                    % update trial status text
            ['Trial:  ' num2str(i) '  of  ' num2str(numtrials)]);       % 'Trial:  #  of  #'
        set(handles.pro_contStatustext,'String',...                     % update contraction status text
            ['Contraction:  ' num2str(j) '  of  ' num2str(numcont)]);   % 'Contraction:  #  of  #'                
        if get(hObject,'UserData'), continue, end                       % check to catch redo request
  
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% delay before contraction action
        st = clock;                                                     % capture current cpu time
        st2 = st;                                                       % nedded: second variable with cpu start time
        dum = 0;                                                        % initialize dummy time counter
        dly = round(delay);                                             % round user entered delay
        ps = dly/(dly*10);                                              % approximate waitbar interval pause time 
        num = dly;                                                      % number counter for loop
        set(handles.pro_begintext,'Visible', 'on',...                   % update 'Begin in # seconds...' text 
            'ForegroundColor', [0 0 0],...
            'String',['Begin in  ' num2str(num) '  seconds...']);
        set(handles.pro_beginSecs, 'Visible', 'on',...                  % display 'large' countdown number
            'String', num2str(num));
        rd_dum = round(dum);                                            % set a 'rounded' dummy variable
        
        while(dum<dly)                                                  % loop for amount of time corresponding to delay 
            if rd_dum ~= round(dum)                                     % check for half-second passed
                set(handles.pro_beginSecs,'Visible','off')              % hide 'large' countdown number
            end
            rd_dum = round(dum);                                        % reset 'rounded' dummy variable
            if (dly-dum)<(num-1)                                        % if full second has passed
                num = num - 1;                                          % subtract from counter
                set(handles.pro_begintext,'Visible', 'on',...           % update 'Begin in # seconds...' text 
                    'ForegroundColor', [0 0 0],...
                    'String',['Begin in  ' num2str(num) '  seconds...']);
                set(handles.pro_beginSecs, 'Visible', 'on',...          % display 'large' countdown number
                    'String', num2str(num));
            end  

            pause(ps-etime(clock,st));                                  % calculated pause 
            st = clock;                                                 % recapture current time
            if get(hObject,'UserData'), break, end                      % check to catch redo request
            set(handles.pro_waitbar,'BackgroundColor',[1 0 0]);         % set waitbar color to red
            set(handles.pro_waitbar,'Position',...                      % shrink waitbar by calulated (scaled) amount
                [wb_pos(1) wb_pos(2) ...
                    wb_pos(3)*min([max([dum 0.01]) dly])/dly ...
                    wb_pos(4)]);
            dum = etime(clock,st2);                                     % advance dummy time counter
        end
        set(handles.pro_beginSecs,'Visible', 'off');                    % turn off 'large' number
        
        if get(hObject,'UserData'), continue, end                       % check to catch redo request
        set(handles.pro_waitbar,'Position',wb_pos,...                   % re-initialize full wait bar size
            'BackgroundColor',[0 0.3 0]);                               % and color green
        set(handles.pro_begintext,'ForegroundColor',[0 0.3 0],...       % change text to green      
            'String','Sampling...');                                    % and to say, 'Sampling...'
        if(i>1)                                                         % for trials after the first (training)
            idx = contCode(j);                                          % contraction index                        
            if ~exist('pts')                                            % if the variable containing the points doesn't exist
                pts = get(handles.acq_previewLeg,'UserData');           % load the points from stored
            end
            xCntr = (pts(1,:) + [0 randn(1,29).*0.005 0]);              % fake x contour points, randomized a bit
            yCntr = (pts(2,:) + [0 randn(1,29).*0.01 0]);               % fake y contour points, randomized a bit
            xPts = ((rand(1,7).*(40/70))+15/70);                        % randomize and position fake legend points (x positions)
            yPts = ((rand(1,7).*(15/35))+10/35);                        % randomize and position fake legend points (y positions)
            axes(handles.acq_previewLeg);                               % set current axes to preview legend   
            plot(xCntr,yCntr,LSpec{idx},xPts,yPts,SSpec{idx});          % plot legend contour with appropriate linestyle and markers
            set(handles.acq_previewLeg,'XTick',[],'YTick',[],...        % set some axes parameters
                'Color',[0.95 0.95 0.95]);          
        end     
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% data collection 
%         start(ai);                                                      % start data acquisition object         
%         trigger(ai);                                                    % trigger data acquisition object to start collecting
        ps = max([0.01 duration/100]);                                  % approximate waitbar pause time
        st = clock;                                                     % capture current cpu time
        st2 = st;                                                       % nedded: second variable with cpu start time
        dum = 0;                                                        % initialize dummy time counter                                                  
        UDP_bleed();
		while(dum<duration)                                             % loop for amount of time corresponding to duration        
            UDP_bleed(); % bleed the data while we are waiting. 
			pause(ps-etime(clock,st));                                  % calculated pause 
            st = clock;                                                 % recapture current time
            if get(hObject,'UserData'), break, end                      % check to catch redo request
            set(handles.pro_waitbar,'Position',...                      % shrink waitbar by calulated (scaled) amount
                [wb_pos(1) wb_pos(2) wb_pos(3)*(duration-dum)/duration wb_pos(4)]);
            dum = etime(clock,st2);                                     % advance dummy time counter
        end
        set(handles.pro_waitbar,'Position',...                          % shrink waitbar to invisible size
                [wb_pos(1) wb_pos(2) wb_pos(3)*0.001 wb_pos(4)]);
        set(handles.pro_begintext,'String','');                         % blank sting for display text      
     
        if get(hObject,'UserData'), continue, end                       % check to catch redo request 
        set(handles.pro_waitbar,'BackgroundColor',[1 0 0]);             % set waitbar color back to red (for next contraction)

        % data = getdata(ai); % copy acquired data to an array
		disp('getting data via UDP! '); 
		UDP_bleed(); 
        data = UDP_receive(duration*fs, 0); 
%         stop(ai)                                                        %
%         force stop of ai
        if length(chans)~=length(channels), data = data(:,channels); end  % strip out unselected channels
        if decimate > 1, data = data(1:decimate:end,:); end             % decimate data (for below min FS)
           
        eval(['D' num2str(fullcount) '= data;']);                       % copy the data into the appropriate contraction arrays  
        
        % copy and break up data into groups, according to the reclen
        index = 1;                                                      % initialize data index pointer
        for pattern = 1:Npat                                            % loop for number of patterns to be kept (determined)
            Drange = index:index+reclen-1;                              % specifiy range of data for each pattern
            for chn = 1:length(channels)                                % loop for recorded channels
                eval(['ch' num2str(channels(chn)) '(:,col)' ...         % eg. ch#(:,"next column") = data(range,channel)
                    '= data(Drange,' num2str(chn) ');']);
            end      
            index = index + reclen;                                     % add reclen to pointer for next loop through
            clsLst = [clsLst contCode(j)];                              % add the contraction type to array corresponding to the column of data
            col = col + 1;                                              % advance column counter
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%% DO THE REAL TIME FEATURE EXTRACTION FOR DAQ DATA HERE
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% some columns of the array ch# are stored in test arrays: ch#test
        if(i>1)                                                         % if greater than trial 1 
            Crange = col-Npat:col-1;                                    % specifiy range of columns to store in test arrays              
            for chn = 1:length(channels)                                % loop for recorded channels
                eval(['ch' num2str(channels(chn)) 'test'...             % eg. ch#test = ch#(:,"range of columns)
                    '= ch' num2str(channels(chn)) '(:,Crange);']);
            end
            
            classtest = clsLst(Crange);                                 % associated list of corresponding classes
            Ntest = length(Crange);			                            % the number of patterns in the training dataset
            Allfeatures = [];                                           % initialize features array

            for chn = 1:length(channels)                                % loop for number of channels
                eval(['[TestCoef] = tdfeats(ch'...                      % call tdfeats to get the time domain features
                        num2str(channels(chn)) 'test,Nseg,WL);']);  
                eval(['NormTestCoef = '...                              % normalize the features
                      '(TestCoef-Mn' num2str(channels(chn)) ...
                      '''*ones(1,Ntest))./(Sd' num2str(channels(chn))...
                      '''*ones(1,Ntest));']);                
                Allfeatures = [Allfeatures; NormTestCoef];              % add the normalized features to the storage array
            end
            
            NPC = min([size(Allfeatures,1) max_NPC]);                   % number of Principal Components to keep
            
            if get(hObject,'UserData'), continue, end                   % check to catch redo request
                        
            PCTestCoef = (Allfeatures'*Evec)';                          % full array of PC Test Coefficients
            PCTestCoef = PCTestCoef(1:NPC,:);                           % array of PC Test Coefficients trimmed to NPC to keep
            
            if get(hObject,'UserData'), continue, end                   % check to catch redo request
            
            axes(handles.acq_contourAxes);                              % point to scatterplot axes
            set(handles.acq_contourAxes,'Visible','on');                % force the axes background on
            [LSpec,SSpec] = scatkern2(handles,PCTestCoef,classtest,orderedList,i); % call to scatterplot        
            set(handles.acq_contourAxes,'XTick',[],'YTick',[]);         % hide any x and y labelling

        end
        
        set(handles.pro_begintext,'String','')                          % hide 'Begin in' text
        pause(0.01);                                                    % pause to catch abort request at end
        if get(hObject,'UserData'), continue, end                       % check to catch redo request
        j=j+1;                                                          % advance numcont loop counter
        fullcount = fullcount + 1;                                      % advance full counter

        set(handles.pro_begintext,'String','')                          % hide text
        set(handles.pro_beginSecs,'String','')                          % hide text
        set(handles.pro_conttext,'String','')                           % hide text
        set(handles.pro_hinttext,'String','')                           % hide text
        set(handles.acq_imageAxes,'Visible','off')                      % hide image
        
%         pause(((duration+delay)*1.7)-toc);                              % uncomment to force sync when using on two machines

    end                                                                 % end of inner loop
    
    if get(handles.acq_abort,'UserData'), break, 
		UDP_close();
	end                    % catch a quit request and jump out of loop
            
    if(i==1)                                                            % Do Feature Extraction on Training Set
        nperclass = Npat*numcont;                                       % total number of patterns to keep from data
        range = (i-1)*nperclass+1:i*nperclass;                          % range of training data patterns
        for chn = 1:length(channels)                                    % loop for recorded channels
            eval(['ch' num2str(channels(chn)) 'train'...                % eg. ch#train = ch#(:,range)
                  '= ch' num2str(channels(chn)) '(:,range);']);
        end
        
        classtrain = clsLst(range);                                     % associated list of corresponding classes
        Ntrain = length(range);			                                % the number of patterns in the training dataset
        Allfeatures = [];                                               % initialize features array
        
        handles.wb = waitbar(0,'Computing Features...');                % Displays computing features waitbar
        set(handles.wb, 'Units', 'pixels');                             % set waitbar units to pixels
        
        for chn = 1:length(channels)                                    % loop for number of channels
            eval(['[TrainCoef] = tdfeats(ch' ...                        % call tdfeats to get the time domain features       
                    num2str(channels(chn)) 'train,Nseg,WL);']);
            eval(['Mn' num2str(channels(chn)) ' = mean(TrainCoef'');']);% find the mean of the td training features
            eval(['Sd' num2str(channels(chn)) ' = std(TrainCoef'');']); % fing the st.dev. of the td training features
            eval(['NormTrainCoef = ' ...                                % normalize the features
                    '(TrainCoef-Mn' num2str(channels(chn)) ...
                    '''*ones(1,Ntrain))./(Sd' num2str(channels(chn)) ...
                    '''*ones(1,Ntrain));']);
            Allfeatures = [Allfeatures; NormTrainCoef];                 % add the normalized features to the storage array
            waitbar(chn/(length(channels)+0.5),handles.wb);             % advance the waitbar
        end
        set(handles.wb, 'Visible', 'off');                              % close waitbar
        
        NPC = min([size(Allfeatures,1) max_NPC]);                       % number of Principal Components to keep
        
        if get(handles.acq_abort,'UserData'), break, 
			UDP_close();
		end                % catch a quit request and jump out of loop 
        repeatflag = 0;                                                 % initialize a repeat flag
        try  
            [Evec,Eval,V] = svd(Allfeatures);                           % Only compute Eigenvectors using training data
            PCTrainCoef = (Allfeatures'*Evec)';                         % full array of PC Training Coefficients
            PCTrainCoef = PCTrainCoef(1:NPC,:);                         % array of PC Training Coefficients trimmed to NPC to keep
            if get(handles.acq_abort,'UserData'), break, 
				UDP_close();
			end            % catch a quit request and jump out of loop
            axes(handles.acq_contourAxes);                              % point to scatterplot axes
            set(handles.acq_contourAxes,'Visible','on');                % force the axes background on
            [LSpec,SSpec] = scatkern2(handles,PCTrainCoef,classtrain,orderedList,i); % call to scatterplot
            set(handles.acq_contourAxes,'XTick',[],'YTick',[]);         % hide any x and y labelling
        catch
            flawed = questdlg({'Singular value decomposition was unsuccessful!' ...
                    '    - click QUIT to abort session' ...
                    ['    - click SAVE to abort but save flawed data (' subjectID '_Flawdata.mat)'] ...
                    '    - click REPEAT to redo the last (flawed) trail' ...
                    '   ' '    '...
                    '   '},' SVD FAILURE WARNING !','Quit','Save','Repeat','Quit');
            switch flawed,
                case 'Save',                                            % if 'Save' save special file and quit
                    directory = get(handles.acq_rootDir,'UserData');    % get root saving directory from user entered
                    pathname = [directory '\'];                         % create pathname by adding '\' to directory
                    filename = [subjectID '_Flawdata.mat'];             % create subject id-ed filename 
                    outfile = [pathname filename];                      % save file pointer
                    Data = [];                                          % create dummy data array to fill
                    for ct = 1:fullcount-1                              % loop for total number of contractions
                        eval(['Data = [Data; D' num2str(ct) '];']);     % concatenate data
                    end
                    eval(['save ''' outfile ''' Data classList'])       % save data and list of classes            
                    acq_abort_Callback(handles.acq_abort,1,guidata(gcbo)) % call abort routine with flag in eventdata to force quit   
                case 'Repeat',                                          % if 'Repeat'
                    repeatflag = 1;                                     % set the repeat flag
                case {'Quit' ''},                                       % if 'Quit' just quit
					UDP_close();
                    acq_abort_Callback(handles.acq_abort,1,guidata(gcbo)) % call abort routine with flag in eventdata to force quit   
            end  
        end
                
        if get(handles.acq_abort,'UserData'), break, 
			UDP_close();
		end                % catch a quit request and jump out of loop
    
    end
    
    if get(handles.acq_abort,'UserData'), break, 
		UDP_close();
	end                    % catch a quit request and jump out of loop

    if ~isempty(findobj('Tag','acqleg'))                                % if the legend exists     
        figure(findobj('Tag','acqleg'))                                 % make it the current figure in order to see it
    end
    if repeatflag,                                                      % if it has been previously determined to repeat
        answer = 'No';                                                  % force 'answer' to No
    else
        answer = questdlg('Accept this trial and continue?',''...       % ask user if trail is acceptable
            ,'Yes','No','Yes'); 
    end
    if (answer(1)=='Y')                                                 % if trial is acceptable
        i = i + 1;                                                      % advance numtrials loop counter
    else                                                                % if trial is not accepted
        fullcount = fullcount - numcont;                                % reset full counter
    end
    cla(handles.acq_contourAxes)                                        % clear contour axes
    cla(handles.acq_previewLeg)                                         % clear preview legend
end

stopTime = clock;                                                       % get session finish time
runTime = etime(stopTime,startTime)/60;                                 % session time in minutes

if ~get(handles.acq_abort,'UserData')                                   % if user has quit session then skip arranging data
    Data = [];                                                          % create second dummy data array to fill                                       
    for ct = 1:fullcount-1                                              % loop for total number of contractions
        eval(['Data = [Data; D' num2str(ct) '];']);                     % concatenate data
    end
    DataCurrent = struct('Data',Data,'classList',classList);            % create current data structure
    ParamsCurrent = struct('card',card,'fs',user_fs,...                 % create current parameters structure
        'actual_fs',(actualRate/decimate),...
        'numtrials',numtrials,'randomize',randomize,...
        'contlist',{contlist},'numreps',numreps,'duration',duration,...
        'delay',delay,'channels',channels,'subjectID',subjectID,...
        'directory',get(handles.acq_rootDir,'UserData'),...
        'recChoice',get(handles.acq_recChoice,'Value'),...
        'subDir',get(handles.acq_subDir,'Value'),...
        'saveLogfile',get(handles.acq_saveLogfile,'Value'),...
        'saveParams',get(handles.acq_saveParams,'Value'),...
        'saveData',get(handles.acq_saveData,'Value'),...
        'listdata',info,'decimate',decimate);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% proceed to saving the data if record session checkbox is selected and user has not quit the session
if (get(handles.acq_recChoice, 'Value') && ~get(handles.acq_abort,'UserData'))                               
    
    handles.wb = waitbar(0,'Saving and Logging Data...');               % Displays saving data waitbar
    
    directory = get(handles.acq_rootDir,'UserData');                    % get root saving directory from user entered
    pathname = [directory '\'];                                         % create pathname by adding '\' to directory
    
    if get(handles.acq_saveParams, 'Value')                             % if 'save parameters' is selected
        filename = [subjectID '_params.mat'];                           % create subject id-ed filename
        outfile = [pathname filename];                                  % save file pointer
        fs = user_fs;                                                   % user-entered sampling rate to be stored
        actual_fs = actualRate/decimate;                                % actual decimated sampling rate used
        recChoice = get(handles.acq_recChoice,'Value');                 % record choice checkbox value to be stored
        subDir = get(handles.acq_subDir,'Value');                       % sub-directories checkbox value to be stored
        saveLogfile = get(handles.acq_saveLogfile,'Value');             % logfile choice checkbox value to be stored
        saveParams = get(handles.acq_saveParams,'Value');               % save params choice checkbox value to be stored
        saveData = get(handles.acq_saveData,'Value');                   % save data choice checkbox value to be stored
        listdata = info;                                                % structure of selected contractions info
        eval(['save ''' outfile ''' card fs actual_fs numtrials'...     % save parameters
                ' randomize contlist numreps duration delay channels'...
                ' subjectID directory recChoice subDir saveLogfile'...
                ' saveParams saveData listdata decimate']); 
    end
    
    waitbar(0.2,handles.wb);                                            % advance the waitbar
    
    if get(handles.acq_saveLogfile, 'Value')                            % if 'save log file' is selected
        cards = get(handles.acq_cardtype,'String');                     % get list of cards
        chs=[''];                                                       % initialize channels holder (string)
        for i=1:length(channels)                                        % loop for number of channels
            chs=[chs num2str(channels(i)) ' '];                         % build string array of channels
        end
        filename = [subjectID '_log.txt'];                              % create subject id-ed filename
        outfile = [pathname filename];                                  % save file pointer
        if exist(outfile)                                               % if the logfile exists
            delete(outfile)                                             % must delete the existing to overwrite
        end
        diary(outfile)                                                  % specify the text file to 'diary' to and begin logging
        disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        disp('%                                                                                            %')
        disp('% Automatic Logfile from data acquisition session                                            %')
        disp('%                                                                                            %')
        disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        disp(' '); disp(' ');
        disp('%%%%%%%%%%%%%%%%%%          SESSION         %%%%%%%%%%%%%%%%%%')
        disp(['Date:                    ' datestr(clock,1)]) 
        disp(['Session start time:      ' datestr(startTime,14)])
        disp(['Session finish time:     ' datestr(stopTime,14)])
        disp(['Run time:                ' num2str(etime(stopTime,startTime)/60) ' minutes'])
        disp(' '); disp(' ');
        disp('%%%%%%%%%%%%%%%%%%     INPUT PARAMETERS     %%%%%%%%%%%%%%%%%%')
        disp(['A/D Device:              ' char(cards(get(handles.acq_cardtype,'Value')))]) 
        disp(['Desired sample rate:     ' num2str(user_fs) ' Hz'])
        disp(['Actual sample rate:      ' num2str(actualRate/decimate) ' Hz'])
        disp(['Record length:           ' num2str(reclen) ' samples'])
        disp(['Selected channels:       ' chs])
        disp(' '); disp(' ');
        disp('%%%%%%%%%%%%%%%%%%   PROCEDURE PARAMETERS   %%%%%%%%%%%%%%%%%%')
        disp(['Number of trials:        ' num2str(numtrials)])
        disp(['Number of contractions:  ' num2str(length(orderedList))])
        disp(['Reps per contraction:    ' num2str(numreps)])
        disp(['Contraction duration:    ' num2str(duration) ' seconds'])
        disp(['Contraction delay:       ' num2str(delay) ' seconds']) 
        if randomize
            disp(['Randomized:              Yes' ]);
        else
            disp(['Randomized:              No' ]);
        end
        disp(['Included contractions:   '])
        for i=1:length(orderedList)
            disp(['   ' char(orderedList(i))])
        end
        disp(' '); disp(' ');
        disp('%%%%%%%%%%%%%%%%%%   RECORDING PARAMETERS   %%%%%%%%%%%%%%%%%%')
        disp(['Root dierctory:          ' pathname]) 
        disp(['Subject ID:              ' subjectID])
        if get(handles.acq_saveParams,'Value')
            disp(['Save session parameters: Yes'])
            disp(['  Parameters filename:   ' subjectID '_params.mat'])
        else
            disp(['Save session parameters: No'])
        end
        if get(handles.acq_saveData,'Value')
            disp(['Save raw data:           Yes'])
            disp(['  Full data filename:    ' subjectID '_Fulldata.mat'])
            if get(handles.acq_subDir,'Value')
                disp(['Separate trial data:     Yes'])
                for i=1:numtrials
                    disp([' Trial ' num2str(i) ':'])
                    disp(['   Directory:            ' pathname 'Trial_' num2str(i) '\'])
                    disp(['   Filename:             ' subjectID '_Trial_' num2str(i) '_data.mat'])
                end
            else
                disp(['Separate trial data:     No'])
                disp(['  Trial data filename(s):'])
                for i=1:numtrials
                    disp(['  ' subjectID '_Trial_' num2str(i) '_data.mat'])
                end
            end
        else
            disp(['Save raw data:           No'])
        end
        disp(' '); disp(' ');
        diary off                                                       % stop logging text in the file
    end
    
    waitbar(0.4,handles.wb);                                            % advance the waitbar
    
    if get(handles.acq_saveData, 'Value')                               % if save data is selected
        warning off MATLAB:MKDIR:DirectoryExists                        % turn directory exists warning off
        filename = [subjectID '_Fulldata.mat'];                         % create subject id-ed filename 
        outfile = [pathname filename];                                  % save file pointer
        eval(['save ''' outfile ''' Data classList'])                   % save data and list of classes
        waitbar(0.6,handles.wb);                                        % advance the waitbar
        for i = 1:numtrials                                             % loop for number of trials to save data per trial
            nperclass = Npat*numcont;                                   % find number of colums of data for each trial
            range = (i-1)*nperclass+1:i*nperclass;                      % calculate range of this trial's data
            classvec = classList(:,i);                                  % list of classes for this trial
            if get(handles.acq_subDir, 'Value')                         % if 'use seperate directory for each trial' is selected
                mkdir(directory, ['Trial_' num2str(i)])                 % create the new directory
                pathname = [directory '\Trial_' num2str(i) '\'];        % append trail directory path
            end
            for j = 1:length(channels)                                  % loop for number of channels used
                eval(['ch' num2str(channels(j)) 'data = '...            % fill ch#data with ch#(:,'trail range')
                        'ch' num2str(channels(j)) '(:,range);']); 
            end
            filename = [subjectID '_Trial_' num2str(i) '_data.mat'];    % create subject id-ed filename
            outfile = [pathname filename];                              % save file pointer
            eval(['save ''' outfile ''' ch*data classvec']);            % save data and list of classes
            waitbar(0.6+(0.2/numtrials)*i, handles.wb);                 % advance the waitbar
        end
    end
    
    waitbar(1,handles.wb);                                              % advance the waitbar
    set(handles.wb, 'Visible', 'off');                                  % close waitbar
    
end

if exist('ai')                                                          % if ai object exists
    try, delete(ai); catch, end                                         % terminate analog input object
end
cla(handles.acq_contourAxes)                                            % clear contour axes
cla(handles.acq_previewLeg)                                             % clear preview legend
try, set(img,'Visible','off'); catch, end                               % hide image if it exists
set([handles.acq_imageAxes handles.acq_contourAxes...                   % hide contraction image axes
        handles.acq_previewLeg],'Visible','off');                       % and hide preview legend
close(findobj('Tag','acqleg'));                                         % close legend window
set(handles.pro_conttext,'String','')                                   % hide contraction text
set(handles.pro_hinttext,'String','')                                   % hide contraction hint text
set(handles.pro_begintext,'String','')                                  % hide 'Begin in' text
set(handles.pro_beginSecs,'String','')                                  % hide large seconds text
set(handles.pro_waitbar,'Position',wb_pos,...                           % re-initialize waitbar size
    'BackgroundColor',[0.753 0.753 0.753]);                             % and color
set(hObject,'UserData',0,'Enable','on')                                 % on finish or quit, enable start button, and re-initialize quit flag
set(handles.acq_abort,'Enable', 'off')                                  % disable abort button since not running
set(acq_list,'Visible', 'on')                                           % show regular acquisition controls after running
ceven('acq_cardtype_Callback',gcbo,[],guidata(gcbo))                    % hide extra channel select buttons
set(pro_list,'Visible','off')                                           % hide procedure controls after running
set([handles.a_toggle handles.c_toggle handles.v_toggle],'Enable','on') % activate tabs after running


% --------------------------------------------------------------------
function con_reclen_Callback(hObject, eventdata, handles)
% hObject    handle to con_reclen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

reclen = str2num(get(handles.con_reclen,'String'));                     % get record length from text box
if isempty(reclen)                                                      % ensure a number was entered
    warndlg('Bad value for ''Record Length''','');                      % display reminder if not
    set(handles.con_reclen,'String','');                                % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
function con_procdelay_Callback(hObject, eventdata, handles)
% hObject    handle to con_procdelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

procdelay = str2num(get(handles.con_procdelay,'String'));               % get processing delay from text box
if isempty(procdelay)                                                   % ensure a number was entered
    warndlg('Bad value for ''Processing Delay''','');                   % display reminder if not
    set(handles.con_procdelay,'String','');                             % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes on button press in con_PCAon.
function con_PCAon_Callback(hObject, eventdata, handles)
% hObject    handle to con_PCAon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_PCAon,'Value')                                       % if 'PCA on' is selected
    set(handles.con_PCAoff,'Value',0)                                   % de-select 'PCA off' button
    set(handles.con_PCAnum,'Enable','on')                               % enable 'number of PC' text box
    set(handles.con_PCAtext,'Enable','on')                              % enable 'number of PC' text
else                                                                    % if 'PCA on' is de-selected
    set(handles.con_PCAoff,'Value',1)                                   % select 'PCA off' button
    set(handles.con_PCAnum,'Enable','off')                              % disable 'number of PC' text box
    set(handles.con_PCAtext,'Enable','off')                             % disable 'number of PC' text 
end


% --------------------------------------------------------------------
function con_PCAoff_Callback(hObject, eventdata, handles)
% hObject    handle to con_PCAoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_PCAoff,'Value')                                      % if 'PCA off' is selected
    set(handles.con_PCAon,'Value',0)                                    % de-select 'PCA on' button
    set(handles.con_PCAnum,'Enable','off')                              % disable 'number of PC' text box
    set(handles.con_PCAtext,'Enable','off')                             % disable 'number of PC' text
else                                                                    % if 'PCA off' is de-selected
    set(handles.con_PCAon,'Value',1)                                    % select 'PCA on' button
    set(handles.con_PCAnum,'Enable','on')                               % enable 'number of PC' text box
    set(handles.con_PCAtext,'Enable','on')                              % enable 'number of PC' text 
end


% --------------------------------------------------------------------
function con_PCAnum_Callback(hObject, eventdata, handles)
% hObject    handle to con_PCAnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

PCAnum = str2num(get(handles.con_PCAnum,'String'));                     % get number of principal components from text box
if isempty(PCAnum)                                                      % ensure a number was entered
    warndlg('Bad value for ''Number of Principal Components''','');     % display reminder if not
    set(handles.con_PCAnum,'String','');                                % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes on button press in con_MVon.
function con_MVon_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_MVon,'Value')                                        % if 'MV on' is selected
    set(handles.con_MVoff,'Value',0)                                    % de-select 'MV off' button
    set(handles.con_MVautoSelect,'Enable','on')                         % enable 'MV Auto-Cal.' button
    set(handles.con_MVautoValue,'Enable','on')                          % enable 'MV Auto-Cal.' text box
    set(handles.con_MVfixSelect,'Enable','on')                          % enable 'MV Fixed#' button
    set(handles.con_MVfixValue,'Enable','on')                           % enable 'MV Fixed#' text box
    set(handles.con_MVtext,'Enable','on')                               % enable MV related text
else                                                                    % if 'MV on' is de-selected
    set(handles.con_MVoff,'Value',1)                                    % select 'MV off' button
    set(handles.con_MVautoSelect,'Enable','off')                        % disable 'MV Auto-Cal.' button
    set(handles.con_MVautoValue,'Enable','off')                         % disable 'MV Auto-Cal.' text box
    set(handles.con_MVfixSelect,'Enable','off')                         % disable 'MV Fixed#' button
    set(handles.con_MVfixValue,'Enable','off')                          % disable 'MV Fixed#' text box
    set(handles.con_MVtext,'Enable','off')                              % disable MV related text
end


% --------------------------------------------------------------------
% --- Executes on button press in con_MVoff.
function con_MVoff_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_MVoff,'Value')                                       % if 'MV off' is selected
    set(handles.con_MVon,'Value',0)                                     % de-select 'MV on' button
    set(handles.con_MVautoSelect,'Enable','off')                        % disable 'MV Auto-Cal.' button
    set(handles.con_MVautoValue,'Enable','off')                         % disable 'MV Auto-Cal.' text box
    set(handles.con_MVfixSelect,'Enable','off')                         % disable 'MV Fixed#' button
    set(handles.con_MVfixValue,'Enable','off')                          % disable 'MV Fixed#' text box
    set(handles.con_MVtext,'Enable','off')                              % disable MV related text
else                                                                    % if 'MV off' is de-selected
    set(handles.con_MVon,'Value',1)                                     % select 'MV on' button
    set(handles.con_MVautoSelect,'Enable','on')                         % enable 'MV Auto-Cal.' button
    set(handles.con_MVautoValue,'Enable','on')                          % enable 'MV Auto-Cal.' text box
    set(handles.con_MVfixSelect,'Enable','on')                          % enable 'MV Fixed#' button
    set(handles.con_MVfixValue,'Enable','on')                           % enable 'MV Fixed#' text box
    set(handles.con_MVtext,'Enable','on')                               % enable MV related text
end


% --------------------------------------------------------------------
% --- Executes on button press in con_MVautoSelect.
function con_MVautoSelect_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVautoSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(hObject,'Value')                                                 % if 'MV Auto-Cal.' button is selected
    set(handles.con_MVfixSelect,'Value',0)                              % de-select 'MV Fixed#' button
else                                                                    % if 'MV Auto-Cal.' button is de-selected
    set(handles.con_MVfixSelect,'Value',1)                              % select 'MV Fixed#' button
end


% --------------------------------------------------------------------
function con_MVautoValue_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVautoValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MVautoValue = str2num(get(handles.con_MVautoValue,'String'));           % get number of principal components from text box
if isempty(MVautoValue)                                                 % ensure a number was entered
    warndlg('Bad value for ''Auto-Calibrating Time''','');              % display reminder if not
    set(handles.con_MVautoValue,'String','');                           % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes on button press in con_MVfixSelect.
function con_MVfixSelect_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVfixSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(hObject,'Value')                                                 % if 'MV Fixed#' button is selected
    set(handles.con_MVautoSelect,'Value',0)                             % de-select 'MV Auto-Cal.' button
else                                                                    % if 'MV Fixed#' button is de-selected
    set(handles.con_MVautoSelect,'Value',1)                             % select 'MV Auto-Cal.' button
end


% --------------------------------------------------------------------
function con_MVfixValue_Callback(hObject, eventdata, handles)
% hObject    handle to con_MVfixValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MVfixValue = str2num(get(handles.con_MVfixValue,'String'));             % get number of principal components from text box
if isempty(MVfixValue)                                                  % ensure a number was entered
    warndlg('Bad value for ''Fixed Voting Number''','');                % display reminder if not
    set(handles.con_MVfixValue,'String','');                            % place blank in text box
    return                                                              % exit the function and return to normal
end


% --------------------------------------------------------------------
% --- Executes on button press in con_MDnone.
function con_MDnone_Callback(hObject, eventdata, handles)
% hObject    handle to con_MDnone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.con_MDnone,'Value',1)                                       % select 'none' option
set(handles.con_MDrms,'Value',0)                                        % de-select 'rms' option
set(handles.con_MDthresh,'Value',0)                                     % de-select 'thresh' option


% --------------------------------------------------------------------
% --- Executes on button press in con_MDrms.
function con_MDrms_Callback(hObject, eventdata, handles)
% hObject    handle to con_MDrms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.con_MDrms,'Value',1)                                        % select 'rms' option
set(handles.con_MDnone,'Value',0)                                       % de-select 'none' option
set(handles.con_MDthresh,'Value',0)                                     % de-select 'thresh' option


% --------------------------------------------------------------------
% --- Executes on button press in con_MDthresh.
function con_MDthresh_Callback(hObject, eventdata, handles)
% hObject    handle to con_MDthresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.con_MDthresh,'Value',1)                                     % select 'thresh' option
set(handles.con_MDnone,'Value',0)                                       % de-select 'none' option
set(handles.con_MDrms,'Value',0)                                        % de-select 'rms' option


% --------------------------------------------------------------------
function con_MDthreshVal_Callback(hObject, eventdata, handles)
% hObject    handle to con_MDthreshVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MDthreshVal = str2num(get(handles.con_MDthreshVal,'String'));           % get MD threshold precentage value from text box
if isempty(MDthreshVal)                                                 % ensure a number was entered
    warndlg('Bad value for '' On/Off Threshold Percentage ''','');      % display reminder if not
    set(handles.con_MDthreshVal,'String','');                           % place blank in text box
    return                                                              % exit the function and return to normal
end
MDthreshVal = min([100 max([1 round(MDthreshVal)])]);                   % force entry into 1%-100% range (integers only)
set(handles.con_MDthreshVal,'String',num2str(MDthreshVal));             % update text box with value


% --------------------------------------------------------------------
% --- Executes on button press in con_dataCurrent.
function con_dataCurrent_Callback(hObject, eventdata, handles)
% hObject    handle to con_dataCurrent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_dataCurrent,'Value')                                 % if use 'current session' data is selected
    set(handles.con_dataSaved,'Value',0)                                % de-select use 'saved' data
    set(handles.con_dataFile,'Enable','off')                            % disable data file text field
    set(handles.con_dataBrowse,'Enable','off')                          % disable data file browse button
else                                                                    % if use 'current session' data is de-selected
    set(handles.con_dataSaved,'Value',1)                                % select use 'saved' data
    set(handles.con_dataFile,'Enable','on')                             % enable data file text field
    set(handles.con_dataBrowse,'Enable','on')                           % enable data file browse button
end
dispChannels(handles)                                                   % call to update 'available channel' buttons


% --------------------------------------------------------------------
% --- Executes on button press in con_dataSaved.
function con_dataSaved_Callback(hObject, eventdata, handles)
% hObject    handle to con_dataSaved (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.con_dataSaved,'Value')                                   % if use 'saved' data is selected
    set(handles.con_dataCurrent,'Value',0)                              % de-select use 'current session' data
    set(handles.con_dataFile,'Enable','on')                             % enable data file text field
    set(handles.con_dataBrowse,'Enable','on')                           % enable data file browse button
else                                                                    % if use 'saved' data is de-selected
    set(handles.con_dataCurrent,'Value',1)                              % select use 'current session' data
    set(handles.con_dataFile,'Enable','off')                            % disable data file text field
    set(handles.con_dataBrowse,'Enable','off')                          % disable data file browse button
end
dispChannels(handles)                                                   % call to update 'available channel' buttons


% --------------------------------------------------------------------
function con_dataFile_Callback(hObject, eventdata, handles)
% hObject    handle to con_dataFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Data Params

dataFilepath = get(handles.con_dataFile,'UserData');                    % get stored current data directory
if isempty(dataFilepath)                                                % if no data directory has been stored
    dataFilepath = [pwd '\'];                                           % use present working directory (assumption)
end
dataFile = get(handles.con_dataFile,'String');                          % retrieve filename
subjectID = dataFile(1:(strfind(dataFile,'_Fulldata.mat')-1));          % strip out subject ID from filename
dataFile = [dataFilepath dataFile];                                     % create subject id-ed data filename
if ~exist(dataFile)                                                     % if the data file does not exist
    warndlg('Invalid data file / Data file does not exist','');         % display a warning box, saying no data file was found
    set(handles.con_dataFile,'String','');                              % display empty filename
    set(handles.con_dataSaved,'UserData',[]);                           % store empty array meaning no channels are available
    clear global Data Params                                            % invalid data/parameters input: clearing globals
    dispChannels(handles)                                               % call to update 'available channel' buttons
    return                                                              % exit the function and return to normal
end
paramsFile = [subjectID '_params.mat'];                                 % create subject id-ed parameters filename
paramsFile = [dataFilepath paramsFile];                                 % save file pointer
if ~exist(paramsFile)                                                   % if the parameters file does not exist
    warndlg('There is no parameters file matching this data !?','');    % display a warning box, saying no parameters file was found
    set(handles.con_dataFile,'String','');                              % display empty filename
    set(handles.con_dataSaved,'UserData',[]);                           % store empty array meaning no channels are available
    clear global Data Params                                            % invalid data/parameters input: clearing globals
    dispChannels(handles)                                               % call to update 'available channel' buttons
    return                                                              % exit the function and return to normal
end
Data = load(dataFile);                                                  % load data file into Data structure
Params = load(paramsFile);                                              % load params file into Params structure
set(handles.con_dataFile,'UserData',dataFilepath);                      % store as current data directory
set(handles.con_dataSaved,'UserData',Params.channels);                  % store array of available channels
dispChannels(handles)                                                   % call to update 'available channel' buttons


% --------------------------------------------------------------------
% --- Executes on button press in con_dataBrowse.
function con_dataBrowse_Callback(hObject, eventdata, handles)
% hObject    handle to con_dataBrowse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Data Params

dum = pwd;                                                              % dummy: store prestent working directory
Filepath = get(handles.con_dataFile,'UserData');                        % get name of last chosen data directory
if ~isempty(Filepath)                                                   % if a directory name was stored
    cd(Filepath(1:length(Filepath)-1));                                 % change the working directory to search
end
[dataFile, dataFilepath] = uigetfile('*_Fulldata.mat',...               % have user pick data file
    'Choose data file:');
cd(dum);                                                                % reset proper present working directory
if ~dataFile, return, end                                               % if prompt was cancelled, exit function

set(handles.con_dataFile,'String',dataFile);                            % display filename
subjectID = dataFile(1:(strfind(dataFile,'_Fulldata.mat')-1));          % strip out subject ID from filename
dataFile = [dataFilepath dataFile];                                     % create subject id-ed data filename
paramsFile = [subjectID '_params.mat'];                                 % create subject id-ed parameters filename
paramsFile = [dataFilepath paramsFile];                                 % save file pointer
if ~exist(paramsFile)                                                   % if the parameters file does not exist
    warndlg('There is no parameters file matching this data !?','');    % display a warning box, saying no parameters file was found
    set(handles.con_dataFile,'String','');                              % display empty filename
    set(handles.con_dataSaved,'UserData',[]);                           % store empty array meaning no channels are available
    clear global Data Params                                            % invalid data/parameters input: clearing globals
    dispChannels(handles)                                               % call to update 'available channel' buttons
    return                                                              % exit the function and return to normal
end
Data = load(dataFile);                                                  % load data file into Data structure
Params = load(paramsFile);                                              % load params file into Params structure
set(handles.con_dataFile,'UserData',dataFilepath);                      % store as current data directory
set(handles.con_dataSaved,'UserData',Params.channels);                  % store array of available channels
dispChannels(handles)                                                   % call to update 'available channel' buttons


% --------------------------------------------------------------------
% --- Executes on button press in con_ch(1-16).
function con_ch_Callback(hObject, eventdata, handles)
% hObject    handle to con_ch(1-16) (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(hObject,'Value')                                                 % if button was selected
    set(hObject,'ForegroundColor',[0 0 0])                              % set text color to match plot color 
else                                                                    % if button was de-selected
    set(hObject,'ForegroundColor',[0.5 0.5 0.5])                        % return text color to default
end

chBtns = findobj('Type','uicontrol','Style','togglebutton');            % populate list of all togglebutton uicontrol objects
objectlist = get(chBtns,'Tag');                                         % associate tag names
chBtns = chBtns(strmatch('con_ch',objectlist));                         % compile handle list of 'con_ch' items (the channel buttons)
for i=1:length(chBtns)                                                  % cycle through all channels
    eval(['h = handles.con_ch' num2str(i) ';']);                        % get handle to channel button
    if strmatch('on',get(h,'Visible'))                                  % if the button is visible
        ch(i) = get(h,'Value');                                         % add the the button's 'Value' to an array
    end
end
ch = find(ch ~= 0);                                                     % indexes of selected buttons
if get(handles.con_dataCurrent,'Value')                                 % if use current session data is selected
    set(handles.con_dataCurrent,'UserData',ch);                         % store selected channels
else                                                                    % if use saved session data is selected
    set(handles.con_dataSaved,'UserData',ch);                           % store selected channels
end


% --------------------------------------------------------------------
function dispChannels(handles)
% handles    structure with handles and user data (see GUIDATA)

global Data Params DataCurrent ParamsCurrent

chBtns = findobj('Type','uicontrol','Style','togglebutton');            % populate list of all togglebutton uicontrol objects
objectlist = get(chBtns,'Tag');                                         % associate tag names
chBtns = chBtns(strmatch('con_ch',objectlist));                         % compile handle list of 'con_ch' items (the channel buttons)

if get(handles.con_dataCurrent,'Value')                                 % if use current session data is selected
    if isempty(DataCurrent) || isempty(ParamsCurrent)                   % check to see if data and parameters are there (if not so)
        set(chBtns,'Visible','off')                                     % hide all channel selection buttons
        return                                                          % exit the function and return to normal
    end
    dataStruct = DataCurrent;                                           % upload stored data
    paramsStruct = ParamsCurrent;                                       % upload stored parameters
    storedCh = get(handles.con_dataCurrent,'UserData');                 % get list of channels buttons that have been previously selected
    if isempty(storedCh)                                                % if no button selections (channels) have been stored (first time in)
        set(handles.con_dataCurrent,'UserData',paramsStruct.channels);  % store the selected channels
        storedCh = paramsStruct.channels;                               % set storedCh to array of selected channels for use below
    end
else                                                                    % else use saved data is selected
    if isempty(Data) || isempty(Params)                                 % check to see if data and parameters are there (if not so)
        set(chBtns,'Visible','off')                                     % hide all channel selection buttons
        return                                                          % exit the function and return to normal
    end
    dataStruct = Data;                                                  % upload stored data
    paramsStruct = Params;                                              % upload stored parameters
    storedCh = get(handles.con_dataSaved,'UserData');                   % get list of channels buttons that have bene previously selected
    if isempty(storedCh)                                                % if no button selections (channels) have been stored (first time in)
        set(handles.con_dataSaved,'UserData',paramsStruct.channels);    % store the selected channels
        storedCh = paramsStruct.channels;                               % set storedCh to array of selected channels for use below
    end
end

set(chBtns,'Value',0,'Visible','off','ForegroundColor',[0.5 0.5 0.5]);  % set all channel buttons to gray text, unselected, and invisible                                                  % 
for chn = storedCh;                                                     % loop for all selected channels
    eval(['set(handles.con_ch' num2str(chn) ',''Value'',1'...           % set selected-channel button to 'selected'
    ',''ForegroundColor'',[0 0 0]);']);                                 % and set its text color to black
end
for chn = paramsStruct.channels;                                        % loop for all available channels
    eval(['set(handles.con_ch' num2str(chn) ',''Visible'',''on'');']);  % make all available channel buttons visible
end


% --------------------------------------------------------------------
% --- Executes on button press in con_abort.
function con_abort_Callback(hObject, eventdata, handles)
% hObject    handle to con_abort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

abortchoice = questdlg('Please select:', ...                            % setup of abort menu
    'Abort', ...
    'Quit Processing','Continue Processing','Continue Processing');

switch abortchoice,
    case 'Quit Processing', 
        quitchoice = questdlg('Are you sure you want to quit?','','Yes','No','No');
        switch quitchoice,
            case 'Yes',                                                 % if 'Yes'
                set(handles.con_abort,'UserData',1)                     % set quit flag
                batchFinish(handles)                                    % call to quit and cleanup
            case {'No' ''},
                ceven('con_abort_Callback',gcbo,[],guidata(gcbo))       % if 'no' call abort menu again                            
        end 
    case 'Continue Processing',                                         % if 'Continue'
        return                                                          % return to operation
end


% --------------------------------------------------------------------
% --- Executes on button press in con_start.
function con_start_Callback(hObject, eventdata, handles)
% hObject    handle to con_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Data Params DataCurrent ParamsCurrent ARorder ann gmm onList

startTime = clock;                                                      % get processing session starting time

delete(findobj('Tag','train'))                                          % destroy any ANN training windows
set(handles.con_progressText,'String','Validating Parameters...');      % update progess text

%%%%%%%%%%%%%%%%%%%%%%%%%%%% WINDOWING ERROR CHECKING
reclen = str2num(get(handles.con_reclen,'String'));                     % get record length from text box
procdelay = str2num(get(handles.con_procdelay,'String'));               % get processing delay from text box
if isempty(reclen) || isempty(procdelay)                                % ensure a number was entered
    warndlg('Input/Parameters Error: Aborting...','');                  % display aborting reminder
    ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))         % call to clean up on abort
    return                                                              % exit the function and return to normal
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% FEATURE EXTRACTION ERROR CHECKING
dum = get([handles.con_TD handles.con_AR handles.con_TDAR],'Value');    % get feature extraction box values
dum = sum(cell2mat(dum));                                               % add: will be 1 or greater if something is checked off
numPC = str2num(get(handles.con_PCAnum,'String'));                      % get number of principal components from text box
if ~dum || (get(handles.con_PCAon,'Value') && isempty(numPC))           % ensure proper parameters entered
    warndlg('Input/Parameters Error: Aborting...','');                  % display aborting reminder
    ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))         % call to clean up on abort
    return                                                              % exit the function and return to normal
end
if get(handles.con_PCAoff,'Value')                                      % if PCA is not selected
    numPC = 1e6;                                                        % set number of PC to a high value that will never be used
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLASSIFICATION ERROR CHECKING 
dum = get([handles.con_LDA handles.con_ANN handles.con_GMM],'Value');   % get classification box values
dum = sum(cell2mat(dum));                                               % add: will be 1 or greater if something is checked off
if ~dum                                                                 % ensure proper parameters entered
    warndlg('Input/Parameters Error: Aborting...','');                  % display aborting reminder
    ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))         % call to clean up on abort
    return                                                              % exit the function and return to normal
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% MAJORITY VOTING ERROR CHECKING AND SETUP
if get(handles.con_MVon,'Value')                                        % if majority voting is selected
    if get(handles.con_MVfixSelect,'Value')                             % if 'fixed' is selected
        MVfixValue = str2num(get(handles.con_MVfixValue,'String'));     % get majority voting fixed value from text box 
        MVautoValue = [];                                               % set MVautoValue to empty array
        nvote = MVfixValue;                                             % copy fixed value to nvote value
        nvoteOV = nvote;                                                % overlapped data nvote value
    else                                                                % if 'auto-calibrated' is selected
        MVautoValue = str2num(get(handles.con_MVautoValue,'String'));   % get majority voting auto value from text box
        MVfixValue = [];                                                % set MVfixValue to empty value
        nvote = floor(MVautoValue/reclen);                              % set number of votes to timevalue dived by rec length
        nvoteOV = floor(MVautoValue/procdelay);                         % set number of votes to timevalue dived by processing delay (for OV)
    end
    if isempty(MVfixValue) && isempty(MVautoValue)                      % ensure proper parameters entered
        warndlg('Input/Parameters Error: Aborting...','');              % display aborting reminder
        ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))     % call to clean up on abort
        return                                                          % exit the function and return to normal
    end
else                                                                    % if majority voting is not selected
    MVfixValue = [];                                                    % empty assignment
    MVautoValue = [];                                                   % empty assignment
    nvote = 0;                                                          % empty assignment
    nvoteOV = 0;                                                        % empty assignment
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% ACTIVITY DETECTION / SPEED CONTROL ERROR CHECKING 
MDthreshVal = str2num(get(handles.con_MDthreshVal,'String'));           % get MD threshold precentage value from text box
if get(handles.con_MDthresh,'Value') && isempty(MDthreshVal)            % if on/off thresholding selected and a number was entered
    warndlg('Input/Parameters Error: Aborting...','');                  % display aborting reminder
    ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))         % call to clean up on abort
    return                                                              % exit the function and return to normal
end  

%%%%%%%%%%%%%%%%%%%%%%%%%%%% DATA ERROR CHECKING
if get(handles.con_dataCurrent,'Value')                                 % if use current session data is selected
    if isempty(DataCurrent) || isempty(ParamsCurrent)                   % check to see if data and parameters are there (if not so)
        warndlg('No ''current session'' data exists','');               % display a warning box, saying no data exists
        set(handles.con_progressText,'String','');                      % update progess text
        return                                                          % exit the function and return to normal
    end
    dataStruct = DataCurrent;                                           % upload stored data
    paramsStruct = ParamsCurrent;                                       % upload stored parameters
else                                                                    % else use saved data is selected
    if isempty(Data) || isempty(Params)                                 % check to see if data and parameters are there (if not so)
        warndlg('No ''saved'' data exists/ has been specified','');     % display a warning box, saying no data exists
        set(handles.con_progressText,'String','');                      % update progess text
        return                                                          % exit the function and return to normal
    end
    dataStruct = Data;                                                  % upload stored data
    paramsStruct = Params;                                              % upload stored parameters
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CHANNELS ERROR CHECKING
if get(handles.con_dataCurrent,'Value')                                 % if use current session data is selected
    channels = get(handles.con_dataCurrent,'UserData');                 % get stored selected channels
else                                                                    % if use saved session data is selected
    channels = get(handles.con_dataSaved,'UserData');                   % get stored selected channels
end
if isempty(channels)                                                    % check to see if at least one channel is selected
    warndlg('No channels have been selected','');                       % display a warning box, saying no channels are selected
    ceven('batchFinish',gcbo,progress_pos,onList,guidata(gcbo))         % call to clean up on abort
    return                                                              % exit the function and return to normal
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% ANN and GMM PARAMETERS ERROR CHECKING
if isempty(ann) && get(handles.con_ANN,'Value')                         % check to see ANN parameters GUI has bees visited
    paramsANN                                                           % call to ANN parameters GUI
    uiwait                                                              % wait for user response
end
if isempty(gmm) && get(handles.con_GMM,'Value')                         % check to see GMM parameters GUI has bees visited
    paramsGMM                                                           % call to GMM parameters GUI
    uiwait                                                              % wait for user response
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% LOADING DATA AND PROCESSING SETUP
set(handles.con_progressText,'String','Loading Data...');               % update progess text

set(handles.con_start,'UserData',0,'Enable','off');                     % initialize continue flag and disable start button when running
onList = findobj('Type','uicontrol','Enable','on');                     % find all uicontrol objects that are enabled
set(onList,'Enable','inactive');                                        % make all enabled objects inactive
set(handles.con_abort,'UserData',0,'Enable','on');                      % initialize quit flag and enable abort button when running
progress_pos = get(handles.con_progress,'Position');                    % get progress bar full size info for later use

pause(0.01)
width = progress_pos(3)*(0.5);                                          % caculate new progress bar width
set(handles.con_progress,'BackgroundColor',[1 0 0],'Position',...       % update progress bar
    [progress_pos(1) progress_pos(2) width progress_pos(4)]);

szD=size(dataStruct.Data);                                              % size of data array
szC=size(dataStruct.classList);                                         % size of class list array
numtrials = paramsStruct.numtrials;                                     % number of trials
numcont = szC(1);                                                       % total number of contractions in each trial
contLen = szD(1)/numcont/numtrials;                                     % contraction length (in samples)
reclen = round(reclen/1000*paramsStruct.actual_fs);                     % record length (in samples)
procdelay = round(procdelay/1000*paramsStruct.actual_fs);               % processing delay length (in samples)
classes = dataStruct.classList;                                         % vector of classes related to data 
newNpat = floor(contLen/reclen);                                        % new number of records corresponding to highest possible # of complete                     

for i = 1:length(channels)                                              % loop for number of selected channels
    idx = find(channels(i)==paramsStruct.channels);                     % index for data from selected channel
    dum = dataStruct.Data(:,idx);                                       % dum array: one vector of data from array
    eval(['data' num2str(channels(i)) '= reshape(dum,contLen,numcont,numtrials);']);  % data'ch#'=dum(contraction samples,contraction, trial)
end

rmsData = [];                                                           % initialize empty RMS values array
if get(handles.con_MDrms,'Value')                                       % if RMS prop. control is selected, calculate base RMS
    for i = 1:length(channels)                                          % loop for number of selected channels
        eval(['dum = data' num2str(channels(i)) ';']);                  % fill dummy array of channels' data
        rms = sqrt(sum(dum.*conj(dum))/size(dum,1));                    % get RMS value for each contraction
        dum = reshape(classes,1,numcont,numtrials);                     % arrange classes into lookup table
        for j = 1:max(max(classes))                                     % loop for number of classes
            value(i,j) = mean(rms(find(dum==j)));                       % average all RMS values for each class
        end
    end
    rmsData = mean(value);                                              % average RMS values over all channels (for each class)
end

OnOffData = [];                                                         % initialize empty OnOff values array
if get(handles.con_MDthresh,'Value')                                    % if threshold control is selected (do same as RMS for now)
    for i = 1:length(channels)                                          % loop for number of selected channels
        eval(['dum = data' num2str(channels(i)) ';']);                  % fill dummy array of channels' data
        rms = sqrt(sum(dum.*conj(dum))/size(dum,1));                    % get RMS value for each contraction
        dum = reshape(classes,1,numcont,numtrials);                     % arrange classes into lookup table
        for j = 1:max(max(classes))                                     % loop for number of classes
            value(i,j) = mean(rms(find(dum==j)));                       % average all RMS values for each class
        end
    end
    OnOffData = mean(value);                                            % OnOff values over all channels (for each class)
end

if numtrials == 1                                                       % if only 1 trial of data - split in half to get 2 (1 to train, 1 to test)
    contLen = floor(contLen/2);                                         % new sample-length contraction variable
    newNpat = floor(contLen/reclen);                                    % new number of records corresponding to highest possible # of complete                     
    rng1 = [1:contLen];                                                 % range1: 1st half of single-trial data to become "trial 1"
    rng2 = rng1 + contLen;                                              % range2: 2nd half of single-trial data to become "trial 2"
    for chn=channels                                                    % loop for selected channels in data
        eval(['dum1 = data' num2str(chn) '(rng1,:,1);']);               % dum1 = 1st half of data
        eval(['dum2 = data' num2str(chn) '(rng2,:,1);']);               % dum2 = 2nd half of data
        eval(['clear data' num2str(chn)])                               % clear the data# array
        eval(['data' num2str(chn) '(:,:,1)=dum1;']);                    % data'ch#'(:,:,"trial 1")=dum1
        eval(['data' num2str(chn) '(:,:,2)=dum2;']);                    % data'ch#'(:,:,"trial 2")=dum2        
    end
    numtrials = 2;                                                      % set number of trials variable to 2
    classes = [classes classes];                                        % double the array of classes to match the new, 2-trail data
end

pause(0.01)                                                             % slight pause to force GUI refresh
set(handles.con_progress,'BackgroundColor',[0.753 0.753 0.753],...      % reset progress bar color
    'Position',progress_pos);                                           % reset progress bar size
ov_flag = (reclen~=procdelay);                                          % set overlap flag if record length is not equal to process delay

%%%%%%%%%%%%%%%%%%%%%%%%%%%% FEATURE EXTRACTION AND PRINCIPAL COMPONENTS ANALYSIS
dum = ARorder;                                                          % dummy: copy of ARorder that gets cleared
if isempty(dum), dum = 6; end                                           % set ARorder default if not specified
clear TD* AR* TDAR*                                                     % clear existing variables and arrays
ARorder = dum;                                                          % recopy ARorder from dummy variable
TDgo = 0; ARgo = 0;                                                     % initialize TD and AR flags
if (get(handles.con_TD,'Value') || get(handles.con_TDAR,'Value'))       % if TD or TDAR checkboxes are selected
    TDgo = 1;  end                                                      % set TD flag to 1
if (get(handles.con_AR,'Value') || get(handles.con_TDAR,'Value'))       % if AR or TDAR checkboxes are selected
    ARgo = 1;  end                                                      % set AR flag to 1

tot = 1/(numtrials*max(classes(:,1))*length(channels)+0.5);             % a total iteration count (for progressbar operation)
pbCount = 0;                                                            % initialize progress bar counter
set(handles.con_progressText,'String','Extracting Features and Performing PCA...'); % update progess text
if get(handles.con_PCAoff,'Value')                                      % if PCA is 'off'
    set(handles.con_progressText,'String','Extracting Features...');    % update progess text
end 
EvecTD = []; EvecAR = []; EvecTDAR = [];                                % initialize Eigenvector arrays (empty for no PCA)

overlap_cls = [];                                                       % clear array of class ids (corresponding to overlapped data)
for tr = 1:numtrials                                                    % loop for number of trials
    if get(handles.con_abort,'UserData'), break, end                    % catch a quit request and jump out of loop
    FeaturesTD = []; FeaturesAR = []; FeaturesTDAR =[];                 % clear feature arrays
    TDfeatEig = []; ARfeatEig = []; TDARfeatEig = [];                   % clear feature arrays
    cl = 0;                                                             % initialize overlap class array counter
    dum = (classes(:,tr)*ones(1,newNpat))';                             % dummy: expanding classes to have class number for each record
    classvec(tr,:) = dum(:)';                                           % store class vector of classes coresponding to records
    for cls = min(classes(:,tr)):max(classes(:,tr))                     % loop for classes (min to max - missing classes get skipped)
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        clsidx = find(classes(:,tr)==cls);                              % class index (from cls for loop number)
        if isempty(clsidx), continue, end                               % if said class doesn't exist skip to next              
        TDfeatures = []; ARfeatures = []; TDARfeatures = [];            % clear internal feature arrays
        TDf = []; ARf = []; TDARf = [];                                 % clear internal feature arrays
        for chn = channels                                              % loop for selected channels
            pause(0.01)                                                 % slight pause to force GUI update
            if get(handles.con_abort,'UserData'), break, end            % catch a quit request and jump out of loop
            pbCount = pbCount + 1;                                      % advance progress bar counter
            width = progress_pos(3)*(pbCount*tot);                      % caculate new progress bar width
            set(handles.con_progress,'BackgroundColor',[1 0 0],...      % draw progress bar update
                'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
            
            eval(['contdata = data' num2str(chn) '(:,:,tr);']);         % load said channel's data into array 'countdata'
            if cls == min(classes(:,tr))                                % want to perform the following only once per channel (do for first class)
                contLen = newNpat*reclen;                               % new sample length of data corresponding to highest possible # of complete records
                datacont = contdata((1:contLen),:);                     % trim data to max possible size
                dt = reshape(datacont,reclen,(contLen*numcont)/reclen); % data; sort into 'reclen' length columns
                if TDgo                                                 % if TD is selected
                    TDCoef = tdfeats(dt,1,reclen);                      % call to function tdfeats to get TD features
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    if tr==1
                        MnTD(:,chn) = mean(TDCoef')';                   % find mean of TD features
                        SdTD(:,chn) = std(TDCoef')';                    % find standard dev. of TD features
                    end
                    N = size(dt,2);                                     % the number of patterns in the dataset
                    NormCoef = (TDCoef-MnTD(:,chn)*ones(1,N))./(SdTD(:,chn)*ones(1,N)); % normalize TD features
                    TDf = [TDf; NormCoef];                              % add normalized features to TD collection array
                end
                if ARgo                                                 % if AR is selected
                    arcoef = lpc(dt,ARorder);                           % call to calculate the linear prediction coefficients 
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    arcoef = real(arcoef);                              % keep real coefficients
                    rms = sqrt(sum(dt.^2)/size(dt,1));                  % calculate root mean square of data
                    ARCoef = [arcoef(:,2:end) rms']';                   % AR features and rms
                    if tr==1
                        MnAR(:,chn) = mean(ARCoef')';                   % find mean of AR features
                        SdAR(:,chn) = std(ARCoef')';                    % find standard dev. of AR features
                    end
                    N = size(dt,2);                                     % the number of patterns in the dataset
                    NormCoef = (ARCoef-MnAR(:,chn)*ones(1,N))./(SdAR(:,chn)*ones(1,N)); % normalize AR features
                    ARf = [ARf; NormCoef];                              % add AR coefficients and RMS to AR collection array
                end
                if TDgo && ARgo                                         % if TDAR is selected
                    TDARCoef = [TDCoef; ARCoef];                        % collect TD and AR coefficients
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    if tr==1
                        MnTDAR(:,chn) = mean(TDARCoef')';               % find mean of TDAR features
                        SdTDAR(:,chn) = std(TDARCoef')';                % find standard dev. of TDAR features
                    end
                    N = size(dt,2);                                     % the number of patterns in the dataset
                    NormCoef = (TDARCoef-MnTDAR(:,chn)*ones(1,N))./(SdTDAR(:,chn)*ones(1,N)); % normalize TDAR features
                    TDARf = [TDARf; NormCoef];                          % add normalized features to TDAR collection array
                end
            end     
            
            if ov_flag                                                  % if overlapping is required
                contdata = contdata(:,clsidx);                          % get data coressponding to current class
                contdata = contdata(:);                                 % vectorize if more than one column of data
                count = length(contdata);                               % find complete number of samples of data from that class
                rng = 1:reclen;                                         % initialize a range of data corresponding to the specified record length
                seg = 0;                                                % initialize a segment counter
                while max(rng)<=count                                   % loop to get as many complete segments of data as possible
                    seg = seg + 1;                                      % advance segment counter
                    overlap_data(:,seg) = contdata(rng);                % add segment of data as a column in 'overlap_data'
                    rng = rng + procdelay;                              % advance data-range counter by specified processing delay 
                end
                contdata = overlap_data;                                % re-copy overlapped data into contdata array
                N = size(contdata,2);			                        % the number of patterns in the dataset
                if TDgo                                                 % if TD (or TDAR) is selected
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    TDCoef = tdfeats(contdata,1,reclen);                % call to function tdfeats to get TD features
                    NormCoef = (TDCoef-MnTD(:,chn)*ones(1,N))./(SdTD(:,chn)*ones(1,N)); % normalize TD features
                    TDfeatures = [TDfeatures; NormCoef];                % add normalized features to TDfeatures collection array
                end
                if ARgo                                                 % if AR (or TDAR) is selected
                    arcoef = lpc(contdata,ARorder);                     % call to calculate the linear prediction coefficients
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    arcoef = real(arcoef);                              % keep real coefficients
                    rms = sqrt(sum(contdata.^2)/size(contdata,1));      % calculate root mean square of data
                    ARCoef = [arcoef(:,2:end) rms']';                   % AR features and rms
                    NormCoef = (ARCoef-MnAR(:,chn)*ones(1,N))./(SdAR(:,chn)*ones(1,N)); % normalize AR features
                    ARfeatures = [ARfeatures; NormCoef];                % add AR coefficients and RMS to ARfeatures collection array
                end
                if TDgo && ARgo                                         % if TDAR is selected
                    TDARCoef = [TDCoef; ARCoef];                        % collect TD and AR coefficients
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    NormCoef = (TDARCoef-MnTDAR(:,chn)*ones(1,N))./(SdTDAR(:,chn)*ones(1,N)); % normalize TDAR features
                    TDARfeatures = [TDARfeatures; NormCoef];            % add normalized features to TDARfeatures collection array
                end
            else
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
                overlap_data = dt;                                      % copy as overlapped data;
                TDfeatures = TDf;                                       % copy normalized features to TDfeatures collection array
                ARfeatures = ARf;                                       % copy AR coefficients and RMS to ARfeatures collection array
                TDARfeatures = TDARf;                                   % copy normalized features to TDARfeatures collection array
            end
        end
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        TDfeatEig = [TDfeatEig; TDf];                                   % add each channel's TD (unsegmented) features to array
        ARfeatEig = [ARfeatEig; ARf];                                   % add each channel's AR (unsegmented) features to array
        TDARfeatEig = [TDARfeatEig; TDARf];                             % add each channel's TDAR (unsegmented) features to array
        FeaturesTD = [FeaturesTD TDfeatures];                           % add each channel's TD (segmented) features to array
        FeaturesAR = [FeaturesAR ARfeatures];                           % add each channel's AR (segmented) features to array
        FeaturesTDAR = [FeaturesTDAR TDARfeatures];                     % add each channel's TDAR (segmented) features to array
        cl = cl + 1;                                                    % avdavce overlap class array counter
        overlap_cls(:,cl,tr) = [cls*ones(1,size(overlap_data,2))];      % update array of class ids corresponding to segemented data        
    end
    
    if get(handles.con_PCAon,'Value')
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_TD, 'Value')                                 % if TD is selected
            if tr==1, [EvecTD,Eval,V] = svd(TDfeatEig); end             % calculate eigenvectors from unsegmented-data TD features
            NPC = min([numPC size(TDfeatEig,1)]);                       % number of PCs (min of: number available or number specified)
            TD = (TDfeatEig'*EvecTD)';                                  % segmented data by the eigenvector
            eval(['TD' num2str(tr) '= TD(1:NPC,:);']);                  % save result in TD#, where # is trial number
            TD = (FeaturesTD'*EvecTD)';                                 % segmented data by the eigenvector
            eval(['TD_OV' num2str(tr) '= TD(1:NPC,:);']);               % save result in TD_OV#, where # is trial number
        end    
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_AR, 'Value')                                 % if AR is selected
            if tr==1, [EvecAR,Eval,V] = svd(ARfeatEig); end             % calculate eigenvectors from unsegmented-data AR features
            NPC = min([numPC size(ARfeatEig,1)]);                       % number of PCs (min of: number available or number specified)
            AR = (ARfeatEig'*EvecAR)';                                  % segmented data by the eigenvector
            eval(['AR' num2str(tr) '= AR(1:NPC,:);']);                  % save result in AR#, where # is trial number
            AR = (FeaturesAR'*EvecAR)';                                 % segmented data by the eigenvector
            eval(['AR_OV' num2str(tr) '= AR(1:NPC,:);']);               % save result in AR_OV#, where # is trial number
        end
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_TDAR, 'Value')                               % if TDAR is selected
            if tr==1, [EvecTDAR,Eval,V] = svd(TDARfeatEig); end         % calculate eigenvectors from unsegmented-data TDAR features 
            NPC = min([numPC size(TDARfeatEig,1)]);                     % number of PCs (min of: number available or number specified)
            TDAR = (TDARfeatEig'*EvecTDAR)';                            % segmented data by the eigenvector
            eval(['TDAR' num2str(tr) '= TDAR(1:NPC,:);']);              % save result in TDAR#, where # is trial number
            TDAR = (FeaturesTDAR'*EvecTDAR)';                           % segmented data by the eigenvector
            eval(['TDAR_OV' num2str(tr) '= TDAR(1:NPC,:);']);           % save result in TDAR_OV#, where # is trial number
        end
    else
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_TD, 'Value')                                 % if TD is selected
            eval(['TD' num2str(tr) '= TDfeatEig;']);                    % save result in TD#, where # is trial number
            eval(['TD_OV' num2str(tr) '= FeaturesTD;']);                % save result in TD_OV#, where # is trial number
        end    
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_AR, 'Value')                                 % if AR is selected
            eval(['AR' num2str(tr) '= ARfeatEig;']);                    % save result in AR#, where # is trial number
            eval(['AR_OV' num2str(tr) '= FeaturesAR;']);                % save result in AR_OV#, where # is trial number
        end
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if get(handles.con_TDAR, 'Value')                               % if TDAR is selected
            eval(['TDAR' num2str(tr) '= TDARfeatEig;']);                % save result in TDAR#, where # is trial number
            eval(['TDAR_OV' num2str(tr) '= FeaturesTDAR;']);            % save result in TDAR_OV#, where # is trial number
        end
    end
end

clear data*                                                             % clear all data array to free memory
if ~get(handles.con_abort,'UserData')                                   % catch a quit request to skip following statements
    dum = size(overlap_cls);                                            % dummy: size of overlap class array
    overlap_cls = (reshape(overlap_cls, dum(1)*dum(2), numtrials))';    % morph overlap class array to be single columns for each trial
    if ~ov_flag, overlap_cls=classvec; end                              % if record length and delay match, copy classvector as overlapped classes
    NumClasses = length(find(histc(overlap_cls(tr,:),[1:100])));        % count of number of classes involved
    set(handles.con_progress,'BackgroundColor',[0.753 0.753 0.753],...  % reset progress bar color
        'Position',progress_pos);                                       % reset progress bar size
    pause(0.01)                                                         % slight pause to force GUI update
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLASSIFICATION
LDA_TD=[]; LDA_AR=[]; LDA_TDAR=[]; ANN_TD=[]; ANN_AR=[]; ANN_TDAR=[];   % initialize storage 
GMM_TD=[]; GMM_AR=[]; GMM_TDAR=[]; GMM_TD_OV=[]; GMM_AR_OV=[]; GMM_TDAR_OV=[];
% re-initialize total iteration count (for progressbar operation)
tot = ((sum(cell2mat(get([handles.con_TD handles.con_AR handles.con_TDAR],'Value')))*...
      (get(handles.con_LDA,'Value')+get(handles.con_ANN,'Value')+get(handles.con_GMM,'Value'))));  
tot = 1/(tot+0.05*tot);
pbCount = 0;                                                            % re-initialize progress bar counter
set(handles.con_progressText,'String','Performing Classification...');  % update progess text

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLASSIFICATION (LDA)
if get(handles.con_LDA,'Value')                                         % if 'LDA' classification checkbox is selected
    set(handles.con_progressText,'String','Performing Classification (LDA)...');  % update progess text
    clear LDAT*                                                         % clear any LDA training and testing error records
    for tr = 1:numtrials                                                % loop for number of trials
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if tr == 1                                                      % if trial #1: used as training set
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01)                                             % slight pause to force GUI update
                eval(['TrainData = ' char(itr) num2str(tr) ';']);       % create training data array
                eval(['TestData = ' char(itr) num2str(tr) ';']);        % create test data array
                eval(['TrainClass = classvec(' num2str(tr) ',:);']);    % list of classes corresponding to training data
                eval(['TestClass = classvec(' num2str(tr) ',:);']);     % list of classes corresponding to test data
                [PeTr,PeTe,TrPredict,TePredict,Wg,Cg] = ...             % perform linear discriminant analysis
                    lda(TrainData,TestData,TrainClass,TestClass);           
                eval(['PeTrain_' char(itr) num2str(tr) ' = PeTr;']);    % copy training prob. of error to (eg.) 'PeTrain_TD1'
                eval(['PeTest_' char(itr) num2str(tr) ' = PeTe;']);     % copy test prob. of error to (eg.) 'PeTest_TD1'
                eval(['TrainPredict_' char(itr) num2str(tr) '=TrPredict;']);% copy training prediction to (eg.) 'TrainPredict_TD1'
                eval(['TestPredict_' char(itr) num2str(tr) '=TePredict;']); % copy training prediction to (eg.) 'TestPredict_TD1'
                eval(['Wg_' char(itr) ' = Wg;']);                       % copy LDA weights to (eg.) 'Wg_TD'
                eval(['Cg_' char(itr) ' = Cg;']);                       % copy LDA weights to (eg.) 'Cg_TD'
                eval(['LDA_' char(itr) '.W = Wg;']);                    % store LDA weights in structure for saving
                eval(['LDA_' char(itr) '.C = Cg;']);                    % store LDA weights in structure for saving
                eval(['LDATrainErr_' char(itr) ' = (1-PeTr)*100;'])     % store LDA training error
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
            end
        else
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01)                                             % slight pause to force GUI update
                eval(['Ntest = size(' char(itr) '1,2);']);              % number of patterns in data set
                eval(['data =' char(itr) num2str(tr) ';']);             % fill a dummy data array with feature set: eg. TD2
                eval(['W = Wg_' char(itr) ';']);                        % copy associated LDA weights to 'W' variable
                eval(['C = Cg_' char(itr) ';']);                        % copy associated LDA weights to 'C' variable
                for i = 1:Ntest                                         % loop for number of patterns
                    Pre(i) = vec2ind(compet([data(:,i)'*W + C]'));      % competitive transfer function; to get predicted class value
                end
                eval(['LDAPredict_' char(itr) '(:,tr-1) = Pre'';']);    % save vector of class predictions
                nerr = length(find(Pre~=classvec(tr,:)));               % total number of errors in class predictions
                clear Pre data
                eval(['LDATestErr_' char(itr) '(:,tr-1)=nerr/Ntest*100;']); % store LDA testing error
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop

                if ov_flag                                              % if overlapped data           
                    eval(['Ntest = size(' char(itr) '_OV1,2);']);       % number of patterns is data set
                    eval(['data=' char(itr) '_OV' num2str(tr) ';']);    % fill a dummy data array with feature set: eg. TD_OV2
                    for i = 1:Ntest                                     % loop for number of patterns
                        Pre(i) = vec2ind(compet([data(:,i)'*W + C]'));  % competitive transfer function; to get predicted class value
                    end
                    eval(['LDAPredict_' char(itr) '_OV(:,tr-1) = Pre'';']); % save vector of class predictions
                    nerr = length(find(Pre~=overlap_cls(tr,:)));        % total number of errors in class predictions
                    clear Pre data
                    eval(['LDATestErr_' char(itr) '_OV(:,tr-1)=nerr/Ntest*100;']); % store LDA testing error
                end
                
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
            end
        end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLASSIFICATION (ANN)
if get(handles.con_ANN,'Value')                                         % if 'ANN' classification checkbox is selected
    set(handles.con_progressText,'String','Performing Classification (ANN)...');  % update progess text
    clear ANNT*                                                         % clear any ANN training and testing error records
    try, OVTr = ann.OVtrainData;                                        % get training set prefix from structure
    catch, end
    for tr = 1:numtrials                                                % loop for number of trials (2+ for ANN b/c of tesing always with first set)
        if get(handles.con_abort,'UserData'), break, end                % catch a quit request and jump out of loop
        if tr == 1                                                      % if trial #1: used as training set        
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop           
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01)                                             % slight pause to force GUI update
                eval(['TrSet =' char(itr) OVTr '1;']);                  % create training set of data
                eval(['TrCls = overlap_cls(1,:);']);                    % list of classes corresponding to training data
                if isempty(OVTr)                                        % if OVTr = '' means training data is non-overlapped
                    eval(['TrCls = classvec(1,:);']);                   % list of classes corresponding to training data
                end
                [TrNorm,meanp,stdp] = prestd(TrSet);                    % normalize the training coefficients before input to the ANN
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
                [TrainPredictMLP,mlptrain,net]...                       % train the neural network
                    = trainmlp(TrNorm,TrCls,ann,NumClasses);
                eval(['ANNTrainErr_' char(itr) '= mlptrain;']);         % store ANN training error
                eval(['ANN_' char(itr) '.net = net;']);                 % store ANN net
                eval(['ANN_' char(itr) '.mean = meanp;']);              % store ANN normalization mean 
                eval(['ANN_' char(itr) '.std = stdp;']);                % store ANN normalization std
            end
        else
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop           
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01)                                             % slight pause to force GUI update
                eval(['TeSet =' char(itr) num2str(tr) ';']);            % create test set of data
                eval(['TeCls = classvec(' num2str(tr) ',:);']);         % list of classes corresponding to test data
                eval(['net = ANN_' char(itr) '.net;']);                 % get stored neural network
                eval(['meanp = ANN_' char(itr) '.mean;']);              % get stored normalization mean                    
                eval(['stdp = ANN_' char(itr) '.std;']);                % get stored normalization std
                [TeNorm] = trastd(TeSet,meanp,stdp);                    % normalize the testing coefficients before input to the ANN
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
                [TestPredictMLP,mlptest]...                             % test the neural network
                    = testmlp(TeNorm,TeCls,net);
                eval(['ANNPredict_' char(itr) ...                       % save vector of class predictions
                        '(:,tr-1) = TestPredictMLP'';']);
                eval(['ANNTestErr_' char(itr) ...                       % store ANN testing error
                        '(:,tr-1) = mlptest;']); 
                if ov_flag
                    eval(['TeSet =' char(itr) '_OV' num2str(tr) ';']);  % create test set of data
                    eval(['TeCls = overlap_cls(' num2str(tr) ',:);']);  % list of classes corresponding to test data
                    [TeNorm] = trastd(TeSet,meanp,stdp);                % normalize the testing coefficients before input to the ANN
                    if get(handles.con_abort,'UserData'), break, end    % catch a quit request and jump out of loop
                    [TestPredictMLP,mlptest]...                         % test the neural network
                        = testmlp(TeNorm,TeCls,net);
                    eval(['ANNPredict_' char(itr) '_OV' ...             % save vector of class predictions
                            '(:,tr-1) = TestPredictMLP'';']);
                    eval(['ANNTestErr_' char(itr) '_OV' ...             % store ANN testing error
                            '(:,tr-1) = mlptest;']);
                end
            end
        end
    end
    clear meanp* stdp*
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLASSIFICATION (GMM)
if get(handles.con_GMM,'Value')                                         % if 'GMM' classification checkbox is selected
   set(handles.con_progressText,'String','Performing Classification (GMM)...');  % update progess text
   clear GMMT*                                                          % clear any GMM training and testing error records
   gmm.eps = 1e-8;                                                      % set value of regularizer on posteriors and on covariance
   warning off MATLAB:divideByZero                                      % supress divideByZero warning for GMM 
   warning off MATLAB:singularMatrix                                    % supress singularMatrix warning for GMM 
   for tr = 1:numtrials                                                 % loop for number of trials
       if get(handles.con_abort,'UserData'), break, end                 % catch a quit request and jump out of loop
        if tr == 1                                                      % if trial #1: used as training set
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01) 
                eval(['TrainData = ' char(itr) num2str(tr) ';']);       % create training data array
                eval(['TrainClass = classvec(' num2str(tr) ',:);']);    % list of classes corresponding to training data
                [alpha_tr,mean_tr,cov_tr] = ...                         % perform Gaussian mixture model training
                    traingmm2(TrainData,TrainClass,gmm);           
                [Pre] = testgmm2(TrainData,mean_tr,cov_tr,alpha_tr);    % perform Gaussian mixture model testing on training data
                nerr = length(find(TrainClass~=Pre));                   % number of errors 
                eval(['GMMTrainErr_' char(itr) ...                      % store GMM training error
                        ' = (nerr/length(TrainClass))*100;']) 
                clear Pre nerr
                eval(['alpha_' char(itr) ' = alpha_tr;']);              % copy GMM alpha to (eg.) 'alpha_TD'
                eval(['mean_' char(itr) ' = mean_tr;']);                % copy GMM mean to (eg.) 'mean_TD'
                eval(['cov_' char(itr) ' = cov_tr;']);                  % copy GMM cov to (eg.) 'cov_TD' 
                eval(['GMM_' char(itr) '.alpha = alpha_tr;']);          % copy GMM alpha to structure for saving
                eval(['GMM_' char(itr) '.mean = mean_tr;']);            % copy GMM mean to structure for saving
                eval(['GMM_' char(itr) '.cov = cov_tr;']);              % copy GMM cov to structure for saving 
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
                
                if ov_flag                                              % if overlapped data 
                    eval(['TrainData = ' char(itr) '_OV' num2str(tr) ';']); % create training data array
                    eval(['TrainClass = overlap_cls(' num2str(tr) ',:);']); % list of classes corresponding to training data
                    [alpha_tr,mean_tr,cov_tr] = ...                     % perform Gaussian mixture model training
                        traingmm2(TrainData,TrainClass,gmm);           
                    [Pre] = testgmm2(TrainData,mean_tr,cov_tr,alpha_tr); % perform Gaussian mixture model testing on training data
                    nerr = length(find(TrainClass~=Pre));               % number of errors 
                    eval(['GMMTrainErr_' char(itr) '_OV' ...            % store GMM training error
                            ' = (nerr/length(TrainClass))*100;']) 
                    clear Pre nerr
                    eval(['alpha_' char(itr) '_OV = alpha_tr;']);       % copy GMM alpha to (eg.) 'alpha_TD_OV'
                    eval(['mean_' char(itr) '_OV = mean_tr;']);         % copy GMM mean to (eg.) 'mean_TD_OV'
                    eval(['cov_' char(itr) '_OV = cov_tr;']);           % copy GMM cov to (eg.) 'cov_TD_OV' 
                    eval(['GMM_' char(itr) '_OV.alpha = alpha_tr;']);   % copy GMM alpha to structure for saving
                    eval(['GMM_' char(itr) '_OV.mean = mean_tr;']);     % copy GMM mean to structure for saving
                    eval(['GMM_' char(itr) '_OV.cov = cov_tr;']);       % copy GMM cov to structure for saving 
                end                
                
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
            end
        else
            for itr = {'TD' 'AR' 'TDAR'}                                % loop through all possible features' types
                eval(['dum = handles.con_' char(itr) ';']);             % dummy: handles of feature type checkbox
                if ~get(dum,'Value'), continue, end                     % if current feature type is not selected skip to next in list
                pbCount = pbCount + 1/numtrials;                        % advance progress bar counter
                width = progress_pos(3)*(pbCount*tot);                  % caculate new progress bar width
                set(handles.con_progress,'BackgroundColor',[1 0 0],...  % draw progress bar update
                    'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
                pause(0.01)                                             % slight pause to force GUI update
                eval(['alpha_tr = alpha_' char(itr) ';']);              % copy GMM alpha from (eg.) 'alpha_TD'
                eval(['mean_tr = mean_' char(itr) ';']);                % copy GMM mean from (eg.) 'mean_TD'
                eval(['cov_tr = cov_' char(itr) ';']);                  % copy GMM cov from (eg.) 'cov_TD' 
                eval(['data=' char(itr) num2str(tr) ';']);              % fill a dummy data array with feature set: eg. TD2
                eval(['TestClass = classvec(' num2str(tr) ',:);']);     % list of classes corresponding to testing data
                [Pre] = testgmm2(data,mean_tr,cov_tr,alpha_tr);         % perform Gaussian mixture model testing
                eval(['GMMPredict_' char(itr) '(:,tr-1) = Pre'';']);    % save vector of class predictions
                nerr = length(find(TestClass~=Pre));                    % number of errors 
                eval(['GMMTestErr_' char(itr) '(:,tr-1) = (nerr/length(TestClass))*100;']) % store GMM training error
                clear Pre nerr data
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop

                if ov_flag                                              % if overlapped data 
                    eval(['alpha_tr = alpha_' char(itr) '_OV;']);       % copy GMM alpha from (eg.) 'alpha_TD_OV'
                    eval(['mean_tr = mean_' char(itr) '_OV;']);         % copy GMM mean from (eg.) 'mean_TD_OV'
                    eval(['cov_tr = cov_' char(itr) '_OV;']);           % copy GMM cov from (eg.) 'cov_TD_OV' 
                    eval(['data=' char(itr) '_OV' num2str(tr) ';']);    % fill a dummy data array with feature set: eg. TD2
                    eval(['TestClass = overlap_cls(' num2str(tr) ',:);']); % list of classes corresponding to testing data
                    [Pre] = testgmm2(data,mean_tr,cov_tr,alpha_tr);     % perform Gaussian mixture model testing
                    eval(['GMMPredict_' char(itr) '_OV(:,tr-1) = Pre'';']); % save vector of class predictions
                    nerr = length(find(TestClass~=Pre));                % number of errors 
                    eval(['GMMTestErr_' char(itr) '_OV(:,tr-1) = (nerr/length(TestClass))*100;']) % store GMM training error
                    clear Pre nerr data
                end
                
                if get(handles.con_abort,'UserData'), break, end        % catch a quit request and jump out of loop
            end           
       end
   end
end

if ~get(handles.con_abort,'UserData')                                   % catch a quit request to skip following statements
    set(handles.con_progress,'BackgroundColor',[0.753 0.753 0.753],...  % reset progress bar color
        'Position',progress_pos);                                       % reset progress bar size
    pause(0.01)                                                         % slight pause to force GUI update
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% MAJORITY VOTING 
% re-initialize total iteration count (for progressbar operation)
tot = 1/((sum(cell2mat(get([handles.con_TD handles.con_AR handles.con_TDAR],'Value')))*...
      (get(handles.con_LDA,'Value')+get(handles.con_ANN,'Value')+get(handles.con_GMM,'Value')))*...
      (numtrials-1)+0.5); 
pbCount = 0;                                                            % re-initialize progress bar counter
if get(handles.con_MVon,'Value')                                        % if 'MVon' checkbox is selected
   set(handles.con_progressText,'String','Performing Majority voting...');  % update progess text
   for tr = 2:numtrials                                                 % loop for number of trials (indexes of arrays to be used have been -1)
       if get(handles.con_abort,'UserData'), break, end                 % catch a quit request and jump out of loop
       for itr = {'TD' 'AR' 'TDAR'}                                     % loop through all possible features' types
           eval(['dum = handles.con_' char(itr) ';']);                  % dummy: handles of feature type checkbox
           if ~get(dum,'Value'), continue, end                          % if current feature type is not selected skip to next in list
           
           %%%%%%%%%%%%%%%%%%%%%%%%%%%% LDA
           if get(handles.con_LDA,'Value')
               if get(handles.con_abort,'UserData'), break, end         % catch a quit request and jump out of loop
               pbCount = pbCount + 1;                                   % advance progress bar counter
               width = progress_pos(3)*(pbCount*tot);                   % caculate new progress bar width
               set(handles.con_progress,'BackgroundColor',[1 0 0],...   % draw progress bar update
                   'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
               pause(0.01)                                              % slight pause to force GUI update
               eval(['Ntest = size(' char(itr) '1,2);']);               % number of patterns in data set
               eval(['data=LDAPredict_' char(itr) '(:,tr-1);']);        % vector of predicted classes  
               Pre = majority2(data,nvote,NumClasses);                  % calculate new predictions based on majority voting
               eval(['LDAPredictMV_' char(itr) '(:,tr-1)=Pre'';']);     % copy to new array of predicted values
               nerr = length(find(Pre~=classvec(tr,:)));                % total number of errors in class predictions
               clear Pre data
               eval(['LDATestErrMV_' char(itr) '(:,tr-1)=nerr/Ntest*100;']); % store LDA testing error (majority voted)
               if get(handles.con_abort,'UserData'), break, end         % catch a quit request and jump out of loop
               if ov_flag
                   eval(['Ntest = size(' char(itr) '_OV1,2);']);        % number of patterns in data set
                   eval(['data=LDAPredict_' char(itr) '_OV(:,tr-1);']); % vector of predicted classes  
                   Pre = majority2(data,nvoteOV,NumClasses);            % calculate new predictions based on majority voting
                   eval(['LDAPredictMV_' char(itr) '_OV(:,tr-1)=Pre'';']); % copy to new array of predicted values
                   nerr = length(find(Pre~=overlap_cls(tr,:)));         % total number of errors in class predictions
                   clear Pre data
                   eval(['LDATestErrMV_' char(itr) '_OV(:,tr-1)=nerr/Ntest*100;']); % store LDA testing error (majority voted)
               end
           end
           
           %%%%%%%%%%%%%%%%%%%%%%%%%%%% ANN
           if get(handles.con_ANN,'Value')
               if get(handles.con_abort,'UserData'), break, end         % catch a quit request and jump out of loop
               pbCount = pbCount + 1;                                   % advance progress bar counter
               width = progress_pos(3)*(pbCount*tot);                   % caculate new progress bar width
               set(handles.con_progress,'BackgroundColor',[1 0 0],...   % draw progress bar update
                   'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
               pause(0.01)                                              % slight pause to force GUI update
               eval(['Ntest = size(' char(itr) '1,2);']);               % number of patterns in data set
               eval(['data=ANNPredict_' char(itr) '(:,tr-1);']);        % vector of predicted classes  
               Pre = majority2(data,nvote,NumClasses);                  % calculate new predictions based on majority voting
               eval(['ANNPredictMV_' char(itr) '(:,tr-1)=Pre'';']);     % copy to new array of predicted values
                   eval(['dum = classvec(' num2str(tr) ',:);']);        % list of classes corresponding to test data
               nerr = length(find(Pre~=dum));                           % total number of errors in class predictions
               clear Pre data dum
               eval(['ANNTestErrMV_' char(itr) '(:,tr-1)=nerr/Ntest*100;']); % store ANN testing error (majority voted)
               if ov_flag
                   eval(['Ntest = size(' char(itr) '_OV1,2);']);        % number of patterns in data set
                   eval(['data=ANNPredict_' char(itr) '_OV(:,tr-1);']); % vector of predicted classes  
                   Pre = majority2(data,nvoteOV,NumClasses);            % calculate new predictions based on majority voting
                   eval(['ANNPredictMV_' char(itr) '_OV(:,tr-1)=Pre'';']); % copy to new array of predicted values
                   eval(['dum = overlap_cls(' num2str(tr) ',:);']);     % list of classes corresponding to test data
                   nerr = length(find(Pre~=dum));                       % total number of errors in class predictions
                   clear Pre data dum
                   eval(['ANNTestErrMV_' char(itr) '_OV(:,tr-1)=nerr/Ntest*100;']); % store ANN testing error (majority voted)
               end
           end
           
           %%%%%%%%%%%%%%%%%%%%%%%%%%%% GMM
           if get(handles.con_GMM,'Value')
               if get(handles.con_abort,'UserData'), break, end         % catch a quit request and jump out of loop
               pbCount = pbCount + 1;                                   % advance progress bar counter
               width = progress_pos(3)*(pbCount*tot);                   % caculate new progress bar width
               set(handles.con_progress,'BackgroundColor',[1 0 0],...   % draw progress bar update
                   'Position',[progress_pos(1) progress_pos(2) width progress_pos(4)]);
               pause(0.01)                                              % slight pause to force GUI update
               eval(['Ntest = size(' char(itr) '1,2);']);               % number of patterns in data set
               eval(['data=GMMPredict_' char(itr) '(:,tr-1);']);        % vector of predicted classes  
               Pre = majority2(data,nvote,NumClasses);                  % calculate new predictions based on majority voting
               eval(['GMMPredictMV_' char(itr) '(:,tr-1)=Pre'';']);     % copy to new array of predicted values
               nerr = length(find(Pre~=classvec(tr,:)));                % total number of errors in class predictions
               clear Pre data
               eval(['GMMTestErrMV_' char(itr) '(:,tr-1)=nerr/Ntest*100;']); % store GMM testing error (majority voted)
               if get(handles.con_abort,'UserData'), break, end         % catch a quit request and jump out of loop
               if ov_flag
                   eval(['Ntest = size(' char(itr) '_OV1,2);']);        % number of patterns in data set
                   eval(['data=GMMPredict_' char(itr) '_OV(:,tr-1);']); % vector of predicted classes  
                   Pre = majority2(data,nvoteOV,NumClasses);            % calculate new predictions based on majority voting
                   eval(['GMMPredictMV_' char(itr) '_OV(:,tr-1)=Pre'';']); % copy to new array of predicted values
                   nerr = length(find(Pre~=overlap_cls(tr,:)));         % total number of errors in class predictions
                   clear Pre data
                   eval(['GMMTestErrMV_' char(itr) '_OV(:,tr-1)=nerr/Ntest*100;']); % store GMM testing error (majority voted)
               end
           end
           
       end
   end
end

set(handles.con_progress,'BackgroundColor',[0.753 0.753 0.753],...      % reset progress bar color
    'Position',progress_pos);                                           % reset progress bar size
pause(0.01)                                                             % slight pause to force GUI update
set(handles.con_progressText,'String','Finishing...');                  % update progess text


%%%%%%%%%%%%%%%%%%%%%%%%%%%% DISPLAYING RESULTS 
idx = 0; pctErr = [];  pctErrObj = [];                                  % initialization of loop counters and arrays
for id1={'LDATestErr','ANNTestErr','GMMTestErr'}                        % 4-for loops (to build all possible solutions' names)
    for id2={'','MV'}
        for id3={'_TD','_AR','_TDAR'}
            for id4={'','_OV'}
                idx = idx + 1;                                          % advance loop index counter
                name = [char(id1) char(id2) char(id3) char(id4)];       % construct string name of solution
                obj = findobj('Tag',['con_' name]);                     % get handle of associated text display box
                set(obj,'BackgroundColor',[0.753 0.753 0.753]);         % set/reset back color of text box to grey
                set(obj,'ForegroundColor',[0 0 0]);                     % set/reset text color of text box to black
                pctErrObj(idx) = obj;                                   % add handle to ordered list
                try                                                     % try (will complete if reslut exists)
                    eval(['dum = mean(' name ');']);                    % average the %error results over testing trials
                    pctErr(idx) = dum;                                  % place averaged result in vector
                    dum = sprintf('%5.2f',dum);                         % format number to string for display
                    set(obj,'String',num2str(dum));                     % display %error result in appropriate location
                    eval(['storage.' name ' = pctErr(idx);'])           % store results for saving
                catch                                                   % if no result existed (this solution not processed)
                    set(obj,'String','');                               % display no result in text box
                    pctErr(idx) = NaN;                                  % add NaN in vector as place holder
                end
            end
        end
    end
end

set(handles.con_saveGroup,'Enable','on');                               % enable save current controls button
[dum,ix] = sort(pctErr);                                                % sort the results from best to worst
dum = sum(isfinite(pctErr));                                            % count the number of finite results
pctErrObj = pctErrObj(ix);                                              % re-order handles vector to match sort order
pctErrObj = pctErrObj(1:dum);                                           % trim handles of non-computed solutions

minPE = min(pctErr);                                                    % minimum percent error result
maxPE = max(pctErr);                                                    % maximum percent error result
rngPE = max([maxPE-minPE 0.1]);                                         % range of percent error results
for i = 1:length(pctErrObj)                                             % loop through remaining results
    sclPE = (pctErr(ix(i))-minPE)/rngPE;                                % scaled percent error results
    set(pctErrObj(i),'BackgroundColor',[sclPE*0.3 1-(sclPE)*0.6 sclPE*0.3]) % set background to appropriate color (same color for same numbers)
end

stopTime = clock;                                                       % get processing session finish time
runTime = etime(stopTime,startTime)/60;                                 % processing session time in minutes
filnm = get(handles.con_dataFile,'String');                             % get file name from text box
if get(handles.con_dataCurrent,'Value')                                 % if current data is being processed
    disp(['Processing took ' num2str(runTime) ' minutes.']);            % display running time in command window
else
    disp(['Processing ' filnm ' took ' num2str(runTime) ' minutes.']);  % display running time in command window
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%% STORING CONTROL SCHEMES
for clfr={'LDA','ANN','GMM'}                                            % 2-for loops (to build all possible schemes' names)
    for feat={'_TD','_AR','_TDAR'}
        var = [char(clfr) char(feat)];                                  % construct name
        eval(['storage.' var '=' var ';']);                             % store scheme (empty matrix if non-existent)
        if char(clfr)=='GMM'                                            % if 'GMM'
            var = [char(clfr) char(feat) '_OV'];                        % do names with '_OV' added
            eval(['storage.' var '=' var ';']);                         % store scheme
        end      
    end 
end
try, storage.MnTD = MnTD; catch, end                                    % if it exists, store TD features normalizing means
try, storage.SdTD = SdTD; catch, end                                    % if it exists, store TD features normalizing std. devs.
try, storage.MnAR = MnAR; catch, end                                    % if it exists, store AR features normalizing means
try, storage.SdAR = SdAR; catch, end                                    % if it exists, store AR features normalizing std. devs.
try, storage.MnTDAR = MnTDAR; catch, end                                % if it exists, store AR features normalizing means
try, storage.SdTDAR = SdTDAR; catch, end                                % if it exists, store AR features normalizing std. devs.
storage.runTime = runTime;                                              % store processing runnig time in minutes (for interest only)
storage.reclen = get(handles.con_reclen,'String');                      % store record length
storage.procdelay = get(handles.con_procdelay,'String');                % store processing delay 
storage.TD = get(handles.con_TD,'Value');                               % store TD checkbox value
storage.AR = get(handles.con_AR,'Value');                               % store AR checkbox value
storage.TDAR = get(handles.con_TDAR,'Value');                           % store TDAR checkbox value
storage.PCAon = get(handles.con_PCAon,'Value');                         % store PCA choice
storage.numPC = get(handles.con_PCAnum,'String');                       % store number of PCA
storage.EvecTD = EvecTD;                                                % store TD Eigenvector (or [] for no PCA)                                                     
storage.EvecAR = EvecAR;                                                % store AR Eigenvector (or [] for no PCA)                                                     
storage.EvecTDAR = EvecTDAR;                                            % store TDAR Eigenvector (or [] for no PCA)                                                     
storage.LDA = get(handles.con_LDA,'Value');                             % store LDA checkbox value
storage.ANN = get(handles.con_ANN,'Value');                             % store ANN checkbox value
storage.GMM = get(handles.con_GMM,'Value');                             % store GMM checkbox value
try, storage.ARorder = ARorder; catch, end                              % if it exists, store AR order
try, storage.annParams = ann; catch, end                                % if it exists, store ann parameters
try, storage.gmmParams = gmm; catch, end                                % if it exists, store gmm parameters
if get(handles.con_MVoff,'Value')                                       % if majority voting is not selected
    storage.MVtype = 'OFF';                                             % store 'OFF' as majority voting type
elseif get(handles.con_MVautoSelect,'Value')                            % else if MVauto is selected
    storage.MVtype = 'ATO';                                             % store 'ATO' as majority voting type
elseif get(handles.con_MVfixSelect,'Value')                             % else if MVfix is selected
    storage.MVtype = 'FIX';                                             % store 'FIX' as majority voting type
end
storage.MVon = get(handles.con_MVon,'Value');                           % store MVon choice from storage
storage.MVfixSelect = get(handles.con_MVfixSelect,'Value');             % store MVfixSelect choice from storage
storage.MVautoSelect = get(handles.con_MVautoSelect,'Value');           % store MVautoSelect choice from storage
storage.MVfixValue = get(handles.con_MVfixValue,'String');              % store fixed MV value
storage.MVautoValue = get(handles.con_MVautoValue,'String');            % store automatic MV value
storage.MDnone = get(handles.con_MDnone,'Value');                       % store no MD checkbox value
storage.MDrms = get(handles.con_MDrms,'Value');                         % store rms MD checkbox value
storage.rmsData = rmsData;                                              % store assocated rms values for proportional control
storage.MDthresh = get(handles.con_MDthresh,'Value');                   % store threshold MD checkbox value
storage.OnOffData = OnOffData;                                          % store assocated values for threshold control
storage.MDthreshVal = MDthreshVal;                                      % store associated on/off threshold percentage
storage.dataCurrent = get(handles.con_dataCurrent,'Value');             % store current data choice
storage.dataFile = get(handles.con_dataFile,'String');                  % store filename
storage.dataFilepath = get(handles.con_dataFile,'UserData');            % store saved filepath
storage.params = paramsStruct;                                          % store acquisition parameters
storage.channels = channels;                                            % store channels used in processing

card = paramsStruct.card;                                               % get string acquisition card type
cardinfo = get(handles.acq_cardtype,'UserData');                        % retreive cardinfo data structure
dum = strmatch(card,cardinfo.code');                                    % dummy: find index if acquisition card matches one that is available 
if ~isempty(dum)                                                        % if card is available
    set(handles.acq_cardtype,'Value',dum);                              % set cardtype to acquisition
    cardinfo.cur_fs(dum)=paramsStruct.fs;                               % load acquisition (user entered) sample rate
    for i=1:cardinfo.channels(dum)                                      % cycle through all appropriate channels
        eval(['hdl = handles.acq_ch' num2str(i) ';']);                  % get handle to associated channel button
        set(hdl,'Value',0,'ForegroundColor',[0.5 0.5 0.5]);             % set to unselected state
        if find(storage.channels==i)                                    % find stored selected channels
            set(hdl,'Value',1,'ForegroundColor',[0 0 0]);               % set associated to selected state
        end
        ch(i) = get(hdl,'Value');                                       % fill array of channel 'selected' values
    end
    ch = find(ch ~= 0);                                                 % indexes of selected buttons
    if isempty(ch)                                                      % if no channels are selected
        set(handles.acq_liveSig,'Enable','off')                         % disable live signal viewing button
        set(handles.acq_start,'Enable','off')                           % disable start button
        set(handles.acq_abort,'Enable','off')                           % disable abort button
    else                                                                % if at least 1 channel is selected
        set(handles.acq_liveSig,'Enable','on')                          % enable live signal viewing button
        set(handles.acq_start,'Enable','on')                            % enable start button
    end 
    set(handles.acq_cardtype,'UserData',cardinfo);                      % store updated cardinfo structure
end

set(handles.con_upload,'UserData',storage);                             % store 'storage' structure in upload button UserData
set(handles.con_saveGroup,'UserData',0);                                % reset a saved flag; indicates curret process not saved

batchFinish(handles)                                                    % call to clean up after batch processing


% --------------------------------------------------------------------
% --- Executes on callback.
function batchFinish(handles)

global onList
progress_pos = get(handles.con_progressframebox,'Position');            % get default progress box size from backing frame
set(handles.con_progressText,'String','Finishing...');                  % update progess text
set(handles.con_progress,'BackgroundColor',[0.753 0.753 0.753],...      % reset progress bar color
    'Position',progress_pos);                                           % reset progress bar size
set(onList,'Enable','on')                                               % re-enable controls when finished running
set(handles.con_upload,'Enable','off');                                 % disable upload button
set(handles.con_start,'UserData',0,'Enable','on');                      % re-initialize continue flag and enable start button when finished running
set(handles.con_abort,'Enable','off');                                  % disable abort button when finished running
set(handles.con_progressText,'String','');                              % update progess text


% --------------------------------------------------------------------
% --- Executes on callback.
function highlightResult(hObject, eventdata, handles)
% hObject    handle to con_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global control feat classifier MVtype OVflag

bgColor = get(hObject,'BackgroundColor');                               % get selted item's bakgroung color 
if isempty(get(hObject,'String'))                                       % if no data
    return                                                              % skip out of function
elseif bgColor == [0 0 1];                                              % if color is blue (a previously selected item)
    set(hObject,'BackgroundColor',get(hObject,'UserData'));             % reset color to unslected state
    set(hObject,'ForegroundColor',[0 0 0]);                             % return text to black
    set(handles.con_upload,'Enable','off');                             % disable control upload button
else                                                                    % if item is to be selected
    dum = findobj('BackgroundColor',[0 0 1],'ForegroundColor',[1 1 1],'Value',34); % get handle to previously selected item
    set(dum,'BackgroundColor',get(dum,'UserData'));                     % reset previously selected item's color
    set(dum,'ForegroundColor',[0 0 0]);                                 % reset previously selected item's text to black
    set(hObject,'BackgroundColor',[0 0 1]);                             % set current selected item color to blue
    set(hObject,'ForegroundColor',[1 1 1]);                             % set current selected item text to white
    set(hObject,'UserData',bgColor);                                    % store selected item's unselected color in UserData
    set(handles.con_upload,'Enable','on');                              % enable control upload button
    storage = get(handles.con_upload,'UserData');                       % retreive storage structure
    nm = get(hObject,'Tag'); classifier = nm(5:7);                      % get classifier name from selected
    MVtype = 'OFF';                                                     % set MV type (default type... may be overridden below)
    if strfind(nm,'MV'), MVtype = storage.MVtype; end                   % if a MV scheme is picked, set MV type to stored type
    OVflag = ~isempty(strfind(nm,'OV'));                                % set OV flag to 1 if OV-data scheme is selected
    control = [];                                                       % empty control structure; initialize
    switch classifier                                                   % case; from classifier type
        case 'LDA'                                                      % if 'LDA' classifier
            if strfind(nm,'TDAR')                                       % if 'TDAR' feature extraction
                control = storage.LDA_TDAR; feat = 'TDAR';              % retreive appropriate control and feature type
            elseif strfind(nm,'AR')                                     % if 'AR' feature extraction
                control = storage.LDA_AR; feat = 'AR';                  % retreive appropriate control and feature type
            elseif strfind(nm,'TD')                                     % if 'TD' feature extraction
                control = storage.LDA_TD; feat = 'TD';                  % retreive appropriate control and feature type
            end
        case 'ANN'
            if strfind(nm,'TDAR')                                       % if 'TDAR' feature extraction
                control = storage.ANN_TDAR; feat = 'TDAR';              % retreive appropriate control and feature type
            elseif strfind(nm,'AR')                                     % if 'AR' feature extraction
                control = storage.ANN_AR; feat = 'AR';                  % retreive appropriate control and feature type
            elseif strfind(nm,'TD')                                     % if 'TD' feature extraction
                control = storage.ANN_TD; feat = 'TD';                  % retreive appropriate control and feature type
            end
        case 'GMM'
            if strfind(nm,'_OV')                                        % if 'OV' data
                if strfind(nm,'TDAR')                                   % if 'TDAR' feature extraction
                    control = storage.GMM_TDAR_OV; feat = 'TDAR';       % retreive appropriate control and feature type
                elseif strfind(nm,'AR')                                 % if 'AR' feature extraction
                    control = storage.GMM_AR_OV; feat = 'AR';           % retreive appropriate control and feature type
                elseif strfind(nm,'TD')                                 % if 'TD' feature extraction
                    control = storage.GMM_TD_OV; feat = 'TD';           % retreive appropriate control and feature type
                end
            else                                                        % if not 'OV' data
                if strfind(nm,'TDAR')                                   % if 'TDAR' feature extraction
                    control = storage.GMM_TDAR; feat = 'TDAR';          % retreive appropriate control and feature type
                elseif strfind(nm,'AR')                                 % if 'AR' feature extraction
                    control = storage.GMM_AR; feat = 'AR';              % retreive appropriate control and feature type
                elseif strfind(nm,'TD')                                 % if 'TD' feature extraction
                    control = storage.GMM_TD; feat = 'TD';              % retreive appropriate control and feature type
                end
            end
    end
end


% --------------------------------------------------------------------
% --- Executes on button press in con_upload.
function con_upload_Callback(hObject, eventdata, handles)
% hObject    handle to con_upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global control feat classifier MVtype OVflag limits ARorder ann gmm callflag FtestParams

dum = findobj('BackgroundColor',[0 0 1],'ForegroundColor',[1 1 1],'Value',34); % get handle to selected item
storage = get(hObject,'UserData');                                      % get stored structure of info
cardinfo = get(handles.acq_cardtype,'UserData');                        % get stored info about a/d hardware
cardidx = get(handles.acq_cardtype,'Value');                            % get index of card type selection menu
card = char(cardinfo.code(cardidx));                                    % string name of selcted hardware
if ~isequal(storage.params.card, card)
    warndlg('Available a/d hardware not compatible with selected control scheme',''); % warning
    return                                                              % exit the function and return to normal                
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% proper parameters check
callflag = 0;                                                           % initialize a flag to be set if any parameters off
if str2num(storage.reclen) ~= str2num(get(handles.con_reclen,'String'));% check stored reclen against entered
    callflag = 1; end                                                   % if not the same, set the flag
if str2num(storage.procdelay) ~= str2num(get(handles.con_procdelay,'String')); % check the stored p.delay against entered
    callflag = 1; end                                                   % if not the same, set the flag    
switch feat                                                             % choose features type
    case 'TDAR'                                                         % if 'TDAR' features
        if ~get(handles.con_TDAR,'Value'); callflag = 1; end            % TDAR checkbox; if not the same, set the flag
        if storage.ARorder ~= ARorder;   callflag = 1; end              % AR order; if not the same, set the flag
    case 'TD'                                                           % if 'TD'
        if ~get(handles.con_TD,'Value'); callflag = 1; end              % TD checkbox; if not the same, set the flag
    case 'AR'                                                           % if 'AR'
        if ~get(handles.con_AR,'Value'); callflag = 1; end              % AR checkbox; if not the same, set the flag
        if storage.ARorder ~= ARorder;   callflag = 1; end              % AR order; if not the same, set the flag
end
if storage.PCAon ~= get(handles.con_PCAon,'Value'); callflag = 1; end   % PCA on button; if not the same, set the flag
if storage.PCAon && ...                                                 % if PCA on is intended and ...
   (str2num(storage.numPC) ~= str2num(get(handles.con_PCAnum,'String')));% # of PCA not the same ...
    callflag = 1; end                                                   % set the flag
switch classifier                                                       % choose features type
    case 'LDA'                                                          % if 'LDA' 
        if ~get(handles.con_LDA,'Value'); callflag = 1; end             % LDA checkbox; if not the same, set the flag
    case 'ANN'                                                          % if 'ANN'
        if ~get(handles.con_ANN,'Value'); callflag = 1; end             % ANN checkbox; if not the same, set the flag 
        if ~isequal(ann,storage.annParams); callflag = 1; end           % ANN parameters structure; if not the same, set the flag
    case 'GMM'                                                          % if 'GMM'
        if ~get(handles.con_GMM,'Value'); callflag = 1; end             % GMM checkbox; if not the same, set the flag
        if ~isequal(gmm,storage.gmmParams); callflag = 1; end           % GMM parmeters structure; if not the same, set the flag
end
if MVtype ~= 'OFF'                                                      % if user has selcted an OV control scheme
    if storage.MVon ~= get(handles.con_MVon,'Value'); callflag = 1; end % MV on button; if not the same, set the flag
    if storage.MVon;                                                    % if MV is intended
        if storage.MVfixSelect ~= get(handles.con_MVfixSelect,'Value'); % check stored MVfixSelect choice against entered
            callflag = 1; end                                           % if not the same, set the flag
        if storage.MVfixSelect && ...                                   % if MVfixSelect is intended and ...
                (str2num(storage.MVfixValue) ~= str2num(get(handles.con_MVfixValue,'String'))); % values do not agree ...
            callflag = 1; end                                           % set the flag
        if storage.MVautoSelect ~= get(handles.con_MVautoSelect,'Value');% check stored MVautoSelect choice against entered
            callflag = 1; end                                           % if not the same, set the flag
        if storage.MVautoSelect && ...                                  % if MVautoSelect is intended and ...
                (str2num(storage.MVautoValue) ~= str2num(get(handles.con_MVautoValue,'String'))); % values do not agree ...
            callflag = 1; end                                           % set the flag
    end
end
if storage.MDnone ~= get(handles.con_MDnone,'Value'); callflag = 1; end % if MDnone button value doesn't agree with stored, set flag
if storage.MDrms ~= get(handles.con_MDrms,'Value'); callflag = 1; end   % if MDrms button value doesn't agree with stored, set flag
if storage.MDthresh ~= get(handles.con_MDthresh,'Value'); callflag = 1; end % if MDthresh button value doesn't agree with stored, set flag
if storage.MDthresh && ...                                              % if MD on/off thresholding is selected and..
   storage.MDthreshVal ~= str2num(get(handles.con_MDthreshVal,'String')); % percentage value doesn't agree with stored, 
    callflag = 1;                                                       % set flag
end  

if callflag                                                             % if the flag has been set by a mismatch
    starterrors(handles,storage)                                        % call 'starterrors' GUI to prompt user to fix
    uiwait                                                              % wait for GUI to be answered
    if callflag, return, end                                            % if GUI cancelled, jump out of upload routine
end

if strfind(get(handles.acq_liveSig,'Enable'),'off')                     % ensure input channels are selected
    warndlg('No channels are selected, visit the ''Acquisition'' tab.',''); % display reminder to pick channels
    return                                                              % exit the function and return to normal
end
slidersOff = findobj('Style','slider','Enable','on');                   % get all enabled slider objects
sliderslist = get(slidersOff,'Tag');                                    % associate tag names
slidersOff = slidersOff(strmatch('ven_',sliderslist));                  % compile handle list of 'ven_' items
set(slidersOff,'Enable','off');                                         % disable slider controls while running in realtime

%%%%%%%%%%%%%%%%%%%%%%%%%%%% class associations
cls = storage.params.listdata.strings;                                  % cell array of selected contractions
for i = 1:length(cls)                                                   % loop for number of contractions
    d = '';                                                             % initialize string that will contain associated function calls
    if strfind(cls{i},'Shoulder Flexion'), d=[d ' shoulder_flex']; end
    if strfind(cls{i},'Shoulder Extension'), d=[d ' shoulder_extend']; end
    if strfind(cls{i},'Shoulder Pronation'), d=[d ' shoulder_pronate']; end
    if strfind(cls{i},'Shoulder Supination'), d=[d ' shoulder_supinate']; end
    if strfind(cls{i},'Shoulder Abduction'), d=[d ' shoulder_abduct']; end
    if strfind(cls{i},'Shoulder Adduction'), d=[d ' shoulder_adduct']; end
    if strfind(cls{i},'Elbow Flexion'), d=[d ' elbow_flex']; end
    if strfind(cls{i},'Elbow Extension'), d=[d ' elbow_extend']; end
    if strfind(cls{i},'Forearm Pronation'), d=[d ' wrist_pronate']; end
    if strfind(cls{i},'Forearm Supination'), d=[d ' wrist_supinate']; end
    if strfind(cls{i},'Wrist Flexion'), d=[d ' wrist_flex']; end
    if strfind(cls{i},'Wrist Extension'), d=[d ' wrist_extend']; end
    if strfind(cls{i},'Wrist Abduction'), d=[d ' wrist_abduct']; end
    if strfind(cls{i},'Wrist Adduction'), d=[d ' wrist_adduct']; end
    if strfind(cls{i},'Spread Fingers Open'), d=[d ' hand_fingers_spread']; end
    if strfind(cls{i},'Key Gripping'), d=[d ' hand_close_key']; end
    if strfind(cls{i},'Chuck Gripping'), d=[d ' hand_close_power']; end
    if strfind(cls{i},'Retract Fingers from Spread'), d=[d ' hand_fingers_close']; end
    if strfind(cls{i},'Release Key Grip'), d=[d ' hand_open_key']; end
    if strfind(cls{i},'Release Chuck Grip'), d=[d ' hand_open_power']; end
    if strfind(cls{i},'No Movement'), d=[d '']; end
    call{i} = d;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%% setup analog input object and realtime loop
channels = storage.channels;                                            % get stored channels to use
for i=1:cardinfo.channels(cardidx)                                      % cycle through all appropriate channels
    eval(['ch(i) = get(handles.acq_ch' num2str(i) ',''Value'');'])      % fill array of channel 'selected' values
end
chcheck1 = find(ch ~= 0);                                               % indicies of selected buttons
chBtns = findobj('Type','uicontrol','Style','togglebutton');            % populate list of all togglebutton uicontrol objects
objectlist = get(chBtns,'Tag');                                         % associate tag names
chBtns = chBtns(strmatch('con_ch',objectlist));                         % compile handle list of 'con_ch' items (the channel buttons)
chBtnsX = findobj(chBtns,'Visible','on');                               % handles of visible buttons 
chBtns = findobj(chBtnsX,'Value',1);                                    % handles of selected button 
dum = get(chBtns,'String');                                             % either cell array or single string
if isempty(chBtnsX)                                                     % if no buttons visible
    chcheck2 = channels;                                                % set check array to cahnnels to prevent message
elseif isempty(chBtns)                                                  % if no buttons selected 
    chcheck2 = [];                                                      % set check array to empty
elseif iscell(dum)                                                      % if cell of strings (multiple buttons selected)
    chcheck2 = sort(str2num(char(dum)))';                               % indicies of selected channels
else                                                                    % else string of single channel
    chcheck2 = sort(str2num(dum))';                                     % selected channel
end
if ~isequal(channels, chcheck1, chcheck2)                               % if stored channels don't match GUI channels
    mismatch = questdlg({'               -----------  PLEASE BE ADVISED  -----------' '    '...
                         'The channels'' selection above (in the ''Process data'' pane) AND/OR' ...
                         'the channels'' selection under the Acquisition tab do not agree with the' ...
                         '(required) channels about to be used in this virtual environment session.' '  '...
                         '   Channels (to be used): ' ...
                         ['         ' num2str(channels)] ...
                         '    ' '    ' ...
            '   '},' SELECTED CHANNELS WARNING !','I understand, proceed','Abort','I understand, proceed');
    switch mismatch,
        case 'I understand, proceed',                                   % if user understands they will proceed
        case {'Abort' ''},                                              % if 'Abort' 
            return                                                      % jump out of virtual session before it starts
    end
end

chans = [1:cardinfo.channels(cardidx)];                                 % need both variables (channels unchanged for later)
switch card                                                             % select case based on current a/d card
    case 'winsound'                                                     % if sound card
        skew = 'none';                                                  % no skew for sound card
        ai = analoginput(card,0);                                       % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
    case 'mcc'                                                          % if measurement computing a/d
        skew = 'Equisample';                                            % 'Equisample' skew for sound card
        ai = analoginput(card,1);                                       % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
        chans = chans-1;                                                % this a/d requires channel indexes begin at 0
    case 'nidaq'                                                        % if national instruments a/d
        ai = analoginput(card,'Dev1');                                       % create analog input object
        ai.InputType = 'SingleEnded';                                   % set ai object input type
        chans = chans-1;                                                % this a/d requires channel indexes begin at 0
	case 'myopen'
		chans = chans-1;
end

%chan = addchannel(ai, chans);                                           % add channels to ai object
user_fs = storage.params.fs;                                            % get stored sample frequency 
decimate = storage.params.decimate;                                     % get decimate from storage (1 used as flag if no value)
if decimate > 1                                                         % if user entered FS is below H/W limit (from stored)
    fs = decimate*user_fs;                                              % determine adjusted FS
else                                                                    % if user entered FS is within H/W limit
    fs = user_fs;                                                       % assign FS
end
numPC = str2num(storage.numPC);                                         % number of principal components
if(exist('ai'))
	ai.LoggingMode = 'Memory';                                              % set ai object to default log to memory 
	ai.LogToDiskMode = 'overwrite';                                         % set ai log to disk mode to overwrite
	ai.TriggerType = 'Immediate';                                           % set to start running immediately on 'start(ai)'
	ai.SamplesPerTrigger = inf;                                             % will enable ai run until 'stop(ai)'
	try
		ai.SampleRate = fs;                                                 % set ai sample rate
	catch
end
    warndlg('Available a/d hardware not compatible with selected control scheme',''); % warning
    return                                                              % exit the function and return to normal
end
if(exist('ai'))
	actualRate = get(ai,'SampleRate');									% retrieve the actual sample rate for hardware
else
	actualRate = 1000;
end
ceven('v_toggle_Callback',handles.v_toggle,[],handles)                  % call to switch to virtual environment

switch feat                                                             % choose features type
    case 'TDAR'                                                         % if 'TDAR' features
        TDgo = 1; ARgo = 1;                                             % set both TD and AR flags
        Mn = storage.MnTDAR;                                            % load normalizing values
        Sd = storage.SdTDAR;                                            % load normalizing values
        ARorder = storage.ARorder;                                      % load AR order
        Evec = storage.EvecTDAR;                                        % load PCA Eigenvector (will be empty for PCA 'off')
    case 'TD'                                                           % if 'TD'
        TDgo = 1; ARgo = 0;                                             % set TD flags
        Mn = storage.MnTD;                                              % load normalizing values
        Sd = storage.SdTD;                                              % load normalizing values
        Evec = storage.EvecTD;                                          % load PCA Eigenvector (will be empty for PCA 'off')
    case 'AR'                                                           % if 'AR'
        TDgo = 0; ARgo = 1;                                             % set AR flag
        ARorder = storage.ARorder;                                      % load AR order
        Mn = storage.MnAR;                                              % load normalizing values
        Sd = storage.SdAR;                                              % load normalizing values
        Evec = storage.EvecAR;                                          % load PCA Eigenvector (will be empty for PCA 'off')
end

datasize = round(actualRate/1000*str2num(storage.reclen));              % number of samples for each record
inc = ceil(datasize/decimate);                                          % a value needed for tdfeats function below
wait = str2num(storage.procdelay)/1000;                                 % processing delay in seconds (default is with OV data)
if ~OVflag                                                              % if non-OV session
    wait = str2num(storage.reclen)/1000;                                % set processing delay to record length if OV data
end

switch MVtype;                                                          % choose MV type
    case 'OFF'                                                          % if 'OFF'
        MVflag = 0;                                                     % set MV flag to 0
    case 'ATO'                                                          % if 'ATO'
        MVflag = 2;                                                     % set MV flag to 2
        MVautoValue = str2num(storage.MVautoValue)/1000;                % load automatic MV value
        if MVautoValue/wait < 2, MVflag = 0; end                        % if voting would be pointless (for non-overlapped case) do not MV
    case 'FIX'                                                          % if 'FIX'
        MVflag = 3;                                                     % set MV flag to 3
        MVfixValue = str2num(storage.MVfixValue);                       % load fixed MV value
end

predicted = [];                                                         % initialize mavority voting prediction vector
%start(ai);                                                              % start data acquisition object     

pause(str2num(storage.reclen)/1000);                                    % pause for one record at start to ensure data is there for loop
start_time = clock;                                                          % get start time
voteStart = start_time;                                                      % get start time of auto-calibrating auto start
tic;                                                                    % a starting time point

testing = 0;                                                            % initialize testing flag
try FtestParams.testing = testing; catch, end                           % reset currently testing flag if running
pindraw('end')                                                          % call to remove test bars and clothespin

while strfind(get(handles.v_toggle,'FontWeight'),'bold')
    try,                                                                % try block, won't complete if error (not testing)
        if FtestParams.testing                                          % if testing, continue with checks
            testing = FtestParams.testing;                              % set testing flag
            chktime = etime(clock,FtestParams.startTime);               % elapsed test time to check
            if FtestParams.countTest && ...                             % if it is a counted test
                    chktime/60 >= FtestParams.time                      % and time has expired
                clothespinResults(FtestParams,chktime)                  % call to display results  
                uiwait                                                  % wait for GUI to be okayed
                FtestParams.testing = 0;                                % reset currently testing flag
                pindraw('end')                                          % call to remove test bars and clothespin
            elseif FtestParams.timedTest && ...                         % if it is a timed test
                    FtestParams.pinCount == FtestParams.number          % and count has been achieved
                clothespinResults(FtestParams,chktime)                  % call to display results      
                uiwait                                                  % wait for GUI to be okayed                          
                FtestParams.testing = 0;                                % reset currently testing flag
                pindraw('end')                                          % call to remove test bars and clothespin
            end
        end
    catch,                                                              % no process in catch block; continue on
    end
    pause(wait-toc)                                                     % wait up to processing delay (what is left of it)                                         
    tic;                                                                % reset start point in time
    timenow = clock;                                                    % time now
    % data = peekdata(ai,datasize);                                       % get block of data from a/d
    data = UDP_receive(inc, 0); 
    if length(chans)~=length(channels), data = data(:,channels); end    % strip out unselected channels
    if decimate > 1, data = data(1:decimate:end,:); end                 % decimate data (for below min FS)
    if (size(data,1)-inc) ~= 0, continue, end                           % if proper number of samples is not available, skip ahead to next loop iteration 
  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%% feature extraction
    if TDgo && ~ARgo                                                    % if TD is selected
        Coef = tdfeats(data,1,inc);                                     % call to function tdfeats to get TD features
        TDfeatures = (Coef-Mn(:,channels))./(Sd(:,channels));           % normalize TD features
        Features = TDfeatures(:);                                       % vectorize
    end
    if ARgo && ~TDgo                                                    % if AR is selected
        arcoef = real(lpc(data,ARorder));                               % call to calculate the linear prediction coefficients
        rms = sqrt(sum(data.^2)/size(data,1));                          % calculate root mean square of data
        Coef = [arcoef(:,2:end) rms']';                                 % call to function tdfeats to get AR features
        ARfeatures = (Coef-Mn(:,channels))./(Sd(:,channels));           % normalize AR features
        Features = ARfeatures(:);                                       % vectorize
    end
    if TDgo && ARgo                                                     % if TDAR is selected
        TDCoef = tdfeats(data,1,inc);                                   % call to function tdfeats to get TD features
        arcoef = real(lpc(data,ARorder));                               % call to calculate the linear prediction coefficients
        rms = sqrt(sum(data.^2)/size(data,1));                          % calculate root mean square of data
        ARCoef = [arcoef(:,2:end) rms']';                               % AR coefficients and RMS to ARfeatures collection 
        Coef = [TDCoef; ARCoef;];                                       % concatenate TD and AR features
        TDARfeatures = (Coef-Mn(:,channels))./(Sd(:,channels));         % normalize TDAR features
        Features = TDARfeatures(:);                                     % vectorize
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%% principal components analysis
    if ~isempty(Evec)                                                   % if PCA is 'on' (Evec will not be empty)
        Features = (Features'*Evec)';                                   % data by the eigenvector
        Features = Features(1:min([numPC length(Features)]));           % trim features to number of principal components
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%% classification
    clear Pre
    switch classifier
        case 'LDA'
            Pre = vec2ind(compet([Features'*control.W + control.C]'));  % competitive transfer function; to get predicted class value
        case 'ANN'
            [FeatNorm] = trastd(Features,control.mean,control.std);     % normalize the before input to the ANN
            Pre = testmlp(FeatNorm,1,control.net);                      % run the neural network; get predicted class          
        case 'GMM'
            Pre = testgmm2(Features,control.mean,control.cov,control.alpha); % perform Gaussian mixture model testing on training data
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%% motion/level detection
    prop_spd = -1;                                                      % default 'off' indicator for proportional speed
    if storage.MDthresh                                                 % if threshold based level activation
        rms = mean(sqrt(sum(data.*conj(data))/size(data,1)));           % root mean square for contraction (mean of channels' RMS)
        threshold = storage.OnOffData(Pre)*(storage.MDthreshVal/100);   % threshold (percentage value)
        if rms < threshold, continue, end                               % if below threshold, no class, skip to next loop iteration 
    elseif storage.MDrms                                                % if rms based proportional control
        rms = mean(sqrt(sum(data.*conj(data))/size(data,1)));           % root mean square for contraction (mean of channels' RMS)
        prop_spd = round((rms/storage.rmsData(Pre))*100);               % proportional speed value >=0; (100 is 100% of recorded) 
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%% mavority voting
    switch MVflag
        case 0
            virtual_motion(handles,call{Pre},prop_spd)                  % call movement with Predicted class value
        case 1  % MV auto/fix normal operation
            predicted = [predicted(2:end) Pre];                         % append current prediction to vector of class predictions
            for j=1:max(predicted)                                      % calculate new prediction based on majority voting (loop is fasteset)
                vt(j) = length(find(predicted==j));                     % count number of each class
            end
            [dum, Pre] = max(vt);                                       % determine class with highest count
            virtual_motion(handles,call{Pre},prop_spd)                  % call movement with Predicted class value
        case 2  % auto (calibration stage)
            predicted = [predicted Pre];                                % append current prediction to vector of class predictions
            for j=1:max(predicted)                                      % calculate new prediction based on majority voting (loop is fasteset)
                vt(j) = length(find(predicted==j));                     % count number of each class
            end
            [dum, Pre] = max(vt);                                       % determine class with highest count
            virtual_motion(handles,call{Pre},prop_spd)                  % call movement with Predicted class value
            if (wait+etime(timenow,voteStart)) >= MVautoValue           % if elapsed time plus one more delay is >= the auto-calibrating value
                MVflag = 1;                                             % set to call case 1 on next pass
            end
        case 3  % fix (startup stage)
            predicted = [predicted Pre];                                % append current prediction to vector of class predictions
            for j=1:max(predicted)                                      % calculate new prediction based on majority voting (loop is fasteset)
                vt(j) = length(find(predicted==j));                     % count number of each class
            end
            [dum, Pre] = max(vt);                                       % determine class with highest count
			virtual_motion(handles,call{Pre},prop_spd)                  % call movement with Predicted class value
            if length(predicted) == MVfixValue-1                        % if number of predictions is one less than given number
                MVflag = 1;                                             % set to call case 1 on next pass
			end
	end
    fprintf(1,'Class: %s  Intensity: %g\n',...
      call{Pre},prop_spd);
	%disp(call{Pre},'   ',prop_spd);    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%% hand activity auto-releasing
    if get(findobj('Tag','hand_autorelease'),'UserData') && ...         % determine if auto hand releasing is intended
       isempty(call{Pre})                                               % if any motions were just called, no auto release this loop 
        d = '';                                                         % initialize string that will contain associated function calls
        if (limits(1).hand_pg ~= limits(3).hand_pg) && ...              % if power grip is not home
                isempty(strmatch(' hand_open_power',call))              % and the hand open power class is not used
            d = [d ' hand_open_power']; end                             % add call to close from power grip to string
        if (limits(1).hand_kg ~= limits(3).hand_kg) && ...              % if key grip is not home
                isempty(strmatch(' hand_open_key',call)) && ...         % and the hand open key class is not used
                testing ~= 1                                            % and clothespin test is not running
            d = [d ' hand_open_key']; end                               % add call to close from key grip to string
        if (limits(1).hand_sf ~= limits(3).hand_sf) && ...              % if fingers spread is not home
                isempty(strmatch(' hand_fingers_close',call))  && ...   % and the hand fingers close class is not used
                testing ~= 1                                            % and clothespin test is not running
            d = [d ' hand_fingers_close']; end                          % add call to close spread fingers to string
        virtual_motion(handles,d,-1)                                    % call movement to release hand
    end       
           
    drawnow;                                                            % force flush of graphics (pause should do this)
end

if(exist('ai'))
	stop(ai);                                                               % stop data acquisition object
end

try FtestParams.testing = 0; catch, end                                 % reset currently testing flag if running
pindraw('end')                                                          % call to remove test bars and clothespin

set(handles.ven_shoulder_fe,'Value',limits(3).shoulder_fe);             % update the slider position
set(handles.ven_shoulder_ps,'Value',limits(3).shoulder_ps);             % update the slider position
set(handles.ven_shoulder_aa,'Value',limits(3).shoulder_aa);             % update the slider position
set(handles.ven_elbow_fe,'Value',limits(3).elbow_fe);                   % update the slider position
set(handles.ven_wrist_fe,'Value',limits(3).wrist_fe);                   % update the slider position
set(handles.ven_wrist_ps,'Value',limits(3).wrist_ps);                   % update the slider position
set(handles.ven_wrist_aa,'Value',limits(3).wrist_aa);                   % update the slider position
set(handles.ven_hand_pg,'Value',limits(3).hand_pg);                     % update the slider position
set(handles.ven_hand_kg,'Value',limits(3).hand_kg);                     % update the slider position
set(handles.ven_hand_sf,'Value',limits(3).hand_sf);                     % update the slider position
set(slidersOff,'Enable','on');                                          % re-enable slider controls


% --------------------------------------------------------------------
% --- Executes on button press in con_saveGroup.
function con_saveGroup_Callback(hObject, eventdata, handles)
% hObject    handle to con_saveGroup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

dum = pwd;                                                              % dummy: store prestent working directory
Filepath = get(handles.con_loadGroup,'UserData');                       % get name of last chosen data directory
if ~isempty(Filepath)                                                   % if a directory name was stored
    cd(Filepath(1:length(Filepath)-1));                                 % change the working directory to search
end
[dataFile,dataFilepath] = uiputfile( {'*_Results.mat','Results File (*_Results.mat)'; ...
 '*.*', 'All Files (*.*)'}, 'Save group of results to file:');          % have user pick (create) file
cd(dum);                                                                % reset proper present working directory
if ~dataFile, return, end                                               % if prompt was cancelled, exit function
dum = strfind(dataFile,'_Results');                                     % determine if '_Results' was enetered in file name
if dum, dataFile = dataFile(1:dum-1); end                               % if so, remove it
outfile = [dataFilepath dataFile '_Results.mat'];                       % create proper filename and extension
storage = get(handles.con_upload,'UserData');                           % get 'storage' structure to be saved to file
eval(['save ''' outfile ''' storage']);                                 % save to file
set(hObject,'UserData',1);                                              % set saved flag to indicate current process saved
set(handles.con_loadGroup,'UserData',dataFilepath);                     % store as current data directory


% --------------------------------------------------------------------
% --- Executes on button press in con_loadGroup.
function con_loadGroup_Callback(hObject, eventdata, handles)
% hObject    handle to con_loadGroup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ARorder ann gmm

if ~get(handles.con_saveGroup,'UserData')                               % if user is about to write over current unsaved processed session
    choice = questdlg({['Continuing will mean the loss of recently '... % question box, to warn user
        'processed results.'] 'Do you wish to continue with load?'}, ...                            
        'Continue with load?', ...
        'Yes','No','No');
    if isempty(choice), return, end                                     % if closed, return
    if choice(1)=='N', return, end                                      % if 'No', return
end

dum = pwd;                                                              % dummy: store prestent working directory
Filepath = get(handles.con_loadGroup,'UserData');                       % get name of last chosen data directory
if ~isempty(Filepath)                                                   % if a directory name was stored
    cd(Filepath(1:length(Filepath)-1));                                 % change the working directory to search
end
[dataFile, dataFilepath] = uigetfile('*_Results.mat',...                % have user pick file
    'Please choose results file to load:');
cd(dum);                                                                % reset proper present working directory
if ~dataFile, return, end                                               % if prompt was cancelled, exit function
infile = [dataFilepath dataFile];                                       % create proper filename and extension
load(infile)                                                            % load the saved file (will load the 'storage' structure)
if ~exist('storage'),                                                   % if 'storage' doesn't exist
    warndlg('Invalid or corrupt results file: Aborting load...','');    % display aborting reminder
    return                                                              % return to function
end  

chkfile1 = [dataFilepath storage.params.subjectID '_Fulldata.mat'];     % data file to check for
chkfile2 = [dataFilepath storage.params.subjectID '_params.mat'];       % params file to check for
if exist(chkfile1,'file') && exist(chkfile2,'file')                     % if both exist in this location (possibly moved)
    storage.params.directory = dataFilepath(1:end-1);                   % properly update stored directory pointer
    storage.dataFilepath = dataFilepath;                                % properly update stored directory pointer
end

set(handles.con_upload,'UserData',storage,'Enable','off')               % store 'storage' and disable button if on 
set(handles.con_saveGroup,'UserData',1);                                % set saved flag to indicate current process saved
set(handles.con_loadGroup,'UserData',dataFilepath);                     % store as current data directory

idx = 0; pctErr = [];  pctErrObj = [];                                  % initialization of loop counters and arrays
for id1={'LDATestErr','ANNTestErr','GMMTestErr'}                        % 4-for loops (to build all possible solutions' names)
    for id2={'','MV'}
        for id3={'_TD','_AR','_TDAR'}
            for id4={'','_OV'}
                idx = idx + 1;                                          % advance loop index counter
                name = [char(id1) char(id2) char(id3) char(id4)];       % construct string name of solution
                obj = findobj('Tag',['con_' name]);                     % get handle of associated text display box
                set(obj,'BackgroundColor',[0.753 0.753 0.753]);         % set/reset back color of text box to grey
                set(obj,'ForegroundColor',[0 0 0]);                     % set/reset text color of text box to black
                pctErrObj(idx) = obj;                                   % add handle to ordered list
                if isfield(storage,name),                               % if result existed for this field
                    eval(['dum = storage.' name ';'])                   % get stored %error result
                    pctErr(idx) = dum;                                  % place averaged result in vector
                    dum = sprintf('%5.2f',dum);                         % format number to string for display
                    set(obj,'String',num2str(dum));                     % display %error result in appropriate location
                else                                                    % if no result existed (this solution not processed)
                    set(obj,'String','');                               % display no result in text box
                    pctErr(idx) = NaN;                                  % add NaN in vector as place holder
                end
            end
        end
    end
end

set(handles.con_saveGroup,'Enable','on');                               % enable save current controls button
[dum,ix] = sort(pctErr);                                                % sort the results from best to worst
dum = sum(isfinite(pctErr));                                            % count the number of finite results
pctErrObj = pctErrObj(ix);                                              % re-order handles vector to match sort order
pctErrObj = pctErrObj(1:dum);                                           % trim handles of non-computed solutions

minPE = min(pctErr);                                                    % minimum percent error result
maxPE = max(pctErr);                                                    % maximum percent error result
rngPE = max([maxPE-minPE 0.1]);                                         % range of percent error results
for i = 1:length(pctErrObj)                                             % loop through remaining results
    sclPE = (pctErr(ix(i))-minPE)/rngPE;                                % scaled percent error results
    set(pctErrObj(i),'BackgroundColor',[sclPE*0.3 1-(sclPE)*0.6 sclPE*0.3]) % set background to appropriate color (same color for same numbers)
end

set(handles.con_reclen,'String',storage.reclen);                        % load record length from storage
set(handles.con_procdelay,'String',storage.procdelay);                  % load processing delay from storage
set(handles.con_TD,'Value',storage.TD);                                 % load TD checkbox value from storage
set(handles.con_AR,'Value',storage.AR);                                 % load AR checkbox value from storage
set(handles.con_TDAR,'Value',storage.TDAR);                             % load TDAR checkbox value from storage
set(handles.con_PCAon,'Value',storage.PCAon);                           % load PCA choice from storage                  
ceven('con_PCAon_Callback',gcbo,[],guidata(gcbo))                       % call PCAon callback to update GUI properly
set(handles.con_PCAnum,'String',storage.numPC);                         % load number of PCA from storage
set(handles.con_LDA,'Value',storage.LDA);                               % load TD checkbox value from storage
set(handles.con_ANN,'Value',storage.ANN);                               % load TD checkbox value from storage
set(handles.con_GMM,'Value',storage.GMM);                               % load TD checkbox value from storage
try, ARorder = storage.ARorder; catch, end                              % load AR order if it was stored
try, ann = storage.annParams; catch, end                                % load ann parameters if saved
try, gmm = storage.gmmParams; catch, end                                % load gmm parameters if saved
set(handles.con_MVon,'Value',storage.MVon);                             % load MVon choice from storage
set(handles.con_MVfixSelect,'Value',storage.MVfixSelect);               % load MVfixSelect choice from storage
set(handles.con_MVautoSelect,'Value',storage.MVautoSelect);             % load MVauoSelect choice from storage
ceven('con_MVon_Callback',gcbo,[],guidata(gcbo))                        % call MVon callback to update GUI properly
set(handles.con_MVfixValue,'String',storage.MVfixValue);                % load fixed MV value from storage
set(handles.con_MVautoValue,'String',storage.MVautoValue);              % load automatic MV value from storage
set(handles.con_MDnone,'Value',storage.MDnone );                        % load no MD checkbox value from storage
set(handles.con_MDrms,'Value',storage.MDrms);                           % load rms MD checkbox value from storage
set(handles.con_MDthresh,'Value',storage.MDthresh);                     % load threshold MD checkbox value from storage
set(handles.con_MDthreshVal,'String',num2str(storage.MDthreshVal));     % load MD On/Off threshold percentage value
set(handles.con_dataCurrent,'Value',0);                                 % force current data choice to 'unselected'
if storage.dataCurrent                                                  % if session-data was stored
    storage.dataFilepath = [storage.params.directory '\'];              % get filepath from saved parameters
    storage.dataFile = [storage.params.subjectID '_Fulldata.mat'];      % get filename from saved parameters
    set(handles.con_dataFile,'String',storage.dataFile);                % load filename 
    set(handles.con_dataFile,'UserData',storage.dataFilepath);          % load filepath (to UserData)
else                                                                    % else, data was from a saved group
    set(handles.con_dataFile,'String',storage.dataFile);                % load filename from storage
    set(handles.con_dataFile,'UserData',storage.dataFilepath);          % load filepath from storage (to UserData)
end                          
ceven('con_dataCurrent_Callback',gcbo,[],guidata(gcbo))                 % call dataCurrent callback to update GUI properly
ceven('con_dataFile_Callback',gcbo,[],guidata(gcbo));                   % call dataFile callback to load data and parameters
set(handles.con_dataSaved,'UserData',storage.channels);                 % load used channels from storage
dispChannels(handles);                                                  % select used channels and update GUI
params = storage.params;                                                % retreive acquisition parameters structure
set(handles.acq_subjectID,'String',params.subjectID);                   % load subjectID from storage.params
set(handles.acq_delay,'String',params.delay);                           % load delay from storage.params
set(handles.acq_duration,'String',params.duration);                     % load duration from storage.params
set(handles.acq_numreps,'String',params.numreps);                       % load numreps from storage.params
set(handles.acq_numtrials,'String',params.numtrials);                   % load numtrials from storage.params
dir = params.directory;                                                 % get strored acquisition directory
dirDisp = [dir '\'];                                                    % add '\' to directory name
if length(dirDisp) > 40                                                 % if directory display string is too long for textbox
    dirDisp = ['...' dir(length(dir)-36:length(dir)) '\'];              % trim front and add '...'
end
set(handles.acq_rootDir,'String',dirDisp)                               % display appropriate directory string
set(handles.acq_rootDir,'UserData',dir)                                 % store proper diretory path
set(handles.acq_recChoice,'Value',params.recChoice);                    % load recChoice value from storage.params
set(handles.acq_subDir,'Value',params.subDir);                          % load subDir value from storage.params
set(handles.acq_saveLogfile,'Value',params.saveLogfile);                % load saveLogfile value from storage.params
set(handles.acq_saveParams,'Value',params.saveParams);                  % load saveParams value from storage.params
set(handles.acq_saveData,'Value',params.saveData);                      % load saveData value from storage.params
ceven('acq_recChoice_Callback',handles.acq_recChoice,[],handles); % call recChoice callback to set parameters
set(handles.acq_contSetup,'UserData',params.listdata);                  % load and store acquisition contractions structure

card = params.card;                                                     % get string acquisition card type
cardinfo = get(handles.acq_cardtype,'UserData');                        % retreive cardinfo data structure
dum = strmatch(card,cardinfo.code');                                    % dummy: find index if acquisition card matches one that is available 
if ~isempty(dum)                                                        % if card is available
    set(handles.acq_cardtype,'Value',dum);                              % set cardtype to acquisition
    cardinfo.cur_fs(dum)=params.fs;                                     % load acquisition sample rate
    for i=1:cardinfo.channels(dum)                                      % cycle through all appropriate channels
        eval(['hdl = handles.acq_ch' num2str(i) ';']);                  % get handle to associated channel button
        set(hdl,'Value',0,'ForegroundColor',[0.5 0.5 0.5]);             % set to unselected state
        if find(params.channels==i)                                     % find stored selected channels
            set(hdl,'Value',1,'ForegroundColor',[0 0 0]);               % set associated to selected state
        end
        ch(i) = get(hdl,'Value');                                       % fill array of channel 'selected' values
    end
    ch = find(ch ~= 0);                                                 % indexes of selected buttons
    if isempty(ch)                                                      % if no channels are selected
        set(handles.acq_liveSig,'Enable','off')                         % disable live signal viewing button
        set(handles.acq_start,'Enable','off')                           % disable start button
        set(handles.acq_abort,'Enable','off')                           % disable abort button
    else                                                                % if at least 1 channel is selected
        set(handles.acq_liveSig,'Enable','on')                          % enable live signal viewing button
        set(handles.acq_start,'Enable','on')                            % enable start button
    end 
    set(handles.acq_cardtype,'UserData',cardinfo);                      % store updated cardinfo structure
end


% --------------------------------------------------------------------
function virtual_motion(handles, functions, prop_spd)
% handles    structure with handles and user data (see GUIDATA)
% functions  string containing associated function calls (separated by spaces)

global limits
if strfind(get(handles.v_toggle,'FontWeight'),'norm'), return, end      % return if user stopped
if isempty(functions), return, end                                      % empty string if 'no movement' class; return
if prop_spd == 0, return, end                                           % if prop speed is about 0 - 'no movement'; return
sp = strfind(functions,' ');                                            % find index of spaces in input string
sp = [sp length(functions)+1];                                          % final index marks end of string (for use below)
if prop_spd == -1                                                       % if not going to be called with a proportional speed
    for i=1:length(sp)-1                                                % for combined motions, more than one movement function will be called
        name = functions((sp(i)+1):(sp(i+1)-1));                        % extract function name from input string
        try eval(['limits = ' name '(limits);']); catch, end            % call function - if error do nothing
    end
else                                                                    % if going to be called with a proportional speed
    for i=1:length(sp)-1                                                % for combined motions, more than one movement function will be called
        name = functions((sp(i)+1):(sp(i+1)-1));                        % extract function name from input string
        try eval(['limits = ' name '(limits, char(prop_spd));']); catch, end   % call function - convert prop_spd to a character code (>=1)
    end
end


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_shoulder_fe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shoulder_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).shoulder_fe);                               % set the slider min value
set(hObject,'Max',limits(2).shoulder_fe);                               % set the slider max value
set(hObject,'Value',limits(3).shoulder_fe);                             % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_shoulder_fe_Callback(hObject, eventdata, handles)
% hObject    handle to shoulder_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).shoulder_fe;                                    % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = shoulder_flex(limits,deg);                                     % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_shoulder_ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shoulder_ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).shoulder_ps);                               % set the slider min value
set(hObject,'Max',limits(2).shoulder_ps);                               % set the slider max value
set(hObject,'Value',limits(3).shoulder_ps);                             % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_shoulder_ps_Callback(hObject, eventdata, handles)
% hObject    handle to shoulder_ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).shoulder_ps;                                    % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = shoulder_pronate(limits,deg);                                  % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_shoulder_aa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shoulder_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).shoulder_aa);                               % set the slider min value
set(hObject,'Max',limits(2).shoulder_aa);                               % set the slider max value
set(hObject,'Value',limits(3).shoulder_aa);                             % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_shoulder_aa_Callback(hObject, eventdata, handles)
% hObject    handle to shoulder_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).shoulder_aa;                                    % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = shoulder_adduct(limits,deg);                                   % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_elbow_fe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to elbow_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).elbow_fe);                                  % set the slider min value
set(hObject,'Max',limits(2).elbow_fe);                                  % set the slider max value
set(hObject,'Value',limits(3).elbow_fe);                                % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_elbow_fe_Callback(hObject, eventdata, handles)
% hObject    handle to elbow_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).elbow_fe;                                       % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = elbow_flex(limits,deg);                                        % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_wrist_ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wrist_ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).wrist_ps);                                  % set the slider min value
set(hObject,'Max',limits(2).wrist_ps);                                  % set the slider max value
set(hObject,'Value',limits(3).wrist_ps);                                % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_wrist_ps_Callback(hObject, eventdata, handles)
% hObject    handle to wrist_ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).wrist_ps;                                       % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = wrist_pronate(limits,deg);                                     % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_wrist_fe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wrist_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).wrist_fe);                                  % set the slider min value
set(hObject,'Max',limits(2).wrist_fe);                                  % set the slider max value
set(hObject,'Value',limits(3).wrist_fe);                                % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_wrist_fe_Callback(hObject, eventdata, handles)
% hObject    handle to wrist_fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).wrist_fe;                                       % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = wrist_flex(limits,deg);                                        % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_wrist_aa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wrist_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).wrist_aa);                                  % set the slider min value
set(hObject,'Max',limits(2).wrist_aa);                                  % set the slider max value
set(hObject,'Value',limits(3).wrist_aa);                                % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_wrist_aa_Callback(hObject, eventdata, handles)
% hObject    handle to wrist_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).wrist_aa;                                       % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = wrist_abduct(limits,deg);                                      % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_hand_pg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hand_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).hand_pg);                                   % set the slider min value
set(hObject,'Max',limits(2).hand_pg);                                   % set the slider max value
set(hObject,'Value',limits(3).hand_pg);                                 % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_hand_pg_Callback(hObject, eventdata, handles)
% hObject    handle to hand_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).hand_pg;                                        % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = hand_close_power(limits,deg);                                  % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_hand_kg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hand_kg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).hand_kg);                                   % set the slider min value
set(hObject,'Max',limits(2).hand_kg);                                   % set the slider max value
set(hObject,'Value',limits(3).hand_kg);                                 % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_hand_kg_Callback(hObject, eventdata, handles)
% hObject    handle to hand_kg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).hand_kg;                                        % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = hand_close_key(limits,deg);                                    % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function ven_hand_sf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hand_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global limits default_limits

set(hObject,'Min',limits(1).hand_sf);                                   % set the slider min value
set(hObject,'Max',limits(2).hand_sf);                                   % set the slider max value
set(hObject,'Value',limits(3).hand_sf);                                 % set the slider starting value


% --------------------------------------------------------------------
% --- Executes on slider movement.
function ven_hand_sf_Callback(hObject, eventdata, handles)
% hObject    handle to hand_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits

current_pos = limits(3).hand_sf;                                        % get the current position
deg = get(hObject,'Value')-current_pos;                                 % determine deg to move as a difference between slider value and current position 
limits = hand_fingers_spread(limits,deg);                               % call to movement function and update of current position


% --------------------------------------------------------------------
% --- Executes on button press in ven_home.
function ven_home_Callback(hObject, eventdata, handles)
% hObject    handle to ven_home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits sl_moved

sh = findobj('Type','uicontrol','Style','slider');                      % find all slider objects
sliders = get(sh,'Tag');                                                % get the tags from slider objects
sh = sh(strmatch('ven_',sliders));                                      % trim handles list of sliders to include only 'ven_' sliders
sliders = sliders(strmatch('ven_',sliders));                            % trim tag list of sliders to include only 'ven_' sliders

if isempty(strmatch('off',get(sh,'Enable')))                            % if sliders are enabled (not currently live)
    set(sh,'Enable','on')                                               % enable found sliders
end

for i=1:length(sliders)                                                 % loop for all found sliders
    dum = char(sliders(i));                                             % dummy: get current slider tag                                      
    dum = dum(5:end);                                                   % dummy: current slider tag without 'ven_'
    eval(['mv1=default_limits(3).' dum '-limits(3).' dum ';']);         % move flag 1
    eval(['mv2=default_limits(4).' dum '-default_limits(3).' dum ';']); % move flag 2
    if mv1 || mv2                                                       % if either condition was met
        eval(['set(sh(i),''Value'',default_limits(3).' dum ');']);      % home the slider position
        sl_moved = [sl_moved sh(i)];                                    % flag current handle so re-initialization knows to home
        eval(['limits(3).' dum ' = default_limits(4).' dum ';']);       % set stored home value to specified value
    end
end

skin_color = get(findobj('Tag','UA'),'UserData');                       % get current arm objects' color; stored in upper arm UserData
dum = get(findobj('Tag','hand_autorelease'),'UserData');                % get autorelease setting
virtualenv_OpeningFcn(gcf, eventdata, handles, skin_color)              % call ceven to re-initialize
if ~dum                                                                 % if autorelease was off
    hand_autorelease_Callback(gcbo, eventdata, handles)                 % call to turn off
end


% --------------------------------------------------------------------
% --- Executes on callback.
function togglecontrols_Callback(hObject, eventdata, handles)
% hObject    handle
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

aunits = get(handles.ven_armview,'units');                              % store current axes units                     
set(handles.ven_armview,'units','pixels')                               % change axes units to pixels
funits = get(handles.armlayout,'units');                                % store current figure units
set(handles.armlayout,'units','pixels');                                % change figure units to pixels
axs_dim = get(handles.ven_armview,'Position');                          % get axes dimensions in pixels
fig_dim = get(handles.armlayout,'Position');                            % get figure dimensions in pixels
move_amt = (fig_dim(3)*(94/98)-axs_dim(3))/2;                           % determine amount to move. note: scale factor to account for frame
set(0,'Units','pixels')                                                 % ensure root dimensions in pixels

dum = get(handles.ven_home,'UserData');                                 % retrieve handles and toggle flag data
tgl_hdls = dum.handles;                                                 % handles to all controls to be toggled

if ~dum.tgl_flag                                                        % if flag says 'controls are on'... need to toggle off and center axes
    set(tgl_hdls,'Visible','off');                                      % remove manual controls from window 
    axs_dim(1) = axs_dim(1) + move_amt;                                 % center axes
    dum.tgl_flag = 1;                                                   % set flag to 'controls off'
else                                                                    % need to de-center axes and toggle controls on
    set(tgl_hdls,'Visible','on');                                       % add manual controls to window
    axs_dim(1) = axs_dim(1) - move_amt;                                 % de-center axes
    dum.tgl_flag = 0;                                                   % set flag to 'controls on'
end

set(handles.ven_home,'UserData',dum);                                   % re-store hadles and flag data        

set(handles.ven_armview,'Position',axs_dim);                            % resize axes window       
set(handles.ven_armview,'units',aunits);                                % restore original axes units
set(handles.armlayout,'units',funits);                                  % restore original figure unit


% --------------------------------------------------------------------
% --- Executes on callback.
function hand_autorelease_Callback(hObject, eventdata, handles)
% hObject    handle
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

hdl = findobj('Tag','hand_autorelease');                                % get handle to uimenu item for hand auto release
if get(hdl,'UserData');                                                 % if on and to be truned off
    set(hdl,'UserData',0);                                              % set flag to off
    set(hdl,'Label','Turn Hand Auto Release ON');                       % update menu label
else                                                                    % if off and to be turned on
    set(hdl,'UserData',1);                                              % set flag to on
    set(hdl,'Label','Turn Hand Auto Release OFF');                      % update menu label
end


% --------------------------------------------------------------------
% --- Executes on callback.
function function_test1_Callback(hObject, eventdata, handles)
% hObject    handle
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global FtestParams UA_len FA_len PM_width
sliders = findobj('Style','slider');                                    % get all enabled slider objects
sliderslist = get(sliders,'Tag');                                       % associate tag names
sliders = sliders(strmatch('ven_',sliderslist));                        % compile handle list of 'ven_' items
isLive = isempty(strmatch('on',get(sliders,'Enable')));                 % check to see if sliders are disabled (running live)

if isLive                                                               % if virtual env. is 'running'
    clothespinSetup                                                     % call test setup GUI
    uiwait                                                              % wait for user response to GUI
    if isempty(FtestParams)                                             % if GUI was cancelled or closed
        return                                                          % jump out of callback
    end
else                                                                    % if virtual env. is not 'running'
    warndlg('Virtual environment is not live! (see ''Control'' tab)', ... % display a warning box, saying no classifer running
        '!! NO RUNNING CLASSIFIER !!');                       
    return                                                              % jump out of callback
end

pindraw;                                                                % call function to draw clothespin test setup
FtestParams.startTime = clock;                                          % initialize test times
FtestParams.pinCount = 0;                                               % initialize test counter
FtestParams.testing = 1;                                                % set testing flag to indicate test is running (1 for clothespin test)
FtestParams.pinTimes = clock;                                           % set array to store pin placement times (1st is startTime)
FtestParams.pintouch = 0;                                               % initialize pin contact flag to 'not-touching'