classdef widgetSpeedometer < hgsetget
    properties
        Parent = gcf; % handle of parent
        needleLength = 1.75;
        Value = 0; % normalized value [-1 1]
        Enable = 'on'; % changes line color to default if off
        FaceColor = [0.3922    0.4745    0.6353]; %pos limit color
        Color = [0.3922    0.4745    0.6353]; % needle color
        ButtonDownFcn = '';
        ButtonMotionFcn = '';
        ButtonUpFcn = '';
        MaxLimit = 1;
        MinLimit = -1;
        UserData = [];
        AngleRange = 3*pi/8; % in radians, for one side
        showText = 0;
    end
    properties (SetAccess = private)
        Needle; % needle handle
        hFigure;
        hTransform; % hgtransform for needle
        hGaugeAx;
        hPatchMaxLimit;
        hPatchMinLimit;
    end
    methods
        function obj = widgetSpeedometer(varargin)
            if nargin > 0
                for i=1:2:nargin-1
                    set(obj, varargin{i}, varargin{i+1});
                end
            else
                obj.Parent = gcf;
            end
            
            obj.hGaugeAx = axes('parent',obj.Parent,...
                'Units','normalized', ...
                'Position',[0 0 1 1],...
                'XLim',             [-2 2],...
                'YLim',             [-.5 2],...
                'DataAspectRatio',  [1 1 1],...
                'Visible',          'off',...
                'ytick',            [],...
                'xtick',            [] );
            axLim = axis(obj.hGaugeAx);
            hold(obj.hGaugeAx,'on');
            d = 0.05;
            rectangle(...
                'Parent', obj.hGaugeAx,...
                'Position',     [axLim(1)+d/2 axLim(3)+d/2 axLim(2)-axLim(1)-d axLim(4)-axLim(3)-d],...
                'Curvature',    [.2 .4],...
                'FaceColor',    'white');
            
            obj.Needle = plot(obj.hGaugeAx,[0 0],[0 obj.needleLength],...
                'Color',obj.Color,'LineWidth',2); %% needle
            plot(obj.hGaugeAx,0,0,'k.'); %% pin
            
            tickRange = linspace(...
                pi/2+obj.AngleRange,...
                pi/2-obj.AngleRange,...
                9);
            for iTick = 1:length(tickRange) %% hash marks
                th = tickRange(iTick);
                [x,y] = pol2cart([th th],[1.6 1.8]);
                plot(obj.hGaugeAx,x,y,'k-','LineWidth',1);
            end
            % create limit lines
            
            obj.hPatchMaxLimit = patch(...
                'Parent',obj.hGaugeAx,...
                'FaceColor',obj.FaceColor,...
                'Clipping','off',...
                'ButtonDownFcn',{@move,'down',obj},...
                'EraseMode','normal');
            obj.hPatchMinLimit = patch(...
                'Parent',obj.hGaugeAx,...
                'FaceColor',obj.FaceColor,...
                'Clipping','off',...
                'ButtonDownFcn',{@move,'down',obj},...
                'EraseMode','normal');
            % prevent auto resize
            set(obj.hGaugeAx,'XLimMode','manual');
            set(obj.hGaugeAx,'YLimMode','manual');
        
            if obj.showText
                draw_text(obj);
            end
            
            set_patch_position(obj);
            
        end % constructor
        function set.Color(obj,value)
            obj.Color = value;
            set(obj.Needle,'Color',obj.Color)
        end % set.Color
        function set.Enable(obj,value)
            obj.Enable = value;
            if strcmpi(obj.Enable,'on')
                set(obj.Needle,'Color',obj.Color);
                set(obj.hPatchMaxLimit,'Visible','on');
                set(obj.hPatchMinLimit,'Visible','on');
            else
                set(obj.Needle,'Color','default');
                set(obj.hPatchMaxLimit,'Visible','off');
                set(obj.hPatchMinLimit,'Visible','off');
            end
        end % set.Enable
        function set.MaxLimit(obj,value)
            obj.MaxLimit = value;
            set_patch_position(obj);
        end % set.MaxLimit
        function set.MinLimit(obj,value)
            obj.MinLimit = value;
            set_patch_position(obj);
        end % set.MinLimit
        function set.Value(obj,value)
            
            % enforce limits
            maxVal = 1;
            minVal = -1;
            normValue = max(min(value,maxVal),minVal);
            
            obj.Value = value;
            
            offset = pi/2; % needle is vertical at pi/2
            ang = obj.AngleRange * normValue + offset;
            
            if strcmpi(obj.Enable,'on')
                set(obj.Needle,'XData',[0 -obj.needleLength*cos(ang)]);
                set(obj.Needle,'YData',[0 obj.needleLength*sin(ang)]);
            else
                set(obj.Needle,'XData',[0 0]);
                set(obj.Needle,'YData',[0 obj.needleLength]);
            end
        end % set.Value
    end % methods
end % class

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
        Ax = obj.hGaugeAx;
        cp = get(Ax,'CurrentPoint');
        
        xyPosition = cp(1,1:2);
        ang = atan2(xyPosition(2),xyPosition(1));
        normVal = min(max(pi/2 - ang,0),obj.AngleRange)./obj.AngleRange;
        
        obj.MaxLimit = normVal;
        obj.MinLimit = -normVal;
        
        set_patch_position(obj)
        
        if ~isempty(obj.ButtonMotionFcn)
            obj.ButtonMotionFcn(obj,obj.Value);
        end
        
    case 'up'
        set(obj.hFigure,'WindowButtonUpFcn','');
        set(obj.hFigure,'WindowButtonDownFcn','');
        set(obj.hFigure,'WindowButtonMotionFcn','');
        
        if ~isempty(obj.ButtonUpFcn)
            obj.ButtonUpFcn(obj,obj.Value);
        end
end % action
end % move

function set_patch_position(obj)

radius = 1.95;

w = 0.25;
h = 0.5;
xData = [0 0 w w];
yData = [radius-h radius radius radius-(0.5*h)];

ang = (obj.MinLimit * obj.AngleRange);
R = [cos(ang) sin(ang); -sin(ang) cos(ang)];
rotatedDat = R*[-xData;yData];
set(obj.hPatchMinLimit,'XData',rotatedDat(1,:),'YData',rotatedDat(2,:));

ang = (obj.MaxLimit * obj.AngleRange);
R = [cos(ang) sin(ang); -sin(ang) cos(ang)];
rotatedDat = R*[xData;yData];
set(obj.hPatchMaxLimit,'XData',rotatedDat(1,:),'YData',rotatedDat(2,:));
end

function draw_text(obj)
bgColor = 'white';
fontSize = 10;
r = 0.6;
[x,y] = pol2cart(pi/2-obj.AngleRange,r);
text(x,y,'+',...
    'Parent',obj.hGaugeAx,...
    'FontSize',fontSize,...
    'HorizontalAlignment','center',...
    'BackgroundColor',bgColor);
[x,y] = pol2cart(pi/2,r);
text(x,y,'0',...
    'Parent',obj.hGaugeAx,...
    'FontSize',fontSize,...
    'HorizontalAlignment','center',...
    'BackgroundColor',bgColor);
[x,y] = pol2cart(pi/2+obj.AngleRange,r);
text(x,y,'-',...
    'Parent',obj.hGaugeAx,...
    'FontSize',fontSize,...
    'HorizontalAlignment','center',...
    'BackgroundColor',bgColor);

end