function varargout = GraspAssistTrainer(varargin)
% GRASPASSISTTRAINER MATLAB code for GraspAssistTrainer.fig
%      GRASPASSISTTRAINER, by itself, creates a new GRASPASSISTTRAINER or raises the existing
%      singleton*.
%
%      H = GRASPASSISTTRAINER returns the handle to a new GRASPASSISTTRAINER or the handle to
%      the existing singleton*.
%
%      GRASPASSISTTRresAINER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRASPASSISTTRAINER.M with the given input arguments.
%
%      GRASPASSISTTRAINER('Property','Value',...) creates a new GRASPASSISTTRAINER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraspAssistTrainer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraspAssistTrainer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
%

% Edit the above text to modify the response to help GraspAssistTrainer

% Last Modified by GUIDE v2.5 08-Feb-2015 20:17:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',     mfilename  , ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @GraspAssistTrainer_OpeningFcn, ...
    'gui_OutputFcn',  @GraspAssistTrainer_OutputFcn, ...
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

% --- Executes just before GraspAssistTrainer is made visible.
function GraspAssistTrainer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraspAssistTrainer (see VARARGIN)

% Choose default command line output for GraspAssistTrainer
handles.output = hObject;

% setup the rendered display
handles = setup_axes(handles);

% store reps as global
handles.numRepetitions = 5;
handles.doRecordVideo = 0;

handles.hDevice = [];
handles.hEmg = [];

% set the gui options
% [~, cellGrasps] = enumeration('Controls.GraspTypes');
cellGrasps = {'Index' 'Middle' 'Thumb'};

set(handles.editReps,'String',num2str(handles.numRepetitions));

set(handles.listbox1,'String',cellGrasps);
set(handles.listbox1,'Max',length(cellGrasps))
if ispc && isequal(get(handles.listbox1,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(handles.listbox1,'BackgroundColor','white');
end


set(handles.menuToolsCapture,'Checked','off')
setDeviceEnable(handles,0);

if ispc && isequal(get(handles.editReps,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(handles.editReps,'BackgroundColor','white');
end


% Update handles structure
guidata(hObject, handles);
% UIWAIT makes GraspAssistTrainer wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = GraspAssistTrainer_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function editReps_Callback(hObject, eventdata, handles)
% Change the number of Repetitions
newVal = str2double(get(hObject,'String'));

% check for non-negative, integers
if isnan(newVal)
    set(hObject,'String',num2str(handles.numRepetitions));
    return
elseif newVal < 1
    newVal = 1;
else
    newVal = round(newVal);
end

set(hObject,'String',num2str(newVal));
handles.numRepetitions = newVal;

% Update handles structure
guidata(hObject, handles);

function listbox1_Callback(hObject, eventdata, handles)

function handles = setup_axes(handles)

% Create a handle to the MiniV animated arm
hAxes = handles.axes1;
hold(hAxes,'on');
view(hAxes,0,0);
axis(hAxes,'equal')
axis(hAxes,'off')

% View Whole [Left] Arm, Frontal
axis(hAxes,[0 0.4 -0.4 0.4 0.3 0.7])

% Zoom to hand
isLeftSide = 1;
if isLeftSide
    axis(hAxes,[0.15 0.25 -0.1 0.1 0.35 0.45]);
else
    axis(hAxes,[-0.25 -0.15 -0.1 0.1 0.35 0.45]);
end

hLight = light('Parent',hAxes);
camlight(hLight,'left');

handles.hMiniV = Presentation.MiniV(hAxes,1,[1 1 1],1);
% set wrist pronation to visible position
armUser = [0 0 0 0 -45 0 0];
handles.hMiniV.set_upper_arm_angles_degrees(armUser)
handles.hMiniV.redraw

function pbGo_Callback(hObject, eventdata, handles)
% hObject    handle to pbGo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~get(hObject,'Value')
    set(handles.menuTools,'Enable','on')
    return
else
    set(handles.menuTools,'Enable','off')
end

if ~isempty(handles.hDevice)
    start(handles.hDevice.hTimer);
end

pctGrasp = 0;
direction = 1;
iGrasp = 1;
iRepetition = 1;
delay = 0.1;

doRecord = handles.doRecordVideo;

if doRecord
    % Prepare the new file.
    %vidObj = VideoWriter('c:\tmp\peaks3.avi','Uncompressed AVI');
    %vidObj = VideoWriter('c:\tmp\Finger_Rehab','MPEG-4');
    filePrefix = 'Grasp_Rehab_';
    DefaultName = [filePrefix datestr(now,'yyyymmdd_HHMMSS')];
    vidObj = VideoWriter(DefaultName,'MPEG-4');
    vidObj.FrameRate = 12;
    open(vidObj);
end

set(handles.txtStatus,'String','');
set(handles.listbox1,'Enable','off');
set(handles.editReps,'Enable','off');

t = tic();
while get(hObject,'Value')
    
    %disp('Running')
    set(hObject,'String','STOP');
    
    % control speed
    hSpeed = get(handles.uibuttongroup1,'SelectedObject');
    switch hSpeed.String
        case 'Slow'
            velocity = 0.1 * direction;
        case 'Medium'
            velocity = 0.5 * direction;
        case 'Fast'
            velocity = 1.1 * direction;
        otherwise
            velocity = 0.01 * direction;
    end
    
    % Get the grasp from the list box
    contents = cellstr(get(handles.listbox1,'String')) ;
    values = get(handles.listbox1,'Value');
    
    % perform velocity integration
    dt = toc(t);
    pctGrasp = pctGrasp + (velocity * dt);
    t = tic();
    
    if pctGrasp >=1
        % reached positive limit, reverse
        pctGrasp = 1;
        direction = -1;
        addPause = 1;
    elseif pctGrasp <=0
        % reached negetive limit, reverse
        % also count as one completed rep
        pctGrasp = 0;
        direction = 1;
        addPause = 1;
        
        % goto next grasp
        iGrasp = iGrasp + 1;
        if iGrasp > length(values)
            iGrasp = 1;
            iRepetition = iRepetition + 1;
        end
        
    else
        addPause = 0;
    end
    
    graspType = contents{values(iGrasp)};
    grasp = Controls.GraspTypes.(graspType);
    handAngles = Controls.graspInterpolation(pctGrasp, grasp)';
    
    handles.hMiniV.set_hand_angles_degrees(handAngles);
    handles.hMiniV.redraw
    
    % update physical hardware
    updateDevice(handles, grasp, velocity);
    
    if addPause;
        pause(delay);
    end
    
    if iRepetition > handles.numRepetitions
        break;
    end
    
    str = sprintf('Rep # %d: %s',iRepetition,graspType);
    set(handles.txtStatus,'String',str);
    
    drawnow
    
    if doRecord
        % Write each frame to the file.
        currFrame = getframe(handles.figure1);
        drawnow
        vidObj.writeVideo(currFrame);
    end
    
end

% trigger on completion callback
onCompletion(handles);

if doRecord
    % Close the file.
    close(vidObj);
end
function onCompletion(handles)

handles.hMiniV.set_hand_angles_degrees(zeros(1,29));
handles.hMiniV.redraw

set(handles.pbGo,'String','GO');
set(handles.pbGo,'Value',0);
set(handles.listbox1,'Enable','on');
set(handles.txtStatus,'String','');
set(handles.editReps,'Enable','on');
set(handles.menuTools,'Enable','on')

if ~isempty(handles.hDevice)
    stop(handles.hDevice.hTimer);
end

if ~isempty(handles.hDevice)
    handles.hDevice.setIdle();
    handles.hDevice.update();
    pause(0.1);
    handles.hDevice.update();
    pause(0.1);
    handles.hDevice.update();
end

function updateDevice(handles, graspName, graspVelocity)

if ~isempty(handles.hDevice)
    handles.hDevice.setGrasp(graspName, graspVelocity);
end
function devParams = setupDeviceParameters()
% Setup device parameters

tempFileName = 'defaultGraspAssistDeviceParams';
devParams = UiTools.load_temp_file(tempFileName);
if isempty(devParams)
    defaultanswer={'COM26','1FFFFFFF','ASCII','100','0'};
else
    defaultanswer={devParams.Port,devParams.CanAddr,...
        devParams.AsciiMode,devParams.RefreshRate,devParams.ThumbMode};
end

% Use these defaults
prompt={
    'Enter COM Port (e.g. COM26):',...
    'Enter CAN Address (e.g. 1FFFFFFF / 028C901A):',...
    'Enter ASCII mode (e.g. ASCII / BINARY):',...
    'Enter Refresh delay in milliseconds (e.g. 100):',...
    'Enter Thumb ID is "T" (e.g. 0 / 1):',...
    };
name='Device Parameters';
numlines=1;
answer=inputdlg(prompt,name,numlines,defaultanswer);
if length(answer) ~= 5
    devParams = [];
    return;
end

devParams.Port = answer{1};
devParams.CanAddr = answer{2};
devParams.AsciiMode = answer{3};
devParams.RefreshRate = answer{4};
devParams.ThumbMode = answer{5};

UiTools.save_temp_file(tempFileName,devParams);
function setDeviceEnable(handles,state)
% control sub menu availablity

if state
    % Device commands active
    set(handles.menuToolsRcpHome,'Enable','on')
    set(handles.menuToolsRcpJoystick,'Enable','on')
    set(handles.menuToolsRcpJoystick,'Checked','off')
    set(handles.menuToolsRcpEmg,'Enable','on')
    set(handles.menuToolsRcpEmg,'Checked','off')
else
    % Device commands inactive
    set(handles.menuToolsRcpHome,'Enable','off')
    set(handles.menuToolsRcpJoystick,'Enable','off')
    set(handles.menuToolsRcpJoystick,'Checked','off')
    set(handles.menuToolsRcpEmg,'Enable','off')
    set(handles.menuToolsRcpEmg,'Checked','off')
end

function menuToolsCapture_Callback(hObject, eventdata, handles)
% hObject    handle to menuToolsCapture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

switch get(handles.menuToolsCapture,'Checked')
    case 'on'
        set(handles.menuToolsCapture,'Checked','off');
        handles.doRecordVideo = 0;
    otherwise
        set(handles.menuToolsCapture,'Checked','on');
        handles.doRecordVideo = 1;
end

% Update handles structure
guidata(hObject, handles);
function menuToolsConnect_Callback(hObject, eventdata, handles)
% hObject    handle to menuToolsConnect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

try
    
    % wait for paramter gui
    devParams = setupDeviceParameters();
    
    if isempty(devParams)
        % User Cancelled
        return;
    end
    
    handles.hDevice = Scenarios.GraspAssist.RcpDevice(devParams.Port,devParams.CanAddr);
    handles.hDevice.initialize();
    
    % set refresh rate, from ms to s
    period = str2double(devParams.RefreshRate) / 1000;
    handles.hDevice.hTimer.Period = period;
    
    % set comm mode
    if strcmpi(devParams.AsciiMode,'ascii')
        handles.hDevice.SendAscii = 1;
    else
        handles.hDevice.SendAscii = 0;
    end
    
    % thumbIsT parameter
    if strcmpi(devParams.ThumbMode,'1')
        handles.hDevice.UseThumbT = 1;
    else
        handles.hDevice.UseThumbT = 0;
    end
    
    % Home all
    if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
        disp('Home All');
        handles.hDevice.sendMsg('HA');
        handles.hDevice.update();
    end
    
    setDeviceEnable(handles,1);
catch ME
    % Failed during device setup.  Remove temp file
    tempFileName = 'defaultGraspAssistDeviceParams';
    UiTools.delete_temp_file(tempFileName);
    fprintf(2,'Device setup failed.  Removing temp parameter file\n');
    errordlg(ME.message);
    rethrow(ME);
end
% Update handles structure
guidata(handles.figure1, handles);
function menuToolsRcpHome_Callback(hObject, eventdata, handles)
% hObject    handle to menuToolsRcpHome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if isempty(handles.hDevice)
    errordlg('Device not conencted');
    return
end

% Home all
if strcmp('OK',questdlg('Ready to home?','Home All Actuators','OK','Cancel','OK'))
    disp('Home All');
    handles.hDevice.sendMsg('HA');
    handles.hDevice.update();
end
function menuToolsRcpJoystick_Callback(hObject, eventdata, handles)
% hObject    handle to menuToolsRcpJoystick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if isempty(handles.hDevice)
    set(handles.pbGo,'Enable','on');
    set(handles.pbGo,'Value',0);
    set(hObject,'Checked','off')
    return
end

if strcmpi(get(hObject,'Checked'),'on')
    set(handles.pbGo,'Enable','on');
    set(handles.pbGo,'Value',0);
    set(hObject,'Checked','off')
    return
else
    set(handles.pbGo,'Enable','off');
    set(handles.pbGo,'Value',0);
    set(hObject,'Checked','on')
end


try,clear joymex,end
JoyMEX('init',0);

start(handles.hDevice.hTimer);

while strcmpi(get(hObject,'Checked'),'on')
    drawnow
    %handles.hDevice.update();
    
    % get joystick input
    [a, ab] = JoyMEX(0);
    
    
    if(ab(4))
        handles.hDevice.sendMsg('HA');
    elseif(ab(1))
        handles.hDevice.sendMsg('CTA');
    elseif(ab(2))
        handles.hDevice.sendMsg('CTB');
    elseif(ab(3))
        %handles.hDevice.sendMsg('CTC');
        fprintf(1,'Command CTC Disabled\n');
    elseif(ab(5))
        handles.hDevice.setVelocity([300 0 0]);
    elseif(ab(6))
        handles.hDevice.setVelocity([0 300 0]);
    elseif(ab(7))
        handles.hDevice.setVelocity([0 0 300]);
    elseif(ab(8))
        handles.hDevice.setVelocity([0 0 0]);
    else
        fingersJoystickAxis = 1; %% depends on joystick
        v1 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
        
        fingersJoystickAxis = 3; %% depends on joystick
        v3 = a(fingersJoystickAxis) * (abs(a(fingersJoystickAxis)) > 0.15);
        
        V1 = round(v1*1000);
        V3 = round(v3*1000);
        handles.hDevice.setVelocity([V3 V3 V3]);
        
    end
end


% see onCompletion()
stop(handles.hDevice.hTimer);

if ~isempty(handles.hDevice)
    handles.hDevice.setIdle();
    handles.hDevice.update();
    pause(0.1);
    handles.hDevice.update();
    pause(0.1);
    handles.hDevice.update();
end
function menuToolsRcpEmg_Callback(hObject, eventdata, handles)
% Run the EMG Scenario

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Handle GUI Controls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if strcmpi(get(hObject,'Checked'),'on')
    try stop(handles.hEmg.Presentation.Timer);end
    try close(handles.hEmg.SignalSource);end
    try delete(handles.hEmg.Presentation.hTopoState.hLegend.hLegendFig);end
    try delete(handles.hEmg.Presentation.hGui.hg.Figure); end
    try close(handles.hEmg.hg.Figure);end
    try handles.hEmg = []; end
    
    set(handles.pbGo,'Enable','on');
    set(handles.pbGo,'Value',0);
    set(hObject,'Checked','off')
    return
else
    set(handles.pbGo,'Enable','off');
    set(handles.pbGo,'Value',0);
    set(hObject,'Checked','on')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Get input mode from user
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
reply = questdlg('Select Input Source','Input Source','Intan','Myo','Simulator','Simulator');
switch reply
    case 'Simulator'
        hSource = Inputs.SignalSimulator;
        defaultChannels = 1:4;
    case 'Intan'
        hSource = Inputs.IntanUdp.getInstance;
        defaultChannels = 1:4;
        % add filters
        Fs = hSource.SampleFrequency;
        hSource.addfilter(Inputs.HighPass(10,8,Fs));
        %p.hSource.addfilter(Inputs.LowPass(400,8,Fs));
        %p.hSource.addfilter(Inputs.Notch([120 180 240 300 360],64,1,Fs));
    case 'Myo'
        hSource = Inputs.MyoUdp.getInstance;
        defaultChannels = 1:8;
    otherwise
        return
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Get device mode from user
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
reply = questdlg('Use RCP Device','RCP Device','Yes','No','Cancel','No');
switch reply
    case 'Yes'
        connectRcp = true;
    case 'No'
        connectRcp = false;
    otherwise
        return
end

% create the output display
hPresentation = Scenarios.GraspAssist(handles.hDevice,handles.hMiniV);
hPresentation.ConnectRcp = connectRcp; % flag to control whether to connect device

% Set class names
classNames = {...
    'Up' 'Down' 'Left' 'Right' ...
    'Wrist Flex In' ...
    'Wrist Extend Out' ...
    'Wrist Rotate In' ...
    'Wrist Rotate Out' ...
    'No Movement'};
% classNames = {...
%     'Up' 'Down' 'Left' 'Right' ...
%     'No Movement'};

% run the MiniVIE with the specified inputs and outputs
handles.hEmg = runEmg(hSource,defaultChannels,classNames,hPresentation);

% Update handles structure
guidata(hObject, handles);

% Start the update timer
start(handles.hEmg.Presentation.Timer);

function obj = runEmg(hSource,defaultChannels,classNames,hPresentation)


%% MiniVIE GUI
% handle all the generic MiniVIE gui setup stuff. Mostly just custom
% parameter setting
obj = MiniVIE;
set(obj.hg.Figure,'Name','MiniVIE Grasp Assist');
obj.FilePrefix = 'GraspAssist_';
set(obj.hg.Figure,'Visible','off');

%% Inputs
obj.SignalSource = hSource;
obj.SignalSource.NumSamples = 4000;
obj.SignalSource.initialize();

%% Signal Analysis
% Setup classifier
obj.SignalClassifier = SignalAnalysis.Lda();
obj.SignalClassifier.NumMajorityVotes = 3;
obj.SignalClassifier.NumSamplesPerWindow = 150;
fprintf('Setting Window Size to: %d\n',obj.SignalClassifier.NumSamplesPerWindow);

% Setup training data handler and try to load data if applicable
obj.TrainingData = TrainingDataAnalysis();
ok = obj.TrainingData.loadTrainingData([]);
if ~ok
    obj.TrainingData.initialize(obj.SignalSource.NumChannels,...
        obj.SignalClassifier.NumSamplesPerWindow);
end

% Initialize Classifier with data object
obj.SignalClassifier.initialize(obj.TrainingData);

% Set the channels to use
obj.TrainingData.setActiveChannels(defaultChannels);

if (isempty(classNames))
    classNames = GUIs.guiClassifierChannels.getDefaultNames;
end
obj.TrainingData.setClassNames(classNames);

% Train the classifier
obj.SignalClassifier.train();

%% Setup Presentation
obj.Presentation = hPresentation;
obj.Presentation.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
obj.Presentation.Verbose = 1;
obj.Presentation.update();

%% Update GUI controls
% Enable Buttons
try
    set(obj.hg.SignalSourceButtons(:),'Enable','on');
    switch class(obj.SignalSource)
        case 'Inputs.MyoUdp'
            set(obj.hg.popups(1),'Value',find(strcmpi(get(obj.hg.popups(1),'String'),'ThalmicLabs MyoUdp'),1));
        case 'Inputs.IntanUdp'
            set(obj.hg.popups(1),'Value',find(strcmpi(get(obj.hg.popups(1),'String'),'IntanDevBoard'),1));
        case 'Inputs.SignalSimulator'
            set(obj.hg.popups(1),'Value',find(strcmpi(get(obj.hg.popups(1),'String'),'Signal Simulator'),1));
    end
    set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
    set(obj.hg.popups(2),'Value',find(strcmpi(get(obj.hg.popups(2),'String'),'LDA Classifier'),1))
    set(obj.hg.PresentationButtons(:),'Enable','on');
    set(obj.hg.popups(5),'Value',find(strcmpi(get(obj.hg.popups(5),'String'),'MiniV'),1))
catch ME
    warning(ME.message);
end
set(obj.hg.Figure,'Visible','on');

drawnow % ensure display refreshes before timer starts
