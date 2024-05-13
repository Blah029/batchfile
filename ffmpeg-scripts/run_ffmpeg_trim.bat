setlocal
cd "C:\Users\User Programs\CLI Programs\ffmpeg\bin"

set "INPATH=C:\Users\User\Videos\OBS\NVENC VBR - Games"
set "OUTPATH=C:\Users\User\Desktop"
set "FILE=2024-05-05 12-05-07"
set "FORMAT=mkv"
set "START=00:16:47"
set "END=17:45"
set "DURATION=00:00:58"

:: trim start
:: ffmpeg -ss %START% -i "%INPATH%\%FILE%.%FORMAT%" -c copy "%OUTPATH%\%FILE% trimmed_s.%FORMAT%"

:: trim end
:: ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -t %DURATION% -c copy "%OUTPATH%\%FILE% trimmed_e.%FORMAT%"

:: trim both (duration)
ffmpeg -ss %START% -i "%INPATH%\%FILE%.%FORMAT%" -t %DURATION% -c copy "%OUTPATH%\%FILE% trimmed_sd.%FORMAT%"

:: trim both (end)
ffmpeg -ss %START% -to %END% -i "%INPATH%\%FILE%.%FORMAT%" -c copy "%OUTPATH%\%FILE% trimmed_se.%FORMAT%"

pause
endlocal