setlocal

cd  "D:\Program Files\CLI Programs\ffmpeg"

set "PATH=D:\User Files\Documents\Premier Pro\ee596Assignment01\Recordings\Vishmi"
set "FILE=WhatsApp Audio 2023-03-26 at 10.35.06"
set "INPUTFORMAT=ogg"
set "OUTPUTFORMAT=m4a"

cd bin && ffmpeg -i "%PATH%\%FILE%.%INPUTFORMAT%" -c copy "%PATH%\%FILE% remuxed.%OUTPUTFORMAT%"

endlocal