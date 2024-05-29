@echo off
setlocal enabledelayedexpansion

color a
echo @beastbroak30
echo -----------------

:GET_IP
echo Retrieving your IP address...
for /f "tokens=* delims=" %%i in ('python -c "import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print(s.getsockname()[0])"') do (
  set "ip=%%i"
)

echo Your IP address is: !ip!

:GET_PORT
set /p port="Enter port (excluding 5000): "

:VALIDATE_PORT
if "!port!" == "5000" (
  echo Invalid port! Please enter a port number other than 5000.
  goto GET_PORT
)


:GET_KEY
set /p key="Enter key: "

python serverE.py --host !ip! --port !port! --key !key! --logfile logs.log


