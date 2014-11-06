function varargout = EMG_GUI_myopen(varargin)
% EMG_GUI_myopen M-file for EMG_GUI_myopen.fig
%      EMG_GUI_myopen, by itself, creates a new EMG_GUI_myopen or raises the existing
%      singleton*.
%
%      H = EMG_GUI_myopen returns the handle to a new EMG_GUI_myopen or the handle to
%      the existing singleton*.
%
%      EMG_GUI_myopen('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EMG_GUI_myopen.M with the given input arguments.
%
%      EMG_GUI_myopen('Property','Value',...) creates a new EMG_GUI_myopen or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EMG_GUI_myopen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EMG_GUI_myopen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% This GUI is not resizable.
% Edit the above text to modify the response to help EMG_GUI_myopen

% Last Modified by GUIDE v2.5 01-Nov-2014 21:48:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @EMG_GUI_myopen_OpeningFcn, ...
    'gui_OutputFcn',  @EMG_GUI_myopen_OutputFcn, ...
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


% --- Executes just before EMG_GUI_myopen is made visible.
function EMG_GUI_myopen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EMG_GUI_myopen (see VARARGIN)

% Choose default command line output for EMG_GUI_myopen
handles.output = hObject;
handles.pathUserData = fullfile(fileparts(which('EMG_GUI_myopen')),'GUI_User_Data');
handles.pathParameters = fullfile(fileparts(which('EMG_GUI_myopen')),'GUI_Parameters');
if ~isfield(handles,'hMiniVie')
    handles.hMiniVie = RUN_MINIVIE();
end
handles.trainingStartTime = [];  % used during training to synch recorder and cues

% Update handles structure
guidata(hObject, handles);

% This creates the 'background' axes
ha = axes('units','normalized', ...
    'position',[0 0 1 1]);

% Move the background axes to the bottom
uistack(ha,'bottom');

% Load in a background image and display it using the correct colors
% The image used below, is in the Image Processing Toolbox. If you do not have %access to this toolbox, you can use another image file instead.
% I=imread('JHU.jpg');
% hi = imagesc(I);
colormap gray;

% Turn the handlevisibility off so that we don't inadvertently plot into the axes again
% Also, make the axes invisible
set(ha,'handlevisibility','off', ...
    'visible','off')



% UIWAIT makes EMG_GUI_myopen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


load(fullfile(handles.pathUserData,'Recent_Scores.mat'));
Recent_Scores;

plot(handles.axesPreview,1:10,Recent_Scores(1:10));
xlim(handles.axesPreview,[1 10]);
set(handles.axesPreview,'xtick',1:10);

%#ok<*NASGU>
load(fullfile(handles.pathParameters,'switch_threshold.mat'));
switch_threshold = -1;
save(fullfile(handles.pathParameters,'switch_threshold.mat'),'switch_threshold');
load(fullfile(handles.pathParameters,'complex_movements.mat'));
complex_movements = 1;
save(fullfile(handles.pathParameters,'complex_movements.mat'),'complex_movements');
load(fullfile(handles.pathParameters,'amputation_level.mat'));
amputation_level = 1;
save(fullfile(handles.pathParameters,'amputation_level.mat'),'amputation_level');
load(fullfile(handles.pathParameters,'cue_format.mat'));
cue_format = 1;
save(fullfile(handles.pathParameters,'cue_format.mat'),'cue_format');
load(fullfile(handles.pathParameters,'rate_constant.mat'));
rate_constant = 250;
save(fullfile(handles.pathParameters,'rate_constant.mat'),'rate_constant');

%set defaults on screen:

% table of scores
load(fullfile(handles.pathUserData,'Recent_Scores.mat'));
display_scores = Recent_Scores;
set(handles.uitable3, 'data', display_scores);

% listbox of names
load(fullfile(handles.pathUserData,'Player_Names.mat'));
set(handles.listbox1,'String',Player_Names);


% --- Outputs from this function are returned to the command line.
function varargout = EMG_GUI_myopen_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;















% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

contents = get(hObject,'Value');
if contents == 1
    % get new player name
    prompt = 'Enter New Player Name:';
    dlg_title = 'New Player Setup';
    num_lines = 1;
    def = {'Player Name'};
    new_player_name = inputdlg(prompt,dlg_title,num_lines,def);
    
    % add to bottom of list
    player_list = get(hObject,'String');
    player_list = [player_list; new_player_name];
    set(hObject,'String',player_list);
    player_index = length(player_list);
    
    % get values from save slot 1
    pathName = fullfile(handles.pathUserData,'1');
    load(fullfile(pathName,'Recent_Scores_1.mat'));
    load(fullfile(pathName,'last_saved_score_1.mat'));
    load(fullfile(pathName,'M1.mat'));
    load(fullfile(pathName,'S1.mat'));
    
    % save them to the new player index
    newPathName = fullfile(handles.pathUserData,num2str(player_index));
    save(fullfile(newPathName,strcat('Recent_Scores_',num2str(player_index),'.mat')),'Recent_Scores');
    save(fullfile(newPathName,strcat('last_saved_score_',num2str(player_index),'.mat')),'last_saved_score');
    save(fullfile(newPathName,strcat('M',num2str(player_index),'.mat')),'M');
    save(fullfile(newPathName,strcat('S',num2str(player_index),'.mat')),'S');
    
    load(fullfile(handles.pathUserData,'Player_Names.mat'));
    Player_Names = [Player_Names new_player_name];
    save(fullfile(handles.pathUserData,'Player_Names.mat'), 'Player_Names');
    contents = player_index;
end

% Load existing name
fname = strcat('Recent_Scores_',num2str(contents),'.mat');
load(fullfile(handles.pathUserData,num2str(contents),fname));

plot(handles.axesPreview,1:10,...
    Recent_Scores(length(Recent_Scores)-9:length(Recent_Scores)));
xlim(handles.axesPreview,[1 10]);
set(handles.axesPreview,'xtick',1:10);
set(handles.uitable3,'data',Recent_Scores(length(Recent_Scores)-9:length(Recent_Scores)));

fname = strcat('last_saved_score_',num2str(contents),'.mat');
load(fullfile(handles.pathUserData,num2str(contents),fname));

set(handles.text18,'String',last_saved_score);


% --- Executes during object creation, after setting all properties.
function pushbutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

buttonIm = cat(3, ones(10),eye(10),eye(10));
set(hObject,            ...
    'cdata',  buttonIm, ...
    'string', '');


% --- Executes during object creation, after setting all properties.
function radiobutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

set(hObject,'String','Top Radio button')





% --- Executes during object creation, after setting all properties.
function radiobutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

set(hObject,'String','Middle Radio button')





% --- Executes during object creation, after setting all properties.
function radiobutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

set(hObject,'String','Bottom Radio button')





% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'Min',0,'Max',360)
set(hObject,'Value',322.5)





% --- Executes during object creation, after setting all properties.
function uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

%memb = membrane(1);
%set(hObject, 'data', memb)




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pbStart.
function pbStart_Callback(hObject, eventdata, handles)
% hObject    handle to pbStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(hObject,'UserData',1);
set(handles.pbStop,'UserData',0);

% if strcmp(get(get(handles.panelMode,'SelectedObject'),'Tag'),'radioEvaluate')
%
% end

%Obtain a list of the selected movements.
%Make a provided cues list for the movements selected.
movement_list = zeros(31,2);
% Rest = 1
% Open = 2
% Close = 3
% Index_Point = 4
% Hook = 5
% Fine_Pinch = 6
% Jaw_Chuck = 7
% Key = 8
% Palmar = 9
% Cylindrical = 10
% Spherical = 11
% Pronate = 12
% Supinate = 13
% Wrist_Flex = 14
% Wrist_Extend = 15
movement_list(1,2) = get(handles.Rest,'Value')*1;
movement_list(2,2) = get(handles.Open,'Value')*2;
movement_list(3,2) = get(handles.Close,'Value')*3;
movement_list(4,2) = get(handles.Index_Point,'Value')*4;
movement_list(5,2) = get(handles.Hook,'Value')*5;
movement_list(6,2) = get(handles.Fine_Pinch,'Value')*6;
movement_list(7,2) = get(handles.Jaw_Chuck,'Value')*7;
movement_list(8,2) = get(handles.Key,'Value')*8;
movement_list(9,2) = get(handles.Palmar,'Value')*9;
movement_list(10,2) = get(handles.Cylindrical,'Value')*10;
movement_list(11,2) = get(handles.Spherical,'Value')*11;
movement_list(12,2) = get(handles.Pronate,'Value')*12;
movement_list(13,2) = get(handles.Supinate,'Value')*13;
movement_list(14,2) = get(handles.Wrist_Flex,'Value')*14;
movement_list(15,2) = get(handles.Wrist_Extend,'Value')*15;
movement_list(16,2) = get(handles.Radial_Dev,'Value')*16;
movement_list(17,2) = get(handles.Ulnar_Dev,'Value')*17;
movement_list(18,2) = get(handles.Elbow_Flex,'Value')*18;
movement_list(19,2) = get(handles.Elbow_Extend,'Value')*19;
movement_list(20,2) = get(handles.Shoulder_Flex,'Value')*20;
movement_list(21,2) = get(handles.Shoulder_Extend,'Value')*21;
movement_list(22,2) = get(handles.Medial_Rot,'Value')*22;
movement_list(23,2) = get(handles.Lateral_Rot,'Value')*23;
movement_list(24,2) = get(handles.Abduction,'Value')*24;
movement_list(25,2) = get(handles.Adduction,'Value')*25;
movement_list(26,2) = get(handles.Thumb,'Value')*26;
movement_list(27,2) = get(handles.Index,'Value')*27;
movement_list(28,2) = get(handles.Middle,'Value')*28;
movement_list(29,2) = get(handles.Ring,'Value')*29;
movement_list(30,2) = get(handles.Little,'Value')*30;
movement_list(31,2) = get(handles.Park,'Value')*31;
% which_movements = char('Rest,'Open','Close','Index_Point','Hook','Fine_Pinch','Jaw_Chuck',...
%     'Key','Palmar','Cylindrical','Spherical','Pronate','Supinate','Wrist_Flex','Wrist_Extend');
movement_index = 0;
for i=1:1:31
    if movement_list(i,2) == i
        movement_list(i,1) =  movement_index + 1;
        movement_index = movement_index + 1;
    end
end
movement_list = movement_list(movement_list(:,1)>0,:);
save(fullfile(handles.pathParameters,'movement_list.mat'),'movement_list');
load(fullfile(handles.pathParameters,'switch_threshold.mat'));

flag = true;
% Check to see if the user is attempting to explore or evaluate untrained
% movements.

isExploreMode = strcmpi(get(get(handles.panelMode,'SelectedObject'),'String'),'Explore');

if (switch_threshold > 0) || isExploreMode
    
    % Train classifier:
    obj = handles.hMiniVie;
    
    trainedClasses = unique(obj.TrainingData.getClassLabels);
    trained_cues = trainedClasses;
    
    % Build a classifier for this person for this movement set.
    %subject_handle = findobj('Tag','listbox1');
    %subject = get(subject_handle,'Value');
    %cd(strcat('../Player Data/',num2str(subject)));

    % Ensure that all the desired movements exist in the training data:
    flag=true;
    for i=1:length(movement_list(:,2))
        if sum(trained_cues == movement_list(i,2))==0
            h = msgbox('You are attempting to explore or evaluate movements you have not trained.  Please train the movements first and try again.',...
                'Illegal Movement Selection','error');
            return
        end
    end
    
    % disable any classes that are not selected

    % Keep only the movements of interest for this simulation.
    cues_to_keep = unique(movement_list(:,2));
    
    % perform disable function for unselected classes
    disableTheseCues = setdiff(trained_cues(:)',cues_to_keep(:)');
    for i = disableTheseCues
        obj.TrainingData.disableLabeledData(i);
    end
    obj.SignalClassifier.train
    obj.SignalClassifier.computeError
end


% Now create a provided_cues.mat file based on you selected training or
% evaluation.
% cue_length = 7;
% rest_length = 5;
% training_iterations = 3;
% evaluation_iterations = 3;

%Get the settings from the GUI.
training_iterations_handle = findobj('Tag','edit5');
training_iterations = str2double(get(training_iterations_handle,'String'));

training_cue_length_handle = findobj('Tag','edit6');
training_cue_length = str2double(get(training_cue_length_handle,'String'));

training_rest_length_handle = findobj('Tag','edit7');
training_rest_length = str2double(get(training_rest_length_handle,'String'));

evaluation_iterations_handle = findobj('Tag','edit8');
evaluation_iterations = str2double(get(evaluation_iterations_handle,'String'));

evaluation_cue_length_handle = findobj('Tag','edit9');
evaluation_cue_length = str2double(get(evaluation_cue_length_handle,'String'));

evaluation_rest_length_handle = findobj('Tag','edit10');
evaluation_rest_length = str2double(get(evaluation_rest_length_handle,'String'));

%     training_cue_length = 5;
%     training_rest_length = 5;
%     evaluation_cue_length = 7;
%     evaluation_rest_length = 5;
%     training_iterations = 3;
%     evaluation_iterations = 3;

system_mode = get(get(handles.panelMode,'SelectedObject'),'Tag');
training_mode = strncmp(system_mode,'radioTrain',length(system_mode));

if training_mode
    %Make a pseudorandom evaluation set of predicted cues.
    Provided_Cues = [];
    load(fullfile(handles.pathParameters,'cue_format.mat'));
    switch cue_format
        case 1
            for i=2:1:length(movement_list)
                for j=1:1:training_iterations %(number of iterations per movement = 5)
                    Provided_Cues = [Provided_Cues;  ones(training_rest_length*1000,1); ones(training_cue_length*1000,1)*i];
                end
            end
        case -1
            for j=1:1:training_iterations %(number of iterations per movement = 5)
                Provided_Cues = [Provided_Cues; ones(training_rest_length*1000,1)];
                random_order = [rand(length(movement_list)-1,1) (1:(length(movement_list)-1))'];
                random_order = sortrows(random_order,1);
                for i=1:1:size(random_order,1) %(random_order does not include rest)
                    Provided_Cues = [Provided_Cues; ones(training_cue_length*1000,1)*(random_order(i,2)+1)];
                end
            end
        otherwise
    end
    
else
    % Not training mode
    Provided_Cues = [];
    for j=1:1:evaluation_iterations %(number of iterations per movement = 5)
        random_order = [rand(length(movement_list)-1,1) (1:(length(movement_list)-1))'];
        random_order = sortrows(random_order,1);
        for i=1:1:size(random_order,1) %(random_order does not include rest)
            Provided_Cues = [Provided_Cues;  ones(evaluation_rest_length*1000,1); ones(evaluation_cue_length*1000,1)*(random_order(i,2)+1)];
        end
    end
end
%***************
%Uncomment these lines to run a scenario that lets you compute the best
%case movement times.
%     Provided_Cues = [];
%     for i=2:23 %(random_order does not include rest)
%                 Provided_Cues = [Provided_Cues; ones(3000,1); ones(3000,1)*i];
%     end
%***************
end_time = length(Provided_Cues)/1000;
Provided_Cues = [.001:.001:end_time; Provided_Cues'];

save(fullfile(handles.pathParameters,'Provided_Cues.mat'), 'Provided_Cues');
%     %**************************
%     new_Provided_Cues =[];
%     for i=2:23
%         new_Provided_Cues =[ new_Provided_Cues ones(1,3000) ones(1,3000)*i ];
%     end
%     figure;plot(new_Provided_Cues)
%     new_Provided_Cues = [.001:.001:132;new_Provided_Cues];
%     Provided_Cues = new_Provided_Cues;
%     save('Provided_Cues.mat', 'Provided_Cues');
%     %**********************

if training_mode
    beginTraining(handles,Provided_Cues,movement_list);
elseif isExploreMode
    % Start the scenario (VulcanX)
    obj.Presentation.start();
end


% Training function runs cues through the GUI and collects data via MiniVIE
function beginTraining(handles,Provided_Cues,movement_list)

% Training will take place such that the cue timer and the data
% recorder are started at the same time.  Checking elapsed time will
% determine the current cue from the list
hFig = Cue_Presentation_GUI;
drawnow;


% Setup training timer:
hTimer = UiTools.create_timer('TrainingTimer',@(src,evt)my_timer_callback);
hTimer.Period = 0.05;
hTimer.TimerFcn = @(hTimer,evt)addData(hTimer,handles.figure1,Provided_Cues,movement_list,hFig);
hTimer.StopFcn = @(hTimer,evt)saveData(handles.figure1,hFig);

GUI_timer(Provided_Cues,movement_list,hFig)

% set start time reference
handles.trainingStartTime = clock;
guidata(handles.figure1,handles)
drawnow;

% start data recorder timer
start(hTimer);

function addData(hTimer,hFigMain,Provided_Cues,movement_list,hFig)

% get updated handles form main figure
handles = guidata(hFigMain);

% MiniVIE object
obj = handles.hMiniVie;

% create a time reference for first time function is executed
t0 = handles.trainingStartTime;

elapsedTime = etime(clock,t0);
cueTime = Provided_Cues(1,:);

id = find(elapsedTime <= cueTime,1,'first');
if isempty(id) || ~ishandle(hFig)
    currentCue = Provided_Cues(2,end);
    stop(hTimer);
else
    currentCue = Provided_Cues(2,id);
end
currentClass = movement_list(currentCue,2);

fprintf('Current Time:   %6f;  Current Cue = %d\n',elapsedTime,currentClass)
numSamples = obj.SignalClassifier.NumSamplesPerWindow;
numPad = numSamples;
numPad = 0;
rawEmg = obj.SignalSource.getData(numSamples+numPad);
windowData = obj.SignalSource.applyAllFilters(rawEmg);
windowData = windowData(end-numSamples+1:end,:);

features = feature_extract(windowData',obj.SignalClassifier.NumSamplesPerWindow);

obj.TrainingData.addTrainingData(currentClass, features, rawEmg(1:obj.SignalClassifier.NumSamplesPerWindow,:)')

% saveData
function saveData(hMainFig,hFig)

handles = guidata(hMainFig);
handles.trainingStartTime = [];
guidata(handles.figure1,handles)

% Save Data using MiniVIE object
subject_handle = findobj('Tag','listbox1');
subject = get(subject_handle,'Value');
pName = fullfile(handles.pathUserData,num2str(subject));

fullFileName = UiTools.ui_select_data_file('.trainingData',fullfile(pName,strcat(num2str(subject),'_')));
if ~isempty(fullFileName)
    obj = handles.hMiniVie;
    obj.TrainingData.saveTrainingData(fullFileName);
end

close(hFig);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pbStart.
function pbStart_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pbStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open('simple_model.mdl');
sim('simple_model.mdl');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axesPreview_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axesPreview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axesPreview




% --------------------------------------------------------------------
function panelMode_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to panelMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pbStop.
function pbStop_Callback(hObject, eventdata, handles)
% hObject    handle to pbStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

disp('Stop Sim')


% Start the scenario (VulcanX)
handles.hMiniVie.Presentation.stop();


% --------------------------------------------------------------------
function activex3_stop(hObject, eventdata, handles)
% hObject    handle to activex3 (see GCBO)
% eventdata  structure with parameters passed to COM event listener
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in panelMode.
function uipanel13_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in panelMode
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'radiobutton17'
        switch_threshold = -1;
        save(fullfile(handles.pathParameters,'switch_threshold.mat'),'switch_threshold');
        
    case 'radiobutton18'
        switch_threshold = 1;
        save(fullfile(handles.pathParameters,'switch_threshold.mat'),'switch_threshold');
        
    case 'radiobutton19'
        switch_threshold = 1;
        save(fullfile(handles.pathParameters,'switch_threshold.mat'),'switch_threshold');
        
    otherwise
        % Code for when there is no match.
end



% --- Executes when selected object is changed in uipanel9.
function uipanel9_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel9
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'radiobutton12'
        set(hObject,'UserData','PC2');
    case 'radiobutton13'
        set(hObject,'UserData','PC4');
    case 'radiobutton6'
        set(hObject,'UserData','PR3');
    case 'radiobutton8'
        set(hObject,'UserData','PR5');
    case 'radiobutton7'
        set(hObject,'UserData','PR7');
    otherwise
        % Code for when there is no match.
end


% --- Executes during object creation, after setting all properties.
function uipanel9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
on_off = get(hObject,'Value');
if on_off == 1
    a=find_system(gcs,'Name','Unfiltered EMG');
    set_param(a{1},'Open','on');
else
    a=find_system(gcs,'Name','Unfiltered EMG');
    set_param(a{1},'Open','off');
end

% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
on_off = get(hObject,'Value');
if on_off == 1
    a=find_system(gcs,'Name','Filtered EMG');
    set_param(a{1},'Open','on');
else
    a=find_system(gcs,'Name','Filtered EMG');
    set_param(a{1},'Open','off');
end

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
on_off = get(hObject,'Value');
if on_off == 1
    a=find_system(gcs,'Name','MAV Scope');
    set_param(a{1},'Open','on');
else
    a=find_system(gcs,'Name','MAV Scope');
    set_param(a{1},'Open','off');
end

% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
on_off = get(hObject,'Value');
if on_off == 1
    a=find_system(gcs,'Name','WL Scope');
    set_param(a{1},'Open','on');
else
    a=find_system(gcs,'Name','WL Scope');
    set_param(a{1},'Open','off');
end


% --- Executes on button press in Pronate.
function Pronate_Callback(hObject, eventdata, handles)
% hObject    handle to Pronate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Pronate


% --- Executes on button press in Wrist_Flex.
function Wrist_Flex_Callback(hObject, eventdata, handles)
% hObject    handle to Wrist_Flex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Wrist_Flex


% --- Executes on button press in Supinate.
function Supinate_Callback(hObject, eventdata, handles)
% hObject    handle to Supinate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Supinate


% --- Executes on button press in Wrist_Extend.
function Wrist_Extend_Callback(hObject, eventdata, handles)
% hObject    handle to Wrist_Extend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Wrist_Extend


% --- Executes on button press in Key.
function Key_Callback(hObject, eventdata, handles)
% hObject    handle to Key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Key


% --- Executes on button press in Palmar.
function Palmar_Callback(hObject, eventdata, handles)
% hObject    handle to Palmar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Palmar


% --- Executes on button press in Cylindrical.
function Cylindrical_Callback(hObject, eventdata, handles)
% hObject    handle to Cylindrical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Cylindrical


% --- Executes on button press in Spherical.
function Spherical_Callback(hObject, eventdata, handles)
% hObject    handle to Spherical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Spherical


% --- Executes on button press in Index_Point.
function Index_Point_Callback(hObject, eventdata, handles)
% hObject    handle to Index_Point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Index_Point


% --- Executes on button press in Jaw_Chuck.
function Jaw_Chuck_Callback(hObject, eventdata, handles)
% hObject    handle to Jaw_Chuck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Jaw_Chuck


% --- Executes on button press in Hook.
function Hook_Callback(hObject, eventdata, handles)
% hObject    handle to Hook (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Hook


% --- Executes on button press in Fine_Pinch.
function Fine_Pinch_Callback(hObject, eventdata, handles)
% hObject    handle to Fine_Pinch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Fine_Pinch


% --- Executes on button press in Rest.
function Rest_Callback(hObject, eventdata, handles)
% hObject    handle to Rest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Rest


% --- Executes on button press in Open.
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Open


% --- Executes on button press in Close.
function Close_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Close


% --- Executes on button press in pbRefreshScore.
function pbRefreshScore_Callback(hObject, eventdata, handles)
% hObject    handle to pbRefreshScore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

disp('MPL_Model_Stop');


% --- Executes on button press in Ring.
function Ring_Callback(hObject, eventdata, handles)
% hObject    handle to Ring (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Ring


% --- Executes on button press in Index.
function Index_Callback(hObject, eventdata, handles)
% hObject    handle to Index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Index


% --- Executes on button press in Middle.
function Middle_Callback(hObject, eventdata, handles)
% hObject    handle to Middle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Middle


% --- Executes on button press in Thumb.
function Thumb_Callback(hObject, eventdata, handles)
% hObject    handle to Thumb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Thumb


% --- Executes on button press in Little.
function Little_Callback(hObject, eventdata, handles)
% hObject    handle to Little (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Little


% --- Executes on button press in Park.
function Park_Callback(hObject, eventdata, handles)
% hObject    handle to Park (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Park


% --- Executes on button press in Elbow_Flex.
function Elbow_Flex_Callback(hObject, eventdata, handles)
% hObject    handle to Elbow_Flex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Elbow_Flex


% --- Executes on button press in Elbow_Extend.
function Elbow_Extend_Callback(hObject, eventdata, handles)
% hObject    handle to Elbow_Extend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Elbow_Extend


% --- Executes when selected object is changed in uipanel25.
function uipanel25_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel25
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'radiobutton23'
        complex_movements = 1;
        disp('Complex movements enabled.');
        save(fullfile(handles.pathParameters,'complex_movements.mat'),'complex_movements');
    case 'radiobutton24'
        complex_movements = -1;
        disp('Complex movements disabled.');
        save(fullfile(handles.pathParameters,'complex_movements.mat'),'complex_movements');
    otherwise
        % Code for when there is no match.
end



% --- Executes when selected object is changed in uipanel26.
function uipanel26_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel26
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)


switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'transradial'
        amputation_level = 1;
        disp('Amputation level set to transradial.');
        save(fullfile(handles.pathParameters,'amputation_level.mat'),'amputation_level');
    case 'transhumeral'
        amputation_level = -1;
        disp('Amputation level set to transhumeral.');
        save(fullfile(handles.pathParameters,'amputation_level.mat'),'amputation_level');
    otherwise
        % Code for when there is no match.
end



% --- Executes on button press in pbUpdateConfusion.
function pbUpdateConfusion_Callback(hObject, eventdata, handles)
% hObject    handle to pbUpdateConfusion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Determine which subject is selected.
subject_handle = findobj('Tag','listbox1');
subject = get(subject_handle,'Value');

%Obtain a list of the selected movements.
%Make a provided cues list for the movements selected.
movement_list = zeros(31,2);
% Rest = 1
% Open = 2
% Close = 3
% Index_Point = 4
% Hook = 5
% Fine_Pinch = 6
% Jaw_Chuck = 7
% Key = 8
% Palmar = 9
% Cylindrical = 10
% Spherical = 11
% Pronate = 12
% Supinate = 13
% Wrist_Flex = 14
% Wrist_Extend = 15
movement_list(1,2) = get(handles.Rest,'Value')*1;
movement_list(2,2) = get(handles.Open,'Value')*2;
movement_list(3,2) = get(handles.Close,'Value')*3;
movement_list(4,2) = get(handles.Index_Point,'Value')*4;
movement_list(5,2) = get(handles.Hook,'Value')*5;
movement_list(6,2) = get(handles.Fine_Pinch,'Value')*6;
movement_list(7,2) = get(handles.Jaw_Chuck,'Value')*7;
movement_list(8,2) = get(handles.Key,'Value')*8;
movement_list(9,2) = get(handles.Palmar,'Value')*9;
movement_list(10,2) = get(handles.Cylindrical,'Value')*10;
movement_list(11,2) = get(handles.Spherical,'Value')*11;
movement_list(12,2) = get(handles.Pronate,'Value')*12;
movement_list(13,2) = get(handles.Supinate,'Value')*13;
movement_list(14,2) = get(handles.Wrist_Flex,'Value')*14;
movement_list(15,2) = get(handles.Wrist_Extend,'Value')*15;
movement_list(16,2) = get(handles.Radial_Dev,'Value')*16;
movement_list(17,2) = get(handles.Ulnar_Dev,'Value')*17;
movement_list(18,2) = get(handles.Elbow_Flex,'Value')*18;
movement_list(19,2) = get(handles.Elbow_Extend,'Value')*19;
movement_list(20,2) = get(handles.Shoulder_Flex,'Value')*20;
movement_list(21,2) = get(handles.Shoulder_Extend,'Value')*21;
movement_list(22,2) = get(handles.Medial_Rot,'Value')*22;
movement_list(23,2) = get(handles.Lateral_Rot,'Value')*23;
movement_list(24,2) = get(handles.Abduction,'Value')*24;
movement_list(25,2) = get(handles.Adduction,'Value')*25;
movement_list(26,2) = get(handles.Thumb,'Value')*26;
movement_list(27,2) = get(handles.Index,'Value')*27;
movement_list(28,2) = get(handles.Middle,'Value')*28;
movement_list(29,2) = get(handles.Ring,'Value')*29;
movement_list(30,2) = get(handles.Little,'Value')*30;
movement_list(31,2) = get(handles.Park,'Value')*31;
% which_movements = char('Rest,'Open','Close','Index_Point','Hook','Fine_Pinch','Jaw_Chuck',...
%     'Key','Palmar','Cylindrical','Spherical','Pronate','Supinate','Wrist_Flex','Wrist_Extend');
movement_index = 0;
for i=1:1:31
    if movement_list(i,2) == i
        movement_list(i,1) =  movement_index + 1;
        movement_index = movement_index + 1;
    end
end
movement_list = movement_list(movement_list(:,1)>0,:);

% Determine if all movements were trained.
pathUser = fullfile(handles.pathUserData,num2str(subject));
load(fullfile(pathUser,'Feature_Matrix_Cumulative.mat'));
load(fullfile(pathUser,'Provided_Cues_Cumulative.mat'));

trained_cues = unique(Provided_Cues_Cumulative);
flag=true;
for i=1:length(movement_list(:,2))
    if sum(trained_cues == movement_list(i,2))==0
        flag=false;
    end
end
% Remove the movements that are not of interest.
% Keep only the movements of interest for this simulation.
cues_to_keep = unique(movement_list(:,2));
Feature_Matrix_Cumulative_temp = [];
Provided_Cues_Cumulative_temp = [];
for i = 1:length(cues_to_keep)
    Feature_Matrix_Cumulative_temp = [Feature_Matrix_Cumulative_temp ; Feature_Matrix_Cumulative(Provided_Cues_Cumulative==cues_to_keep(i),:)];
    Provided_Cues_Cumulative_temp = [Provided_Cues_Cumulative_temp; Provided_Cues_Cumulative(Provided_Cues_Cumulative==cues_to_keep(i))];
end
for i = 1:length(cues_to_keep)
    Provided_Cues_Cumulative_temp(Provided_Cues_Cumulative_temp == cues_to_keep(i)) = i;
end

if flag == true
    Predicted_Cues = classify(Feature_Matrix_Cumulative_temp,Feature_Matrix_Cumulative_temp,Provided_Cues_Cumulative_temp);
    
    % Display a confusion matrix.
    
    
    
    [confusion_matrix, order] = ...
        confusionmat(Provided_Cues_Cumulative_temp,Predicted_Cues);
    %Normalize the confusion matrix into % correct.
    for i=1:1:max(order)
        confusion_matrix(i,:) = confusion_matrix(i,:)/...
            sum(Provided_Cues_Cumulative_temp==i);
    end
    confusion_matrix(confusion_matrix==0)=.001;
    
    %Plot the normalized confusion matrix.
    figure;
    set(gcf,'Name','Confusion_Matrix_Plot');
    h = bar3(confusion_matrix,1);
    colormap hot
    colorbar
    for k=1:max(size(h))
        zdata = get(h(k),'Zdata');
        set(h(k),'Cdata',zdata);
        set(h,'EdgeColor','k');
    end
    xlim([.5 max(order)+.5]);
    ylim([.5 max(order)+.5]);
    caxis([0 1]);
    set(gcf,'color','w');
    view([0.5 90]);
    title({'Confusion Matrix for Cumulative Training Data:';...
        'Observed Probability of Provided Cue Matching Predicted Cue'});
    ylabel('Cues Provided to Subject');
    %     xlabel('Predicted Cues from Subject Movements');
    %     load('movement_list.mat');
    load('master_list.mat');
    movement_names = [];
    for i = 1:1:max(order)
        movement_names = [movement_names; master_list(movement_list(i,2),:)];
    end
    set(gca, 'xtick',1:size(movement_names,1),'XTickLabel', movement_names,...
        'ytick',1:size(movement_names,1),'YTickLabel', movement_names);
    
    xticklabel_rotate;
    xlabel('Predicted Cues from Subject Movements');
    
else
    
    h = msgbox('You are attempting to construct a confusion matrix using movements you have not trained.  Please train the movements first and try again.',...
        'Illegal Movement Selection','error');
end


% --- Executes during object creation, after setting all properties.
function uipanel25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in uipanel27.
function uipanel27_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel27
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'radiobutton27'
        cue_format = 1;
        disp('Sequential cues enabled.');
        save(fullfile(handles.pathParameters,'cue_format.mat'),'cue_format');
    case 'radiobutton28'
        cue_format = -1;
        disp('Random cues enabled.');
        save(fullfile(handles.pathParameters,'cue_format.mat'),'cue_format');
    otherwise
        % Code for when there is no match.
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel10.
function uipanel10_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel10
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over listbox1.
function listbox1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on listbox1 and none of its controls.
function listbox1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Lateral_Rot.
function Lateral_Rot_Callback(hObject, eventdata, handles)
% hObject    handle to Lateral_Rot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Lateral_Rot


% --- Executes on button press in Shoulder_Extend.
function Shoulder_Extend_Callback(hObject, eventdata, handles)
% hObject    handle to Shoulder_Extend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Shoulder_Extend


% --- Executes on button press in Medial_Rot.
function Medial_Rot_Callback(hObject, eventdata, handles)
% hObject    handle to Medial_Rot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Medial_Rot


% --- Executes on button press in Shoulder_Flex.
function Shoulder_Flex_Callback(hObject, eventdata, handles)
% hObject    handle to Shoulder_Flex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Shoulder_Flex


% --- Executes on button press in Abduction.
function Abduction_Callback(hObject, eventdata, handles)
% hObject    handle to Abduction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Abduction


% --- Executes on button press in Adduction.
function Adduction_Callback(hObject, eventdata, handles)
% hObject    handle to Adduction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Adduction


% --- Executes on button press in Radial_Dev.
function Radial_Dev_Callback(hObject, eventdata, handles)
% hObject    handle to Radial_Dev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Radial_Dev


% --- Executes on button press in Ulnar_Dev.
function Ulnar_Dev_Callback(hObject, eventdata, handles)
% hObject    handle to Ulnar_Dev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Ulnar_Dev


% --- Executes on button press in Ring.
function checkbox73_Callback(hObject, eventdata, handles)
% hObject    handle to Ring (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Ring


% --- Executes on button press in Index.
function checkbox74_Callback(hObject, eventdata, handles)
% hObject    handle to Index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Index


% --- Executes on button press in Middle.
function checkbox75_Callback(hObject, eventdata, handles)
% hObject    handle to Middle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Middle


% --- Executes on button press in Thumb.
function checkbox76_Callback(hObject, eventdata, handles)
% hObject    handle to Thumb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Thumb


% --- Executes on button press in Little.
function checkbox77_Callback(hObject, eventdata, handles)
% hObject    handle to Little (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Little


% --- Executes on button press in Park.
function checkbox78_Callback(hObject, eventdata, handles)
% hObject    handle to Park (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Park


% --- Executes when selected object is changed in uipanel38.
function uipanel38_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel38
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'Slow'
        rate_constant = 250;
        save(fullfile(handles.pathParameters,'rate_constant.mat'),'rate_constant');
        disp('Arm speed setting: SLOW');
        
    case 'Medium'
        rate_constant = 150;
        save(fullfile(handles.pathParameters,'rate_constant.mat'),'rate_constant');
        disp('Arm speed setting: MEDIUM');
        
    case 'Fast'
        rate_constant = 50;
        save(fullfile(handles.pathParameters,'rate_constant.mat'),'rate_constant');
        disp('Arm speed setting: FAST');
        
    otherwise
        % Code for when there is no match.
end
