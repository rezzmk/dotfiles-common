@echo off
rem Generated by JetBrains Toolbox 1.21.9712 at 2021-10-27T16:13:07.002251500

set waitarg=
set ideargs=

:next
set "passwait="
if "%~1"=="--wait" set passwait=1
if "%~1"=="-w" set passwait=1
if defined passwait (set waitarg=/wait)
if not "%~1"=="" (
  if defined passwait (set "ideargs=%ideargs%--wait ") else (set "ideargs=%ideargs%%1 ")
  shift
  goto next
)

start "" %waitarg% C:\Users\rezzmk\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\212.5284.64\bin\rider64.exe %ideargs%