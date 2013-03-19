@echo off

REM **********
REM  Adaptors (no leading spaces)
REM **********
set wired=Local Area Connection
set wireless=Wireless Network Connection

REM **********
REM  IP Address (no leading spaces)
REM **********
set static=192.168.1.200


set /p mode= Which IP [s]tatic [d]ynamic?
set /p name= Which Adaptor [l]ocal area connection, [w]ireless network connection?

if %name% == l (set adaptor=%wired%) else (set adaptor=%wireless%) 

if %mode% == s (goto :static) else (goto :dynamic) 


:static

echo Setting static IP %static% on %adaptor%...
netsh interface ip set address name="%adaptor%" static %static% 255.255.255.0

goto :end



:dynamic 

echo Setting dynamic IP on %adaptor%...
netsh interface ip set address "%adaptor%" dhcp
goto :end

:end
@pause


