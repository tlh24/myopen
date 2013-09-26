function varargout = armspeeds(varargin)
% ARMSPEEDS M-file for armspeeds.fig
%      ARMSPEEDS, by itself, creates a new ARMSPEEDS or raises the existing
%      singleton*.
%
%      H = ARMSPEEDS returns the handle to a new ARMSPEEDS or the handle to
%      the existing singleton*.
%
%      ARMSPEEDS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMSPEEDS.M with the given input arguments.
%
%      ARMSPEEDS('Property','Value',...) creates a new ARMSPEEDS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before armspeeds_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to armspeeds_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help armspeeds

% Last Modified by GUIDE v2.5 15-Mar-2005 00:45:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @armspeeds_OpeningFcn, ...
                   'gui_OutputFcn',  @armspeeds_OutputFcn, ...
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
% --- Executes just before armspeeds is made visible.
function armspeeds_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to armspeeds (see VARARGIN)

global speeds

% Choose default command line output for armspeeds
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes armspeeds wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.cancel,'UserData',speeds);                                  % store structure at call for use with cancel
if ~isempty(speeds)                                                     % if a speeds structure is not empty
    if isfield(speeds,'shoulder')                                       % if a field for shoulder exists
        if speeds.shoulder < 1, dum = ((1/speeds.shoulder)-1)*-1;       % if value is a fraction (slower) adjust to appropriate slider value
        else, dum = speeds.shoulder-1; end                              % else if value is (faster) adjust to appropriate slider value
        set(handles.shoulder,'Value',dum);                              % update slider 
    else                                                                % else if shoulder field does not exist
        speeds.shoulder = 1;                                            % create and set to no speed change
    end
    if isfield(speeds,'elbow')                                          % if a field for elbow exists
        if speeds.elbow < 1, dum = ((1/speeds.elbow)-1)*-1;             % if value is a fraction (slower) adjust to appropriate slider value
        else, dum = speeds.elbow-1; end                                 % else if value is (faster) adjust to appropriate slider value
        set(handles.elbow,'Value',dum);                                 % update slider 
    else                                                                % else if elbow field does not exist
        speeds.elbow = 1;                                               % create and set to no speed change
    end
    if isfield(speeds,'forearm')                                        % if a field for forearm exists
        if speeds.forearm < 1, dum = ((1/speeds.forearm)-1)*-1;         % if value is a fraction (slower) adjust to appropriate slider value
        else, dum = speeds.forearm-1; end                               % else if value is (faster) adjust to appropriate slider value
        set(handles.forearm,'Value',dum);                               % update slider 
    else                                                                % else if forearm field does not exist
        speeds.forearm = 1;                                             % create and set to no speed change
    end
    if isfield(speeds,'wrist')                                          % if a field for wrist exists
        if speeds.wrist < 1, dum = ((1/speeds.wrist)-1)*-1;             % if value is a fraction (slower) adjust to appropriate slider value
        else, dum = speeds.wrist-1; end                                 % else if value is (faster) adjust to appropriate slider value
        set(handles.wrist,'Value',dum);                                 % update slider 
    else                                                                % else if wrist field does not exist
        speeds.wrist = 1;                                               % create and set to no speed change
    end
    if isfield(speeds,'hand')                                           % if a field for hand exists
        if speeds.hand < 1, dum = ((1/speeds.hand)-1)*-1;               % if value is a fraction (slower) adjust to appropriate slider value
        else, dum = speeds.hand-1; end                                  % else if value is (faster) adjust to appropriate slider value
        set(handles.hand,'Value',dum);                                  % update slider 
    else                                                                % else if hand field does not exist
        speeds.hand = 1;                                                % create and set to no speed change
    end
end


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = armspeeds_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on slider movement.
function shoulder_Callback(hObject, eventdata, handles)
% hObject    handle to shoulder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
dum = round(get(hObject,'Value'));                                      % round slider movement to integer
set(hObject,'Value',dum)                                                % update slider to integer increment
if dum >= 0,                                                            % if input value is >= 0 (no speed change or faster)
    dum = dum+1;                                                        % add 1 to slider value
else                                                                    % if input value is < 0 (slower)
    dum = 1/(abs(dum)+1);                                               % add 1 to the absolute value and invert
end
speeds.shoulder = dum;                                                  % store speed factor in structure


% --------------------------------------------------------------------
% --- Executes on slider movement.
function elbow_Callback(hObject, eventdata, handles)
% hObject    handle to elbow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
dum = round(get(hObject,'Value'));                                      % round slider movement to integer
set(hObject,'Value',dum)                                                % update slider to integer increment
if dum >= 0,                                                            % if input value is >= 0 (no speed change or faster)
    dum = dum+1;                                                        % add 1 to slider value
else                                                                    % if input value is < 0 (slower)
    dum = 1/(abs(dum)+1);                                               % add 1 to the absolute value and invert
end
speeds.elbow = dum;                                                     % store speed factor in structure


% --------------------------------------------------------------------
% --- Executes on slider movement.
function forearm_Callback(hObject, eventdata, handles)
% hObject    handle to forearm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
dum = round(get(hObject,'Value'));                                      % round slider movement to integer
set(hObject,'Value',dum)                                                % update slider to integer increment
if dum >= 0,                                                            % if input value is >= 0 (no speed change or faster)
    dum = dum+1;                                                        % add 1 to slider value
else                                                                    % if input value is < 0 (slower)
    dum = 1/(abs(dum)+1);                                               % add 1 to the absolute value and invert
end
speeds.forearm = dum;                                                   % store speed factor in structure


% --------------------------------------------------------------------
% --- Executes on slider movement.
function wrist_Callback(hObject, eventdata, handles)
% hObject    handle to wrist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
dum = round(get(hObject,'Value'));                                      % round slider movement to integer
set(hObject,'Value',dum)                                                % update slider to integer increment
if dum >= 0,                                                            % if input value is >= 0 (no speed change or faster)
    dum = dum+1;                                                        % add 1 to slider value
else                                                                    % if input value is < 0 (slower)
    dum = 1/(abs(dum)+1);                                               % add 1 to the absolute value and invert
end
speeds.wrist = dum;                                                     % store speed factor in structure


% --------------------------------------------------------------------
% --- Executes on slider movement.
function hand_Callback(hObject, eventdata, handles)
% hObject    handle to hand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
dum = round(get(hObject,'Value'));                                      % round slider movement to integer
set(hObject,'Value',dum)                                                % update slider to integer increment
if dum >= 0,                                                            % if input value is >= 0 (no speed change or faster)
    dum = dum+1;                                                        % add 1 to slider value
else                                                                    % if input value is < 0 (slower)
    dum = 1/(abs(dum)+1);                                               % add 1 to the absolute value and invert
end
speeds.hand = dum;                                                      % store speed factor in structure


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
speeds = get(hObject,'UserData');                                       % retrieve 'cancel' structure and update
closereq                                                                % close GUI


% --------------------------------------------------------------------
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global speeds
set(handles.shoulder,'Value',0);                                        % reset slider value
set(handles.elbow,'Value',0);                                           % reset slider value
set(handles.forearm,'Value',0);                                         % reset slider value
set(handles.wrist,'Value',0);                                           % reset slider value
set(handles.hand,'Value',0);                                            % reset slider value
speeds.shoulder = 1;                                                    % reset speed factor
speeds.elbow = 1;                                                       % reset speed factor
speeds.forearm = 1;                                                     % reset speed factor
speeds.wrist = 1;                                                       % reset speed factor
speeds.hand = 1;                                                        % reset speed factor


% --------------------------------------------------------------------
% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq                                                                % close GUI