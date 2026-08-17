@echo off
setlocal

set "MODEL_DIR=C:\Users\User Programs\CLI Programs\llama-cpp\models\gemma-4\unsloth"
set "MODEL=%MODEL_DIR%\gemma-4-E4B-it-qat-UD-Q4_K_XL.gguf"
set "MTP=%MODEL_DIR%\mtp-gemma-4-E4B-it-qat-Q8_0.gguf"
set "MMPROJ=%MODEL_DIR%\mmproj-gemma-4-E4B-it-F16.gguf"
set "VERBOSITY=3"

:: Test

llama-server ^
    -m "%MODEL%" ^
    -md "%MTP%" ^
    -mm "%MMPROJ%" ^
    --spec-type draft-mtp ^
    -t 8 ^
    -c 131072 ^
    -b 1024 ^
    -ub 512 ^
    -fa on ^
    -ctk q8_0 ^
    -ctv q8_0 ^
    -ngl all ^
    -mg 0 ^
    -lv %VERBOSITY% ^
    -ctkd q8_0 ^
    -ctvd q8_0 ^
    --temp 1.0 ^
    --top-k 64 ^
    --top-p 0.95 ^
    -td 8 ^
    -ngld all ^
    --jinja ^
    --host 127.0.0.1 ^
    --port 8080

:: Min. batch size for full gpu utilisation -b 512 -ub 256
:: Min. batch size for image input -b 1024 -ub 512 (not viable for 16 gb ram + 6 gb vram)

@echo off
endlocal
