setlocal
cd "D:\User Files\Documents\GitHub"

set "URL=https://github.com/CAIC-AD/YOLOPv2.git"
set "BRANCH=main"
set "DEPTH=1"

git clone --depth %DEPTH% -b %BRANCH% %URL%

pause
endlocal
