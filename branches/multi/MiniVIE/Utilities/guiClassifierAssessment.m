function varargout = guiClassifierAssessment(varargin)
%GUICLASSIFIERASSESSMENT M-file for guiClassifierAssessment.fig
%      GUICLASSIFIERASSESSMENT, by itself, creates a new GUICLASSIFIERASSESSMENT or raises the existing
%      singleton*.
%
%      H = GUICLASSIFIERASSESSMENT returns the handle to a new GUICLASSIFIERASSESSMENT or the handle to
%      the existing singleton*.
%
%      GUICLASSIFIERASSESSMENT('Property','Value',...) creates a new GUICLASSIFIERASSESSMENT using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to guiClassifierAssessment_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUICLASSIFIERASSESSMENT('CALLBACK') and GUICLASSIFIERASSESSMENT('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUICLASSIFIERASSESSMENT.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiClassifierAssessment

% Last Modified by GUIDE v2.5 15-Aug-2012 14:07:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @guiClassifierAssessment_OpeningFcn, ...
    'gui_OutputFcn',  @guiClassifierAssessment_OutputFcn, ...
    'gui_LayoutFcn',  [], ...
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


% --- Executes just before guiClassifierAssessment is made visible.
function guiClassifierAssessment_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for guiClassifierAssessment
handles.output = hObject;

debug = length(varargin) ~= 4;

if debug
    
    % Load system for debug
    obj = MiniVIE.Default;
    
    obj.TrainingData.loadTrainingData('Sim_TrainingData.trainingData');
    
    obj.SignalClassifier.NumMajorityVotes = 1;
    obj.SignalClassifier.setActiveChannels([1 2 3 4 5 6 7 8]);
    obj.SignalClassifier.initialize(obj.TrainingData);
    obj.SignalClassifier.train();
    obj.SignalClassifier.computeError();
    obj.SignalClassifier.computeGains();

    handles.SignalSource = obj.SignalSource;
    handles.SignalClassifier = obj.SignalClassifier;
    handles.TrainingData = obj.TrainingData;
    handles.SavePrefix = obj.FilePrefix;
else
    
    assert(length(varargin) == 4,'Expected three input arguments');
    assert(~isempty(varargin{1}),'SignalSource is empty');
    assert(~isempty(varargin{2}),'SignalClassifier is empty');
    assert(~isempty(varargin{3}),'TrainingData is empty');
    assert(~isempty(varargin{4}),'FilePrefix is empty');
    
    handles.SignalSource = varargin {1};
    handles.SignalClassifier = varargin {2};
    handles.TrainingData = varargin {3};

    handles.SavePrefix = varargin {4};
end

set(handles.toggleStart,'String','Begin');
set(handles.txtCounter,'String','0');

set(handles.editCounterTotal,'String','10');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiClassifierAssessment wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiClassifierAssessment_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in toggleStart.
function toggleStart_Callback(hObject, eventdata, handles)
% hObject    handle to toggleStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~get(hObject,'Value')
    % Button up
    set(hObject,'String','Begin');
    return
end

set(hObject,'String','Running...');


hSignalSource = handles.SignalSource;
hSignalClassifier = handles.SignalClassifier;
hTrainingData = handles.TrainingData;

hasClassData = hTrainingData.getClassLabelCount > 0;
allClassNames = hSignalClassifier.getClassNames;
classIdToTest = find(hasClassData(:) & ~strcmpi(allClassNames(:),'No Movement'));

testingClasses = allClassNames(classIdToTest);

structTrialLog.AllClassNames = allClassNames;
structTrialLog.ClassIdToTest = classIdToTest;

for iClass = 1:length(classIdToTest)
    
    targetClass = allClassNames{classIdToTest(iClass)};
    
    set(handles.txtTarget,'String',targetClass);
    
    trialLog = assessClass(hSignalSource,hSignalClassifier,targetClass,classIdToTest(iClass),handles);
    structTrialLog.Data(iClass) = trialLog;
end



set(hObject,'String','Complete');


fullFilename = UiTools.ui_select_data_file('.assessmentLog',handles.SavePrefix);

if ~isempty(fullFilename)
    save(fullFilename,'structTrialLog','-mat');
end

function structTrialLog = assessClass(hSignalSource,hSignalClassifier,strTargetClass,classIdToTest,handles)
% Blocking function that begins trial of classifier testing "classToTest"

%constants
timeout = 5; %seconds  % 5 Seconds RIC JAMA
maxCorrectClasses = str2double(get(handles.editCounterTotal,'String')); % 10 per RIC JAMA

assert(~isnan(maxCorrectClasses) && maxCorrectClasses > 0,'Max Correct Classes must be a number greater than zero')

timerStarted = 0;
numCorrectClasses = 0; % reset each loop
moveComplete = 0;

structTrialLog.targetClass = strTargetClass;
structTrialLog.classDecision = [];
structTrialLog.voteDecision = [];
structTrialLog.emgFrames = [];


while (moveComplete == 0) && (~timerStarted || (toc < timeout)) ...
        && ishandle(handles.toggleStart) && get(handles.toggleStart,'Value')
    fprintf('Testing Class: %s | ',strTargetClass);
    set(handles.txtTarget,'ForegroundColor','k');
    
    
    [classDecision,voteDecision,className,prSpeed,rawEmg,windowData,features2D] ...
        = getIntent(hSignalSource,hSignalClassifier);
    %     fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
    %         classDecision,voteDecision,className,prSpeed);

    classNames = hSignalClassifier.getClassNames;
    className = classNames{classDecision};
    set(handles.txtActual,'String',className);
    if ~timerStarted && ~strcmp(className,'No Movement')
        % start timer
        tic
        fprintf('\n Timer Started\n');
        timerStarted = 1;
    end
    
    structTrialLog.classDecision = [structTrialLog.classDecision classDecision];
    structTrialLog.voteDecision = [structTrialLog.voteDecision voteDecision];
    structTrialLog.emgFrames =  cat(3,structTrialLog.emgFrames,rawEmg);
    
    if classDecision == classIdToTest
        numCorrectClasses = numCorrectClasses + 1;
    end
    
    if numCorrectClasses >= maxCorrectClasses
        moveComplete = 1;
    end
    
    set(handles.txtCounter,'String',num2str(numCorrectClasses));
    
    fprintf('\n');
    pause(0.1) % 100ms RIC JAMA
    
end

if moveComplete
    fprintf('Class "%s" completed successfully\n',strTargetClass);
    set(handles.txtTarget,'ForegroundColor','g');
else
    fprintf('Class "%s" timed out\n',strTargetClass);
    set(handles.txtTarget,'ForegroundColor','r');
end

tic
while (toc < timeout) ...
        && ishandle(handles.toggleStart) && get(handles.toggleStart,'Value')
    fprintf('Waiting for no movement...\n');
    [classDecision,voteDecision,className,prSpeed]= getIntent(hSignalSource,hSignalClassifier);
    if strcmp(className,'No Movement')
        fprintf('No Movement OK\n');
        break
    end
    pause(0.1);
end
