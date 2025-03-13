@echo off
setlocal

set "PRIVATE_KEY=C:\Users\User\.ssh\nisalvpn2"
set "DOWNLOAD_DIR=C:\Users\User\Downloads"

set "USERNAME=blah029"
set "IP=35.197.158.169"
set "UPLOAD_DIR=/home/blah029"

scp -i %PRIVATE_KEY% "%DOWNLOAD_DIR%\.env" %USERNAME%@%IP%:%UPLOAD_DIR%/.env
scp -i %PRIVATE_KEY% "%DOWNLOAD_DIR%\save_import.zip" %USERNAME%@%IP%:%UPLOAD_DIR%/save_import.zip

endlocal