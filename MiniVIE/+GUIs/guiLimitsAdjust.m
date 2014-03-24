classdef guiLimitsAdjust < Common.MiniVieObj
    % Create GUI for adjusting joint limits and flip signs
    %
    %Usage:
    % import GUIs.*
    % obj = guiLimitsAdjust
    % obj.setupFigure();
    properties
        hg % handle graphics
        limitData;
        targetModel;
    end
    events
        ValueChange
    end
    methods
        function obj = guiLimitsAdjust
            % Creator
            defaultLimits = {
                'Shoulder Flexion/Extension', -45, 180, 0;
                'Shoulder Abduction/Adduction', -90, 20, 0;
                'Humeral Rotation', -40, 90, 0;
                'Elbow Flexion/Extension', 0, 150, 0;
                'Wrist Rotation', -90, 90, 0;
                'Wrist Radial/Ulnar Deviation', -15, 45, 0;
                'Wrist Flexion/Extension', -17, 17, 0;
                'Finger MCP Flexion/Extension (4x)', -45, 90, 0;
                'Finger PIP Flexion/Extension (4x)', 0, 100, 0;
                'Finger DIP Flexion/Extension (4x)', 0, 80, 0;
                'Index Finger Abduction/Adduction', -20, 0, 0;
                'Ring Finger Abduction/Adduction', 0, 20, 0;
                'Little Finger Abduction/Adduction', 0, 20, 0;
                'Thumb CMC Abduction/Adduction', 0, 120, 0;
                'Thumb CMC Flexion/Extension', 0, 60, 0;
                'Thumb MCP Flexion/Extension', 0, 60, 0;
                'Thumb IP Flexion/Extension', -15, 80, 0;
                };
            obj.limitData = defaultLimits;
            
        end
        function attachModel(obj,hModel)
            % attach something to update when the gui is tweaked
            
            obj.targetModel = hModel;
            addlistener(obj,'ValueChange',@(src,evt)updateModel);
            obj.limitData(1:7,2) = num2cell([obj.targetModel.structState(1:7).Min]*180/pi);
            obj.limitData(1:7,3) = num2cell([obj.targetModel.structState(1:7).Max]*180/pi);
            obj.limitData(1:7,4) = num2cell([obj.targetModel.structState(1:7).IsReversed]);
            return
            
            function updateModel
                %callback for model update
                % get the ranges from the GUI
                
                upperLim = cell2mat(obj.limitData(1:7,3));
                lowerLim = cell2mat(obj.limitData(1:7,2));
                isReversed = cell2mat(obj.limitData(1:7,4));
                
                % set the ranges in the arm state
                for i = 1:7
                    obj.targetModel.structState(i).Max = upperLim(i)*pi/180;
                    obj.targetModel.structState(i).Min = lowerLim(i)*pi/180;
                    obj.targetModel.structState(i).IsReversed = isReversed(i);
                end
            end
        end
        function close(obj)
            try
                delete(obj.hg.Figure)
            end
        end
        function setupFigure(obj)
            
            obj.hg.Figure = UiTools.create_figure('Adjust Limits');
            
            if isempty(obj.hg.Figure)
                error('Failed to create figure');
            else
                set(obj.hg.Figure,'Position',[1 1 1 1]);
            end
            
            
            set(obj.hg.Figure,'Position',pos('fig'),'CloseRequestFcn',@(src,evt)close(obj));
            
            numRows = size(obj.limitData,1);
            iRow = 1;
            % Name spans 4 (of 6) cells

            % label
            uicontrol(...
                'Parent',obj.hg.Figure,...
                'Style','text',...
                'Position',pos('cntrl',1,iRow,3,1),...
                'String','Joint Name',...
                'Visible','on',...
                'FontWeight','bold');
            % label
            uicontrol(...
                'Parent',obj.hg.Figure,...
                'Style','text',...
                'Position',pos('cntrl',4,iRow,1,1),...
                'String','Lower',...
                'Visible','on',...
                'FontWeight','bold');
            % label
            uicontrol(...
                'Parent',obj.hg.Figure,...
                'Style','text',...
                'Position',pos('cntrl',5,iRow,1,1),...
                'String','Upper',...
                'Visible','on',...
                'FontWeight','bold');
            % label
            uicontrol(...
                'Parent',obj.hg.Figure,...
                'Style','text',...
                'Position',pos('cntrl',6,iRow,1,1),...
                'String','Reverse',...
                'Visible','on',...
                'FontWeight','bold');
            for iRow = 1:numRows
                % Name spans 3 (of 6) cells
                obj.hg.LabelText(iRow) = uicontrol(...
                    'Parent',obj.hg.Figure,...
                    'Style','edit',...
                    'Position',pos('cntrl',1,iRow+1,3,1),...
                    'String',obj.limitData{iRow,1},...
                    'Callback',@(src,evt)adjustRange(obj),...
                    'Visible','on',...
                    'FontWeight','bold');
                % Lower lim in 4th column
                obj.hg.LowerLimit(iRow) = uicontrol(...
                    'Parent',obj.hg.Figure,...
                    'Style','edit',...
                    'Position',pos('cntrl',4,iRow+1,1,1),...
                    'String',num2str(obj.limitData{iRow,2}),...
                    'BackgroundColor','w',...
                    'Visible','on',...
                    'Callback',@(src,evt)adjustRange(obj),...
                    'FontWeight','bold');
                % Upper lim in 5th column
                obj.hg.UpperLimit(iRow) = uicontrol(...
                    'Parent',obj.hg.Figure,...
                    'Style','edit',...
                    'Position',pos('cntrl',5,iRow+1,1,1),...
                    'String',num2str(obj.limitData{iRow,3}),...
                    'BackgroundColor','w',...
                    'Visible','on',...
                    'Callback',@(src,evt)adjustRange(obj),...
                    'FontWeight','bold');
                obj.hg.Reverse(iRow) = uicontrol(...
                    'Parent',obj.hg.Figure,...
                    'Style','checkbox',...
                    'Position',pos('cntrl',6,iRow+1,1,1) + [40 0 0 0],...
                    'HorizontalAlignment','center',...
                    'String','',...
                    'Visible','on',...
                    'Value',obj.limitData{iRow,4},...
                    'Callback',@(src,evt)adjustOutputDirection(obj),...
                    'FontWeight','bold');
            end
        end
        function adjustRange(obj)
            % read input and verify
            
            cellLowerLim = get(obj.hg.LowerLimit,'String');
            lowerLim = cellfun(@str2double,cellLowerLim);
            
            if ~any(isnan(lowerLim))
                % restore previous
                obj.limitData(:,2) = num2cell(lowerLim);
            end
            set(obj.hg.LowerLimit,{'String'},obj.limitData(:,2));
            
            cellUpperLim = get(obj.hg.UpperLimit,'String');
            upperLim = cellfun(@str2double,cellUpperLim);
            
            if ~any(isnan(upperLim))
                % ok to overwrite
                obj.limitData(:,3) = num2cell(upperLim);
            end
            
            set(obj.hg.UpperLimit,{'String'},obj.limitData(:,3));
            
            % always restore labels
            set(obj.hg.LabelText,{'String'},obj.limitData(:,1));
            
            notify(obj,'ValueChange');
            
        end
        function adjustOutputDirection(obj)
            % Update list of joints to reverse and trigger value change
            % event
            obj.limitData(:,4) = get(obj.hg.Reverse,'Value');
            notify(obj,'ValueChange');
        end
    end
    methods (Static = true)
        function Test
            h = GUIs.guiLimitsAdjust();
            h.attachModel(Controls.ArmStateModel);
            h.setupFigure();
        end
    end
end

function p = pos( action, varargin )
% src: comp.soft-sys.matlab "Creating a GUI without using GUIDE"
% pos is called by the function VisualStuff. A construct
% like this makes it "easy" to adjust the sizes of the
% controls.
% In this subroutine I made a mess of [x,y]-coordinates
% and rows and columns. That hole I will fall into.

p = zeros( 1, 4 ) - 999;

nCol = 6;
nRow = 18;
CntrlHeight = 30;
CntrlWidth = 100;
CntrlGap = 0;
CntrlMarg = 6;

FigHeight = nRow * CntrlHeight ...
    + (nRow-1)*CntrlGap ...
    + 2*CntrlMarg ;

switch lower( action )
    case {'fig'},
        FigWidth = nCol * CntrlWidth ...
            + (nCol-1)*CntrlGap ...
            + 2*CntrlMarg ;
        p = [ 50, 150, FigWidth, FigHeight ];
        
    case {'cntrl'},
        if ( nargin == 5 ),
            [iC,iR,iW,iH] = deal( varargin{:} );
        else
            error( 'pos: Should not occur' ),
        end,
        
        p(1) = CntrlMarg + (iC-1)*(CntrlWidth+CntrlGap);
        p(2) = FigHeight - CntrlMarg ...
            - iR*CntrlHeight - (iR-1)*CntrlGap;
        p(3) = iW*CntrlWidth + (iW-1)*CntrlGap;
        p(4) = iH*CntrlHeight + (iH-1)*CntrlGap;
        
    otherwise
        error( 'pos: Should not occur' ),
end %switch
end %pos
%/ ---------------------
