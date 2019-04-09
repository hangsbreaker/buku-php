@echo off
set dir="C:\xampp\php"
whoami /groups | find "S-1-16-12288" > nul
if %errorlevel% == 0 (
 echo Welcome, Admin
 setx /M path "%path%;%dir%"
 echo All done, Close the cmd and run again.
 pause
) else (
 echo Please run as Administration!
 pause

)