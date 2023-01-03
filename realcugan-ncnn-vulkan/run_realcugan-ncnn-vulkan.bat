cd "D:\Program Files\Lab\CLI Programs\realcugan-ncnn-vulkan"

set "INFOLDER=D:\User Files\Pictures\(unprocessed) batch 2"
set "INFILE=103304335_p0.jpg"
set "OUTFOLDER=D:\User Files\Pictures\(processed) batch 2"

cmd /k realcugan-ncnn-vulkan.exe -i "%INFOLDER%\%INFILE%" -o "%OUTFOLDER%\%INFILE%_rcnv_se.png" -v -n 3

:: -h                   show this help
:: -v                   verbose output
:: -i input-path        input image path (jpg/png/webp) or directory
:: -o output-path       output image path (jpg/png/webp) or directory
:: -n noise-level       denoise level (-1/0/1/2/3, default=-1)
:: -s scale             upscale ratio (1/2/3/4, default=2)
:: -t tile-size         tile size (>=32/0=auto, default=0) can be 0,0,0 for multi-gpu
:: -c syncgap-mode      sync gap mode (0/1/2/3, default=3)
:: -m model-path        realcugan model path (default=models-se)
:: -g gpu-id            gpu device to use (-1=cpu, default=auto) can be 0,1,2 for multi-gpu
:: -j load:proc:save    thread count for load/proc/save (default=1:2:2) can be 1:2,2,2:2 for multi-gpu
:: -x                   enable tta mode
:: -f format            output image format (jpg/png/webp, default=ext/png)