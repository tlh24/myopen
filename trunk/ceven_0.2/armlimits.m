function varargout = armlimits(varargin)
% ARMLIMITS M-file for armlimits.fig
%      ARMLIMITS, by itself, creates a new ARMLIMITS or raises the existing
%      singleton*.
%
%      H = ARMLIMITS returns the handle to a new ARMLIMITS or the handle to
%      the existing singleton*.
%
%      ARMLIMITS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMLIMITS.M with the given input arguments.
%
%      ARMLIMITS('Property','Value',...) creates a new ARMLIMITS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before armlimits_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to armlimits_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help armlimits

% Last Modified by GUIDE v2.5 16-Nov-2004 09:01:00

% Blair Lock 08-05-04

global limits default_limits

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @armlimits_OpeningFcn, ...
                   'gui_OutputFcn',  @armlimits_OutputFcn, ...
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
% --- Executes just before armlimits is made visible.
function armlimits_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to armlimits (see VARARGIN)

% Choose default command line output for armlimits
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes armlimits wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global limits default_limits 

tag = get(gcbo,'Tag');                                                  % determine which uicontrol called this fuction
if isempty(strfind(tag,'text'))                                         % determine if tag contains 'ven_text_'
    tag = tag(5:end);                                                   % strip off 'ven_' prefix                      
else
    tag = tag(10:end);                                                  % strip off 'ven_text_' prefix
end
set(handles.ok,'UserData',tag);                                         % set for use below in 'reset' and 'ok' callbacks

%%%%%%%%%%%%%%%%%%%%%%%%%%%% determine title text
name1 = '';
if findstr(tag,'sh'), name1 = 'Shoulder'; end
if findstr(tag,'el'), name1 = 'Elbow'; end
if findstr(tag,'wr'), name1 = 'Wrist'; end
if findstr(tag,'ha'), name1 = 'Hand'; end
name2 = '';
if findstr(tag,'aa'), name2 = ' Abduction/Adduction'; end
if findstr(tag,'fe'), name2 = ' Flexion/Extension'; end
if findstr(tag,'ps'), name2 = ' Pronation/Supination'; end
if findstr(tag,'pg'), name2 = ' Power Grip'; end
if findstr(tag,'kg'), name2 = ' Key Grip'; end
if findstr(tag,'sf'), name2 = ' Spread Fingers'; end

if (findstr(tag,'sh') & findstr(tag,'ps')), name2 = ' In/Out Rotation'; end
if (findstr(tag,'wr') & findstr(tag,'ps')), name1 = 'Forearm'; end

set(handles.title,'String',[name1 name2])
%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%% determine max/min labels
min_text = 'Minimum';
max_text = 'Maximum';
if findstr(tag,'aa'), min_text = 'Adduction'; max_text = 'Abduction'; end
if findstr(tag,'fe'), min_text = 'Extension'; max_text = 'Flexion'; end
if findstr(tag,'ps'), min_text = 'Supination'; max_text = 'Pronation'; end

if (findstr(tag,'sh') & findstr(tag,'ps')), min_text = 'Rotate Out'; max_text = 'Rotate In'; end

set(handles.min_text,'String',min_text)
set(handles.max_text,'String',max_text)
%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%% populate text fields with current values
eval(['mn = limits(1).' tag ';']);
eval(['mx = limits(2).' tag ';']);
eval(['hm = default_limits(3).' tag ';']);

set(handles.min,'String',num2str(mn));
set(handles.max,'String',num2str(mx));
set(handles.home,'String',num2str(hm));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = armlimits_OutputFcn(hObject, eventdata, handles)
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

global limits default_limits gripFac

tag = get(handles.ok,'UserData');                                       % retrieve tag name

mn = str2num(get(handles.min,'String'));                                % get min value from text field
mx = str2num(get(handles.max,'String'));                                % get max value from text field
hm = str2num(get(handles.home,'String'));                               % get home value from text field

if ~isempty(isnan(mn))                                                  % check to ensure numerical value
    eval(['limits(1).' tag ' = mn;']);                                  % update limits structure with input value
    set(findobj('Tag',['ven_' tag],'Type','uicontrol'),'Min',mn)        % adjust slider to match new limit
end
if ~isempty(isnan(mx))                                                  % check to ensure numerical value
    eval(['limits(2).' tag ' = mx;']);                                  % update limits structure with input value
    set(findobj('Tag',['ven_' tag],'Type','uicontrol'),'Max',mx)        % adjust slider to match new limit
end
if ~isempty(isnan(hm))                                                  % check to ensure numerical value
    eval(['default_limits(3).' tag ' = hm;']);                          % update default limits structure with input value
end

switch tag
    case 'hand_pg'
        gripFac.pgRng = abs(limits(2).hand_pg-limits(1).hand_pg);       % initial power grip range
        gripFac.pg = abs(limits(3).hand_pg-limits(1).hand_pg)/gripFac.pgRng; % initial power grip factor
    case 'hand_kg'
        gripFac.kgRng = abs(limits(2).hand_kg-limits(1).hand_kg);       % initial key grip range
        gripFac.kg = abs(limits(3).hand_kg-limits(1).hand_kg)/gripFac.kgRng; % initial key grip factor
    otherwise
end
closereq                                                                % close arm limits window


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq                                                                % close arm limits window


% --------------------------------------------------------------------
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global limits default_limits 

tag = get(handles.ok,'UserData');                                       % retrieve tag name

eval(['mn = default_limits(1).' tag ';']);                              % retrieve min default
eval(['mx = default_limits(2).' tag ';']);                              % retrieve max default
eval(['hm = default_limits(4).' tag ';']);                              % retrieve home default

set(handles.min,'String',num2str(mn));                                  % update min text field with default
set(handles.max,'String',num2str(mx));                                  % update max text field with default
set(handles.home,'String',num2str(hm));                                 % update home text field with default