function varargout = Cue_Presentation_GUI(varargin)
% CUE_PRESENTATION_GUI MATLAB code for Cue_Presentation_GUI.fig
%      CUE_PRESENTATION_GUI, by itself, creates a new CUE_PRESENTATION_GUI or raises the existing
%      singleton*.
%
%      H = CUE_PRESENTATION_GUI returns the handle to a new CUE_PRESENTATION_GUI or the handle to
%      the existing singleton*.
%
%      CUE_PRESENTATION_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CUE_PRESENTATION_GUI.M with the given input arguments.
%
%      CUE_PRESENTATION_GUI('Property','Value',...) creates a new CUE_PRESENTATION_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cue_Presentation_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cue_Presentation_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cue_Presentation_GUI

% Last Modified by GUIDE v2.5 04-Feb-2013 08:53:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cue_Presentation_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Cue_Presentation_GUI_OutputFcn, ...
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


% --- Executes just before Cue_Presentation_GUI is made visible.
function Cue_Presentation_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cue_Presentation_GUI (see VARARGIN)

% Choose default command line output for Cue_Presentation_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cue_Presentation_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cue_Presentation_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function NextMovement_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NextMovement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
toggle_state = get(hObject,'Value');
textStatus_handle = findobj('Tag','textStatus');
if toggle_state == 1
    set(textStatus_handle,'Visible','on');
else
    set(textStatus_handle,'Visible','off');
end
