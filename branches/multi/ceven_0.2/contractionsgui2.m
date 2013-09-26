function varargout = contractionsgui2(varargin)
% CONTRACTIONSGUI2 M-file for contractionsgui2.fig
%      CONTRACTIONSGUI2, by itself, creates a new CONTRACTIONSGUI2 or raises the existing
%      singleton*.
%
%      H = CONTRACTIONSGUI2 returns the handle to a new CONTRACTIONSGUI2 or the handle to
%      the existing singleton*.
%
%      CONTRACTIONSGUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTRACTIONSGUI2.M with the given input arguments.
%
%      CONTRACTIONSGUI2('Property','Value',...) creates a new CONTRACTIONSGUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before contractionsgui2_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to contractionsgui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help contractionsgui2

% Last Modified by GUIDE v2.5 09-Feb-2005 16:11:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @contractionsgui2_OpeningFcn, ...
                   'gui_OutputFcn',  @contractionsgui2_OutputFcn, ...
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
% --- Executes just before contractionsgui2 is made visible.
function contractionsgui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to contractionsgui2 (see VARARGIN)

% Choose default command line output for contractionsgui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes contractionsgui2 wait for user response (see UIRESUME)
% uiwait(handles.contractionsgui2);

global motions calledtag
motions = {...
        'Shoulder Flexion';...
        'Shoulder Extension';...
        'Shoulder Pronation';...
        'Shoulder Supination';...
        'Shoulder Abduction';...
        'Shoulder Adduction';...
        'Shoulder Transverse Flexion';...
        'Shoulder Transverse Extension';...
        'Elbow Flexion';...
        'Elbow Extension';...
        'Forearm Pronation';...
        'Forearm Supination';...
        'Wrist Flexion';...
        'Wrist Extension';...
        'Wrist Abduction';...
        'Wrist Adduction';...
        'Gently Move Fingers - No Movement';...
        'Chuck Gripping';...
        'Release Chuck Grip';...
        'Key Gripping';...
        'Release Key Grip';...
        'Spread Fingers Open';...
        'Retract Fingers from Spread';...
        'Move a Pen Down - Chuck Gripping & Wrist Flexion';...
        'Move a Pen Up - Chuck Gripping & Wrist Extension';...
        'Eating Candy - Chuck Gripping & Wrist Abduction';...
        'Look at a Disk - Chuck Gripping & Forearm Supination';...
        'Turn a Key Down - Key Gripping & Forearm Pronation';...
        'Turn a Key Up - Key Gripping & Forearm Supination';...
        'Pull a Cord - Key Gripping & Wrist Abduction';...
        'Lower an Object - Key Gripping & Wrist Adduction';...
        'Low Hand Wave - Spread Fingers Open & Wrist Extension';...
        'Look at Palm - Spread Fingers Open & Forearm Supination';...
    };
calledtag = findobj('Tag','acq_contSetup');                             % store calling object handle
set(calledtag,'Enable','off')                                           % disable 'setup' button
if isempty(get(calledtag,'UserData'))                                   % if this is the first time function is called
    listdata.strings = motions;                                         % store list text strings in structure
    listdata.random = get(handles.randomize,'Value');                   % store value of random button in structure
    set(calledtag,'UserData',listdata)                                  % keep structure in UserData of calling object
else                                                                    % is this function is being returned to
    listdata = get(calledtag,'UserData');                               % get stored values of checkboxes and list order
    set(handles.randomize,'Value',listdata.random)                      % set random to stored value
    randomize_Callback(handles.randomize,[],handles)                    % call function to set buttons
    set(handles.contractionslist,'String',listdata.strings)             % set text values from stored
    contractionslist_Callback(handles.contractionslist,[],handles)      % call to display preview image
end        

try delete(findobj('Tag','cpmenu')); catch, end
cpmenu_list = uicontextmenu;                                            % define the context menu
set(cpmenu_list,'Tag','cpmenu');
set(handles.contractionslist,'UIContextMenu',cpmenu_list);              % associate with the context menu
item1 = uimenu(cpmenu_list, 'Label', 'Set default contractions for clothespin study', ...
    'Callback', 'contractionsgui2(''pickcp_Callback'',gcbo,[],guidata(gcbo))', 'Tag', 'cp_test1');     % define the context menu items
item2 = uimenu(cpmenu_list, 'Label', 'Set default contractions for Levi''s study', ...
    'Callback', 'contractionsgui2(''picklevi_Callback'',gcbo,[],guidata(gcbo))', 'Tag', 'cp_testlevi');

% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = contractionsgui2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes during object closing.
function contractionsgui2_CloseFcn(hObject, eventdata, handles)
% hObject    handle to armlayout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global calledtag
if ~isempty(calledtag)                                                  % if this function was called from the 'setup' button 
    set(calledtag,'Enable','on')                                        % re-enable the button on close
end
closereq                                                                % close contractionsgui2


% --------------------------------------------------------------------
% --- Executes on button press in moveup.
function moveup_Callback(hObject, eventdata, handles)
% hObject    handle to moveup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
idx = get(handles.contractionslist,'Value');                            % get index of selected item
if idx == 1, return, end                                                % if item is already at list top, return
mUP = list(idx);                                                        % store item to move up
list(idx) = list(idx-1);                                                % move above item down
list(idx-1) = mUP;                                                      % move selected item to 1 position up
set(handles.contractionslist,'Value',idx-1)                             % set list index to previous index 
set(handles.contractionslist,'String',list);                            % apply the new listbox text list


% --------------------------------------------------------------------
% --- Executes on button press in movedown.
function movedown_Callback(hObject, eventdata, handles)
% hObject    handle to movedown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
idx = get(handles.contractionslist,'Value');                            % get index of selected item
if isempty(list), return, end                                           % jump out if no items
if idx == length(list), return, end                                     % if item is already at bottom of list                            
mDN = list(idx+1);                                                      % store item to move down
list(idx+1) = list(idx);                                                % move item below up
list(idx) = mDN;                                                        % move selected item to 1 position down
set(handles.contractionslist,'Value',idx+1)                             % set list index to previous index 
set(handles.contractionslist,'String',list);                            % apply the new listbox text list


% --------------------------------------------------------------------
% --- Executes on button press in randomize.
function randomize_Callback(hObject, eventdata, handles)
% hObject    handle to randomize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(hObject,'Value')                                                 % if randomize is selected
    set([handles.moveup handles.movedown],'Enable','off');              % disable moveup and movedown buttons
else                                                                    % if randomize is un-selected
    set([handles.moveup handles.movedown],'Enable','on');               % enable moveup and movedown buttons
end


% --------------------------------------------------------------------
% --- Executes on button press in pickall.
function pickall_Callback(hObject, eventdata, handles)
% hObject    handle to pickall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if isempty(strmatch(dum,list))                                      % if not already in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deleteall.
function deleteall_Callback(hObject, eventdata, handles)
% hObject    handle to deleteall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.contractionslist,'Value',1)                                 % set list index to 1
set(handles.contractionslist,'String',{});                              % apply empty array to listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickdiscrete.
function pickdiscrete_Callback(hObject, eventdata, handles)
% hObject    handle to pickdiscrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if isempty(strfind(dum,'&')) && isempty(strmatch(dum,list))         % if not a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deletediscrete.
function deletediscrete_Callback(hObject, eventdata, handles)
% hObject    handle to deletediscrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if strfind(dum,'&')                                                 % if item is a combined motion   
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickcombined.
function pickcombined_Callback(hObject, eventdata, handles)
% hObject    handle to pickcombined (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if ~isempty(strfind(dum,'&')) && isempty(strmatch(dum,list))        % if a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deletecombined.
function deletecombined_Callback(hObject, eventdata, handles)
% hObject    handle to deletecombined (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if isempty(strfind(dum,'&'))                                        % if item is not a combined motion   
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickshoulder.
function pickshoulder_Callback(hObject, eventdata, handles)
% hObject    handle to pickshoulder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if (~isempty(strfind(dum,'Shoulder')) && ...                        % if item contains 'Shoulder'
            isempty(strfind(dum,'&')) && isempty(strmatch(dum,list)))   % and if not a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deleteshoulder.
function deleteshoulder_Callback(hObject, eventdata, handles)
% hObject    handle to deleteshoulder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if (isempty(strfind(dum,'Shoulder')) || ...                         % if item does not contain 'Shoulder' 
            ~isempty(strfind(dum,'&')))                                 % or is a combined motion 
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickelbow.
function pickelbow_Callback(hObject, eventdata, handles)
% hObject    handle to pickelbow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if (~isempty(strfind(dum,'Elbow')) && ...                           % if item contains 'Elbow'
            isempty(strfind(dum,'&')) && isempty(strmatch(dum,list)))   % and if not a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deleteelbow.
function deleteelbow_Callback(hObject, eventdata, handles)
% hObject    handle to deleteelbow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if (isempty(strfind(dum,'Elbow')) || ...                            % if item does not contain 'Elbow' 
            ~isempty(strfind(dum,'&')))                                 % or is a combined motion   
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickwrist.
function pickwrist_Callback(hObject, eventdata, handles)
% hObject    handle to pickwrist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if ((~isempty(strfind(dum,'Wrist')) || ~isempty(strfind(dum,'Forearm'))) && ... % if item contains 'Wrist' or 'Forearm'
            isempty(strfind(dum,'&')) && isempty(strmatch(dum,list)))   % and if not a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deletewrist.
function deletewrist_Callback(hObject, eventdata, handles)
% hObject    handle to deletewrist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if ((isempty(strfind(dum,'Wrist')) && ...                           % if item does not contain 'Wrist' 
            isempty(strfind(dum,'Forearm'))) || ...                     % or 'Forearm' 
            ~isempty(strfind(dum,'&')))                                 % or a combined motion   
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickhand.
function pickhand_Callback(hObject, eventdata, handles)
% hObject    handle to pickhand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
list = get(handles.contractionslist,'String');                          % get listbox contents
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if ((~isempty(strfind(dum,'Hand')) || ~isempty(strfind(dum,'Fingers')) || ~isempty(strfind(dum,'Grip'))) && ...          % if item contains 'Hand' or 'Fingers'
            isempty(strfind(dum,'&')) && isempty(strmatch(dum,list)))   % and if not a combined motion and not in the list 
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deletehand.
function deletehand_Callback(hObject, eventdata, handles)
% hObject    handle to deletehand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
listUD = {};                                                            % initialize a new cell list
for i=1:length(list)                                                    % cycle through all listbox contractions
    dum = list{i};                                                      % contraction string
    if ((isempty(strfind(dum,'Hand')) && ...                            % if item does not contain 'Hand'
            isempty(strfind(dum,'Fingers')) && ...                      % or 'Fingers'
            isempty(strfind(dum,'Grip'))) || ...                        % or 'Grip' 
            ~isempty(strfind(dum,'&')))                                 % or is a combined motion   
       listUD = [listUD; {dum}];                                        % append contraction to new listbox group
    end
end
dum = min([get(handles.contractionslist,'Value') length(listUD)]);      % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',listUD);                          % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in picklist.
function picklist_Callback(hObject, eventdata, handles)
% hObject    handle to picklist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions notlisted
list = get(handles.contractionslist,'String');                          % get listbox contents
notlisted = {};                                                         % initialize empty array of items not listed
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if isempty(strmatch(dum,list))                                      % if not in the list 
        notlisted = [notlisted; {dum}];                                 % append contraction to listbox group
    end
end
set(handles.contractionsgui2,'WindowStyle','normal')                    % allow 'unlisted' GUI to dominate
unlisted                                                                % call GUI to pick items from a list
uiwait                                                                  % wait for close of GUI
set(handles.contractionsgui2,'WindowStyle','modal')                     % return control to contractions GUI
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in deleteitem.
function deleteitem_Callback(hObject, eventdata, handles)
% hObject    handle to deleteitem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

list = get(handles.contractionslist,'String');                          % get listbox contents
idx = get(handles.contractionslist,'Value');                            % get index of selected item
list = [list(1:idx-1); list(idx+1:end)];                                % remove selected from list
dum = min([idx length(list)]);                                          % if selected list index will exceed list length
set(handles.contractionslist,'Value',max([dum 1]))                      % set list index to previous index (or 1 is min was 0)
set(handles.contractionslist,'String',list);                            % apply the new listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global calledtag
listdata.strings = get(handles.contractionslist,'String');              % store list text strings in structure
listdata.random = get(handles.randomize,'Value');                       % store value of random button in structure
set(calledtag,'UserData',listdata)                                      % keep structure in UserData of calling object

if isempty(listdata.strings)                                            % check to see if at least one contraction was selected
    warndlg('No Contractions Have Been Selected','Error');              % display reminder if not
    return                                                              % exit the function and return to normal
end
close(gcf)                                                              % close window


% --------------------------------------------------------------------
% --- Executes on selection change in contractionslist.
function contractionslist_Callback(hObject, eventdata, handles)
% hObject    handle to contractionslist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.panetext,'Visible','on')                                    % enable pane text
set(handles.previewframe,'Visible','on')                                % enable frame
set(handles.previewpane,'Visible','off')                                % hide preview pane
contents = get(handles.contractionslist,'String');                      % return contractionslist contents
if isempty(contents)                                                    % if list is empty
    set(handles.panetext,'Visible','off')                               % disable pane text
    return                                                              % jump out of function
end
name = contents{get(handles.contractionslist,'Value')};                 % returns selected item from contractionslist
files = dir('*.jpg');                                                   % find image thumbnail files in directory
filelist = {files.name}';                                               % populate list of filenames
idx = strfind(name,' -')-1;                                             % check for ' -' and keep index of string length
if isempty(idx)                                                         % if no ' -' was found
    idx = length(name);                                                 % use full string
end
name = name(1:idx);                                                     % trim list item text on purpose
dum = strmatch(lower(name),filelist);                                   % find index of image file name matching trimmed list string
if ~isempty(dum)                                                        % check to proceed
    imagefile = char(filelist(dum));                                    % get associated imagefile
    imagedata = imread(imagefile);                                      % read in image data from file
    axes(handles.previewpane)                                           % set current axes
    image(imagedata);                                                   % display image
    set(handles.previewpane,'XTick',[],'YTick',[])                      % remove any x and y tick labelling
    set(handles.panetext,'Visible','off')                               % hide the text            
    set(handles.previewframe,'Visible','off')                           % hide the frame
end


% --------------------------------------------------------------------
% --- Executes on button press in pickhand.
function pickcp_Callback(hObject, eventdata, handles)
% hObject    handle to pickhand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
set(handles.randomize,'Value',1);                                       % set to randomize
set([handles.moveup handles.movedown],'Enable','off');                  % disable moveup and movedown buttons
set(handles.contractionslist,'Value',1)                                 % set list index to 1
set(handles.contractionslist,'String',{});                              % apply empty array to listbox text list
list = get(handles.contractionslist,'String');                          % get listbox contents
cplist = {'Gently Move Fingers - No Movement';...                       % list of contractions for clothespin study
          'Elbow Flexion';...
          'Elbow Extension';...
          'Forearm Pronation';...
          'Forearm Supination';...
          'Chuck Gripping'};
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if ~isempty(strmatch(dum,cplist))                                   % if item contains from cplist
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image


% --------------------------------------------------------------------
% --- Executes on button press in pickhand.
function picklevi_Callback(hObject, eventdata, handles)
% hObject    handle to pickhand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global motions
set(handles.contractionslist,'Value',1)                                 % set list index to 1
set(handles.contractionslist,'String',{});                              % apply empty array to listbox text list
list = get(handles.contractionslist,'String');                          % get listbox contents
cplist = {...                       % list of contractions for clothespin study
          'Forearm Pronation';...
          'Forearm Supination';...
          'Wrist Flexion';...
          'Wrist Extension';...
          'Wrist Abduction';...
          'Wrist Adduction';...
          'Gently Move Fingers - No Movement';...
          'Chuck Gripping';...
          'Key Gripping';...
          'Spread Fingers Open'};
for i=1:length(motions)                                                 % cycle through all possible listed contractions
    dum = motions{i};                                                   % contraction string
    if ~isempty(strmatch(dum,cplist))                                   % if item contains from cplist
       list = [list; {dum}];                                            % append contraction to listbox group
    end
end
set(handles.contractionslist,'String',list);                            % re-apply the listbox text list
contractionslist_Callback(handles.contractionslist,[],handles)          % call to display preview image