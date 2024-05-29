
@echo off 
setlocal enabledelayedexpansion
color a 
echo @beastbroak30
echo -----------------
echo Please provide the given  data for  setuping up the server 
set /p  ip="Enter the server address: "
set /p  port="Enter your port: "
set /p  key="Enter the pass: "

python clientE.py --host !ip! --port !port! --key !key!
