function varargout = armcolor(varargin)
% ARMCOLOR M-file for armcolor.fig
%      ARMCOLOR, by itself, creates a new ARMCOLOR or raises the existing
%      singleton*.
%
%      H = ARMCOLOR returns the handle to a new ARMCOLOR or the handle to
%      the existing singleton*.
%
%      ARMCOLOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMCOLOR.M with the given input arguments.
%
%      ARMCOLOR('Property','Value',...) creates a new ARMCOLOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before armcolor_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to armcolor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help armcolor

% Last Modified by GUIDE v2.5 10-Aug-2004 22:00:12

% Blair Lock 08-05-04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @armcolor_OpeningFcn, ...
                   'gui_OutputFcn',  @armcolor_OutputFcn, ...
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
% --- Executes just before armcolor is made visible.
function armcolor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to armcolor (see VARARGIN)

% Choose default command line output for armcolor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes armcolor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = armcolor_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on button press in color.
function color_Callback(hObject, eventdata, handles)

color = get(hObject,'BackgroundColor');                                 % get the new color from the button color
ax = findobj('Type','axes','Tag','ven_armview');                        % get handle to arm axes
h = guihandles(ax);                                                     % retrieve handles info from arm axes
objs = [h.UA h.FA h.PM h.IS1 h.MS1 h.RS1 h.PS1 h.TS1, ...               % compile list of arm surface objects 
        h.IS2 h.MS2 h.RS2 h.PS2 h.TS2 h.IS3 h.MS3 h.RS3 h.PS3 h.TS3];   % to be colored
set(objs,'FaceColor',color);                                            % set arm to new color
set(h.UA,'UserData',color);                                             % store current skin color in upper arm UserData
closereq                                                                % close color selection window