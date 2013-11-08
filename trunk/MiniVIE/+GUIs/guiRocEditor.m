classdef guiRocEditor < handle
    % GUI manually setting joint angles via sliders for Roc Tables
    %
    % This allows you to load, edit, save, and visualize changes in 
    % real-time with vulcanX for the vMPL or MPL.  
    % TODO: Still have a lot of features to add like copy paste insert 
    % remove, etc but for minor tweaks due to sensor drift this should work.
    % 
    % Usage:
    % 
    % %setup
    % MiniVIE.configurePath
    % import GUIs.*
    % 
    % %run
    % guiRocEditor
    % 
    %
    % 07NOV2013 Armiger: Created
    properties
        hSink;
        hMud = MPL.MudCommandEncoder;

        structRoc;
        % All Ids are 1 based since this is matlab
        CurrentRocId = 1;
        CurrentWaypointId = 1;
        
    end
    properties  (SetObservable)
        jointAngles = zeros(1,27);
    end
    properties (Access = 'protected')
        hParent;
        hAxes;

        % roc related gui handles
        hJointSliders;
        hRocSpinBox;
        hRocWaypoints;
        hRocDescription;        
        jSpinnerModel;
        
    end
    methods
        function obj = guiRocEditor
            obj.createFigure();
            
            obj.structRoc = MPL.RocTable.createRocTables();
            %% Quick test of vMPL / MPL control via VulcanX
            %  Create the udp transmission via pnet
            UdpLocalPort = 56789;
            UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
            UdpAddress = '127.0.0.1'; % '192.168.1.101';
            % PnetClass(localPort,remotePort,remoteIP)
            obj.hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
            obj.hSink.initialize()
            
            %%
            obj.updateFigure();
        end
        function createFigure(obj,hParent,nSliders)
            if nargin < 2
                hParent = default_figure;
            end
            if nargin < 3
                nSliders = 27;
            end
            
            obj.hParent = hParent;
            
            nSlidersPerRow = 9;
            parentPos = get(obj.hParent,'Position');
            xPos = linspace(20,parentPos(3)-50,nSlidersPerRow);
            axesWidth = 40;
            axesHeight = 150;
            
            axesRange = repmat([-pi pi],nSliders,1);
            sliderRange = axesRange;
            
            sliderTitle = [fieldnames(mpl_upper_arm_enum); fieldnames(mpl_hand_enum)];
            hAx = zeros(nSliders,1);

            patchWidth = (axesRange(:,2) - axesRange(:,1))/15;
            
            
            for i = 1:nSliders
                iRow = floor((i-1)/nSlidersPerRow);
                iCol = rem(i-1,nSlidersPerRow);
                hAx(i) = axes(...
                    'Parent',hParent,...
                    'XLim',[0 1],'XTick',[],...
                    'XTickLabelMode','manual',...
                    'YTickLabelMode','manual',...
                    'YMinorTick','on',...
                    'LineWidth',1,...
                    'TickDir','out',...
                    'TickLength',[.05 .1],...
                    'Units','Pixels',...
                    'Position',[xPos(iCol+1) 180*iRow+20 axesWidth axesHeight]);
                
                % title(hAx(i),sliderTitle{i},'Interpreter','None');
                obj.hJointSliders{i} = GUIs.widgetSlider(...
                    'Parent',hAx(i),...
                    'Type',{'Vertical'},...
                    'PatchWidth',patchWidth(i),...
                    'ButtonMotionFcn',@(src,evnt) set_position(src,evnt,obj,i),...
                    'Range',sliderRange(i,:));
                set(hAx(i),'YTick',[axesRange(i,1) 0 axesRange(i,2)]);
                set(hAx(i),'YLim',axesRange(i,:))
                t(i) = text('Parent',hAx(i),...
                    'Position',[0.5 0],...
                    'String',sliderTitle{i},...
                    'Rotation',90,...
                    'FontWeight','Bold',...
                    'Interpreter','None',...
                    'HorizontalAlignment','center');
            end
            
            obj.hAxes = hAx;
            
            % Add menus
            set(hParent,'Menubar','None');
            menuFile = uimenu(hParent,'Label','&File');
            menuFileOpen = uimenu(menuFile,'Label','Open...','Callback',@(src,evt)uiOpen(obj));
            menuFileSave = uimenu(menuFile,'Label','Save As...','Callback',@(src,evt)uiSaveAs(obj));
            
            
            % Add a Spinner
            numRocs = 1;  % needs to be updated when new roc added
            % ref: http://undocumentedmatlab.com/blog/using-spinners-in-matlab-gui/
            obj.jSpinnerModel = javax.swing.SpinnerNumberModel(0,0,numRocs,1);
            jSpinner = javax.swing.JSpinner(obj.jSpinnerModel);
            jhSpinner = javacomponent(jSpinner, [10,600,40,20], hParent);
            jhSpinner.StateChangedCallback = @(src,evt)cbSpinner(src);
            
            % Roc ID
            uicontrol(hParent,'Style','text','Position',[10 620, 60, 20],...
                'String','RocID:','HorizontalAlignment','Left');
            
            % Roc ID
            uicontrol(hParent,'Style','text','Position',[100 620, 80, 20],...
                'String','RocWaypoint:','HorizontalAlignment','Left');
            
            % Roc States Listbox
            obj.hRocWaypoints = uicontrol(hParent,'Style','listbox','Position',[100 540, 120, 80],...
                'String',{'0.0' '0.5' '1.0'},'Callback',@(src,evt)cbListBox(src));
            
            function cbSpinner(src)
                obj.CurrentRocId = src.Value+1;
                obj.CurrentWaypointId = 1;
                obj.updateFigure();
            end
            function cbListBox(src)
                obj.CurrentWaypointId = get(src,'Value');
                obj.updateFigure();
            end
        end
        function ang = getdata(obj)
            ang = obj.jointAngles;
        end
        function updateFigure(obj)
            rocId = obj.CurrentRocId;
            waypointId = obj.CurrentWaypointId;
            
            roc = obj.structRoc(rocId);
            % set sliders
            for i = 1:length(roc.joints)
                iJoint = roc.joints(i);
                newAngle = roc.angles(waypointId,i);
                set(obj.hJointSliders{iJoint},'Value',newAngle);
                obj.jointAngles(iJoint) = newAngle;
            end
            
            % set list box
            set(obj.hRocWaypoints,...
                'String',cellfun(@num2str,num2cell(roc.waypoint),'UniformOutput',false),...
                'Value',waypointId);
            % set spinner
            set(obj.jSpinnerModel,'Maximum',length(obj.structRoc)-1); %zero based
            
            transmit(obj);
            
        end
        
        function uiOpen(obj)
            [fileName, pathName, filterIndex] = uigetfile('*.xml');
            if filterIndex == 0
                %User Cancelled
                return
            end
            
            xmlFileName = fullfile(pathName,fileName);
            
            obj.structRoc = MPL.RocTable.readRocTable(xmlFileName);
            obj.updateFigure();
        end
        function uiSaveAs(obj)
            
            [fileName, pathName, filterIndex] = uiputfile('*.xml');
            if filterIndex == 0
                %User Cancelled
                return
            end
            
            xmlFileName = fullfile(pathName,fileName);
            
            MPL.RocTable.writeRocTable(xmlFileName,obj.structRoc);
        end
        
        function set.jointAngles(obj,value)
            obj.jointAngles = value;

            % slow down the transmit rate when moving sliders
            if delay_send(30)
                return
            else
                transmit(obj);
            end
        end
        function transmit(obj)
            fprintf('Joint Command:');
            fprintf(' %6.3f',obj.jointAngles);
            fprintf('\n');
            
            upperArmAngles = obj.jointAngles(1:7);
            handAngles = obj.jointAngles(8:27);
            msg = obj.hMud.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
            obj.hSink.putData(msg);
        end
        function close(obj)
            close(obj.hAxes);
            obj.hAxes = [];
        end
    end
    methods (Static = true)
        function mask = getmask()
            
            nActionBusAngles = length(action_bus_definition);
            mask = ones(1,nActionBusAngles);
        end
        
    end
end

%Callbacks
function set_position(src,evnt,obj,i) %#ok<INUSL>
newAngle = get(src,'Value');

% Update joint angles for transmission
obj.jointAngles(i) = newAngle;

% update the internal roc table in memory
rocId = obj.CurrentRocId;
waypointId = obj.CurrentWaypointId;

id = find(i == obj.structRoc(rocId).joints);
if ~isempty(id)
    obj.structRoc(rocId).angles(waypointId,id) = newAngle;
    %disp(obj.structRoc(rocId).angles)
else
    %disp('No Roc Entry to Update')
end

end

% Helper
function isDelayed = delay_send(Hz)
persistent tLastSent

if isempty(tLastSent)
    tLastSent = clock;
    isDelayed = 0;
    return
end

if etime(clock,tLastSent) < 1/Hz
    isDelayed = 1;
else
    tLastSent = clock;
    isDelayed = 0;
end

end

function hFig = default_figure()
hFig = figure(...
    'Color',get(0,'defaultUicontrolBackgroundColor'),...
    'Units','pixels',...
    'Position',[100 320 800 650],...
    'Name',mfilename,...
    'NumberTitle','off',...
    'HandleVisibility','Callback',...
    'IntegerHandle','off',...
    'RendererMode','manual',...
    'Renderer','OpenGl',...'zbuffer',...
    'Visible','on'...
    );
end
