@echo off
IF NOT DEFINED SPN set SPN=spoon
IF "%1" == "" (
   echo "Expect a version. Use this command like: build version. Example build 8.1.0.Final"
   exit /b 1
)
set VERSION=%1
%SPN% build --name=wildfly:%VERSION% spoon.me