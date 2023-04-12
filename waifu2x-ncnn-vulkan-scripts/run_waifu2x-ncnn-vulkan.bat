cd "D:\Program Files\CLI Programs\waifu2x-ncnn-vulkan"

set "INPATH=C:\Users\ASUS\Desktop"
set "INFILE=home02_cropped.png"
set "OUTPATH=C:\Users\ASUS\Desktop"
set "NOISELEVEL=3"
set "SCALE=2"
set "MODEL=models-cunet"

waifu2x-ncnn-vulkan.exe -v -i "%INPATH%\%INFILE%" -o "%OUTPATH%\%INFILE%_waifu2x_n%NOISELEVEL%_%SCALE%x_%MODEL%.png" -n %NOISELEVEL% -s %SCALE%
pause

:: -h                   show this help
:: -v                   verbose output
:: -i input-path        input image path (jpg/png/webp) or directory
:: -o output-path       output image path (jpg/png/webp) or directory
:: -n noise-level       denoise level (-1/0/1/2/3, default=0)
:: -s scale             upscale ratio (1/2/4/8/16/32, default=2)
:: -t tile-size         tile size (>=32/0=auto, default=0) can be 0,0,0 for multi-gpu
:: -m model-path        waifu2x model path (default=models-cunet)
:: -g gpu-id            gpu device to use (-1=cpu, default=auto) can be 0,1,2 for multi-gpu
:: -j load:proc:save    thread count for load/proc/save (default=1:2:2) can be 1:2,2,2:2 for multi-gpu
:: -x                   enable tta mode
:: -f format            output image format (jpg/png/webp, default=ext/png)