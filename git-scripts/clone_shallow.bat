setlocal
cd "D:\User Files\Documents\GitHub"

set "URL=https://github.com/goatfungus/NMSSaveEditor.git"
set "BRANCH=master"
set "DEPTH=1"

git clone --depth %DEPTH% -b %BRANCH% %URL%

pause
endlocal
