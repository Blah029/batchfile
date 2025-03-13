@echo off
setlocal

set "PRIVATE_KEY=C:\Users\User\.ssh\nisalvpn2"
set "DOWNLOAD_DIR=C:\Users\User\Downloads"

set "USERNAME=blah029"
set "IP=35.197.158.169"
set "DOCKER_DIR=/home/nisalvpn2"

scp -i %PRIVATE_KEY% %USERNAME%@%IP%:%DOCKER_DIR%/palworld-server-docker/.env "%DOWNLOAD_DIR%\.env"
scp -i %PRIVATE_KEY% %USERNAME%@%IP%:%DOCKER_DIR%/palworld-server-docker/palworld/Pal/Saved/SaveGames/0/save_export.zip "%DOWNLOAD_DIR%\save_export.zip"

endlocal