classdef vie_xpc < hgsetget
    % Custom object to help build load and maintain xpc models and target
    % handles.  The build mehtod will keep the main directory tidy by
    % builinding realtime workshop files in a .\Build directory
    % the load method loads files fromthe Build directory as well.
    properties
        
        tg = [];
        tgMode = 'TCPIP';       % TCPIP         | RS232
        tgArg1 = ''             % IP Address    | Com Port
        tgArg2 = '22222'        % IP port       | Baud rate

        mdlName = '';           % model_name.mdl
        
        useCommonBuildDir = 1;  % looks for all the .dlm files in Build\
                                % otherwise the absolute path based on the
                                % model name is used
        %
        sigIDs = [];
        sigNMs = [];
                                
    end
    methods 
        function obj = vie_xpc(tgArg1,mdlName)
            % Usage: obj = vie_xpc(tgArg1,mdlName)
            if nargin < 1 || isempty(tgArg1)
                obj.tgArg1 = '192.168.139.5';
            else
                obj.tgArg1 = tgArg1;
            end
            if nargin < 2 || isempty(mdlName)
                obj.mdlName = 'VU3_right_hand.mdl';
            else
                obj.mdlName = mdlName;
            end
            
        end %constructor
        function success = connect(obj)
            % connect to xpc
            obj.tg = xpctarget.xpc(obj.tgMode,obj.tgArg1,obj.tgArg2);
            success = strcmpi(obj.tg.targetping,'success');
            if ~success
                obj.tg = [];
            end
        end
        function load(obj)
            [pathstr, name, ext] = fileparts(obj.mdlName); %#ok<ASGLU>
            if obj.useCommonBuildDir
                fullMdlName = ['Build\' name];
            else
                baseDir = which([name ext]);
                fullMdlName = [baseDir(1:end-length([name ext])) 'Build\' name];
            end
            
            if ~exist([fullMdlName '.dlm'],'file')
                build(obj);
            end
            
            if connect(obj);
                load(obj.tg,fullMdlName);
            else
                error('Load Failed.  Could not connect to target at: "%s"\n',obj.tgArg1);
            end
        end
        function getAllSignalNames(obj)
            fprintf('Getting ALL signal ids from xPC "%s" ...',obj.tgArg1);
            obj.sigIDs = zeros(obj.tg.NumSignals,1);
            obj.sigNMs = cell(obj.tg.NumSignals,1);
            for i = 1:obj.tg.NumSignals
                obj.sigNMs{i} = obj.tg.getsignalname(i-1);
                obj.sigIDs(i) = obj.tg.getsignalid(obj.sigNMs{i});
            end
            fprintf('Done\n');
        end
        function [signalIds idxMatched] = getSignalIds(obj,signalToken)
            cellNameMatches = strfind(obj.sigNMs,signalToken);
            idxMatched = ~cellfun(@isempty,cellNameMatches);
            if ~any(idxMatched)
                error('No Signals found matching pattern: "%s"\n',signalToken)
            end
            signalIds = obj.sigIDs(idxMatched);

        end
        function build(obj)
            cwd = pwd;
            onCleanup(@()cd(cwd));
            
            fullName = which(obj.mdlName);
            if isempty(fullName)
                error('Model not found: "%s".\n',obj.mdlName);
            end
            [pathstr, strippedName] = fileparts(fullName);
            % Build the model
            buildDir = 'Build';
            if ~exist(buildDir,'file')
                mkdir(buildDir);
            end
            cd(buildDir)
            if exist([strippedName '.dlm'],'file')
                fprintf('Removing existing build file: "%s"\n',[strippedName '.dlm']);
                delete([strippedName '.dlm'])
            end
            
            if ~exist([strippedName '.mdl'],'file')
                fprintf('Model not found: "%s".  Adding to path: "%s"\n',strippedName,pathstr);
                addpath(pathstr);
            end
            rtwbuild(strippedName);
            
        end
        function isConnected = check_connect(obj)
            
            isConnected = ~isempty(obj.tg) && strcmpi(obj.tg.Connected,'Yes');
            %Try to Connect
            % if ~isConnected
            %     reply = questdlg('Connect Now?','Connect','Yes','No','Yes');
            %     switch reply
            %         case 'Yes'
            %             obj.connect;
            %             % check again
            %             isConnected = check_connect(obj);
            %             return
            %         otherwise %'No',Cancel
            %             return
            %     end
            % end
        end
    end
end
