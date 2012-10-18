@echo off

set /p name= Which IP [s]tatic [d]ynamic?

if %name% == s (goto :static) else (goto :dynamic) 

:static
echo Setting static IP 192.168.1.200 on Wireless Network Connection...
netsh interface ip set address name="Wireless Network Connection" static 192.168.1.200 255.255.255.0 192.168.1.1 1
goto :end

:dynamic 
echo Setting dynamic IP on Wireless Network Connection...
netsh interface ip set address "Wireless Network Connection" dhcp
goto :end

:end
@pause


