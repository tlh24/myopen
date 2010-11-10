function varargout = ArmControl(varargin)
% ARMCONTROL M-file for ArmControl.fig
%      ARMCONTROL, by itself, creates a new ARMCONTROL or raises the existing
%      singleton*.
%
%      H = ARMCONTROL returns the handle to a new ARMCONTROL or the handle to
%      the existing singleton*.
%
%      ARMCONTROL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMCONTROL.M with the given input arguments.
%
%      ARMCONTROL('Property','Value',...) creates a new ARMCONTROL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ArmControl_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ArmControl_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help ArmControl

% Last Modified by GUIDE v2.5 24-May-2006 09:25:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ArmControl_OpeningFcn, ...
                   'gui_OutputFcn',  @ArmControl_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ArmControl is made visible.
function ArmControl_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for ArmControl
handles.output = hObject;

%% Setup Kinematic Chain
% hAxes = [handles.axes1 handles.axes2 handles.axes3 handles.axes4];
% hAxes = [handles.axes1 handles.axes2 handles.axes4];
hAxes = [handles.axes1];
handles.KChain = f_SetupKinematics(hAxes);
f_KChain_Redraw(handles.KChain,2)
handles.serial_obj = [];
handles.hFun = @ADCUpdateDisplay;
set(gcf,'Renderer','OpenGL','DoubleBuffer','on')
set(gcf,'KeyPressFcn',{@KeyAdjust,handles});

%% Common Params
%% -----------------------------------------------------------------------
handles.Joint_Vals = [0 0 0];
for i = 1:length(hAxes)
    axes(hAxes(i))
    axis([0 .3 -.3 .2 0.36 0.7])
    daspect([1 1 1])
    lighting gouraud
    material dull
end

%% -----------------------------------------------------------------------
axes(handles.axes1);
axis('off');
view(0,0);
% set(gca,'CameraUpVector',[0 1 0]);
set(gca,'Units','pixels');
set(gca,'Clipping','off');
% set(gca,'Position',[210 246 191 100])
camlight left

%% -----------------------------------------------------------------------
axes(handles.axes2);
axis('off')
view(90,0);
set(gca,'CameraUpVector',[0 1 0])
camlight left

%% -----------------------------------------------------------------------
axes(handles.axes3)
axis('off')
view(180,0);
set(gca,'CameraUpVector',[0 0 -1])
camlight headlight

%% -----------------------------------------------------------------------
axes(handles.axes4)
axis('off')
view(120,20);
set(gca,'CameraUpVector',[0 1 0])
camlight left

drawnow

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = ArmControl_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pbRunDemo.
function pbRunDemo_Callback(hObject, eventdata, handles)
if ~get(hObject,'Value'),return,end
KChain = handles.KChain;

%% Haversine Curve
a = linspace(0,2*pi);
b = (1-cos(a))/2;
flex_angle = b; %% deg

% KChain(3).Joint_Param = [[0 0 -5] [0 0 0]];
i = 0;step=3;

while get(hObject,'Value')
    i = i+step;if i > length(flex_angle),i=1;end
%     KChain = SetJointAngle(KChain,8,3,1-flex_angle(i));
    tic
    KChain = f_SetJointAngle(KChain,[4:7 9:20],3,flex_angle(i));
    
    isWireframe = get(handles.checkWireframe,'Value');
    isTriad = get(handles.checkTriad,'Value');
    f_KChain_Redraw(KChain,2,isWireframe,isTriad);
    handles.KChain = KChain;
    guidata(hObject,handles)
    t = toc;
    %disp(t);
    pause(0.01-t);
    drawnow
end

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
sliderVal = get(hObject,'Value');
KChain = handles.KChain;

contents = get(handles.listbox1,'String');
JointVal = get(handles.listbox1,'Value');
Joint = contents{JointVal};
switch Joint
    case 'Shoulder',iLink = 3;
    case 'Elbow',iLink = 4;
    case 'Wrist',iLink = 5;
    case 'Thumb CMC',iLink = 6;
    case 'Thumb MCP',iLink = 7;
    case 'Thumb IP',iLink = 8;
    case 'Index MCP',iLink = 9;
    case 'Index IP',iLink = [10 11];
    case 'Middle MCP',iLink = 12;
    case 'Middle IP',iLink = [13 14];
    case 'Ring MCP',iLink = 15;
    case 'Ring IP',iLink = [16 17];
    case 'Pinky MCP',iLink = 18;
    case 'Pinky IP',iLink = [19 20];
end
contents = get(handles.listbox2,'String');
Axis = contents{get(handles.listbox2,'Value')};
switch Axis
    case 'Abduction',iXYZ = 1;
    case 'Rotation',iXYZ = 2;
    case 'Flexion',iXYZ = 3;
end
for i = 1:length(iLink)
    if iLink(i) == 3
        switch Axis
            case 'Abduction',iXYZ = 3;
            case 'Rotation',iXYZ = 1;
            case 'Flexion',iXYZ = 2;
        end
    end
    KChain = f_SetJointAngle(KChain,iLink(i),iXYZ,sliderVal);
end

isWireframe = get(handles.checkWireframe,'Value');
isTriad = get(handles.checkTriad,'Value');
f_KChain_Redraw(KChain,2,isWireframe,isTriad);

handles.KChain = KChain;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
set(hObject,'BackgroundColor',[.9 .9 .9]);
set(hObject,'SliderStep',[0.1 0.2])

% --- Executes on button press in pbRotate.
function pbRotate_Callback(hObject, eventdata, handles)
rotate3d

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
set(hObject,'BackgroundColor','white');

str = {...
    'Shoulder'...
    'Elbow'...
    'Wrist'...
    'Thumb CMC'...
    'Thumb MCP'...
    'Thumb IP'...
    'Index MCP'...
    'Index IP'...
    'Middle MCP'...
    'Middle IP'...
    'Ring MCP'...
    'Ring IP'...
    'Pinky MCP'...
    'Pinky IP'...
    };
set(hObject,'String',str)



% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
set(hObject,'BackgroundColor','white');

str = {...
    'Flexion'...
    'Abduction'...
    'Rotation'...
    };
set(hObject,'String',str)

% --- Executes on button press in pbZoom.
function pbZoom_Callback(hObject, eventdata, handles)
zoom



% --- Executes on button press in pbSelectPt.
function pbSelectPt_Callback(hObPanject, eventdata, handles)
point = SelectPoint

%--------------------------------------------------------------------------
% Help picking a point by clicking mouse button
% Output: point = [x, y, z] is the position of the point selected in the
%               original image coordinate system.
%--------------------------------------------------------------------------
function point = SelectPoint

try
    h = datacursormode;
    waitforbuttonpress;
    s = getCursorInfo(h);
    datacursormode off;
    if isempty(s);point=[];return;end;
    point = s.Position;
catch
    point=[];
    LogMessage('Error evaluating function')
end


% --- Executes on button press in pbPan.
function pbPan_Callback(hObject, eventdata, handles)
pan

% --- Executes on button press in checkWireframe.
function checkWireframe_Callback(hObject, eventdata, handles)
isWireframe = get(handles.checkWireframe,'Value');
isTriad = get(handles.checkTriad,'Value');
f_KChain_Redraw(handles.KChain,2,isWireframe,isTriad);

% --- Executes on button press in checkTriad.
function checkTriad_Callback(hObject, eventdata, handles)
isWireframe = get(handles.checkWireframe,'Value');
isTriad = get(handles.checkTriad,'Value');
f_KChain_Redraw(handles.KChain,2,isWireframe,isTriad);


% --------------------------------------------------------------------
function ADCSetup_Callback(hObject, eventdata, handles)
handles.serial_obj = ADCStart(handles.figure1);
guidata(hObject,handles);

% --------------------------------------------------------------------
function ADCSetupStream_Callback(hObject, eventdata, handles)
ADCSetupStreamMode(handles.serial_obj)

% --------------------------------------------------------------------
function ADCStreamData_Callback(hObject, eventdata, handles)
if strcmp(get(hObject,'checked'),'on')
    set(hObject,'checked','off')
    fprintf(handles.serial_obj,'W0400');
    % fprintf(handles.serial_obj,'H');
    set(handles.menuADC,'Label','ADC');
    return
else
    set(hObject,'checked','on')
    fprintf(handles.serial_obj,'W0402');
    % fprintf(handles.serial_obj,'S');
end


% --- Executes on button press in pbLoadState.
function pbLoadState_Callback(hObject, eventdata, handles)

[filename, pathname] = uigetfile({'*.sta', 'State Files (*.sta)'},'Save State');
if isequal(filename,0),return,end
hFile = fopen(fullfile(pathname,filename),'r');
KChain = handles.KChain;
oldKChain = handles.KChain;
newKChain = f_KChain_Load(oldKChain,1,hFile);
fclose(hFile);

%% Interpolate to new state
nSteps = 15;

isWireframe = get(handles.checkWireframe,'Value');
isTriad = get(handles.checkTriad,'Value');

for iStep = 1:nSteps
    for iLink = 3:length(oldKChain)
        %% Perform interpolation between new / old states
        KChain(iLink).Joint_Param = (iStep/nSteps).*...
            (newKChain(iLink).Joint_Param - oldKChain(iLink).Joint_Param)...
            + oldKChain(iLink).Joint_Param;
    end
    %% Draw It
    f_KChain_Redraw(KChain,2,isWireframe,isTriad);
    handles.KChain = KChain;
    guidata(hObject,handles)
    drawnow
end



% --- Executes on button press in pbSaveState.
function pbSaveState_Callback(hObject, eventdata, handles)
[filename, pathname] = uiputfile({'*.sta', 'State Files (*.sta)'},'Save State');
if isequal(filename,0),return,end
hFile = fopen(fullfile(pathname,filename),'w');
f_KChain_Save(handles.KChain,1,hFile);
fclose(hFile);

function KeyAdjust(hObject, eventdata, handles)
handles = guidata(handles.figure1);
c = get(handles.figure1,'CurrentCharacter');
if length(c) == 0,return,end

increment = 1/10;
KChain = handles.KChain;
switch c
    case 'a',iLink = 4; iXYZ = 3; %% Elbow Flexion
    case 'z',iLink = 4; iXYZ = 3;increment = -increment; %% Elbow Extension
    case 's',iLink = 5; iXYZ = 3; %% Wrist Flexion
    case 'x',iLink = 5; iXYZ = 3;increment = -increment; %% Wrist Extension
    case 'd',iLink = 6; iXYZ = 3;
    case 'c',iLink = 6; iXYZ = 3;increment = -increment;
    case 'f',iLink = 7; iXYZ = 3;
    case 'v',iLink = 7; iXYZ = 3;increment = -increment;
    case 'Z',iLink = 8; iXYZ = 3;
    case 'A',iLink = 8; iXYZ = 3;increment = -increment;
    case 'X',iLink = 9; iXYZ = 3;
    case 'S',iLink = 9; iXYZ = 3;increment = -increment;
    case 'C',iLink = [10 11]; iXYZ = 3;
    case 'D',iLink = [10 11]; iXYZ = 3;increment = -increment;
    case 'V',iLink = [13 14]; iXYZ = 3;
    case 'F',iLink = [13 14]; iXYZ = 3;increment = -increment;

    otherwise
        return
end

for i = 1:length(iLink)
minVal = KChain(iLink(i)).Joint_Min(iXYZ);
maxVal = KChain(iLink(i)).Joint_Max(iXYZ);
newVal = (KChain(iLink(i)).Joint_Param(iXYZ)-minVal)./(maxVal-minVal) + increment;
KChain = f_SetJointAngle(KChain,iLink(i),iXYZ,newVal);
end

isWireframe = get(handles.checkWireframe,'Value');
isTriad = get(handles.checkTriad,'Value');
f_KChain_Redraw(KChain,2,isWireframe,isTriad);

handles.KChain = KChain;
guidata(handles.figure1,handles)
