function varargout = armzoomrotate(varargin)
% ARMZOOMROTATE M-file for armzoomrotate.fig
%      ARMZOOMROTATE, by itself, creates a new ARMZOOMROTATE or raises the existing
%      singleton*.
%
%      H = ARMZOOMROTATE returns the handle to a new ARMZOOMROTATE or the handle to
%      the existing singleton*.
%
%      ARMZOOMROTATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMZOOMROTATE.M with the given input arguments.
%
%      ARMZOOMROTATE('Property','Value',...) creates a new ARMZOOMROTATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before armzoomrotate_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to armzoomrotate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help armzoomrotate

% Last Modified by GUIDE v2.5 10-Aug-2004 00:33:24

% Blair Lock 08-05-04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @armzoomrotate_OpeningFcn, ...
                   'gui_OutputFcn',  @armzoomrotate_OutputFcn, ...
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
% --- Executes just before armzoomrotate is made visible.
function armzoomrotate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to armzoomrotate (see VARARGIN)

global old_AzEl

% Choose default command line output for armzoomrotate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes armzoomrotate wait for user response (see UIRESUME)
% uiwait(handles.figure1);

h = findobj('Tag','ven_armview');                                       % get handle to armview axes
xlimits = get(h,'XLim');                                                % get the x-axis settings
ylimits = get(h,'YLim');                                                % get the y-axis settings
zlimits = get(h,'ZLim');                                                % get the z-axis settings
set(handles.cancel,'UserData',[xlimits, ylimits, zlimits]);             % store current axis settings for a cancel request

ax = findobj('Tag','plotbox');                                          % get handle to rotation axes
axes(ax)                                                                % setting current axes
axis([0 1 0 1 0 1])                                                     % ensure a 3D box
axis equal                                                              % equal axis-scaling viewing
set(ax,'View',get(h,'View'));                                           % set orientation of rotation axes to current arm axes orientation
old_AzEl = get(ax,'View');                                              % store opening orientation in global variable
set(ax,'UserData',old_AzEl);                                            % store opening orientation for cancel request


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = armzoomrotate_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq                                                                % close arm limits window


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = findobj('Tag','ven_armview');                                       % get handle to armview axes
limits = get(handles.cancel,'UserData');                                % get the axis settings stored for cancelling
set(h,'XLim',limits(1:2));                                              % invoke x-axis limits
set(h,'YLim',limits(3:4));                                              % invove y-axis limits
set(h,'ZLim',limits(5:6));                                              % invoke z-axis limits

ax = findobj('Tag','plotbox');                                          % get handle to rotation axes
reset_AzEl = get(ax,'UserData');                                        % get the stored orientation
set(h,'View',reset_AzEl);                                               % invoke function-opening orientation

closereq                                                                % close arm limits window


% --------------------------------------------------------------------
% --- Executes on button press in zoom_reset.
function zoom_reset_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = findobj('Tag','ven_armview');                                       % get handle to armview axes
dum = get(h,'UserData');                                                % get the stored original axis settings
limits = dum.axislimits;
set(h,'XLim',limits(1:2));                                              % invoke original x-axis limits
set(h,'YLim',limits(3:4));                                              % invove original y-axis limits
set(h,'ZLim',limits(5:6));                                              % invoke original z-axis limits


% --------------------------------------------------------------------
% --- Executes on button press in zoomout.
function zoomout_Callback(hObject, eventdata, handles)
% hObject    handle to zoomout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = findobj('Tag','ven_armview');                                       % get handle to armview axes
xlimits = get(h,'XLim');                                                % get the x-axis settings
ylimits = get(h,'YLim');                                                % get the y-axis settings
zlimits = get(h,'ZLim');                                                % get the z-axis settings
x_factor = (abs(xlimits(1)-xlimits(2))*0.1)/2;                          % 5% of x-axis
xlimits = xlimits + [-x_factor x_factor];                               % add 10% to x-axis
y_factor = (abs(ylimits(1)-ylimits(2))*0.1)/2;                          % 5% of y-axis
ylimits = ylimits + [-y_factor y_factor];                               % add 10% to y-axis
z_factor = (abs(zlimits(1)-zlimits(2))*0.1)/2;                          % 5% of z-axis
zlimits = zlimits + [-z_factor z_factor];                               % add 10% to z-axis
set(h,'XLim',xlimits);                                                  % invoke new x-axis
set(h,'YLim',ylimits);                                                  % invoke new y-axis
set(h,'ZLim',zlimits);                                                  % invoke new z-axis


% --------------------------------------------------------------------
% --- Executes on button press in zoomin.
function zoomin_Callback(hObject, eventdata, handles)
% hObject    handle to zoomin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = findobj('Tag','ven_armview');                                       % get handle to armview axes
xlimits = get(h,'XLim');                                                % get the x-axis settings
ylimits = get(h,'YLim');                                                % get the y-axis settings
zlimits = get(h,'ZLim');                                                % get the z-axis settings
x_factor = (abs(xlimits(1)-xlimits(2))*0.1)/2;                          % 5% of x-axis
xlimits = xlimits + [x_factor -x_factor];                               % remove 10% of x-axis
y_factor = (abs(ylimits(1)-ylimits(2))*0.1)/2;                          % 5% of y-axis
ylimits = ylimits + [y_factor -y_factor];                               % remove 10% of y-axis
z_factor = (abs(zlimits(1)-zlimits(2))*0.1)/2;                          % 5% of z-axis
zlimits = zlimits + [z_factor -z_factor];                               % remove 10% of z-axis
set(h,'XLim',xlimits);                                                  % invoke new x-axis
set(h,'YLim',ylimits);                                                  % invoke new y-axis
set(h,'ZLim',zlimits);                                                  % invoke new z-axis


% --------------------------------------------------------------------
% --- Executes on button press in rotation_reset.
function rotation_reset_Callback(hObject, eventdata, handles)
% hObject    handle to rotation_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ax = findobj('Tag','plotbox');                                          % get handle to rotation axes
h = findobj('Tag','ven_armview');                                       % get handle to armview axes
dum = get(h,'UserData');                                                % get the stored original axis orientation
cancel_AzEl = dum.axisview;
set(h,'View',cancel_AzEl);                                              % invoke original orientation
set(ax,'View',cancel_AzEl);                                             % invoke original orientation


% --------------------------------------------------------------------
% --- Executes as WindowButtonDownFcn.
function pressdown(hObject, eventdata, handles)
% hObject    handle to rotation_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global old_pt old_AzEl                           

ax = findobj('Tag','plotbox');                                          % get handle to rotation axes
aunits = get(ax,'units');                                               % store current axes units                     
set(ax,'units','pixels')                                                % change axes units to pixels
funits = get(gcbf,'units');                                             % store current figure units
set(gcbf,'units','pixels');                                             % change figure units to pixels
cp = get(gcbf,'CurrentPoint');                                          % get point of initial mouse click
pos = get(ax,'position');                                               % get poisition info of axes
set(ax,'units',aunits);                                                 % restore original axes units
set(gcbf,'units',funits);                                               % restore original figure units
if cp(1) >= pos(1) & cp(1) <= pos(1)+pos(3) &...                        % check to see if mouse click was within axes
        cp(2) >= pos(2) & cp(2) <= pos(2)+pos(4)
            % enable the WindowButtonMotionFcn
    set(gcbf,'WindowButtonMotionFcn','armzoomrotate(''pressmove'',gcbo,[],guidata(gcbo))');
    old_pt = cp;                                                        % store the mouse click point as global 'last point'
end 


% --------------------------------------------------------------------
% --- Executes as WindowButtonMotionFcn.
function pressmove(hObject, eventdata, handles)
% hObject    handle to rotation_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global old_pt old_AzEl 

gain = 0.4;                                                             % set motion gain
ax = findobj('Tag','plotbox');                                          % get handle to rotation axes
funits = get(gcbf,'units');                                             % store current figure units
set(gcbf,'units','pixels');                                             % change figure units to pixels
new_pt = get(gcbf,'CurrentPoint');                                      % get current mouse position
set(gcbf,'units',funits);                                               % restore original figure units
dx = new_pt(1) - old_pt(1);                                             % find x distance between last and current points
dy = new_pt(2) - old_pt(2);                                             % find y distance between last and current points
delta_az = round(gain*(-dx));                                           % scale the x displacement
delta_el = round(gain*(-dy));                                           % scale the y displacement
azel(1) = old_AzEl(1) + delta_az;                                       % calculate new azimuth angle
azel(2) = min(max(old_AzEl(2) + 2*delta_el,-90),90);                    % calculate new elevation angle
if abs(azel(2))>90                                                      % check for elvation over 90 (rollover)
   % Switch az to other side.
   azel(1) = rem(rem(azel(1)+180,360)+180,360)-180;                     % Map new az from -180 to 180.
   % Update el
   azel(2) = sign(azel(2))*(180-abs(azel(2)));
end
set(ax,'View',azel);                                                    % set rotation axes view to new azimuth and elevation
set(findobj('Tag','ven_armview'),'View',azel);                          % set armview axes view to new azimuth and elevation
old_pt = new_pt;                                                        % store current point as global 'last point'
old_AzEl = azel;                                                        % store current view as global 'last view'


% --------------------------------------------------------------------
% --- Executes as WindowButtonMotionFcn.
function pressup(hObject, eventdata, handles)
% hObject    handle to rotation_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(gcbf,'WindowButtonMotionFcn','');                                   % disable the WindowButtonMotionFcn