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
        hSink;                          % handle to the data output sink (udp)
        hMud = MPL.MudCommandEncoder;   % handle for the message encoder

        structRoc;                      % structure for storing the current roc table
        
        % All Ids are 1 based since this is matlab
        CurrentRocId = 1;
        CurrentWaypointId = 1;
        
        IsNfu;
        
        Verbose = 0;
    end
    properties  (SetObservable)
        jointAngles = zeros(1,27);
    end
    properties (Access = 'protected')
        hParent;        % Figure
        hAxes;          % Array of axes for sliders

        % roc related gui handles
        hJointSliders;
        hRocSpinBox;
        hRocWaypoints;
        hRocDescription;        
        jSpinnerModel;
        
    end
    methods
        function obj = guiRocEditor(rocFilename,isNfu)
            % obj = guiRocEditor(rocFilename,isNfu)
            % 
            % Creator Function takes an optional argument for whether there
            % is an NFU present.  Messaging varies depending on VulcanX or
            % NFU.  Use true or false to select approprate mode
            
            if nargin < 1
                rocFilename = [];
            end
            
            if nargin < 2
                % Prompt for VulcanX or NFU.  Note cancelling falls to
                % VulcanX mode
                q = questdlg('Select MPL Interface','MPL Interface','NFU','VulcanX','VulcanX');
                if strcmp(q,'NFU')
                    obj.IsNfu = true;
                else
                    obj.IsNfu = false;
                end
            else
                % user provided mode
                obj.IsNfu = isNfu;
            end
            
            obj.createFigure();
            if isempty(rocFilename)
                obj.structRoc = MPL.RocTable.createRocTables();
            else
                obj.structRoc = MPL.RocTable.readRocTable(rocFilename);
            end
            
            % Set the data sink for the appropriate device
            if obj.IsNfu
                obj.hSink = MPL.NfuUdp.getInstance;
            else
                %  Create the udp transmission via pnet
                UdpLocalPort = 56789;
                UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
                UdpAddress = '127.0.0.1'; % '192.168.1.101';
                % PnetClass(localPort,remotePort,remoteIP)
                obj.hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
            end
            
            obj.hSink.initialize()
            
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
            
            % take the total number of sliders and divide by the number
            % of siders per row.  the remainder gives the column
            % position and the quotient gives the row number
            numRows = floor(nSliders/nSlidersPerRow);
            numCols = rem(nSliders,nSlidersPerRow); %#ok<NASGU>
            
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
                    'Position',[xPos(iCol+1) 180*(numRows-iRow-1)+20 axesWidth axesHeight]); %#ok<LAXES>
                
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
            
            % Roc ID Label
            uicontrol(hParent,'Style','text','Position',[10 620, 60, 20],...
                'String','RocID:','HorizontalAlignment','Left');
            
            % Roc Waypoint Label
            uicontrol(hParent,'Style','text','Position',[100 620, 80, 20],...
                'String','RocWaypoint:','HorizontalAlignment','Left');

            % Test Button
            uicontrol(hParent,'Style','pushbutton','Position',[10 570, 80, 20],...
                'String','Test Close','HorizontalAlignment','Left','Callback',@(src,evt)cbTestClose);
            uicontrol(hParent,'Style','pushbutton','Position',[10 550, 80, 20],...
                'String','Test Open','HorizontalAlignment','Left','Callback',@(src,evt)cbTestOpen);
            
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
            
            function cbTestCloseOpen()
                
                cbTestClose;
                pause(0.2)
                cbTestOpen;
                
            end
            function cbTestOpen()
                
                idx = obj.CurrentRocId;
                thisRoc = obj.structRoc(idx);
                RocId = thisRoc.id;
                RocName = thisRoc.name;
                
                numOpenSteps = 30;
                
                graspVal = linspace(1,0,numOpenSteps);
                for iVal = 1:length(graspVal)
                    fprintf('Entry #%d, RocId=%d, %14s %6.2f Pct\n',...
                        idx,RocId,RocName,graspVal(iVal)*100);
                    
                    upperJointAngles = zeros(1,7);
                    handPos = interp1(thisRoc.waypoint,thisRoc.angles,graspVal(iVal));
                    obj.jointAngles = [upperJointAngles handPos];
                    obj.transmit();

                    pause(0.02);
                end
                
            end
            function cbTestClose()
                
                idx = obj.CurrentRocId;
                thisRoc = obj.structRoc(idx);
                RocId = thisRoc.id;
                RocName = thisRoc.name;
                
                numCloseSteps = 30;
                
                graspVal = linspace(0,1,numCloseSteps);
                for iVal = 1:length(graspVal)
                    fprintf('Entry #%d, RocId=%d, %14s %6.2f Pct\n',...
                        idx,RocId,RocName,graspVal(iVal)*100);
                    
                    upperJointAngles = zeros(1,7);
                    handPos = interp1(thisRoc.waypoint,thisRoc.angles,graspVal(iVal));
                    obj.jointAngles = [upperJointAngles handPos];
                    obj.transmit();

                    pause(0.02);
                end
                
            end
            
        end
        function ang = getdata(obj)
            ang = obj.jointAngles;
        end
        function updateFigure(obj)
            rocId = obj.CurrentRocId;
            waypointId = obj.CurrentWaypointId;
            
            roc = obj.structRoc(rocId);
            
            % set list box
            set(obj.hRocWaypoints,...
                'String',cellfun(@num2str,num2cell(roc.waypoint),'UniformOutput',false),...
                'Value',waypointId);
            % set spinner
            set(obj.jSpinnerModel,'Maximum',length(obj.structRoc)-1); %zero based
            
            % set sliders
            currentAngles = obj.jointAngles;
            finalAngles = currentAngles;
            for i = 1:length(roc.joints)
                iJoint = roc.joints(i);
                newAngle = roc.angles(waypointId,i);
                set(obj.hJointSliders{iJoint},'Value',newAngle);
                finalAngles(iJoint) = newAngle;
            end
            
            % interpolate
            maxDiff = max(abs(finalAngles - currentAngles));
            
            numSteps = floor(maxDiff / 0.05);
            
            for i = 1:numSteps
                interpAngles = interp1([0 1],[currentAngles; finalAngles],i/numSteps);
                obj.jointAngles = interpAngles;
                transmit(obj);
                pause(0.02);
            end
            
            % resend final values
            obj.jointAngles = finalAngles;
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
            if obj.Verbose
                fprintf('Joint Command:');
                fprintf(' %6.3f',obj.jointAngles);
                fprintf('\n');
            end
            
            upperArmAngles = obj.jointAngles(1:7);
            handAngles = obj.jointAngles(8:27);
            if obj.IsNfu
                % NFU
                obj.hSink.sendAllJoints(obj.jointAngles);
            else
                % Vulcan X
                msg = obj.hMud.AllJointsPosVelCmd(upperArmAngles,zeros(1,7),handAngles,zeros(1,20));
                obj.hSink.putData(msg);
            end
            
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

hFig = UiTools.create_figure('JHU/APL: Reduced Order Control (ROC) Editor','guiRocEditor');

% return monitor positions, secondary monitors are in each row
mp = get(0, 'MonitorPositions');

topLeft = [mp(1,1) mp(1,4)-mp(1,2)];
windowSize = [800 650];

set(hFig,...
    'Units','pixels',...
    'Position',[topLeft(1)+10 topLeft(2)-windowSize(2)-50 windowSize]);
end
