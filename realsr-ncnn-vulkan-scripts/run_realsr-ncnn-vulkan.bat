setlocal
cd "C:\Users\User Programs\CLI Programs\realsr-ncnn-vulkan"

set "INPATH=C:\Users\User Files\Images\batch 3.0 - unprocessed"
set "INFILE=23.jpg"
set "OUTPATH=C:\Users\User Files\Images\batch 3.2 - upscaled"
set "SCALE=4"
set "MODEL=models-DF2K_JPEG"

realsr-ncnn-vulkan.exe -v -i "%INPATH%\%INFILE%" -o "%OUTPATH%\%INFILE%_realsr_%SCALE%x_%MODEL%.png" -s %SCALE%

pause
endlocal

:: -h                   show this help
:: -v                   verbose output
:: -i input-path        input image path (jpg/png/webp) or directory
:: -o output-path       output image path (jpg/png/webp) or directory
:: -s scale             upscale ratio (4, default=4)
:: -t tile-size         tile size (>=32/0=auto, default=0) can be 0,0,0 for multi-gpu
:: -m model-path        realsr model path (default=models-DF2K_JPEG)
:: -g gpu-id            gpu device to use (-1=cpu, default=auto) can be 0,1,2 for multi-gpu
:: -j load:proc:save    thread count for load/proc/save (default=1:2:2) can be 1:2,2,2:2 for multi-gpu
:: -x                   enable tta mode
:: -f format            output image format (jpg/png/webp, default=ext/png)