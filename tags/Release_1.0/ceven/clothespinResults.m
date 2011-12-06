function varargout = clothespinResults(varargin)
% CLOTHESPINRESULTS M-file for clothespinResults.fig
%      CLOTHESPINRESULTS, by itself, creates a new CLOTHESPINRESULTS or raises the existing
%      singleton*.
%
%      H = CLOTHESPINRESULTS returns the handle to a new CLOTHESPINRESULTS or the handle to
%      the existing singleton*.
%
%      CLOTHESPINRESULTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CLOTHESPINRESULTS.M with the given input arguments.
%
%      CLOTHESPINRESULTS('Property','Value',...) creates a new CLOTHESPINRESULTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before clothespinResults_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to clothespinResults_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above resultText to modify the response to help clothespinResults

% Last Modified by GUIDE v2.5 18-Apr-2005 19:12:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @clothespinResults_OpeningFcn, ...
                   'gui_OutputFcn',  @clothespinResults_OutputFcn, ...
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
% --- Executes just before clothespinResults is made visible.
function clothespinResults_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to clothespinResults (see VARARGIN)

% Choose default command line output for clothespinResults
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes clothespinResults wait for user response (see UIRESUME)
% uiwait(handles.figure1);

FtestParams = varargin{1};
time = varargin{2};
count = FtestParams.pinCount;

pinTimes = [];
for i=1:count
    pinTimes(i) = etime(FtestParams.pinTimes(i+1,:),FtestParams.pinTimes(i,:));
end
if ~isempty(pinTimes)
    disp('******************************')
    disp('** Pin# *** Time (seconds) ***')
    for i=1:count
        disp(sprintf('*\t %d \t \t \t %3.1f \t \t *',i,pinTimes(i)))
    end
    disp('******************************')
end
secsperpin = mean(pinTimes);
pinspermin = 1/(secsperpin/60);
if isnan(secsperpin), secsperpin = 0; pinspermin = 0; end
r = sprintf('%d clothespins moved within %3.2f seconds*',count,time);
a = sprintf('Averages: %3.2f pins/min, %3.2f seconds/pin',pinspermin,secsperpin);
set(handles.resultText,'String',r);
set(handles.avgText,'String',a);


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = clothespinResults_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;