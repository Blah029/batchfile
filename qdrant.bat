@echo off
setlocal

set "QDRANTDIR=C:\Users\User Programs\CLI Programs\qdrant"

pushd "%QDRANTDIR%"
qdrant.exe
popd

@echo off
endlocal