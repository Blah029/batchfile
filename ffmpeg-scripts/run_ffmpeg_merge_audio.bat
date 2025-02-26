setlocal

set "INPATH=C:\Users\User\Videos\OBS\QuickSync - Zoom"
set "OUTPATH=C:\Users\User\Desktop"
set "FILE=2025-02-20 15-25-52"
set "FORMAT=mkv"
set "BITRATE=64"

:: merge 2 tracks
:: ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -filter_complex "[0:a:0][0:a:1]amix=2:longest[aout]" -map 0:V:0 -map "[aout]" -c:v copy -c:a aac -b:a %BITRATE%k "%OUTPATH%\%FILE% mixed.%FORMAT%"

:: merge 2 tracks with original voluem
ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -filter_complex "[0:a:0]volume=1[a0]; [0:a:1]volume=1[a1]; [a0][a1]amix=2:longest[aout]" -map 0:V:0 -map "[aout]" -c:v copy -c:a aac -b:a %BITRATE%k "%OUTPATH%\%FILE% mixed.%FORMAT%"

pause
endlocal