classdef widgetMeter < hgsetget
    properties
        Parent;
        hAxes;
        hPatch;
        Value = 0; % normalized value [-1 1]
        Enable = 'on'; % changes line color to default if off
        Color = [0.8471    0.1608         0];
        Position = [20 20 50 300];
        Range = [0 1];
        Visible = 'on';
        UserData = [];
    end
    methods
        function obj = widgetMeter(varargin)
            if nargin > 0
                for i=1:2:nargin-1
                    set(obj, varargin{i}, varargin{i+1});
                end
            else
                obj.Parent = gcf;
            end
            
            obj.hAxes = axes('Parent',obj.Parent,...
                'XLim',[0 1],'XTick',[],...
                'XTickLabelMode','manual',...
                'YLim',obj.Range,...
                'YTickLabelMode','manual',...
                'YMinorTick','on',...
                'LineWidth',1,...
                'TickDir','out',...
                'TickLength',[.05 .1],...
                'Units','pixels',...
                'Position',obj.Position);
            
            obj.hPatch = patch(...
                'HandleVisibility', 'callback',...
                'Parent',           obj.hAxes,...
                'XData',            [0 0 1 1],...
                'YData',            [0 0 0 0],...
                'EraseMode',        'normal',...
                'FaceColor',        obj.Color);
        end % constructor
        
        function set.Color(obj,value)
            obj.Color = value;
            set(obj.hPatch,'FaceColor',value);
        end % set.Color
        function set.Enable(obj,value)
            obj.Enable = value;
            if strcmpi(value,'on')
                set(obj.hPatch,'Visible',obj.Visible);
                set(obj.hPatch,'FaceColor',obj.Color);
            else
                set(obj.hPatch,'Visible','off');
                % set(obj.hPatch,'FaceColor','default');
            end
        end % set.Enable
        function set.Range(obj,value)
            obj.Range = value;
            set(obj.hAxes,'YLim',value);
        end % set.Range
        function set.Position(obj,value)            
            obj.Position = value;
            set(obj.hAxes,'Position',obj.Position);
        end % set.Position
        function set.Value(obj,value)
            obj.Value = value;
            maxVal = 1;
            minVal = 0;
            normValue = max(min(value,maxVal),minVal);
            set(obj.hPatch,'YData',[0 normValue normValue 0]);
        end % set.Value
        function set.Visible(obj,value)
            obj.Visible = value;
            set(obj.hAxes,'Visible',obj.Visible);
            set(obj.hPatch,'Visible',obj.Visible);
        end
    end
end
