classdef guiChannelSelect < Common.MiniVieObj
    % GUI To get channels
    %
    % Creates a small GUI with buttons to enable or disable channels.
    % Channel value changes are braodcast using events
    %
    % 01-Sept-2010 Armiger: Created
    % 2015JUN29 Armiger: Updated to allow docking of the channel selection
    %   if a panel object is passed instead of a figure
    
    properties
        hFigure
        hParent
        
        numChannelsMax = 32;        % Max channels this gui can display
        numChannelsAvailable = 32;
        numChannelsPerRow = 8;
        
    end
    properties (Dependent = true, SetAccess = private)
        SelectedChannels;
    end
    properties (Access = private)
        defaultFilterSpec = '*.channels';
        handles
        
        ColorOrder;
    end
    properties (Constant = true)
        defaultFile = 'miniVieDefaultChannels.mat';
        lastFile = 'miniVieLastChannels.mat';
        defaultChannels = [];
    end
    events
        % Broadcast events when buttons are pressed
        ValueChange
    end
    methods
        function obj = guiChannelSelect(parent)
            % Creator.  Default is no arguments.  Parent should be a
            % uipanel object

            if nargin < 1
                parent = [];
            end

            obj.setupFigure(parent);
            selectedChannels = obj.getLastChannels;
            obj.setActiveChannels(selectedChannels);
            
        end
        function selectedChannels = get.SelectedChannels(obj)
            
            % return indices of selected channels
            C = get(obj.handles.pbChannels,'Value');
            
            isSelected = cell2mat(C);
            
            % RSA: Resolve issue here where selected channels may be saved
            % with more channels enabled than available for the given input
            % source
            
            %selectedChannels = find(maxChannels(1:obj.numChannelsMax));
            selectedChannels = find(isSelected(1:obj.numChannelsAvailable));
            
            % Ensure that the selected channels are row vectors so that they 
            % can be used as indexes in e.g. a for loop (for i = selectedChannels)
            selectedChannels = reshape(selectedChannels,1,[]);
        end
        function setActiveChannels(obj,activeChannelIds)
            % if any(activeChannelIds < 1) || any(activeChannelIds > obj.numChannelsAvailable)
            %     msg = sprintf('Cannot set channels outside available range of 0 to %d\n',obj.numChannelsAvailable);
            %     errordlg(msg);
            %     return
            % end

            validIds = activeChannelIds(activeChannelIds <= obj.numChannelsMax);
            set(obj.handles.pbChannels,'Value',0);
            set(obj.handles.pbChannels(validIds),'Value',1);
            
            for i = 1:length(obj.handles.pbChannels)
                obj.setChannelState(i,get(obj.handles.pbChannels(i),'Value'));
            end
            
        end
        function setAvailableChannels(obj,numAvailable)
            if (numAvailable < 1) || (numAvailable > obj.numChannelsMax)
                msg = sprintf('Available Channels must be greater than 0 and less than %d\n',obj.numChannelsMax);
                errordlg(msg);
                return
            end
            
            obj.numChannelsAvailable = numAvailable;
            
            set(obj.handles.pbChannels,'Visible','off');
            set(obj.handles.pbChannels(1:numAvailable),'Visible','on');
            
        end
        function setChannelState(obj,iChannel,state)
            
            if get(obj.handles.pbChannels(iChannel),'Value') ~= state
                set(obj.handles.pbChannels(iChannel),'Value',state);
            end

            if get(obj.handles.pbChannels(iChannel),'Value')
                set(obj.handles.pbChannels(iChannel),'ForegroundColor','w');
                set(obj.handles.pbChannels(iChannel),'BackgroundColor',obj.ColorOrder(iChannel,:));
            else
                figureColor = get(0,'defaultUicontrolBackgroundColor');
                set(obj.handles.pbChannels(iChannel),'ForegroundColor','k');
                set(obj.handles.pbChannels(iChannel),'BackgroundColor',figureColor);
            end
            
            notify(obj,'ValueChange');
            
        end
        function close(obj)
            obj.setLastChannels(obj.SelectedChannels)
            try
                delete(obj.hFigure)
            end
        end
        function openFile(obj,fullFile)
            
            if nargin < 2
                [FileName,PathName,FilterIndex] = uigetfile(obj.defaultFilterSpec);
                
                if FilterIndex == 0
                    % User Cancelled
                    return
                else
                    fullFile = fullfile(PathName,FileName);
                end
            end
            
            
            % Load a mat file in the temp directory
            if ~exist(fullFile,'file')
                msg = {'File not found:', fullFile};
                errordlg(msg);
                return
            end
            
            try
                S = load(fullFile,'-mat');
            catch ME
                msg = { 'Error reading file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg);
            end
            
            if isfield(S,'selectedChannels')
                setActiveChannels(obj,S.selectedChannels);
            end
        end
        function saveasFile(obj)
            % Create a mat file
            
            [FileName,PathName,FilterIndex] = uiputfile(obj.defaultFilterSpec);
            
            if FilterIndex == 0
                % User Cancelled
                return
            else
                fullFile = fullfile(PathName,FileName);
            end
            
            selectedChannels = obj.SelectedChannels; %#ok<NASGU>
            
            save(fullFile,'selectedChannels','-mat');
            
        end
        function setupFigure(obj,parent)
            
            if isempty(parent)
                obj.hFigure = UiTools.create_figure('Select Channels');
                % set(obj.hFigure,'CloseRequestFcn',@(src,evt)obj.close);
                
                if isempty(obj.hFigure)
                    error('Failed to create figure');
                else
                    set(obj.hFigure,'Position',[1 1 1 1]);
                end
                set(obj.hFigure,'Position',[200 500 200 70],'CloseRequestFcn',@(src,evt)close(obj));
                set(obj.hFigure,'Position',pos('fig'));
                parent = obj.hFigure;
            end
            
            obj.hParent = parent;
            
            fig = parent;
            % if the object is a figure or figure descendent, return the
            % figure. Otherwise return [].
            while ~isempty(fig) && ~strcmp('figure', get(fig,'type'))
                fig = get(fig,'parent');
            end
            
            obj.hFigure = fig;
            
            
            %a = axes('Visible','off','Parent',obj.hFigure);
            %colorOrder = get(a, 'ColorOrder');
            %obj.ColorOrder = repmat(colorOrder,[obj.numChannelsMax 1]);
            obj.ColorOrder = [distinguishable_colors(16); distinguishable_colors(16)];
            
            
            obj.handles.menuFile = uimenu(obj.hFigure, 'Label','&File');
            
            obj.handles.menuFileDefault = uimenu(...
                'Label','&Open...',...
                'Callback',@(src,evt)openFile(obj),...
                'Parent',obj.handles.menuFile);
            obj.handles.menuFileDefault = uimenu(...
                'Label','Save &As...',...
                'Callback',@(src,evt)saveasFile(obj),...
                'Parent',obj.handles.menuFile);
            obj.handles.menuFileDefault = uimenu(...
                'Label','Set &Defaults',...
                'Callback',@(src,evt)obj.setDefaultChannels(obj.SelectedChannels),...
                'Parent',obj.handles.menuFile);
            obj.handles.menuFileDefault = uimenu(...
                'Label','E&xit',...
                'Callback',@(src,evt)close(obj),...
                'Parent',obj.handles.menuFile);
            
            % layout channel buttons in rows of 8
            numColumns = obj.numChannelsPerRow;
            
            
            
            for iChannel = 1:obj.numChannelsMax
                iColumn = mod(iChannel-1,numColumns)+1;
                
                iRow = ceil(iChannel / numColumns);
                
                obj.handles.pbChannels(iChannel) = uicontrol(...
                    'Parent',obj.hParent,...
                    'Style','togglebutton',...
                    'Position',pos('cntrl',iColumn,iRow,1,1),...
                    'String',num2str(iChannel),...
                    'Visible','off',...
                    'Callback',@(src,evt)setChannelState(obj,iChannel,get(src,'Value')),...
                    'FontWeight','bold');
            end
            
            % setAvailableChannels(obj,obj.numChannelsAvailable);
            
        end
    end
    methods (Static = true)
        function setDefaultChannels(selectedChannels)
            % Create a mat file in the temp directory
            fullFile = fullfile(tempdir,GUIs.guiChannelSelect.defaultFile);
            GUIs.guiChannelSelect.setChannels(fullFile,selectedChannels);
        end
        function setLastChannels(selectedChannels)
            % Create a mat file in the temp directory
            fullFile = fullfile(tempdir,GUIs.guiChannelSelect.lastFile);
            GUIs.guiChannelSelect.setChannels(fullFile,selectedChannels);
        end
        function setChannels(fullFile,selectedChannels)
            % Create a mat file in the temp directory
            
            %if isempty(selectedChannels) || any(selectedChannels < 1)
            if any(selectedChannels < 1)
                error('Expected an array of selected channels');
            end
            
            try
                save(fullFile,'selectedChannels','-mat');
            catch ME
                msg = { 'Error creating default file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg,'Error setting defaults')
                return
            end
        end
        function selectedChannels = getDefaultChannels()
            fullFile = fullfile(tempdir,GUIs.guiChannelSelect.defaultFile);            selectedChannels = GUIs.guiChannelSelect.getChannels(fullFile,GUIs.guiChannelSelect.defaultChannels);
        end
        function selectedChannels = getLastChannels()
            fullFile = fullfile(tempdir,GUIs.guiChannelSelect.lastFile);
            selectedChannels = GUIs.guiChannelSelect.getChannels(fullFile,GUIs.guiChannelSelect.defaultChannels);
        end
        function selectedChannels = getChannels(fullFile,defaultOutput)
            % Load a mat file in the temp directory
            
            % Initialize output
            selectedChannels = defaultOutput;
            
            if ~exist(fullFile,'file')
                return
            end
            
            try
                S = load(fullFile);
            catch ME
                msg = { 'Error reading default file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg,'Error setting defaults');
                rethrow(ME);
            end
            
            if isfield(S,'selectedChannels')
                selectedChannels = S.selectedChannels;
            else
                selectedChannels = [];
            end
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

nCol = 8;
nRow = 5;
CntrlHeight = 20;
CntrlWidth = CntrlHeight;
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
        p = [ 400, 200, FigWidth, FigHeight ];
        
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
