classdef widgetSlider < hgsetget
    % create a widgetSlider tool that will callback on motion events
    % Usage: mySliderHandle = widgetSlider(myAxis)
    % mySliderHandle.ButtonDownFcn = @do_something
    %   function do_something(src,evt)
    % on motion, the evt argument will get the currect axis value
    %
    % Example 1:
    %
    % close all, clear classes
    % mySliderHandle = GUIs.widgetSlider(gca);
    % show_red = @(src,evt) fprintf(2,'%f\n',evt);
    % show_black = @(src,evt) fprintf(1,'%f\n',evt);
    % mySliderHandle.ButtonDownFcn = show_red;
    % mySliderHandle.ButtonUpFcn = show_red;
    % mySliderHandle.ButtonMotionFcn = show_black;
    %
    % Example 2: Create an array of vertical sliders
    % close all
    % f = figure;
    % N = 9;
    % s = zeros(1,N);
    % h = cell(1,N);
    % for i = 1:N
    %     s(i) = subplot(1,N,i);
    %     set(s(i),'YTick',[]);
    %     set(s(i),'XTick',[]);
    %     h{i} = GUIs.widgetSlider(s(i));
    %     h{i}.Type = {'Vertical'};
    %     h{i}.Value = 0.5;
    %     
    % end    
    %
    % Last Updated:
    %   2009-May-06 R. Armiger:  added button up/down event data
    
    properties (Access = public)
        Parent;
        Alpha = 0.65;
        AxesWidth = 1;
        ArrowPct = 0.4; % Percentage skew on the arrow
        Type = {'Horizontal'};
        hPatch = [];
        hLine = [];
        PersistLastValue = true;
        PersistValue = 0;  % Value that the widgetSlider will jump to on button up
        ButtonDownFcn = '';
        ButtonMotionFcn = '';
        ButtonUpFcn = '';
        Color = [0.8471    0.1608         0];
        Enable = 'on'; % changes line color to default if off
        PatchWidth = .05;
        Range = [0 1];
        UserData = [];
        Value = 0;
        Visible = 'on';
    end
    properties (SetAccess = private)
        hFigure;
    end
    
    methods
        function obj = widgetSlider(varargin)
            if nargin > 0
                for i=1:2:nargin-1
                    set(obj, varargin{i}, varargin{i+1});
                end
            end
            if (isempty(obj.Parent))
                obj.Parent = gca;
            end
            obj.hPatch = patch(...
                'Parent',obj.Parent,...
                'Clipping','off',...
                'ButtonDownFcn',{@move,'down',obj});
            obj.hLine = line(...
                'Parent',obj.Parent,...
                'Clipping','off',...
                'ButtonDownFcn',{@move,'down',obj});
            % prevent auto resize
            set(obj.Parent,'XLimMode','manual');
            set(obj.Parent,'YLimMode','manual');
            % default props, change these using obj.Line properties
            set(obj.hLine,'LineWidth',2);
            set(obj.hLine,'Color',obj.Color);
            set(obj.hPatch,'FaceColor',obj.Color);
            alpha(obj.hPatch,obj.Alpha);
            % set line data (horiz or vertical)
            set_line_position(obj);
                        
        end %constructor

        % Property Sets
        function set.Alpha(obj,value)
            obj.Alpha = value;
            set(obj.hPatch,'FaceAlpha',value);
        end % set.Alpha
        function set.Color(obj,value)
            obj.Color = value;
            set(obj.hLine,'Color',value)
            set(obj.hPatch,'FaceColor',value);
        end
        function set.Enable(obj,value)
            obj.Enable = value;
            if strcmpi(value,'off')
                c = 'default';
            else
                c = obj.Color;
            end
            set(obj.hLine,'Color',c);
            set(obj.hPatch,'FaceColor',c);
        end
        function set.PatchWidth(obj,value)
            obj.PatchWidth = value;
            set_line_position(obj);
        end
        function set.Range(obj,value)

            obj.Range = value;
            if obj.Range(1) > obj.Range(2)
                warning('widgetSlider:invalidRange','Invalid Range');
            end
            
            %set(obj.Parent,'YLim',obj.Range)
            
            % enforce limits
            obj.Value = max(min(obj.Value,obj.Range(2)),obj.Range(1)); 
            
        end
        function set.Visible(obj,value)
            obj.Visible = value;
            set(obj.hLine,'Visible',value)
            set(obj.hPatch,'Visible',value);
        end
        function set.Value(obj,value)
            obj.Value = value;
            set_line_position(obj);
        end
    end
end


function move(src,evt,action,obj) %#ok<INUSL>

    if strcmpi(obj.Enable,'off')
        return;
    end

    switch action
        case 'down'
            obj.hFigure = gcbf;

            set(obj.hFigure,'WindowButtonMotionFcn',{@move,'motion',obj});
            set(obj.hFigure,'WindowButtonDownFcn',{@move,'down',obj});
            set(obj.hFigure,'WindowButtonUpFcn',{@move,'up',obj});
            set(obj.hFigure,'ButtonDownFcn','');

            if ~isempty(obj.ButtonDownFcn)
                obj.ButtonDownFcn(obj,obj.Value);
            end

            return

        case 'motion'
            Ax = get(obj.hLine,'Parent');
            cp = get(Ax,'CurrentPoint');

            if strcmpi(obj.Type,'horizontal')
                val = cp(1,1);   % x-value
            else
                val = cp(1,2);   % y-value
            end

            val = min(obj.Range(2),val);
            val = max(obj.Range(1),val);
            obj.Value = val;
            set_line_position(obj);

            if ~isempty(obj.ButtonMotionFcn)
                obj.ButtonMotionFcn(obj,obj.Value);
            end

        case 'up'
            set(obj.hFigure,'WindowButtonUpFcn','');
            set(obj.hFigure,'WindowButtonDownFcn','');
            set(obj.hFigure,'WindowButtonMotionFcn','');

            if ~obj.PersistLastValue
                obj.Value = obj.PersistValue;
                set_line_position(obj);
            end

            if ~isempty(obj.ButtonUpFcn)
                obj.ButtonUpFcn(obj,obj.Value);
            end
    end

end

function set_line_position(obj)

    val = obj.Value;

    w = obj.PatchWidth;
    
    if strcmpi(obj.Type,'horizontal')
        set(obj.hLine,'XData',[val val],'YData',[0 1]);
        set(obj.hPatch,'XData',[val+w val+w val-w val-w],'YData',[0 1 1 0]);
    else
        set(obj.hLine,'XData',[0 obj.AxesWidth],'YData',[val val]);
        
        set(obj.hPatch,'XData',...
            [0 obj.ArrowPct*obj.AxesWidth obj.AxesWidth obj.AxesWidth obj.ArrowPct*obj.AxesWidth ],...
            'YData',[val val+w val+w val-w val-w]);
    end
end
