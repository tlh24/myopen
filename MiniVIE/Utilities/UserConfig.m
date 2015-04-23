classdef UserConfig < handle
    properties
        userConfigFile = 'user_config.xml';
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
                    
                    userConfigFile = uigetfile('user_config.xml');
                    if userConfigFile == 0
                        % User Cancelled
                        singleObj = [];
                        return
                    end
                    
                end
                userConfigFile = which(userConfigFile);
                fprintf('[%s] Calling constructor with config file %s\n',mfilename,userConfigFile);
                localObj = UserConfig;
                localObj.userConfigFile = userConfigFile;
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
            
        end
        function charResult = getUserConfigVar(tagName,defaultValue)
            %charResult = getUserConfigVar(tagName,defaultValue)
            % Read tag from user config xml file
            %
            %
            %Example file:
            % <?xml version="1.0" encoding="utf-8"?>
            % <userConfig>
            %     <!--ROC Table to be loaded and interpolated locally during MiniVIE Session-->
            %     <rocTable>WrRocDefaults.xml</rocTable>
            %     <mplNfuIp>192.168.1.112</mplNfuIp>
            %     <mplRouterIp>192.168.1.1</mplRouterIp>
            % </userConfig>
            
            obj = UserConfig.getInstance;
            userFile = obj.userConfigFile;
            
            if exist(userFile,'file')
                try
                    a = xmlread(userFile);
                    hTag = get(a.getElementsByTagName(tagName));
                    if hTag.Length == 0
                        % tag not found
                        charResult = defaultValue;
                    else
                        charResult = char(a.getElementsByTagName(tagName).item(0).getFirstChild.getData);
                    end
                    fprintf('Reading %s: %s=%s\n',userFile,tagName,charResult)
                    if ~ischar(defaultValue)
                        charResult = str2double(charResult);
                    end
                    
                    return
                catch ME
                    warning(ME.message)
                    fprintf('[%s.m] Failed to parse tag "%s" entry in file "%s"\n',mfilename,tagName,userFile);
                    charResult = defaultValue;
                end
            else
                % No user config
                fprintf('[%s] No User config file found: "%s"\n',mfilename,userFile);
                charResult = defaultValue;
            end
        end
    end
end
