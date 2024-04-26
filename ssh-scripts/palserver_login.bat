@echo off
setlocal

set "PRIVATE_KEY=C:\Users\User\.ssh\nisalvpn2"
set "USERNAME=blah029"
set "IP=35.197.158.169"

ssh -i %PRIVATE_KEY% %USERNAME%@%IP%

endlocal
