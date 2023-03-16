@echo off
@title Christians' filer
:iniServer
echo.
color b
for %%I in (.) do set CurrDirName=%%~nxI
echo ____________________
echo
echo %CurrDirName%	
echo ____________________
echo.
echo Dato: %date%
echo Tid: %time%
echo ____________________
echo. 
echo starter din server.cfg
echo ____________________
rmdir /S /Q cache
timeout /t 2 >nul
%~dp0artifacts\FXServer +set citizen_dir %~dp0artifacts\citizen +exec server.cfg
echo ____________________
echo.
echo  Serveren lukkes! 
echo ____________________
timeout /t 2 >nul
echo ____________________
echo.
echo Serveren genstartes nu! 
echo ____________________
timeout /t 3 >nul
echo.
goto iniServer