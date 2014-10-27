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


userConfigFile = 'user_config.xml';
if exist(userConfigFile,'file')
    try
        fprintf('Reading file: "%s"...',userConfigFile)
        a = xmlread(userConfigFile);
        fprintf('Done\n')
        charResult = char(a.getElementsByTagName(tagName).item(0).getFirstChild.getData);
    catch ME
        warning(ME.message)
        fprintf('[%s.m] Failed to parse tag "%s" entry in file "%s"\n',mfilename,tagName,userConfigFile);
        charResult = defaultValue;
    end
else
    % No user config
    fprintf('[%s] No User config file found: "%s"\n',mfilename,userConfigFile);
    charResult = defaultValue;
end
