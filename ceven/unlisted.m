function varargout = unlisted(varargin)
% UNLISTED M-file for unlisted.fig
%      UNLISTED, by itself, creates a new UNLISTED or raises the existing
%      singleton*.
%
%      H = UNLISTED returns the handle to a new UNLISTED or the handle to
%      the existing singleton*.
%
%      UNLISTED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNLISTED.M with the given input arguments.
%
%      UNLISTED('Property','Value',...) creates a new UNLISTED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before unlisted_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to unlisted_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help unlisted

% Last Modified by GUIDE v2.5 10-Feb-2005 00:20:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @unlisted_OpeningFcn, ...
                   'gui_OutputFcn',  @unlisted_OutputFcn, ...
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
% --- Executes just before unlisted is made visible.
function unlisted_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to unlisted (see VARARGIN)

% Choose default command line output for unlisted
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes unlisted wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = unlisted_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global notlisted
if length(notlisted)                                                    % if there at least one item to list
    set(hObject,'String',notlisted)                                     % populate list box
else                                                                    % if no items to list
    set(hObject,'String','    << nothing available >>')                 % set to 'nothing' string
end


% --------------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function add_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global notlisted
if length(notlisted)                                                    % if there at least one item to list
    set(hObject,'Enable','on')                                          % enable 'add' button
else                                                                    % if no items to list
    set(hObject,'Enable','off')                                         % disable 'add' button
end


% --------------------------------------------------------------------
% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global notlisted
mainbox = findobj('style','listbox','Tag','contractionslist');          % get handle to main listbox
mainlist = get(mainbox,'String');                                       % get list of items in main listbox
contents = get(handles.listbox,'String');                               % return current listbox contents 
idx = get(handles.listbox,'Value');                                     % get index of selected item
item = contents(idx);                                                   % returns selected item from current listbox
set(mainbox,'String',[mainlist; item]);                                 % add selected item to main listbox
notlisted = [contents(1:idx-1); contents(idx+1:end)];                   % remove selected item from current list

if idx > length(notlisted)                                              % if index of selected is greater than list length
    if idx == 1                                                         % if index is 1
        set(handles.listbox,'Value',1)                                  % set the list selected value to 1
        set(handles.listbox,'String','    << nothing available >>')     % set to 'noting' string
        set(handles.add,'Enable','off')                                 % disable 'add' button
    else                                                                % if index is not 1
        set(handles.listbox,'Value',idx-1)                              % set the list selected value to one less than the index
        set(handles.listbox,'String',notlisted)                         % update current listbox
    end
else                                                                    % if index is within limits
    set(handles.listbox,'String',notlisted)                             % update current listbox
end


% --------------------------------------------------------------------
% --- Executes on button press in done.
function done_Callback(hObject, eventdata, handles)
% hObject    handle to done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq                                                                % close window on 'done' press

