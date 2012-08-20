classdef guiClassifierChannels < Common.MiniVieObj
    % GUI To get pattern recognition channels
    % TODO: Make blocking?
    %
    % 01-Sept-2010 Armiger: Created
    properties
        hFigure
        
        ClassNames;
        DefaultClassNames = GUIs.guiClassifierChannels.getDefaultNames;
    end
    properties (Dependent = true, SetAccess = private)
        NumClasses;
    end
    properties (Access = private)
        handles
    end
    properties (Constant = true)
        defaultFile = 'miniVieDefaultClasses.mat';
        defaultSelectedClasses = {'No Movement'};  % Will load if use has not preference files
    end
    methods
        function obj = guiClassifierChannels(classNames)
            
            if (nargin > 0) 
                if isempty(classNames) || ~iscell(classNames)
                    error('Expected a cell array of input strings');
                end
                obj.ClassNames = classNames;
            else
                obj.ClassNames = obj.getSavedDefaults();
            end
            obj.setupFigure();
            updateSelected(obj);
        end
        
        function close(obj)
            % TODO: Add check for Hand Open if Grasp selected
            try
                obj.setSavedDefaults(obj.ClassNames);
                delete(obj.hFigure)
            end
            
        end
        function numClasses = get.NumClasses(obj)
            numClasses = length(obj.ClassNames);
        end
        function openFile(obj,fullFile)
            
            if nargin < 2
                [FileName,PathName,FilterIndex] = uigetfile('*.classNames');
                
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
            
            if isfield(S,'classNames')
                obj.ClassNames = S.classNames;
                updateSelected(obj);
                set(obj.handles.hListboxSelected,'Value',1);
            end
        end
        
        function saveasFile(obj)
            % Create a mat file 
            
            [FileName,PathName,FilterIndex] = uiputfile('*.classNames');
            
            if FilterIndex == 0
                % User Cancelled
                return
            else
                fullFile = fullfile(PathName,FileName);
            end            
            
            classNames = obj.ClassNames; %#ok<NASGU>
            
            save(fullFile,'classNames','-mat');

        end
        
        function setupFigure(obj)
            %%
            obj.hFigure = UiTools.create_figure('Class Names','guiClassifierChannels');
            % set(obj.hFigure,'CloseRequestFcn',@(src,evt)obj.close);

            % Widen Figure
            pos = get(obj.hFigure,'Position');
            pos(3) = 700;
            set(obj.hFigure,'Position',pos);
            
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
                'Callback',@(src,evt)obj.setSavedDefaults(obj.ClassNames),...
                'Parent',obj.handles.menuFile);
            obj.handles.menuFileDefault = uimenu(...
                'Label','E&xit',...
                'Callback',@(src,evt)close(obj),...
                'Parent',obj.handles.menuFile);
            
            uicontrol(obj.hFigure,'Style','text','String','Selected Classes:',...
                'Position',[50 300 100 30],'HorizontalAlignment','Left');
            obj.handles.hListboxSelected = uicontrol(obj.hFigure,'Style','listbox','String',obj.ClassNames,...
                'Position',[50 100 200 200],'Max',0);
            
            uicontrol(obj.hFigure,'Style','text','String','All Classes:',...
                'Position',[350 300 100 30],'HorizontalAlignment','Left');
            obj.handles.hListboxAvailable = uicontrol(obj.hFigure,'Style','listbox','String',obj.DefaultClassNames,...
                'Position',[350 100 200 200],'Max',2);

            uicontrol(obj.hFigure,'Style','pushbutton','String','Clear All',...
                'Position',[50 70 90 25],'Callback',@(src,evt)cbClearAll(obj));
            
            uicontrol(obj.hFigure,'Style','pushbutton','String','Up',...
                'Position',[160 70 40 25],'Callback',@(src,evt)cbMoveUp(obj));

            uicontrol(obj.hFigure,'Style','pushbutton','String','Down',...
                'Position',[200 70 40 25],'Callback',@(src,evt)cbMoveDown(obj));
            
            uicontrol(obj.hFigure,'Style','pushbutton','String','< Add',...
                'Position',[270 200 60 30],'Callback',@(src,evt)cbAddClasses(obj));

            uicontrol(obj.hFigure,'Style','pushbutton','String','Remove >',...
                'Position',[270 160 60 30],'Callback',@(src,evt)cbRemoveClasses(obj));
            
        end
        function cbMoveDown(obj)
            % Move selected class down one level
            vals = get(obj.handles.hListboxSelected,'Value');
            
            if vals == length(obj.ClassNames)
                return
            end
            
            src = obj.ClassNames{vals};
            dest = obj.ClassNames{vals+1};
            
            obj.ClassNames{vals} = dest;
            obj.ClassNames{vals+1} = src;
            
            set(obj.handles.hListboxSelected,'Value',vals + 1);
            
            obj.updateSelected();
            
        end
        function cbMoveUp(obj)
            % Move Selected Class up one level
            vals = get(obj.handles.hListboxSelected,'Value');
            
            if vals == 1
                return
            end
            
            src = obj.ClassNames{vals};
            dest = obj.ClassNames{vals-1};
            
            obj.ClassNames{vals} = dest;
            obj.ClassNames{vals-1} = src;
            
            set(obj.handles.hListboxSelected,'Value',vals -1);
            
            obj.updateSelected();
            
        end
        function cbClearAll(obj)
            
            reply = questdlg('Are you sure you want to clear the class list?','Confirm Clear','OK','Cancel','Cancel');
            
            if ~strcmpi(reply,'OK')
                return
            end
            
            obj.ClassNames = {};
            obj.updateSelected();
            set(obj.handles.hListboxSelected,'Value',1);
            
        end
        function cbAddClasses(obj)
            cellStrings = get(obj.handles.hListboxAvailable,'String');
            vals = get(obj.handles.hListboxAvailable,'Value');
            currentList = get(obj.handles.hListboxSelected,'String');
            
            newList = cat(1,currentList,cellStrings(vals));
            
            uniqueList = unique(newList);
            if isequal(length(uniqueList),length(newList))
                obj.ClassNames = newList;
            else
                obj.ClassNames = uniqueList;
            end
            
            obj.updateSelected();
            
        end
        function cbRemoveClasses(obj)
            % Eliminate class from selected classes

            selectedList = get(obj.handles.hListboxSelected,'String');
            vals = get(obj.handles.hListboxSelected,'Value');
            
            set(obj.handles.hListboxSelected,'Value',1);
            selectedList(vals) = [];
            
            obj.ClassNames = selectedList;
            
            obj.updateSelected();
            
        end
        
        function updateSelected(obj)
            set(obj.handles.hListboxSelected,'String',obj.ClassNames);
        end
    end
    methods (Static = true)
        function setSavedDefaults(classNames)
            % Create a mat file in the temp directory
            %
            % see also UiTools
            
            if isempty(classNames)
                fprintf('[%s] Not saving empty class name list\n',mfilename);
                return
            end
            
            if isempty(classNames) || ~iscell(classNames) || ~all(cellfun(@isstr,classNames))
                error('Expected a cell array of strings');
            end
            
            fullFile = fullfile(tempdir,GUIs.guiClassifierChannels.defaultFile);
            
            try
                save(fullFile,'classNames','-mat');
            catch ME
                msg = { 'Error creating default file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg,'Error setting defaults')
                return
            end
            
        end
        
        function classNames = getSavedDefaults()
            % Load a mat file in the temp directory
            
            classNames = GUIs.guiClassifierChannels.defaultSelectedClasses;
            
            fullFile = fullfile(tempdir,GUIs.guiClassifierChannels.defaultFile);
            if ~exist(fullFile,'file')
                return
            end
            
            try
                S = load(fullFile);
            catch ME
                msg = { 'Error reading default file', fullFile , ...
                    'Error was: ' ME.message};
                errordlg(msg,'Error setting defaults');
                return
            end
            
            if isfield(S,'classNames')
                classNames = S.classNames;
            end
            
        end
        
        function classNames = getDefaultNames
            classNames{01}  = 'Shoulder Flexion';
            classNames{02}  = 'Shoulder Extension';
            classNames{03}  = 'Shoulder Abduction';
            classNames{04}  = 'Shoulder Adduction';
            classNames{05}  = 'Humeral External Rotation';
            classNames{06}  = 'Humeral Internal Rotation';
            classNames{07}  = 'Elbow Flexion';
            classNames{08}  = 'Elbow Extension';
            classNames{09}  = 'Wrist Rotate In';
            classNames{10}  = 'Wrist Rotate Out';
            classNames{11}  = 'Wrist Flex In';
            classNames{12}  = 'Wrist Extend Out';
            classNames{13}  = 'Hand Up';
            classNames{14}  = 'Hand Down';
            classNames{15}  = 'Hand Open';
            classNames{16}  = 'Index';
            classNames{17}  = 'Middle';
            classNames{18}  = 'Ring';
            classNames{19}  = 'Little';
            classNames{20}  = 'Thumb';
            classNames{21}  = 'All Ad/Abs';
            classNames{22}  = 'Spider (Fist of Fury)';
            classNames{23} = 'Lateral Grasp';      %% Grasp #1 per Action ICD RPP-600-ICD_-1401
            classNames{24} = 'Cylindrical Grasp';  %% Grasp #2 per Action ICD RPP-600-ICD_-1401
            classNames{25} = 'Tip Grasp';          %% Grasp #3 per Action ICD RPP-600-ICD_-1401
            classNames{26} = 'Hook Grasp';         %% Grasp #4 per Action ICD RPP-600-ICD_-1401
            classNames{27} = 'Palmar Grasp';       %% Grasp #5 per Action ICD RPP-600-ICD_-1401
            classNames{28} = 'Spherical Grasp';    %% Grasp #6 per Action ICD RPP-600-ICD_-1401
            classNames{29} = 'Pointer Grasp';      %% Grasp #7 per Action ICD RPP-600-ICD_-1401
            classNames{30} = 'No Movement';
            classNames{31} = 'Wrist Rotate In (Raised)';
            classNames{32} = 'Wrist Rotate Out (Raised)';
            classNames{33} = 'Wrist Flex In (Raised)';
            classNames{34} = 'Wrist Extend Out (Raised)';
            classNames{35} = 'Hand Up (Raised)';
            classNames{36} = 'Hand Down (Raised)';
            classNames{37} = 'Hand Open (Raised)';
            classNames{39} = 'Tip Grasp (Raised)';         
            classNames{40} = 'Spherical Grasp (Raised)'; 
            classNames{41} = 'No Movement (Raised)';
        end
    end
end
