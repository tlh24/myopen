function varargout = paramsANN(varargin)
% PARAMSANN M-file for paramsANN.fig
%      PARAMSANN, by itself, creates a new PARAMSANN or raises the existing
%      singleton*.
%
%      H = PARAMSANN returns the handle to a new PARAMSANN or the handle to
%      the existing singleton*.
%
%      PARAMSANN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARAMSANN.M with the given input arguments.
%
%      PARAMSANN('Property','Value',...) creates a new PARAMSANN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before paramsANN_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to paramsANN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help paramsANN

% Last Modified by GUIDE v2.5 23-Nov-2004 17:10:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @paramsANN_OpeningFcn, ...
                   'gui_OutputFcn',  @paramsANN_OutputFcn, ...
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
% --- Executes just before paramsANN is made visible.
function paramsANN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to paramsANN (see VARARGIN)

% Choose default command line output for paramsANN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes paramsANN wait for user response (see UIRESUME)
% uiwait(handles.paramsANN);

global ann annReset
if isempty(ann) 
    networkFcn_Callback(handles.networkFcn,[], handles)
    learningFcn_Callback(handles.learningFcn,[], handles)
    performanceFcn_Callback(handles.performanceFcn,[], handles)
    firLayerType_Callback(handles.firLayerType,[], handles)
    outLayerType_Callback(handles.outLayerType,[], handles)
    NumFirstLayer_Callback(handles.NumFirstLayer,[], handles)
    NumEpoch_Callback(handles.NumEpoch,[], handles)
    trainGoal_Callback(handles.trainGoal,[], handles)
    trainNoOV_Callback(handles.trainNoOV,[], handles)
    
    annReset = ann;
    
else
    setupANN(handles)
end

set(handles.cancel,'UserData',ann);


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = paramsANN_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on selection change in networkFcn.
function networkFcn_Callback(hObject, eventdata, handles)
% hObject    handle to networkFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = contents{get(hObject,'Value')};                                   % returns selected item from list
dum = dum(findstr('(',dum)+1:findstr(')',dum)-1);                       % strip out function name (term between '(' and ')')
ann.networkFcn = dum;                                                   % copy function name to global structure


% --------------------------------------------------------------------
% --- Executes on selection change in learningFcn.
function learningFcn_Callback(hObject, eventdata, handles)
% hObject    handle to learningFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = contents{get(hObject,'Value')};                                   % returns selected item from list
dum = dum(findstr('(',dum)+1:findstr(')',dum)-1);                       % strip out function name (term between '(' and ')')
ann.learningFcn = dum;                                                  % copy function name to global structure


% --------------------------------------------------------------------
% --- Executes on selection change in performanceFcn.
function performanceFcn_Callback(hObject, eventdata, handles)
% hObject    handle to performanceFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = contents{get(hObject,'Value')};                                   % returns selected item from list
dum = dum(findstr('(',dum)+1:findstr(')',dum)-1);                       % strip out function name (term between '(' and ')')
ann.performanceFcn = dum;                                               % copy function name to global structure


% --------------------------------------------------------------------
% --- Executes on selection change in firLayerType.
function firLayerType_Callback(hObject, eventdata, handles)
% hObject    handle to firLayerType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = contents{get(hObject,'Value')};                                   % returns selected item from list
dum = dum(findstr('(',dum)+1:findstr(')',dum)-1);                       % strip out function name (term between '(' and ')')
ann.firLayerType = dum;                                                 % copy function name to global structure


% --------------------------------------------------------------------
% --- Executes on selection change in outLayerType.
function outLayerType_Callback(hObject, eventdata, handles)
% hObject    handle to outLayerType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = contents{get(hObject,'Value')};                                   % returns selected item from list
dum = dum(findstr('(',dum)+1:findstr(')',dum)-1);                       % strip out function name (term between '(' and ')')
ann.outLayerType = dum;                                                 % copy function name to global structure


% --------------------------------------------------------------------
function NumFirstLayer_Callback(hObject, eventdata, handles)
% hObject    handle to NumFirstLayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
dum = str2num(get(hObject,'String'));                                   % get number entered in text box
if isempty(dum)                                                         % if a number was not entered
    set(hObject,'String','12');                                         % reset the text to the defalut number and do noting to sturcture
else                                                                    % else, a valid number was entered
    ann.NumFirstLayer = dum;                                            % copy value to global structure
end


% --------------------------------------------------------------------
function NumEpoch_Callback(hObject, eventdata, handles)
% hObject    handle to NumEpoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
dum = str2num(get(hObject,'String'));                                   % get number entered in text box
if isempty(dum)                                                         % if a number was not entered
    set(hObject,'String','100');                                        % reset the text to the defalut number and do noting to sturcture
else                                                                    % else, a valid number was entered
    ann.NumEpoch = dum;                                                 % copy value to global structure
end


% --------------------------------------------------------------------
% --- Executes on selection change in trainGoal.
function trainGoal_Callback(hObject, eventdata, handles)
% hObject    handle to trainGoal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
contents = get(hObject,'String');                                       % returns list contents as cell array
dum = str2num(contents{get(hObject,'Value')});                          % returns selected item from list, converted to number
if ~isempty(dum)                                                        % if a valid number was selected
    ann.trainGoal = dum;                                                % copy value to global structure
end


% --------------------------------------------------------------------
% --- Executes on button press in trainNoOV.
function trainNoOV_Callback(hObject, eventdata, handles)
% hObject    handle to trainNoOV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
set(handles.trainOV,'Value',~get(hObject,'Value'))                      % toggle radio button values
if get(hObject,'Value')                                                 % if No OV is selected
    ann.OVtrainData = '';                                               % set global parameter to ''
else                                                                    % if No OV is de-selected
    ann.OVtrainData = '_OV';                                            % set global parameter to '_OV'
end


% --------------------------------------------------------------------
% --- Executes on button press in trainOV.
function trainOV_Callback(hObject, eventdata, handles)
% hObject    handle to trainOV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann
set(handles.trainNoOV,'Value',~get(hObject,'Value'))                    % toggle radio button values
if get(hObject,'Value')                                                 % if OV is selected
    ann.OVtrainData = '_OV';                                            % set global parameter to '_OV'
else                                                                    % if OV is de-selected
    ann.OVtrainData = '';                                               % set global parameter to ''
end


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

global ann
ann = get(handles.cancel,'UserData');
setupANN(handles)
closereq


% --------------------------------------------------------------------
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ann annReset
ann = annReset;
setupANN(handles)  


% --------------------------------------------------------------------
% --- Executes on callback.
function setupANN(handles)

global ann

dum = ann.networkFcn;
list = get(handles.networkFcn,'String');
for i = 1:length(list)
    word = char(list(i));
    word = word(findstr('(',word)+1:findstr(')',word)-1);
    if strmatch(word,dum,'exact')
        set(handles.networkFcn,'Value',i), break
    end
end
dum = ann.learningFcn;
list = get(handles.learningFcn,'String');
for i = 1:length(list)
    word = char(list(i));
    word = word(findstr('(',word)+1:findstr(')',word)-1);
    if strmatch(word,dum,'exact')
        set(handles.learningFcn,'Value',i), break
    end
end
dum = ann.performanceFcn;
list = get(handles.performanceFcn,'String');
for i = 1:length(list)
    word = char(list(i));
    word = word(findstr('(',word)+1:findstr(')',word)-1);
    if strmatch(word,dum,'exact')
        set(handles.performanceFcn,'Value',i), break
    end
end
dum = ann.firLayerType;
list = get(handles.firLayerType,'String');
for i = 1:length(list)
    word = char(list(i));
    word = word(findstr('(',word)+1:findstr(')',word)-1);
    if strmatch(word,dum,'exact')
        set(handles.firLayerType,'Value',i), break
    end
end
dum = ann.outLayerType;
list = get(handles.outLayerType,'String');
for i = 1:length(list)
    word = char(list(i));
    word = word(findstr('(',word)+1:findstr(')',word)-1);
    if strmatch(word,dum,'exact')
        set(handles.outLayerType,'Value',i), break
    end
end
dum = ann.NumFirstLayer;
set(handles.NumFirstLayer,'String',num2str(dum));
dum = ann.NumEpoch;
set(handles.NumEpoch,'String',num2str(dum));
dum = ann.trainGoal;
list = str2num(char(get(handles.trainGoal,'String')));
set(handles.trainGoal,'Value',find(dum==list));
dum = ann.OVtrainData;
if isempty(dum)
    set(handles.trainNoOV,'Value',1);
    set(handles.trainOV,'Value',0);
else
    set(handles.trainNoOV,'Value',0);
    set(handles.trainOV,'Value',1);
end