function varargout = GraspAssistTrainer(varargin)
% GRASPASSISTTRAINER MATLAB code for GraspAssistTrainer.fig
%      GRASPASSISTTRAINER, by itself, creates a new GRASPASSISTTRAINER or raises the existing
%      singleton*.
%
%      H = GRASPASSISTTRAINER returns the handle to a new GRASPASSISTTRAINER or the handle to
%      the existing singleton*.
%
%      GRASPASSISTTRAINER('CALLBACK',hObject,eventData,handles,...) calls the local
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

% Last Modified by GUIDE v2.5 31-Jan-2015 21:36:28

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

% set the gui options
[enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes');

set(handles.editReps,'String',num2str(handles.numRepetitions));

set(handles.listbox1,'String',cellGrasps);
set(handles.listbox1,'Max',length(cellGrasps))
if ispc && isequal(get(handles.listbox1,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(handles.listbox1,'BackgroundColor','white');
end


set(handles.menuToolsCapture,'Checked','off')

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


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes on button press in pbGo.
function pbGo_Callback(hObject, eventdata, handles)
% hObject    handle to pbGo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~get(hObject,'Value')
    return
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

while get(hObject,'Value')

    %disp('Running')
    set(hObject,'String','STOP');
    
    % control speed
    hSpeed = get(handles.uibuttongroup1,'SelectedObject'); 
    switch hSpeed.String
        case 'Slow'
            stepSize = 0.01;
        case 'Medium'
            stepSize = 0.05;
        case 'Fast'
            stepSize = 0.1;
        otherwise
            stepSize = 0.01;
    end

    % Get the grasp from the list box
    contents = cellstr(get(handles.listbox1,'String')) ;
    values = get(handles.listbox1,'Value');
        
    pctGrasp = pctGrasp + stepSize * direction;
    
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
    str = sprintf('Rep # %d: %s',iRepetition,graspType);
    set(handles.txtStatus,'String',str);
    
    grasp = Controls.GraspTypes.(graspType);
    handAngles = Controls.graspInterpolation(pctGrasp, grasp)';

    handles.hMiniV.set_hand_angles_degrees(handAngles);
    handles.hMiniV.redraw

    drawnow
    if doRecord
       % Write each frame to the file.
       currFrame = getframe(handles.figure1);
       drawnow
       vidObj.writeVideo(currFrame);
    end
    
    if addPause;
        pause(delay);
    end
    
    if iRepetition > handles.numRepetitions
        break;
    end

end

handles.hMiniV.set_hand_angles_degrees(zeros(1,29));
handles.hMiniV.redraw

set(hObject,'String','GO');
set(hObject,'Value',0);
set(handles.listbox1,'Enable','on');
set(handles.txtStatus,'String','');
set(handles.editReps,'Enable','on');

if doRecord
    % Close the file.
    close(vidObj);
end

%disp('Done')


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
%rotate3d(obj.hAxes,'on');

hLight = light('Parent',hAxes);
camlight(hLight,'left');

handles.hMiniV = Presentation.MiniV(hAxes,1,[1 1 1],1);
% set wrist pronation to visible position
armUser = [0 0 0 0 -45 0 0];
handles.hMiniV.set_upper_arm_angles_degrees(armUser)
handles.hMiniV.redraw



function editReps_Callback(hObject, eventdata, handles)
% hObject    handle to editReps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editReps as text
%        str2double(get(hObject,'String')) returns contents of editReps as a double


% Hints: get(hObject,'String') returns contents of editReps as text
%        str2double(get(hObject,'String')) returns contents of editReps as a double

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


% --------------------------------------------------------------------
function menuTools_Callback(hObject, eventdata, handles)
% hObject    handle to menuTools (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuToolsConnect_Callback(hObject, eventdata, handles)
% hObject    handle to menuToolsConnect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
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
