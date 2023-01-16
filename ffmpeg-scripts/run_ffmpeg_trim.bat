cd "D:\Program Files\CLI Programs\ffmpeg\bin"

set "INPATH=C:\Users\ASUS\Videos\OBS\NVENC VBR - Games"
set "OUTPATH=C:\Users\ASUS\Desktop"
set "FILE=2023-01-17 00-07-26"
set "FORMAT=mkv"
set "START=00:00:05"
set "DURATION=00:08:32"

::trim start
:: ffmpeg -ss %START% -i "%INPATH%\%FILE%.%FORMAT%" -c copy "%OUTPATH%\%FILE% trimmed_s.%FORMAT%"

::trim end
:: ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -t %DURATION% -c copy "%OUTPATH%\%FILE% trimmed_e.%FORMAT%"

::trim both
ffmpeg -ss %START% -i "%INPATH%\%FILE%.%FORMAT%" -t %DURATION% -c copy "%OUTPATH%\%FILE% trimmed_se.%FORMAT%"