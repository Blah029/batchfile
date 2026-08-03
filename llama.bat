@echo off
setlocal

set "MODEL=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\gemma-4-E4B-it-Q4_0.gguf"
set "MTP=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\mtp-gemma-4-E4B-it-Q4_0.gguf"
set "SPECULATIVEDECODING= draft-mtp"
set "CONTEXTWINDOW=8192"
set "GPUOFFLOAD=all"
set "FLASHATTENTION=on"     :: reduce vram use, speed up inference
set "THREADS=8"
set "LOGICALBATCH=2048"     :: increase for faster prompt ingestion with more vram use
set "PHYSICALBATCH=512"     :: increase for faster prompt ingestion with more vram us
set "HOST=0.0.0.0"
set "PORT=8080"

llama-server -m "%MODEL%" -md "%MTP%" --spec-type %SPECULATIVEDECODING% -c %CONTEXTWINDOW% -ngl %GPUOFFLOAD% -fa %FLASHATTENTION% -t %THREADS% -b %LOGICALBATCH% -ub %PHYSICALBATCH% --host %HOST% --port %PORT%

endlocal