classdef UserConfig < handle
    % Class to hold user config variables.  This is setup to prompt the
    % user the first time it is accessed, and then rely on that file for
    % the remaining parameter calls
    %
    % Revisions
    % 23APR2015 Armiger: Created
    properties (SetAccess = 'private')
        userConfigFile = 'user_config.xml';
        domNode  % Stores the Document Object Model node fro parsing
    end
    methods (Access = private)
        function obj = UserConfig
            % Creator is private to force singleton
        end
    end
    
    methods (Static)
        function singleObj = getInstance(userConfigFile)
            % Static creator method.  this will provide a singleton handle
            % to the class file
            persistent localObj
            
            if isempty(localObj) || ~isvalid(localObj)
                if nargin < 1
                    %userConfigFile = 'user_config.xml';
                    
                    [FileName,PathName,FilterIndex] = uigetfile('user_config.xml');
                    if FilterIndex == 0
                        % User Cancelled
                        singleObj = [];
                        return
                    end
                    userConfigFile = fullfile(PathName,FileName);
                end
                
                % ensure full path is resolved
                userConfigFile = which(userConfigFile);
                fprintf('[%s] Calling constructor with config file %s\n',mfilename,userConfigFile);
                
                localObj = UserConfig;
                localObj.userConfigFile = userConfigFile;
                
                % read the file
                localObj.domNode = xmlread(userConfigFile);
                
            else
                %fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
            
        end
        function success = reload
            % Reload the specified xml file
            obj = UserConfig.getInstance;
            userFile = obj.userConfigFile;
            
            % read the file
            obj.domNode = xmlread(userFile);
            
            success = true;
        end
        
        
        function result = getUserConfigVar(tagName,defaultValue)
            %charResult = UserConfig.getUserConfigVar(tagName,defaultValue)
            % Read tag from user config xml file
            %
            
            obj = UserConfig.getInstance;
            userFile = obj.userConfigFile;
            
            % default output
            result = defaultValue;
            
            a = obj.domNode;
            
            if isempty(a)
                fprintf('[%s] No file %s found\n',mfilename,userFile);
                return
            end
            
            try
                
                isFound = false;
                v = a.getElementsByTagName('add');
                for i = 1:v.getLength
                    t = v.item(i-1);
                    key = char(t.getAttribute('key'));
                    if strcmp(key,tagName)
                        result = char(t.getAttribute('value'));
                        isFound = true;
                        break;
                    end
                end
                
                if isFound
                    fprintf('[%s] %s=%s\n',mfilename,tagName,result);
                else
                    fprintf('[%s] %s not found. Default=%s\n',mfilename,tagName,result);
                end
                
                % convert value to the class of the default parameter.
                if ~ischar(defaultValue)
                    % example '[1 3]'  --> 1 3
                    [x, status] = str2num(result); %#ok<ST2NM>
                    if status
                        result = x;
                    else
                        warning('Failed to cast xml key-value');
                    end
                end
                
                return
            catch ME
                warning(ME.message)
                fprintf('[%s.m] Failed to parse tag "%s" entry in file "%s"\n',mfilename,tagName,userFile);
                result = defaultValue;
            end
        end
    end
end
