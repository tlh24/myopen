classdef ClassifierChannels < Common.MiniVieObj
    % GUI To get channels
    % TODO: Make blocking?
    %
    % 01-Sept-2010 Armiger: Created
    properties
        hFigure
        
        ClassNames;
        DefaultClassNames = SignalAnalysis.ClassifierChannels.getDefaultNames;
    end
    properties (Dependent = true, SetAccess = private)
        NumClasses;
    end
    properties (Access = private)
        handles
    end
    properties (Constant = true)
        defaultFile = 'miniVieDefaultClasses.mat';
    end
    methods
        function obj = ClassifierChannels
            obj.uiEnterClassNames();
            obj.ClassNames = obj.getSavedDefaults();
            updateSelected(obj);
        end
        
        function close(obj)
            try
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
        
        function uiEnterClassNames(obj)
            obj.hFigure = UiTools.create_figure('Class Names','ClassifierChannels');
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
            
            uicontrol(obj.hFigure,'Style','pushbutton','String','< Add',...
                'Position',[270 200 60 30],'Callback',@(src,evt)cbAddClasses(obj));

            uicontrol(obj.hFigure,'Style','pushbutton','String','Remove >',...
                'Position',[270 160 60 30],'Callback',@(src,evt)cbRemoveClasses(obj));
            
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
            
            if isempty(classNames) || ~iscell(classNames) || ~all(cellfun(@isstr,classNames))
                error('Expected a cell array of strings');
            end
            
            fullFile = fullfile(tempdir,SignalAnalysis.ClassifierChannels.defaultFile);
            
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
            
            fullFile = fullfile(tempdir,SignalAnalysis.ClassifierChannels.defaultFile);
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
            classNames{30}  = 'No Movement';
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
        end
    end
end
