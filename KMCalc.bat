@setlocal enabledelayedexpansion
@echo off
:INPUT
@cls
set /p keys=How many keys: 
set /p price=Price for one key: 
for /f "tokens=1,2 delims=,. " %%a in ("%price%") do (
set /a "a=%%a*9, b=%%b/11, c=a+b, d=c*!keys!, e=d*100/9"
set /a f=!e:~-2!
set /a g=!e!-!f!
set /a sum=!g!/100
echo !sum!,!f!
)
pause > nul
goto INPUT