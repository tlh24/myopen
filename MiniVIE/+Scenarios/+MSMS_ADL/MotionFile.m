classdef MotionFile < handle
    % Class for loading, and parsing MSMS motion data files (*.asf, *.msm)
    %
    % Usage: 
    %   m = MotionFile();
    %   m.uiGetMotionFiles();
    %   m.parse()
    
    properties
        angleData;
        tagData;
        classNames;
        jointNames;
        time;
        
        numJointParams = 82;
    end
    properties (SetAccess = private)
        FileName % without ext
        FilePath 
    end
    methods
        function obj = MotionFile
        end
        
        function uiGetMotionFiles(obj,pathToStart)
                        
            if nargin < 2
                % Use default path
                pathToStart = pwd;
            elseif ~exist(pathToStart,'dir')
                fprintf('[%s] Path is invalid: "%s"\n',mfilename,pathToStart);
                pathToStart = pwd;
            end
            
            h = helpdlg('Please select motion files. Note that BOTH the .asf and .msm files are required to be present');
            uiwait(h);
            
            [pathstr, filename, ext] = deal([]);
            
            [fileName,pathName,filterIndex] = uigetfile(...
                {'*.msm;*.asf', 'MSMS Motion Files (*.msm,*.asf)'}, ...
                'Select an MSMS ADL Motion file pair',pathToStart,'MultiSelect', 'on');
            
            if filterIndex == 0
                % user cancelled
                return
            end
            
            if iscell(fileName)
                for i = 1:length(fileName)
                    [pathstr, filename, ext] = fileparts(fullfile(pathName,fileName{i}));
                end
            else
                [pathstr, filename, ext] = fileparts(fullfile(pathName,fileName));
            end
            
            setFileNames(obj,pathstr,filename);
        end

        function setFileNames(obj,pathstr,filename)
            
            if ~exist(pathstr,'file')
                error('Path "%s" does not exist\n',pathstr);
            end
            
            obj.FileName = filename;
            obj.FilePath = pathstr;
            
        end
        
        function success = parse(obj,isBimanual)
            % This script is used to read MSMS Motion files (.asf and .msm) and convert
            % them.  
            %
            % created 6/16/2009 Armiger
            
            if nargin < 2
                isBimanual = false;
            end
            
            if isempty(obj.FilePath) || isempty(obj.FileName)
                error('No filename or path specified')
            end
            
            % Read Files (Grouped)
            [obj.time obj.jointNames jointAngle slideNumber motionName] = ...
                Scenarios.MSMS_ADL.MotionFile.read_motion_files(obj.FilePath, obj.FileName); %#ok<ASGLU>
            
            
            % Assume a left handed file is loaded for bimanual
            if isBimanual
                % Copy left to right:
                jointAngle(strcmpi(obj.jointNames,'elbow_flex_r'),:) = ...
                    jointAngle(strcmpi(obj.jointNames,'Humero_Ulnar_FE'),:);

                jointAngle(strcmpi(obj.jointNames,'elbow_rot_r'),:) = ...
                    -jointAngle(strcmpi(obj.jointNames,'Radio_Ulnar_PS'),:);
                
                jointAngle(strcmpi(obj.jointNames,'wrist_flex_r'),:) = ...
                    -jointAngle(strcmpi(obj.jointNames,'wrist_dev_l'),:);
                %                 leftNames = {
                %                     'thumb_abd_l'
                %                     'thumb_flex_l'
                %                     'PP1_flex_l'
                %                     'DP1_flex_l'
                %                     'MCP2_lateral_l'
                %                     'MCP2_flex_l'
                %                     'PIP2_flex_l'
                %                     'DIP2_flex_l'
                %                     'MCP3_lateral_l'
                %                     'MCP3_flex_l'
                %                     'PIP3_flex_l'
                %                     'DIP3_flex_l'
                %                     'MCP4_lateral_l'
                %                     'MCP4_flex_l'
                %                     'PIP4_flex_l'
                %                     'DIP4_flex_l'
                %                     'MCP5_lateral_l'
                %                     'MCP5_flex_l'
                %                     'PIP5_flex_l'
                %                     'DIP5_flex_l'};
                %                 rightNames = {
                %                     'MCP5_lateral_r'
                %                     'MCP5_flex_r'
                %                     'PIP5_flex_r'
                %                     'DIP5_flex_r'
                %                     'MCP4_lateral_r'
                %                     'MCP4_flex_r'
                %                     'PIP4_flex_r'
                %                     'DIP4_flex_r'
                %                     'MCP3_lateral_r'
                %                     'MCP3_flex_r'
                %                     'PIP3_flex_r'
                %                     'DIP3_flex_r'
                %                     'MCP2_lateral_r'
                %                     'MCP2_flex_r'
                %                     'PIP2_flex_r'
                %                     'DIP2_flex_r'
                %                     'thumb_abd_r'
                %                     'thumb_flex_r'
                %                     'PP1_flex_r'
                %                     'DP1_flex_r'
                %                     };
                
                % Loop thorugh each hand angle and replace with
                % corresponding name changing suffix _r _l
                for i = 19:38 % id of hand angles
                    
                    className = obj.jointNames{i}(1:end-1);
                    idLeft = strcmpi(obj.jointNames,[className 'l']);
                    assert(sum(idLeft) == 1,'Failed on class %s\n',[className 'l']);

                    idRight = strcmpi(obj.jointNames,[className 'r']);
                    assert(sum(idRight) == 1,'Failed on class %s\n',[className 'r']);
                    
                    jointAngle(idRight,:) = ...
                        jointAngle(idLeft,:);

                    
                end
                
            end
            
            obj.angleData = jointAngle;
                
            
            
            % get 'classnames' based on unique motions
            obj.classNames = unique(motionName);
            
            obj.tagData = zeros(size(obj.time));
            for i = 1:length(obj.classNames)
                % enumerate classes
                obj.tagData(strcmp(obj.classNames{i},motionName)) = i;
            end
            
            success = true;
        end
        
    end
    methods (Static = true)        
        function [t jointName jointAngle slideNumber motionName] = read_motion_files(pathstr, filename)
            % note filename must come in without extention
            
            [t1 jointName jointAngle] = Scenarios.MSMS_ADL.MotionFile.read_msm(fullfile(pathstr,[filename '.msm']));
            [t2 slideNumber motionName] = Scenarios.MSMS_ADL.MotionFile.read_asf(fullfile(pathstr,[filename '.asf']));
            
            % verify matching timestamps
            if ~isequal(t1,t2)
                error('Timestamps not matched in .asf and .msm files\n');
            else
                t = t1;
            end
            
            % verify monotonic increase
            if ~all( diff(t) >= 0 )
                error('Timestamps not monotonically increasing\n');
            end
            
        end
        function [t slideNumber motionName] = read_asf(fileName)
            
            [fid,msg] = fopen(fileName,'r');
            c = onCleanup(@()fclose(fid));
            
            if fid < 0
                error('Error opening %s.  Message was:%s\n',fileName,msg);
            end
            
            C = textscan(fid,'%f %d16 %s','HeaderLines',1);
            
            isValid = isequal(size(C),[1 3]) && ...                 % expect three columns
                isequal(size(C{1}),size(C{2}),size(C{3})) && ...    % all the same size
                ~isempty(C{1}) && ~isempty(C{2}) && ~isempty(C{3}); % and not empty
            
            if ~isValid
                error('Error parsing %s.\n',fileName);
            end
            
            t = C{1};
            slideNumber = C{2};
            motionName = C{3};
            
        end  
        function [t jointName jointAngle] = read_msm(fileName)
            
            if exist(fileName,'file')
                readData = importdata(fileName, ' ', 1);
            else
                error('File "%s" does not exist\n',fileName);
            end
            
            t           = readData.data(:,1);
            jointName   = readData.colheaders(2:end);
            jointAngle  = readData.data(:,2:end)';
            
        end
        function [pointer tDesired] = create_uniform_timestamp(t,tStep)
            [pointer tDesired] = deal([]);
            return
            % untested and incorrect
            
            tDesired = 0:tStep:max(t);
            
            pointer = zeros(size(t));
            pLast = 1;
            
            for i = 1:length(t);
                
                pointer(i) = pLast;
                while (pLast <= length(t)) && (t(pLast) <= tDesired(i))
                    % advance pointer
                    pLast = pLast + 1;
                end
                
            end
            
            pointer = min(pointer,length(t));
            
            % pointer gives the index locations where to draw data from the original
            % time history, in the [upsampled] coninuous time history.  hence the
            % indices cannot be zero or exceed the length of the original dataset
            assert( all(pointer > 0) && all(pointer <= length(t)));
            
        end
        function [angleData tagdata classNames] = convert_data(jointName,jointAngle,motionName,pointer,tDesired)  %#ok<INUSD>
            
            % get 'classnames' based on unique motions
            classNames = unique(motionName);
            
            tagdata = zeros(1,length(tDesired));
            for i = 1:length(classNames)
                % enumerate classes
                tagdata(strcmp(classNames{i},motionName(pointer))) = i;
            end
            
            % convert joint angles
            angleData = jointAngle(:,pointer);
            
            
            % jFinal = jointAngle(:,pointer);
            %
            % jointOrder = {
            %     'shoulder_rx_r'
            %     'shoulder_rz_r'
            %     'shoulder_ry_r'
            %     'elbow_flex_r'
            %     'elbow_rot_r'
            %     'wrist_flex_r'
            %     'wrist_dev_r'
            %     'MCP2_lateral_r'
            %     'MCP2_flex_r'
            %     'PIP2_flex_r'
            %     'DIP2_flex_r'
            %     'MCP3_lateral_r'
            %     'MCP3_flex_r'
            %     'PIP3_flex_r'
            %     'DIP3_flex_r'
            %     'MCP4_lateral_r'
            %     'MCP4_flex_r'
            %     'PIP4_flex_r'
            %     'DIP4_flex_r'
            %     'MCP5_lateral_r'
            %     'MCP5_flex_r'
            %     'PIP5_flex_r'
            %     'DIP5_flex_r'
            %     'thumb_abd_r'
            %     'thumb_flex_r'
            %     'PP1_flex_r'
            %     'DP1_flex_r'
            %     };
            %
            %
            % angleData = zeros(length(jointOrder),length(tDesired));
            % for i = 1:length(jointOrder)
            %     % reorder
            %     angleData(i,:) = jFinal(strcmp(jointOrder{i},jointName),:);
            % end
            
            
        end
        function msg = sampleMessage
            
            msg = uint8([ ...
                32    74     0   109     0     6    68    78    73    70    68    78    73    70   68   78 ...
                73    70    68    78    73    70    68    78    73    70    68    78    73    70   32   74 ...
                0    44     0     3    68    78    73    70    68    78    73    70    68    78   73   70 ...
                32    74     0    39     0     2    68    78    73    70    68    78    73    70   32   74 ...
                0    36     0     3    68    78    73    70    68    78    73    70    68    78   73   70 ...
                32    74     0    42     0     1    68    78    73    70    32    74     0    38    0    1 ...
                68    78    73    70    32    74     0   188     0     2    68    78    73    70   68   78 ...
                73    70    32    74     0   215     0     2    68    78    73    70    68    78   73   70 ...
                32    74     0   216     0     1    68    78    73    70    32    74     0   217    0    1 ...
                68    78    73    70    32    74     0   200     0     2    68    78    73    70   68   78 ...
                73    70    32    74     7   208     0     1    68    78    73    70    32    74    0  202 ...
                0     1    68    78    73    70    32    74     0   204     0     2    68    78   73   70 ...
                68    78    73    70    32    74     0   205     0     1    68    78    73    70   32   74 ...
                0   206     0     1    68    78    73    70    32    74     0   208     0     2   68   78 ...
                73    70    68    78    73    70    32    74     0   209     0     1    68    78   73   70 ...
                32    74     0   210     0     1    68    78    73    70    32    74     0   212    0    2 ...
                68    78    73    70    68    78    73    70    32    74     0   213     0     1   68   78 ...
                73    70    32    74     0   214     0     1    68    78    73    70    32    74    0   41 ...
                0     3    68    78    73    70    68    78    73    70    68    78    73    70   32   74 ...
                0    40     0     2    68    78    73    70    68    78    73    70    32    74    0  144 ...
                0     3    68    78    73    70    68    78    73    70    68    78    73    70   32   74 ...
                0   145     0     1    68    78    73    70    32    74     0   146     0     1   68   78 ...
                73    70    32    74     0   148     0     2    68    78    73    70    68    78   73   70 ...
                32    74     0   172     0     2    68    78    73    70    68    78    73    70   32   74 ...
                0   173     0     1    68    78    73    70    32    74     0   174     0     1   68   78 ...
                73    70    32    74     0   168     0     2    68    78    73    70    68    78   73   70 ...
                32    74     0   169     0     1    68    78    73    70    32    74     0   170    0    1 ...
                68    78    73    70    32    74     0   164     0     2    68    78    73    70   68   78 ...
                73    70    32    74     0   165     0     1    68    78    73    70    32    74    0  166 ...
                0     1    68    78    73    70    32    74     0   160     0     2    68    78   73   70 ...
                68    78    73    70    32    74     0   161     0     1    68    78    73    70   32   74 ...
                0   162     0     1    68    78    73    70    32    74     0   175     0     2   68   78 ...
                73    70    68    78    73    70    32    74     0   176     0     1    68    78   73   70 ...
                32    74     0   177     0     1    68    78    73    70    32    74     0   235    0    3 ...
                68    78    73    70    68    78    73    70    68    78    73    70    32    74    0  237 ...
                0     1    68    78    73    70    32    74     0   241     0     2    68    78   73   70 ...
                68    78    73    70    32    74     0   222     0     3    68    78    73    70   68   78 ...
                73    70    68    78    73    70    32    74     0   224     0     1    68    78   73   70 ...
                32    74     0   228     0     2    68    78    73    70    68    78    73    70  ]);
            
        end
    end
end


