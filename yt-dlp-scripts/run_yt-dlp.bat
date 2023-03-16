cd "D:\Program Files\CLI Programs\yt-dlp"

set "URL=https://www.youtube.com/watch?v=DmaGYyjDzTM"
set "FORMATCODE="

:: list formats
:: yt-dlp -F %URL%
:: set /p FORMATCODE="Format-code >>> "

:: download format
:: yt-dlp -f %FORMATCODE% %URL% -o "D:\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads\%%(title)s.%%(ext)s"
:: yt-dlp -f %FORMATCODE% -x --audio-format mp3 %URL% -o "D:\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads\%%(title)s.%%(ext)s"

:: download highest quality audio
:: yt-dlp -f bestaudio %URL% -o "D:\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads\%%(title)s.%%(ext)s"
yt-dlp -f bestaudio -x --audio-format mp3 %URL% -o "D:\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads\%%(title)s.%%(ext)s"

pause