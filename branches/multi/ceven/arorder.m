function varargout = arorder(varargin)
% ARORDER M-file for arorder.fig
%      ARORDER, by itself, creates a new ARORDER or raises the existing
%      singleton*.
%
%      H = ARORDER returns the handle to a new ARORDER or the handle to
%      the existing singleton*.
%
%      ARORDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARORDER.M with the given input arguments.
%
%      ARORDER('Property','Value',...) creates a new ARORDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arorder_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arorder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arorder

% Last Modified by GUIDE v2.5 12-Nov-2004 15:28:19

% Blair Lock 11-12-04

global limits default_limits

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arorder_OpeningFcn, ...
                   'gui_OutputFcn',  @arorder_OutputFcn, ...
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
% --- Executes just before arorder is made visible.
function arorder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arorder (see VARARGIN)

% Choose default command line output for arorder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arorder wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global ARorder 

if~(isempty(ARorder))                                                   % if ARorder has been called before
    set(handles.orderField,'String',num2str(ARorder));                  % set AR text field to stored value
else
    ARorder = str2num(get(handles.orderField,'String'));                % set ARorder if first time through
end


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = arorder_OutputFcn(hObject, eventdata, handles)
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

if ~isempty(str2num(get(handles.orderField,'String')))                  % ensure a number was entered
    closereq                                                            % allow close AR order window if so
end


% --------------------------------------------------------------------
% --- Executes on button press in ok.
function orderField_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ARorder 

dum = ARorder;                                                          % get current Ar order (in case of input error)
ARorder = str2num(get(hObject,'String'));                               % get AR order from text box
if isempty(ARorder)                                                     % ensure a number was entered
    hw = warndlg('Bad value for ''AR order'', please enter number',''); % display reminder if not
    uiwait(hw)
    ARorder = dum;                                                      % replace error 
    set(hObject,'String',num2str(ARorder));                             % replace error
end
