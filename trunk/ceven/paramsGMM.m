function varargout = paramsGMM(varargin)
% PARAMSGMM M-file for paramsGMM.fig
%      PARAMSGMM, by itself, creates a new PARAMSGMM or raises the existing
%      singleton*.
%
%      H = PARAMSGMM returns the handle to a new PARAMSGMM or the handle to
%      the existing singleton*.
%
%      PARAMSGMM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARAMSGMM.M with the given input arguments.
%
%      PARAMSGMM('Property','Value',...) creates a new PARAMSGMM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before paramsGMM_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to paramsGMM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help paramsGMM

% Last Modified by GUIDE v2.5 25-Jan-2005 12:56:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @paramsGMM_OpeningFcn, ...
                   'gui_OutputFcn',  @paramsGMM_OutputFcn, ...
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
% --- Executes just before paramsGMM is made visible.
function paramsGMM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to paramsGMM (see VARARGIN)

% Choose default command line output for paramsGMM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes paramsGMM wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global gmm gmmReset
if isempty(gmm) 
    NumMix_Callback(handles.NumMix,[], handles)
    MinVar_Callback(handles.MinVar,[], handles)
    constraint_Callback(handles.constraint,[], handles)
   
    gmmReset = gmm;
    
else
    setupGMM(handles)
end

set(handles.cancel,'UserData',gmm);


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = paramsGMM_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function NumMix_Callback(hObject, eventdata, handles)
% hObject    handle to NumMix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gmm
dum = str2num(get(hObject,'String'));                                   % get number entered in text box
if isempty(dum)                                                         % if a number was not entered
    set(hObject,'String','2');                                          % reset the text to the defalut number and do noting to sturcture
else                                                                    % else, a valid number was entered
    gmm.NumMix = dum;                                                   % copy value to global structure
end


% --------------------------------------------------------------------
function MinVar_Callback(hObject, eventdata, handles)
% hObject    handle to MinVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gmm
dum = str2num(get(hObject,'String'));                                   % get number entered in text box
if isempty(dum)                                                         % if a number was not entered
    set(hObject,'String','0.05');                                       % reset the text to the defalut number and do noting to sturcture
else                                                                    % else, a valid number was entered
    gmm.MinVar = dum;                                                   % copy value to global structure
end


% --------------------------------------------------------------------
% --- Executes on selection change in constraint.
function constraint_Callback(hObject, eventdata, handles)
% hObject    handle to constraint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gmm
gmm.constraint = get(hObject,'Value') - 1;                              % subtract 1 from list index to get type


% --------------------------------------------------------------------
% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gmm
gmm = get(handles.cancel,'UserData');
setupGMM(handles)
closereq


% --------------------------------------------------------------------
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gmm gmmReset
gmm = gmmReset;
setupGMM(handles) 


% --------------------------------------------------------------------
% --- Executes on callback.
function setupGMM(handles)

global gmm

dum = gmm.constraint+1;
set(handles.constraint,'Value',dum);
dum = gmm.NumMix;
set(handles.NumMix,'String',num2str(dum));
dum = gmm.MinVar;
set(handles.MinVar,'String',num2str(dum));
