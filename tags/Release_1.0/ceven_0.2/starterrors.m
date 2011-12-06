function varargout = starterrors(varargin)
% STARTERRORS M-file for starterrors.fig
%      STARTERRORS, by itself, creates a new STARTERRORS or raises the existing
%      singleton*.
%
%      H = STARTERRORS returns the handle to a new STARTERRORS or the handle to
%      the existing singleton*.
%
%      STARTERRORS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STARTERRORS.M with the given input arguments.
%
%      STARTERRORS('Property','Value',...) creates a new STARTERRORS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before starterrors_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to starterrors_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help starterrors

% Last Modified by GUIDE v2.5 17-Feb-2005 12:24:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @starterrors_OpeningFcn, ...
                   'gui_OutputFcn',  @starterrors_OutputFcn, ...
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
% --- Executes just before starterrors is made visible.
function starterrors_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to starterrors (see VARARGIN)

% Choose default command line output for starterrors
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes starterrors wait for user response (see UIRESUME)
% uiwait(handles.starterrors);

global ARorder gmm ann feat classifier MVtype

hdls = varargin{1};                                                     % get handles from function input
storage = varargin{2};                                                  % get storge structure from function input
set(handles.update,'UserData',varargin);                                % carry input to update routine
i = 0;                                                                  % initialize text counter

if str2num(storage.reclen) ~= str2num(get(hdls.con_reclen,'String'));   % check stored reclen against entered
    i=i+1;                                                              % advance string counter 
    txt{i}=['- Record Length: ''' get(hdls.con_reclen,'String') ...
            'ms'' entered does not match ''' storage.reclen ...
            'ms'' used in processing'];                                                          
end                                                   
if str2num(storage.procdelay) ~= str2num(get(hdls.con_procdelay,'String')); % check the stored p.delay against entered
    i=i+1;                                                              % advance string counter 
    txt{i}=['- Processing Delay: ''' get(hdls.con_procdelay,'String') ...
            'ms'' entered does not match ''' storage.procdelay ...
            'ms'' used in processing'];
end
switch feat                                                             % choose features type
    case 'TDAR'                                                         % if 'TDAR' features
        if ~get(hdls.con_TDAR,'Value');                                 % TDAR checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- TD & AR Features: TDAR checkbox has been de-selected'];
        end
        if storage.ARorder ~= ARorder;                                  % AR order; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- AR Order: ''' num2str(ARorder) ...
                    ''' entered does not match ''' num2str(storage.ARorder) ...
                    ''' used in processing'];
        end
    case 'TD'                                                           % if 'TD'
        if ~get(hdls.con_TD,'Value');                                   % TD checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- TD Features: TD checkbox has been de-selected'];
        end
    case 'AR'                                                           % if 'AR'
        if ~get(hdls.con_AR,'Value');                                   % AR checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- AR Features: AR checkbox has been de-selected'];
        end
        if storage.ARorder ~= ARorder;                                  % AR order; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- AR Order: ''' num2str(ARorder) ...
                    ''' entered does not match ''' num2str(storage.ARorder) ...
                    ''' used in processing'];
        end
end
if storage.PCAon ~= get(hdls.con_PCAon,'Value');                        % PCA on button; if not the same ...
    i=i+1;                                                              % advance string counter 
    txt{i}=['- PCA on/off: current PCA on/off selection does ' ...
            'not match selection used in processing'];
end
if storage.PCAon && ...                                                 % if PCA on is intended and ...
   (str2num(storage.numPC) ~= str2num(get(hdls.con_PCAnum,'String')));  % # of PCA not the same ...
    i=i+1;                                                              % advance string counter 
    txt{i}=['- Number of PC: ''' get(hdls.con_PCAnum,'String') ...
            ''' entered does not match ''' storage.numPC ...
            ''' used in processing'];
end
switch classifier                                                       % choose features type
    case 'LDA'                                                          % if 'LDA' 
        if ~get(hdls.con_LDA,'Value');                                  % LDA checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- LDA Classifier: LDA checkbox has been de-selected'];
        end
    case 'ANN'                                                          % if 'ANN'
        if ~get(hdls.con_ANN,'Value');                                  % ANN checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- ANN Classifier: ANN checkbox has been de-selected'];
        end
        if ~isequal(ann,storage.annParams);                             % ANN parameters structure; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- ANN Parameters: difference(s) between current' ...
                    ' ANN parameters and those used in processing'];
        end
    case 'GMM'                                                          % if 'GMM'
        if ~get(hdls.con_GMM,'Value');                                  % GMM checkbox; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- GMM Classifier: GMM checkbox has been de-selected'];
        end
        if ~isequal(gmm,storage.gmmParams);                             % GMM parmeters structure; if not the same ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- GMM Parameters: difference(s) between current' ...
                    ' GMM parameters and those used in processing'];
        end
end
if MVtype ~= 'OFF'                                                      % if user has selected a OV scheme
    if storage.MVon ~= get(hdls.con_MVon,'Value');                      % MV on button; if not the same, set the flag
        i=i+1;                                                          % advance string counter 
        txt{i}=['- Majority Voting on/off: current MV on/off selection ' ...
                'does not match selection used in processing'];
    end
    if storage.MVon;                                                    % if MV is intended
        if storage.MVfixSelect ~= get(hdls.con_MVfixSelect,'Value');    % check stored MVfixSelect choice against entered
            i=i+1;                                                      % advance string counter 
            txt{i}=['- Majority Voting settings: ''fixed'' and ' ...
                    '''auto-calibrating'' selections do not match ' ...
                    'those used in processing'];
        end
        if storage.MVfixSelect && ...                                   % if MVfixSelect is intended and ...
                (str2num(storage.MVfixValue) ~= str2num(get(hdls.con_MVfixValue,'String'))); % values do not agree ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- ''Fixed'' Majaroity Voting: ''' get(hdls.con_MVfixValue,'String') ...
                    ''' entered does not match ''' storage.MVfixValue ...
                    ''' used in processing'];
        end
        if storage.MVautoSelect && ...                                  % if MVautoSelect is intended and ...
                (str2num(storage.MVautoValue) ~= str2num(get(hdls.con_MVautoValue,'String'))); % values do not agree ...
            i=i+1;                                                      % advance string counter 
            txt{i}=['- ''Calibrated'' Majaroity Voting: ''' get(hdls.con_MVautoValue,'String') ...
                    ''' entered does not match ''' storage.MVautoValue ...
                    ''' used in processing'];    
        end
    end
end
if (storage.MDnone ~= get(hdls.con_MDnone,'Value')) || ...              % if MDnone button value doesn't agree with stored, or ...
  (storage.MDrms ~= get(hdls.con_MDrms,'Value')) || ...                 % if MDrms button value doesn't agree with stored ...
  (storage.MDthresh ~= get(hdls.con_MDthresh,'Value'));                 % if MDthresh button value doesn't agree with stored ...
    i=i+1;                                                              % advance string counter 
    txt{i}=['- Activity Detection / Speed Control: current selection '...
            'does not match selection used in processing'];
end
if storage.MDthresh && ...                                              % if MD on/off thresholding is selected and..
   storage.MDthreshVal ~= str2num(get(hdls.con_MDthreshVal,'String'));  % percentage value doesn't agree with stored, 
    i=i+1;                                                              % advance string counter 
            txt{i}=['- On/Off Thresholding percentage: ''' get(hdls.con_MDthreshVal,'String') ...
                    '%'' entered does not match ''' num2str(storage.MDthreshVal) ...
                    '%'' used in processing'];  
end 

pixdown = 16*(15-i);                                                    % pixels to move down; textbox height * absent strings (out of 15 possible on the GUI)
dum = get(handles.header1,'Position');                                  % get header1 position
dum(2) = dum(2)-pixdown;                                                % calculate new y position
set(handles.header1,'Position',dum);                                    % update header1 position
dum = get(handles.header2,'Position');                                  % get header2 position
dum(2) = dum(2)-pixdown;                                                % calculate new y position
set(handles.header2,'Position',dum);                                    % update header2 position
for j=1:i                                                               % loop for number of error strings
    eval(['set(handles.text' num2str(j) ',''String'',txt{j})']);        % set text in string
    eval(['dum = get(handles.text' num2str(j) ',''Position'');']);      % get textbox position
    dum(2) = dum(2)-pixdown;                                            % calculate new y
    eval(['set(handles.text' num2str(j) ',''Position'',dum);']);        % update textbox position
    eval(['set(handles.text' num2str(j) ',''Visible'',''on'');']);      % make textbox visible
end
dum = get(handles.starterrors,'Position');                              % get figure size and position
dum(4) = dum(4)-pixdown;                                                % calculate new figure height
set(handles.starterrors,'Position',dum);                                % update figure display size


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = starterrors_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on button press in update.
function update_Callback(hObject, eventdata, handles)
% hObject    handle to update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global callflag ARorder gmm ann feat classifier MVtype

inp = get(handles.update,'UserData');                                   % retrieve input from storage
hdls = inp{1};                                                          % get handles from function input
storage = inp{2};                                                       % get storge structure from function input

if str2num(storage.reclen) ~= str2num(get(hdls.con_reclen,'String'));   % check stored reclen against entered
    set(hdls.con_reclen,'String',storage.reclen);                       % update to proper reclen                                            
end                                                   
if str2num(storage.procdelay) ~= str2num(get(hdls.con_procdelay,'String')); % check the stored p.delay against entered
    set(hdls.con_procdelay,'String',storage.procdelay);                 % update to proper procdelay                                            
end
switch feat                                                             % choose features type
    case 'TDAR'                                                         % if 'TDAR' features
        set(hdls.con_TDAR,'Value',1);                                   % set TDAR checkbox value to 'checked'
        ARorder = storage.ARorder;                                      % update AR order
    case 'TD'                                                           % if 'TD'
        set(hdls.con_TD,'Value',1);                                     % set TD checkbox value to 'checked'
    case 'AR'                                                           % if 'AR'
        set(hdls.con_AR,'Value',1);                                     % set AR checkbox value to 'checked'
        ARorder = storage.ARorder;                                      % update AR order
end
set(hdls.con_PCAon,'Value',storage.PCAon);                              % update PCA on button value
set(hdls.con_PCAoff,'Value',~storage.PCAon);                            % update PCA offbutton value
if storage.PCAon                                                        % if PCA on is intended 
    set(hdls.con_PCAnum,'String',storage.numPC);                        % update # of PCA 
    set(hdls.con_PCAnum,'Enable','on')                                  % enable 'number of PC' text box
    set(hdls.con_PCAtext,'Enable','on')                                 % enable 'number of PC' text
else
    set(hdls.con_PCAnum,'Enable','off')                                 % disable 'number of PC' text box
    set(hdls.con_PCAtext,'Enable','off')                                % disable 'number of PC' text
end
switch classifier                                                       % choose features type
    case 'LDA'                                                          % if 'LDA' 
        set(hdls.con_LDA,'Value',1);                                    % update to 'checked' value
    case 'ANN'                                                          % if 'ANN'
        set(hdls.con_ANN,'Value',1);                                    % update to 'checked' value
        ann = storage.annParams;                                        % update ANN parameters structure
    case 'GMM'                                                          % if 'GMM'
        set(hdls.con_GMM,'Value',1);                                    % update to 'checked' value
        gmm = storage.gmmParams;                                        % update GMM parmeters structure
end
if MVtype ~= 'OFF'                                                      % if user has selected a OV scheme
    set(hdls.con_MVon,'Value',storage.MVon);                            % update MV on button
    set(hdls.con_MVoff,'Value',~storage.MVon);                          % update MV off button
    if storage.MVon;                                                    % if MV is intended
        set(hdls.con_MVfixSelect,'Value',storage.MVfixSelect);          % update MVfixSelect choice 
        set(hdls.con_MVautoSelect,'Value',storage.MVautoSelect);        % update MVfixSelect choice 
        if storage.MVfixSelect                                          % if MVfixSelect is intended 
            set(hdls.con_MVfixValue,'String',storage.MVfixValue);       % update value
        end
        if storage.MVautoSelect                                         % if MVautoSelect is intended
            set(hdls.con_MVautoValue,'String',storage.MVautoValue);     % update value
        end
        set(hdls.con_MVautoSelect,'Enable','on')                        % enable 'MV Auto-Cal.' button
        set(hdls.con_MVautoValue,'Enable','on')                         % enable 'MV Auto-Cal.' text box
        set(hdls.con_MVfixSelect,'Enable','on')                         % enable 'MV Fixed#' button
        set(hdls.con_MVfixValue,'Enable','on')                          % enable 'MV Fixed#' text box
        set(hdls.con_MVtext,'Enable','on')                              % enable MV related text
    else
        set(hdls.con_MVautoSelect,'Enable','off')                       % disable 'MV Auto-Cal.' button
        set(hdls.con_MVautoValue,'Enable','off')                        % disable 'MV Auto-Cal.' text box
        set(hdls.con_MVfixSelect,'Enable','off')                        % disable 'MV Fixed#' button
        set(hdls.con_MVfixValue,'Enable','off')                         % disable 'MV Fixed#' text box
        set(hdls.con_MVtext,'Enable','off')                             % disable MV related text
    end
end
set(hdls.con_MDnone,'Value',storage.MDnone);                            % update MDnone button value 
set(hdls.con_MDrms,'Value',storage.MDrms);                              % update MDrms button value 
set(hdls.con_MDthresh,'Value',storage.MDthresh);                        % update MDthresh button value 
if storage.MDthresh                                                     % if MD on/off thresholding is selected and..
    set(hdls.con_MDthreshVal,'String',num2str(storage.MDthreshVal));    % update percentage value 
end 

callflag = 0;                                                           % set flag to updated (ok) state
closereq                                                                % close and return


% --------------------------------------------------------------------
% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global callflag
callflag = 1;                                                           % set flag to not-updated state
closereq                                                                % close and return

