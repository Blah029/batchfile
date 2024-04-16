@echo off
:: copy this file to a convenient directory for easy access through cmd
setlocal

set FILE=%1
set "FOLDER=C:\Users\User Files\Documents\GitHub\batchfile\ssh-scripts"

"%FOLDER%\%FILE%.bat"

endlocal