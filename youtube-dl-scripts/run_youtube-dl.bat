cd "D:\Program Files\CLI Programs\youtube-dl"

set "URL=https://www.youtube.com/watch?v=-RxE_7uSDVg"
set "FORMATCODE="

:: list formats
youtube-dl -F %URL%
:: set /p FORMATCODE="Format-code >>> "

:: download format
:: youtube-dl -f %FORMATCODE% %URL% -o "D:\User Files\Documents\GitHub\batchfile\youtube-dl\downloads\%%(title)s.%%(ext)s"
:: youtube-dl -f %FORMATCODE% -x --audio-format mp3 %URL%

:: download highest quality audio
:: youtube-dl -f bestaudio %URL%
:: youtube-dl -f bestaudio -x --audio-format mp3 %URL%

pause