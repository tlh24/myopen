classdef widgetSpinner < hgsetget
    % SPINNER creates a widgetSpinner control using two buttons and an edit box
    % Example:
    %    mySpinnerHandle = widgetSpinner('PropertyName1',PropertyValue1,...
    %       'PropertyNameN',PropertyValueN);
    % Properties:
    %   Callback    Function handle
    %   Enable      Enable or disable widgetSpinner; 'on','off'; default = 'on'
    %   Increment   Step value; default = 1
    %   Initial     Initial value; default = 0
    %   Max         Maximum value, 1x1 vector; empty = no limit
    %   Min         Minimum value, 1x1 vector; empty = no limit
    %   Parent      Handle of parent object; defaults to current figure
    %   Position    Position rectangle [x y width height] in pixels
    %
    % Error:
    %   >> widgetSpinner
    %   *close figure
    %   >> widgetSpinner
    %   Invalid object handle
    properties
        Callback;
        Enable = 'on';
        Increment = 1; % TODO: optional, increment according to the precision of the current value, ex: given value=3.3, increment=.1, given value=3.33, increment=.01
        Initial = 0;
        Max = 2009;
        Min = [];
        Parent = gcf;
        Position = [0 0 60 20]; % messed up
        Tag = '';
        Value = []; % editing it directly does nothing
        Type = 'widgetSpinner';
    end % properties
    properties (Access = private)
        hPanel = [];
        hEdit = [];
        hUpButton = [];
        hDownButton = [];
    end
    methods
        function obj = widgetSpinner(hParent,varargin)
            % Get parent
            if nargin < 1
                hParent = figure;
            end
            obj.Parent = hParent;
            
            % Get properties
            if nargin > 1
                for i=1:2:nargin-1
                    set(obj, varargin{i}, varargin{i+1});
                end
            end
            obj.Value = obj.Initial;
            
            % Draw control
            draw(obj);
        end % constructor
        function obj = set.Value(obj,val)
             if (ischar(val))
                 if isempty(str2num(val))
                     val = obj.Value; % replace with return or some kind of exit from method
                 else
                     val = str2num(val);
                 end
             end
             
             if (isempty(obj.Max) || (val <= obj.Max)) && (isempty(obj.Min) || (val >= obj.Min))
                 obj.Value = val;
                 if ~isempty(obj.hEdit)
                    set(obj.hEdit,'String',num2str(val));
                end
             end
        end
        function draw(obj)
            p = obj.Position;
            w = [20]; % button width
            obj.hPanel = uipanel('Parent',obj.Parent,...
                'Units','pixels',...
                'BorderType','none',...
                'Position',p);
            obj.hEdit = uicontrol('Parent',obj.hPanel,...
                'Style','edit',...
                'BackgroundColor','white',...
                'Enable',obj.Enable,...
                'String',num2str(obj.Value),...
                'HorizontalAlignment','right',...
                'Callback',{@edit,obj},...
                'Position',[0,0,p(3)-w,p(4)]);
            obj.hUpButton = uicontrol('Parent',obj.hPanel,...
                'Style','pushbutton',...
                'SelectionHighLight','off',...
                'String','+',...
                'Enable',obj.Enable,...
                'Callback',{@button,obj},...
                'Position',[p(3)-w,p(4)/2,w,p(4)/2]);
            obj.hDownButton = uicontrol('Parent',obj.hPanel,...
                'Style','pushbutton',...
                'SelectionHighLight','off',...
                'String','-',...
                'Enable',obj.Enable,...
                'Callback',{@button,obj},...
                'Position',[p(3)-w,0,w,p(4)/2]);
        end % function
        function obj = set.Enable(obj,val)
            obj.Enable = val;
            set(obj.hEdit,'Enable',val);
            set(obj.hUpButton,'Enable',val);
            set(obj.hDownButton,'Enable',val);
        end % function
    end % methods
end % class

% Callback Methods
function edit(source, eventdata, obj)
value = str2num(get(source,'String'));
if isempty(value)
    set(source,'String',num2str(obj.Value));
elseif ~isempty(obj.Max) && (value > obj.Max)
    set(source,'String',num2str(obj.Value));
elseif ~isempty(obj.Min) && (value < obj.Min)
    set(source,'String',num2str(obj.Value));
else
    obj.Value = value;
end
if ~isempty(obj.Callback) obj.Callback(obj, eventdata); end
end % function

function button(source,eventdata, obj)
if (source == obj.hUpButton)
    if (isempty(obj.Max)) || (obj.Value < obj.Max)
        obj.Value = obj.Value + obj.Increment;
    end
else
    if (isempty(obj.Min)) || (obj.Value > obj.Min)
        obj.Value = obj.Value - obj.Increment;
    end
end
set(obj.hEdit,'String',num2str(obj.Value));
if ~isempty(obj.Callback) obj.Callback(obj, eventdata); end
end % function



