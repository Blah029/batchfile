cd "D:\User Files\Documents\GitHub"

set "URL=https://github.com/Blah029/autoeq.git"
set "BRANCH=master"
set "DEPTH=1"

git clone --depth %DEPTH% -b %BRANCH% %URL%
