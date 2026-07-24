@echo off
setlocal

set "ADBPATH=C:\Users\User Programs\CLI Programs\adb\platform-tools"
set "TERMUXPORT=8022"
set "HOST=s10-adb"

pushd %ADBPATH%
adb devices
adb forward tcp:%TERMUXPORT% tcp:%TERMUXPORT%
popd
ssh %HOST%

endlocal

