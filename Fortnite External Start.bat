@echo off
:loop
if exist "C:\Users\Administrator\Desktop\converted\*.jpg" (
for %%a in ("C:\Users\Administrator\Desktop\converted\*.jpg") do (
start "" /w "C:\Users\Administrator\Desktop\123.exe" "%%a"
ping -n 20 localhost >nul
del "%%a"
)
)
ping -n 60 localhost >nul
goto :loop