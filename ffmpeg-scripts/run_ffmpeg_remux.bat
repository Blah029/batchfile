setlocal

cd  "C:\Users\User Programs\CLI Programs\ffmpeg\bin"

set "INPATH=C:\Users\User\Videos\OBS\NVENC VBR - Games"
set "FILE=2024-05-05 12-05-07"
set "INPUTFORMAT=mkv"
set "OUTPUTFORMAT=mp4"

ffmpeg -i "%INPATH%\%FILE%.%INPUTFORMAT%" -c copy "%INPATH%\%FILE% remuxed.%OUTPUTFORMAT%"

pause
endlocal