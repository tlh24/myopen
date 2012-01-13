classdef widgetChannelSelect < hgsetget
% Class generates a popup menu populated with
% the currently available input channels.

%     properties (SetObservable = true)
%         Value = 1;
%     end

    
    properties
        Enable = 'on'; % changes line color to default if off
        Visible = 'on';
    end
    
    properties (SetAccess = protected)
        % Actual selected index of inputChannels entry in the database.
        chanIndex = 1;
        
        panel
        dropDownMenu
    end
    
    methods
        function obj = widgetChannelSelect(parent, varargin)
            if nargin < 1
                parent = gcf;
            end
            
            obj.panel = uipanel('Parent', parent, ...
                'BorderType', 'none', 'Units', 'pixels');
            
            % Set properties.
            if nargin > 2
                for i=1:2:nargin-1
                    set(obj.panel, varargin{i}, varargin{i+1});
                end
            end            
            
            obj.dropDownMenu = uicontrol(obj.panel, 'Style', 'popupmenu', ...
                'String', widgetChannelSelect.get_channels(), ...
                'Units', 'normalized', 'Position', [0 0 1 1], ...
                'Callback', @(src, evt)on_value_changed(obj, src, evt) );
            
%             addlistener(obj.dropDownMenu, 'Value', 'PostSet', ...
%                 @(src, evt)on_value_changed(obj, src, evt));

        end
        
        function set.Enable(obj, value)
            set(obj.dropDownMenu, 'Enable', value);
        end
        function set.Visible(obj, value)
            set(obj.dropDownMenu, 'Visible', value);
        end
    end
    
    methods (Access = protected)
        function on_value_changed(obj, src, evt)
            ch = vieDb.db.get_value('inputChannels');
            val = get(obj.dropDownMenu, 'Value');
            ind = find([ch.enabled], val);
            obj.chanIndex = ch(ind(val) ).index;
        end
    end
        
    methods (Static) % Access = protected, 
        % adjustSignalConditioning now also calling this.  Probably should
        % move this method some where else in future.
        function channels = get_channels()
            ch = vieDb.db.get_value('inputChannels');
            totalChannels = vieConstants.NUM_NULL_CHANNELS + ...
                vieConstants.NUM_ANALOG_CHANNELS + ...
                vieConstants.NUM_DIGITAL_CHANNELS + ...
                vieConstants.NUM_VIRTUAL_CHANNELS;
   
            numActive = 0;
            for i = 1:totalChannels
                if ch(i).enabled
                    numActive = numActive + 1;
                end
            end
            
            channels = cell(1, numActive);
            
            for i = 1:totalChannels
                if ch(i).enabled
                    if ~isempty(ch(i).friendlyName)
                        channels{i} = ch(i).friendlyName;
                    else
                        channels{i} = ch(i).id;
                    end
                end
            end  
        end
    end
end