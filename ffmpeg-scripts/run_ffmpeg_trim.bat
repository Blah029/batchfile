cd "D:\Program Files\CLI Programs\ffmpeg"

set "INPATH=C:\Users\ASUS\Videos\OBS\NVENC VBR - Games"
set "OUTPATH=D:\Program Files\CLI Programs\ffmpeg"
set "FILE=2022-12-11 21-22-21"
set "FORMAT=mkv"
set "START=00:01:00"
set "END=00:01:19"

::initial black sceen
cmd /k cd bin && ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -ss %START% -to %END% -c copy "%OUTPATH%\%FILE% trimmed.%FORMAT%"

:: cmd /k cd bin && ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -to %END% -c copy "%OUTPATH%\%FILE% trimmed.%FORMAT%"

::initial black screen
:: cmd /k cd bin && ffmpeg -i "%INPATH%\%FILE%.%FORMAT%" -ss %START% -c copy "%OUTPATH%\%FILE% trimmed.%FORMAT%"
