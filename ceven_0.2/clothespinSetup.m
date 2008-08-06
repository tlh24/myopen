function varargout = clothespinSetup(varargin)
% CLOTHESPINSETUP M-file for clothespinSetup.fig
%      CLOTHESPINSETUP, by itself, creates a new CLOTHESPINSETUP or raises the existing
%      singleton*.
%
%      H = CLOTHESPINSETUP returns the handle to a new CLOTHESPINSETUP or the handle to
%      the existing singleton*.
%
%      CLOTHESPINSETUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CLOTHESPINSETUP.M with the given input arguments.
%
%      CLOTHESPINSETUP('Property','Value',...) creates a new CLOTHESPINSETUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before clothespinSetup_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to clothespinSetup_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help clothespinSetup

% Last Modified by GUIDE v2.5 11-Apr-2005 21:45:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @clothespinSetup_OpeningFcn, ...
                   'gui_OutputFcn',  @clothespinSetup_OutputFcn, ...
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
% --- Executes just before clothespinSetup is made visible.
function clothespinSetup_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to clothespinSetup (see VARARGIN)

% Choose default command line output for clothespinSetup
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes clothespinSetup wait for user response (see UIRESUME)
% uiwait(handles.clothespinSetup);

global FtestParams
FtestParams = [];                                                       % default; empty
set(handles.time,'UserData',get(handles.time,'String'));                % set userdata (for resetting)
set(handles.number,'UserData',get(handles.number,'String'));            % set userdata (for resetting)


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = clothespinSetup_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on button press in countTest.
function countTest_Callback(hObject, eventdata, handles)
% hObject    handle to countTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val = get(hObject,'Value');                                             % get selected value
set(handles.timedTest,'Value',~val);                                    % set opposite radio button
if val                                                                  % if selected
    set(handles.time,'Enable','on')                                     % enable time text box
    set(handles.number,'Enable','off')                                  % disable number text box
else                                                                    % if deselected
    set(handles.time,'Enable','off')                                    % disable time text box
    set(handles.number,'Enable','on')                                   % enable number text box
end


% --------------------------------------------------------------------
function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

time = str2num(get(hObject,'String'));                                  % get number from text box
if isempty(time)                                                        % ensure a number was entered
    warndlg('Bad or non-numerical value entered','');                   % display reminder if not
    set(hObject,'String',get(hObject,'UserData'));                      % reset in text box
    return                                                              % exit the function and return to normal
end
set(hObject,'UserData',num2str(time));                                  % set userdata to current value


% --------------------------------------------------------------------
% --- Executes on button press in timedTest.
function timedTest_Callback(hObject, eventdata, handles)
% hObject    handle to timedTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val = get(hObject,'Value');                                             % get selected value
set(handles.countTest,'Value',~val);                                    % set opposite radio button
if val                                                                  % if selected
    set(handles.time,'Enable','off')                                    % disable time text box
    set(handles.number,'Enable','on')                                   % enable number text box
else                                                                    % if deselected
    set(handles.time,'Enable','on')                                     % enable time text box
    set(handles.number,'Enable','off')                                  % disable number text box
end


% --------------------------------------------------------------------
function number_Callback(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

number = str2num(get(hObject,'String'));                                % get number from text box
if isempty(number)                                                      % ensure a number was entered
    warndlg('Bad or non-numerical value entered','');                   % display reminder if not
    set(hObject,'String',get(hObject,'UserData'));                      % reset in text box
    return                                                              % exit the function and return to normal
end
number = round(number);                                                 % round entry to integer
set(hObject,'String',num2str(number));                                  % display integer
set(hObject,'UserData',num2str(number));                                % set userdata to current value


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq                                                                % close GUI


% --------------------------------------------------------------------
% --- Executes on button press in begin.
function begin_Callback(hObject, eventdata, handles)
% hObject    handle to begin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global FtestParams
FtestParams.time = str2num(get(handles.time,'String'));                 % set parameter
FtestParams.number = str2num(get(handles.number,'String'));             % set parameter
FtestParams.timedTest = get(handles.timedTest,'Value');                 % set parameter
FtestParams.countTest = get(handles.countTest,'Value');                 % set parameter
closereq                                                                % close GUI