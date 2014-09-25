@echo off
IF NOT DEFINED SPN set SPN=spn
IF "%1" == "" (
   echo "Expect a version. Use this command like: build version. Example build 3.2.4"
   exit /b 1
)
set VERSION=%1
%SPN% build --name=maven:%VERSION% spoon.me