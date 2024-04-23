@echo off
setlocal enabledelayedexpansion

color a 
echo @beastbroak30
echo -----------------
for /f "tokens=* delims=" %%i in ('python -c "import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print(s.getsockname()[0])"') do (
    set "ip=%%i"
)


set /p port="Enter port: "
set /p key="Enter key: "


python serverE.py --host !ip! --port !port! --key !key! --loglevel DEBUG --logfile logs
