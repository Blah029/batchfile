setlocal
cd "C:\Users\User Programs\CLI Programs\yt-dlp"

set "OUTPATH=C:\Users\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads"
set "URL=https://www.youtube.com/watch?v=x2DXE7Hj4mY"
set "FORMATCODE="

:: [list formats]
:: --------------
:: yt-dlp -F %URL%
:: set /p FORMATCODE="Format-code >>> "

:: [download format]
:: -----------------
:: yt-dlp -f %FORMATCODE% %URL% -o "%OUTPATH%\%%(title)s.%%(ext)s"
:: yt-dlp -f %FORMATCODE% -x --audio-format mp3 %URL% -o "%OUTPATH%\%%(title)s.%%(ext)s"

:: [download highest quality audio]
:: --------------------------------
yt-dlp -f bestaudio -x --audio-format mp3 %URL% -o "%OUTPATH%\%%(title)s.%%(ext)s"

:: [download mp3 playlist with metadata]
:: -------------------------------------
:: yt-dlp -f bestaudio -x --audio-format mp3 %URL% --embed-thumbnail --embed-metadata --embed-chapters -o "%OUTPATH%\%%(playlist_index)s %%(title)s.%%(ext)s"
:: yt-dlp -f bestaudio -x --audio-format mp3 %URL% --embed-thumbnail --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" --embed-metadata --embed-chapters -o "%OUTPATH%\%%(playlist_index)s %%(title)s.%%(ext)s"

pause
endlocal