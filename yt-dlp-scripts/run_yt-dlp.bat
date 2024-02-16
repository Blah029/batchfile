setlocal
cd "C:\Users\User Programs\CLI Programs\yt-dlp"

set "OUTPATH=C:\Users\User Files\Documents\GitHub\batchfile\yt-dlp-scripts\downloads"
set "URL=https://www.youtube.com/playlist?list=PLdIt8ntjrEY6gwauMq14uwJVLSFkULJsn"
set "FORMATCODE="

:: [list formats]
:: --------------
:: yt-dlp -F %URL%
:: set /p FORMATCODE="Format-code >>> "

:: [download format]
:: -----------------
:: yt-dlp %URL% -f %FORMATCODE% -o "%OUTPATH%\%%(title)s.%%(ext)s"
:: yt-dlp %URL% -f %FORMATCODE% -x --audio-format mp3 --audio-quality 0 -o "%OUTPATH%\%%(title)s.%%(ext)s"

:: [download highest quality audio]
:: --------------------------------
:: yt-dlp %URL% -f bestaudio -x --audio-format mp3 --audio-quality 0 -o "%OUTPATH%\%%(title)s.%%(ext)s"

:: [download mp3 playlist with metadata]
:: -------------------------------------
:: yt-dlp %URL% -f bestaudio -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --embed-metadata --embed-chapters -o "%OUTPATH%\%%(playlist_index)s %%(title)s.%%(ext)s"
yt-dlp %URL% -f bestaudio -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" --embed-metadata --embed-chapters --break-on-existing -o "%OUTPATH%\%%(playlist_index)s %%(title)s.%%(ext)s"

pause
endlocal