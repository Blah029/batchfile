setlocal
cd "C:\Users\User\User Files\Documents\GitHub"

<<<<<<< Updated upstream
set "URL=https://github.com/goatfungus/NMSSaveEditor.git"
set "BRANCH=master"
=======
set "URL=https://github.com/Blah029/python"
set "BRANCH=main"
>>>>>>> Stashed changes
set "DEPTH=1"

git clone --depth %DEPTH% -b %BRANCH% %URL%

pause
endlocal
