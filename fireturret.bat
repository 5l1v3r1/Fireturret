@echo off&(if /i "%1" equ "-q" call fireturret_stop.bat)&mode 80,25
set "name=fireturret-%computername%"&cd fireturret
setlocal EnableDelayedExpansion
set line=1&for /f "tokens=1,2* skip=29 delims='" %%i in (index.php) do ((if !line! equ 1 set "login=%%j")&(if !line! equ 2 set "pass=%%j")&set /a line+=1)
start /b "" "php.exe" -S localhost:80 >nul 2>&1
start /b "" "ssh.exe" -o ServerAliveInterval=60 -R %name%:80:localhost:80 serveo.net >nul 2>&1
@ping localhost -n 4 >nul
title Fireturret&(echo.&&echo  Credentials : %login%:%pass%&echo  Address     : http://%name%.serveo.net&echo  Started     : %date% - %time:~0,8%&echo  User        : %username%@%computername%&echo  Logs        : logs.txt)
for /l %%i in (0,0,1) do pause >nul