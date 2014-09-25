IF NOT DEFINED SPN set SPN=spoon
IF "%1" == "" (
   echo "Expect a version. Use this command like: build version. Example build 2.1.3-i386-mingw32"
   exit /b 1
)
set VERSION=%1
%SPN% build --name=ruby:%VERSION% spoon.me