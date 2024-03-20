@echo off
setlocal enabledelayedexpansion

REM Get the local IP address using Python
for /f "tokens=* delims=" %%i in ('python -c "import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print(s.getsockname()[0])"') do (
    set "ip=%%i"
)

REM Ask the user for port and key
set /p port="Enter port: "
set /p key="Enter key: "

REM Run the Python script with the obtained IP, port, and key
python serverE.py --host !ip! --port !port! --key !key!
