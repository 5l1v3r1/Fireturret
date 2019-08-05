@echo off & mode 80,25
if //i "%1" equ "-q" call fireturret_stop.bat
set "name=fireturret-%computername%"

cd fireturret
start /b "" "php.exe" -S localhost:80 >nul 2>&1
start /b "" "ssh.exe" -R %name%:80:localhost:80 serveo.net >nul 2>&1

@ping localhost -n 4 >nul
title Fireturret
echo.
echo  Credentials : fireturret:fireturret1337
echo  Address     : http://%name%.serveo.net
echo  Started     : %date% - %time:~0,8%
echo  User        : %username%@%computername%
echo  Logs        : logs.txt

for /l %%i in (0,0,1) do pause >nul