function varargout = laq(varargin)
% LAQ M-file for laq.fig
%
%      LAQ (Biomedical Live AcQuisition) is a GUI based program that
%      provides users with a display for monitoring real-time 
%      analog input from different sources.
%
%      LAQ is complete with self-explanatory GUI features to control 
%      plotting, inputs, and data recording. 
%
%      LAQ, by itself, creates a new LAQ or raises the existing
%      singleton*.
%
%      H = LAQ returns the handle to a new LAQ or the handle to
%      the existing singleton*.
%
%      LAQ('Property','Value',...) creates a new LAQ using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to laq_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      LAQ('CALLBACK') and LAQ('CALLBACK',hObject,...) call the
%      local function named CALLBACK in LAQ.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".     
%      
%      LAQ will only function properly with MATLAB v6.5 using GUIDE v2.5
%
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Last Modified by GUIDE v2.5 21-Sep-2004 10:36:39

global color
color=[0    0    0   ;...           % Define global channel-color table
        0    0.25 1   ;...
        1    0    1   ;...     
        0.9  0.9  0   ;...
        0    0.6  0   ;...
        0.5  0    0.8 ;...
        1    0.6  0   ;...
        0.33 0.84 0.89;...
        0    1    0   ;...
        0.5  0.5  0.5 ;...
        1    0    0   ;...
        0.4  0.5  0.7 ;...     
        0    0.5  0.5 ;...
        1    0.5  0.5 ;...
        0.4  0.2  0.3 ;...
        0.25 0.25 0.5];

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @laq_OpeningFcn, ...
    'gui_OutputFcn',  @laq_OutputFcn, ...
    'gui_LayoutFcn',  [], ...
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
% --- Executes just before laq is made visible.
function laq_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for laq
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes laq wait for user response (see UIRESUME)
% uiwait(handles.laq);

global list viewSigs color

set(0,'defaultUicontrolBackgroundColor',[0.753 0.753 0.753]);           % set default bg to gray

set(handles.hGraph,'YLim',...                                           % set plot area for initial display
    [-(get(handles.hTVerticalRange,'Value')) ...                        % - default vertical range
    (get(handles.hTVerticalRange,'Value'))],...                         % + default vertical range
    'XLim',[0 get(handles.hTimerPeriod,'Value')])                       % x-range

laq('hStart_Callback',gcf,[],guidata(gcf))                              % call strt function to auto-start plotting

listhand = findobj('Type','uicontrol');                                 % get handles of all uicontrol objects
list = get(listhand,'Tag');                                             % create array of all uicontrol tags
list = listhand(strmatch('acq_',list));                                 % determine which objects are 'acq_'
set(list,'Enable','off')                                                % disable 'acq' controls while live viewing window is open

for i=1:viewSigs.num_chans                                              % loop through number of channels (for selected a/d card)
    eval(['set(handles.ch' num2str(i) ',''Visible'',''on'');']);        % make corresponding channel selectors visible
end
for i=1:length(viewSigs.channels)                                       % loop through 'selected' channels
    eval(['set(handles.ch' num2str(viewSigs.channels(i))...             % 'select' corresponding buttons
          ',''Value'',1,''ForegroundColor'',color('...                  % and set the number color to match the plotted channel
          num2str(viewSigs.channels(i)) ',:));']);
end

set(handles.allChan,'UserData',viewSigs);                               % store the incoming viewSigs structure to send back when plotting is closed


% --------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = laq_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function hStart_Callback(hObject, eventdata, handles)
% hObject    handle to hStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global viewSigs

chan_ids = [1:viewSigs.num_chans];                                      % array of channel ids (1 to number of channels)
set(handles.hFDomain,'UserData',...                                     % initialize space for later FFT averaging
    zeros((get(handles.hFFTSize,'UserData')/2+1),viewSigs.num_chans));
set(handles.hTDomain,'UserData',...                                     % initialize more space for later FFT averaging
    zeros((get(handles.hFFTSize,'UserData')/2+1),viewSigs.num_chans));

warning off all                                                         % supress warnings to keep command window clean from redundant peekdata size warning

adaptor = viewSigs.card;                                                % string id of a/d card
switch adaptor                                                          % select case based on current a/d card
    case 'winsound'                                                     % if sound card
        skew = 'none';                                                  % no skew for sound card
        ai = analoginput(adaptor,0);                                    % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
        choice = 1;                                                     % flag for sample rate setup (below)
    case 'mcc'                                                          % if measurement computing a/d
        skew = 'Equisample';                                            % 'Equisample' skew for sound card
        ai = analoginput(adaptor,1);                                    % create analog input object
        ai.ChannelSkewMode = skew;                                      % set ai object skew
        choice = 0;                                                     % flag for sample rate setup (below)
        chan_ids = chan_ids-1;                                          % this a/d requires channel indexes begin at 0
    case 'nidaq'                                                        % if national instruments a/d
        ai = analoginput(adaptor,'Dev1');                                    % create analog input object
        ai.InputType = 'SingleEnded';                                   % set ai object input type
        choice = 0;                                                     % flag for sample rate setup (below)
        chan_ids = chan_ids-1;                                          % this a/d requires channel indexes begin at 0
end

addchannel(ai,chan_ids);                                                % analog channel allocation
ai.LoggingMode = 'Memory';                                              % set ai object to only log to memory (for simple viewing)
ai.TriggerType = 'Immediate';                                           % set to start running immediately on 'start(ai)'
ai.SamplesPerTrigger = inf;                                             % will enable ai run until 'stop(ai)'
ai.SampleRate = viewSigs.sampRate;                                      % set ai object sample rate  

set(ai,'TimerPeriod',0.05);                                             % set a very fast 'refresh rate'
set(ai,'TimerFcn',{@plotdata, handles});                                % name 'plotdata' as the function that gets called on 'refresh'
set(handles.hGraph,'DrawMode','fast')                                   % ensure best possible plotting speed for real-time look

set(handles.laq,'UserData',ai);                                        % carry ai object to plotdata function for use there

start(ai)                                                               % data acquistion start and ai object start


% --------------------------------------------------------------------   
% --- Executes during object creation, after setting all properties.
function Fmaxtext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fmaxtext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global viewSigs
set(hObject,'String',[num2str(min([viewSigs.sampRate/2 16384])) ' Hz']); % set freq max text to value based on selected sample rate 


% --------------------------------------------------------------------   
% --- Executes during object creation, after setting all properties.
function hFFTSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hFFTSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global viewSigs

set(hObject,'Min',10);                                                  % set slider min value to 10 Hz
max = min([viewSigs.sampRate/2 16384]);                                 % max value: half of chosen sample rate or a max of 16384
fval = max/2;                                                           % frequency value: half of determined max
set(hObject,'Max',max);                                                 % set slider max value 
set(hObject,'Value',fval);                                              % set slider initial position to half of set max
set(hObject,'TooltipString',[num2str(fval) ' Hz']);                     % set tooltip to value of slider 
fChoices = 2.^[8:14];                                                   % array of frequency choices (256 to 16384)
fft_sz = 2^(16-min(find(fChoices >= min([fval 16384]))));               % find next highest fChoices value and double to get sampling rate
set(hObject,'UserData',fft_sz);                                         % carry fft size in 'UserData'


% --------------------------------------------------------------------
function hFFTSize_Callback(hObject, eventdata, handles)
% hObject    handle to hFFTSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global viewSigs

fChoices = 2.^[8:14];                                                   % array of frequency choices (256 to 16384)
fval = get(handles.hFFTSize,'Value');                                   % get frequency value from slider
fft_sz = 2^(16-min(find(fChoices >= min([fval 16384]))));               % find next highest fChoices value and double to get sampling rate
set(handles.hFFTSize,'UserData',fft_sz);                                % store new fft size
set(handles.hFFTSize,'TooltipString',[num2str(fval) ' Hz']);            % update tooltip 
set(handles.hGraph,'XLim',[0 fval]);                                    % adjust x-range of plotting window
set(handles.hFDomain,'UserData',...                                     % initialize space for later FFT averaging
    zeros((get(handles.hFFTSize,'UserData')/2+1),viewSigs.num_chans));
set(handles.hTDomain,'UserData',...                                     % initialize more space for later FFT averaging
    zeros((get(handles.hFFTSize,'UserData')/2+1),viewSigs.num_chans));


% --------------------------------------------------------------------
% --- Executes on slider movement.
function hTimerPeriod_Callback(hObject, eventdata, handles)
% hObject    handle to hTimerPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value = get(handles.hTimerPeriod,'Value');                              % get value from slider
set(handles.hGraph,'XLim',[0 value])                                    % adjust x-range of plotting window
set(handles.hTimerPeriod,'TooltipString',[num2str(value) ' sec']);      % update tooltip


% --------------------------------------------------------------------
% --- Executes on slider movement.
function hTVerticalRange_Callback(hObject, eventdata, handles)
% hObject    handle to hTVerticalRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value = get(handles.hTVerticalRange,'Value');                           % get value from slider
set(handles.hGraph,'YLim',[-value value]);                              % adjust y-range of plot window
set(handles.hTVerticalRange,'TooltipString',['+/- ' num2str(value)]);   % update tooltip


% --------------------------------------------------------------------
% --- Executes on slider movement.
function hFVerticalRange_Callback(hObject, eventdata, handles)
% hObject    handle to hFVerticalRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value = get(handles.hFVerticalRange,'Value');                           % get value from slider
set(handles.hGraph,'YLim',[-value*0.05 value]);                         % adjust y-range of plot window                      
set(handles.hFVerticalRange,'TooltipString',num2str(value));            % update tooltip


% --------------------------------------------------------------------
% --- Executes on button press in hAutoOffset.
function hAutoOffset_Callback(hObject, eventdata, handles)
% hObject    handle to hAutoOffset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.hAutoOffset,'Value')                                     % if 'offset' is chosen
    set(handles.hAutoOffset,'String','Turn Auto OFF')                   % change button text
    set(handles.hDCOffset,'Enable','off')                               % disable DC offset slider
else                                                                    % if 'offset' is de-selected
    set(handles.hAutoOffset,'String','Turn Auto ON')                    % restore button text
    set(handles.hDCOffset,'Enable','on')                                % enable slider
end


% --------------------------------------------------------------------
% --- Executes on button press in hTimeAverage.
function hTimeAverage_Callback(hObject, eventdata, handles)
% hObject    handle to hTimeAverage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (get(handles.hTimeAverage,'Value'))                                  % if averaging is selected turn on frequency time averaging
    set(handles.hTimeAverage,'String','Stop Averaging')                 % change button text
else                                                                    % else turn off frequency time averaging
    set(handles.hTimeAverage,'String','Start Averaging')                % change button text
end


% --------------------------------------------------------------------
% --- Executes on button press in hTDomain.
function hTDomain_Callback(hObject, eventdata, handles)
% hObject    handle to hTDomain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hFDomain,'Value',0,'FontWeight','normal');                  % de-select frequency domain plotting
set(handles.hTDomain,'Value',1,'FontWeight','bold');                    % select time domain plotting and bold text

set(handles.xLabelText,'String','Time (seconds)');                      % set associated view components
set(handles.timescaletext,'String','Timescale');
set(handles.highrangetext,'String','+/- 10');
set(handles.lowrangetext,'Visible','on');
set(handles.rangeminustext,'Visible','off');
set(handles.lowscaletext,'String','50 msec');
set(handles.highscaletext,'Visible','on');
set(handles.Fmaxtext,'Visible','off');
set(handles.offsetminustext,'Visible','on');
set(handles.offsetplustext,'Visible','on');
set(handles.offsettext,'Visible','on');
set(handles.hTimeAverage,'Enable','off');
set(handles.hAutoOffset,'Enable','on');
if ~get(handles.hAutoOffset,'Value')
    set(handles.hDCOffset,'Enable','on');
end
set(handles.hTimerPeriod,'Visible','on');
set(handles.hFFTSize,'Visible','off');
set(handles.hTVerticalRange,'Visible','on');
set(handles.hFVerticalRange,'Visible','off');

set(handles.hGraph,'YLim',...                                           % adjust y-range of plot window
    [-get(handles.hTVerticalRange,'Value') ...
        get(handles.hTVerticalRange,'Value')])
set(handles.hGraph,'XLim',[0 get(handles.hTimerPeriod,'Value')])        % adjust x-range of plot window


% --------------------------------------------------------------------
% --- Executes on button press in hFDomain.
function hFDomain_Callback(hObject, eventdata, handles)
% hObject    handle to hFDomain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hTDomain,'Value',0,'FontWeight','normal');                  % de-select time domain plotting
set(handles.hFDomain,'Value',1,'FontWeight','bold');                    % select frequency domain plotting and bold text

set(handles.xLabelText,'String','Frequency (Hz)');                      % set associated view components
set(handles.timescaletext,'String','Frequency scale');
set(handles.highrangetext,'String','+');
set(handles.lowrangetext,'Visible','off');
set(handles.rangeminustext,'Visible','on');
set(handles.lowscaletext,'String','10 Hz');
set(handles.highscaletext,'Visible','off');
set(handles.Fmaxtext,'Visible','on');
set(handles.offsetminustext,'Visible','off');
set(handles.offsetplustext,'Visible','off');
set(handles.offsettext,'Visible','off');
set(handles.hTimeAverage,'Enable','on');
set(handles.hAutoOffset,'Enable','off');
set(handles.hDCOffset,'Enable','off');
set(handles.hTimerPeriod,'Visible','off');
set(handles.hFFTSize,'Visible','on');
set(handles.hTVerticalRange,'Visible','off');
set(handles.hFVerticalRange,'Visible','on');

set(handles.hGraph,'YLim',[-get(handles.hFVerticalRange,'Value')*0.05 ...% adjust y-range of plot window
        get(handles.hFVerticalRange,'Value')])
set(handles.hGraph,'XLim',[0 get(handles.hFFTSize,'UserData')])         % adjust x-range of plot window


% --------------------------------------------------------------------
% --- Executes on button press in ch(1-16).
function ch_Callback(hObject, eventdata, handles)
% hObject    handle to ch(1-16) (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global color viewSigs

id = get(hObject,'Tag');                                                % string id of calling button (eg. 'ch6')
id = str2num(id(3:length(id)));                                         % trim out the number from the id

if get(hObject,'Value')                                                 % if button was selected
    set(hObject,'ForegroundColor',color(id,:))                          % set text color to match plot color 
else                                                                    % if button was de-selected
    set(hObject,'ForegroundColor',[0.5 0.5 0.5])                        % return text color to default
end

for i=1:viewSigs.num_chans                                              % loop through all visible channel buttons
    eval(['ch(i) = get(handles.ch' num2str(i) ',''Value'');'])          % create array of button values
end
ch = find(ch ~= 0);                                                     % indexes of selected buttons
viewSigs.channels = ch;                                                 % export list of selected channels


% --------------------------------------------------------------------
% --- Executes on button press in allChan.
function allChan_Callback(hObject, eventdata, handles)
% hObject    handle to allChan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global color viewSigs

listhand = findobj('Visible','on','style','togglebutton');              % handle list of visible toggle buttons
nms = get(listhand,'Tag');                                              % tags of visible buttons
chlist = flipud(listhand(strmatch('ch',nms)));                          % trim list to include only 'ch*' buttons

value = 1;                                                              % 'selected' value
x = get(chlist,'Value');                                                % array of button values
clr = color;                                                            % copy of global color array
if sum(cell2mat(x))==viewSigs.num_chans                                 % if all are slected (special case)
    value = 0;                                                          % 'de-selected' value
    clr = ones(16,3).*0.5;                                              % gray color array for 'de-selected'
end
for i=1:viewSigs.num_chans                                              % cycle through all channel buttons
    set(chlist(i),'Value',value,'ForegroundColor',clr(i,:));            % color button number 
    ch(i) = get(chlist(i),'Value');                                     % set all button values
end

ch = find(ch ~= 0);                                                     % indexes of selected buttons
viewSigs.channels = ch;                                                 % export list of selected channels

set(hObject,'Value',0)                                                  % reset 'all' button to make it appear to function as pushbutton


% --------------------------------------------------------------------
% --- Executes on button press in closebutton.
function closebutton_Callback(hObject, eventdata, handles)
% hObject    handle to closebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global list viewSigs

set(list,'Enable','on')                                                 % enable 'acq_' controls for return 
viewSigs = get(handles.allChan,'UserData');                             % get the stored viewSigs structure
ai = get(handles.laq,'UserData');                                       % get the storedd ai object
stop(ai)                                                                % stop the ai object
warning on all                                                          % undo supression of warnings
closereq                                                                % close laq


% --------------------------------------------------------------------
function plotdata(obj,eventdata,handles)

global color viewSigs

fs = obj.SampleRate;                                                    % get actual sampling rate from a/d card
ch = viewSigs.channels;                                                 % array of channel indexes to plot
choice = viewSigs.card;                                                 % a/d card being used

axes(handles.hGraph)                                                    % set current axes to plotting window

if isempty(ch)                                                          % if there are no channels selected
    cla                                                                 % clear the axes
else                                                                    % if there are some channels selected
    if get(handles.hTDomain,'Value')                                    % plot time-domain if Time radio button is valued, else frequency domain
        datasize = floor(fs*get(handles.hTimerPeriod,'Value'));         % determine length of data block to get from a/d
        switch choice                                                   % choose case based on a/d card
            case 'winsound'                                             % if sound card
                if (get(handles.hAutoOffset,'Value'))                   % if auto offset is intended
                    data = peekdata(obj,datasize);                      % get block of data from a/d
                    for i = 1:length(ch)                                % loop through selected channels
                        offset = median(data(:,ch(i)));                 % array of auto offset values: medians of each channel of data
                        data(:,ch(i)) = data(:,ch(i))-offset;           % subtract offset values from channels of data 
                    end
                else                                                    % else if auto offset is not intended 
                    data = peekdata(obj,datasize) + ...                 % get block of data from a/d
                        get(handles.hDCOffset,'Value');                 % and add the offset slider value
                end
            case 'mcc'                                                  % if measurement computing card
                if (get(handles.hAutoOffset,'Value'))                   % no offset adjustment if auto button is pressed
                    data = peekdata(obj,datasize);                      % get block of data from a/d 
                else                                                    % else, offset channels according to DC offset slider value
                    data = peekdata(obj,datasize);                      % get block of data from a/d
                    for i = 1:length(ch)                                % loop through selected channels
                        data(:,ch(i)) = data(:,ch(i))-...               % data = data minus...
                            get(handles.hDCOffset,'Value')*...          % the offset value times...
                            (i-(length(ch)+1)/2);                       % an index value
                    end
                end   
            case 'nidaq'                                                % if national instruments card
                if (get(handles.hAutoOffset,'Value'))                   % no offset adjustment if auto button is pressed
                    data = peekdata(obj,datasize)/10;                   % get block of data from a/d and scale down
                else                                                    % else, offset channels according to DC offset slider value
                    data = peekdata(obj,datasize)/10;                   % get block of data from a/d and scale down
                    for i = 1:length(ch)                                % loop through selected channels
                        data(:,ch(i)) = data(:,ch(i))-...               % data = data minus...
                            get(handles.hDCOffset,'Value')*...          % the offset value times...
                            2.5*(i-(length(ch)+1)/2);                   % an index value scaled
                    end
                end 
            otherwise                                                   % otherwise, do noting, nothing else implmented yet
        end
      
        NaNfill=floor(get(handles.hTimerPeriod,'Value')*fs)-size(data,1);% get size of data void at plot beginning
        pdata=[(zeros(NaNfill,length(ch))+NaN); data(:,ch)];            % pad with zeros to maintain plot window size at start
        time = fliplr((1:get(handles.hTimerPeriod,'Value')*fs)/fs);     % create array of corresponding time values of x axis 
        
        for i=1:size(pdata,2)                                           % loop through channels
            plot(time,pdata(:,i),'Color',color(ch(i),:))                % plot channels with corresponding set colors
            text(get(handles.hTimerPeriod,'Value')*1.02,...             % place channel number to right of plot 
                median(pdata(:,i)),num2str(ch(i)),...                   % at a position matching the data median
                'Color',color(ch(i),:),...                              % and a color matching the data
                'FontSize',12,'FontWeight','demi',...
                'FontName','Arial Black');
            hold on;                                                    % specifiy hold on so all channels will appear
        end    
        
        vLim = get(handles.hTVerticalRange,'Value');                    % get vertical ranging value from slider
        set(handles.hGraph,'YLim',[-vLim vLim])                         % set y-range for plotting
        set(handles.hGraph,'XLim',[0,max([time 0.0001])])               % set x-range for plotting
        set(handles.hGraph,'FontWeight','demi')                         % maintain demi look of axis labels
        
        hold off;                                                       % hold off to update plot during next plotdata call
    else                                                                % plot frequency domain
        fft_sz = get(handles.hFFTSize,'UserData');                      % get stored fft size data
        switch choice                                                   % choose case based on a/d card
            case 'winsound'                                             % if sound card
                data = peekdata(obj,fft_sz);                            % get block of data from a/d
                DATA = fft(data(:,ch),fft_sz);                          % take FFT of block of data
                Pyy = DATA.* conj(DATA) / fft_sz;                       % find power
                f = fs*(0:(fft_sz/2))/fft_sz;                           % create corresponding frequency array
            case 'mcc'                                                  % if measurement computing card
                data = peekdata(obj,fft_sz);                            % get block of data from a/d
                DATA = fft(data(:,ch),fft_sz);                          % take FFT of block of data
                Pyy = DATA.* conj(DATA) / fft_sz;                       % find power
                f = fs*(0:(fft_sz/2))/fft_sz;                           % create corresponding frequency array
            case 'nidaq'                                                % if national insturments card
                data = peekdata(obj,fft_sz);                            % get block of data from a/d
                DATA = fft(data(:,ch),fft_sz);                          % take FFT of block of data
                Pyy = DATA.* conj(DATA) / fft_sz;                       % find power
                f = fs*(0:(fft_sz/2))/fft_sz;                           % create corresponding frequency array
            otherwise                                                   % otherwise, do noting, nothing else implmented yet
        end
            
        if length(Pyy)==fft_sz                                          % check to ensure enough data to fill plotting window
            
            pdata=Pyy((1:length(Pyy)/2+1),:);                           % frequency data to plot is half of FFT result
            
            if get(handles.hTimeAverage,'Value')                        % if time averaging is selected
                AvgArray=get(handles.hFDomain,'UserData');              % get stroed array of avaraged data
                DivArray=get(handles.hTDomain,'UserData');              % get stored array of number of divisions
                DivArray(:,ch)=DivArray(:,ch)+1;                        % add to number of divisions
                set(handles.hTDomain,'UserData',DivArray);              % store number of divisions array
                AvgArray(:,ch)=(AvgArray(:,ch)+pdata)./DivArray(:,ch);  % compute averages
                set(handles.hFDomain,'UserData',AvgArray);              % store newly computed averages
                pdata=AvgArray(:,ch);                                   % set the plot data to the new averages
            end
            
            vLim = get(handles.hFVerticalRange,'Value');                % get vertical ranging value from slider
            
            for i=1:size(Pyy,2)                                         % loop through channels
                plot(f,pdata(:,i),'Color',color(ch(i),:))               % plot channels with corresponding set colors
                text(get(handles.hFFTSize,'Value')*1.02,...             % place channel number to right of plot
                    (i-1)/16*vLim,num2str(ch(i)),...                    % in stacked fashion
                    'Color',color(ch(i),:),...                          % and a color matching the channel data
                    'FontSize',12,'FontWeight','demi',...
                    'FontName','Arial Black');
                hold on;                                                % specifiy hold on so all channels will appear
            end    

            set(handles.hGraph,'YLim',[0.05*-vLim vLim])                % set y-range for plotting
            set(handles.hGraph,'XLim',[0,get(handles.hFFTSize,'Value')])% set x-range for plotting
            set(handles.hGraph,'FontWeight','demi')                     % maintain demi look of axis labels
            
            hold off;                                                   % hold off to update plot during next plotdata call
        end
    end
end