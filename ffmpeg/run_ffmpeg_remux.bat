cd  "D:\Program Files\Lab\CLI Programs\ffmpeg"

set "PATH=D:\User Files\Videos"
set "FILE=2022-10-28 19-21-53"
set "INPUTFORMAT=mkv"
set "OUTPUTFORMAT=mp4"

cmd /k cd bin && ffmpeg -i "%PATH%\%FILE%.%INPUTFORMAT%" -c copy "%PATH%\%FILE% remuxed.%OUTPUTFORMAT%"