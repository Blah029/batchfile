setlocal
cd "D:\User Files\Documents\GitHub"

set "URL=https://github.com/PINTO0309/PINTO_model_zoo.git"
set "DEPTH=1"
set "DIR=PINTO_model_zoo"

mkdir %DIR%
cd %DIR%
git init
git remote add origin %URL%
git config core.sparseCheckout true
echo %DIR%/*> .git/info/sparse-checkout
git pull --depth=%DEPTH% origin main

endlocal
