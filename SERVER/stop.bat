@echo off
echo Stopping Paper Server...
echo Please wait...
timeout /t 1 >nul
tasklist /FI "WINDOWTITLE eq Paper*" /FI "IMAGENAME eq java.exe" | find /i "java.exe" >nul
if errorlevel 1 (
    echo No running Paper server found.
) else (
    echo Trying to stop the server safely...
    echo stop | clip
    echo You can now press right-click -> Paste in your server window.
    echo (This will send the "stop" command to the console.)
)
pause
