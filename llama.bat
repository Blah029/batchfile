@echo off
setlocal

set "MODEL=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\gemma-4-E4B-it-Q4_0.gguf"
set "MTP=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\mtp-gemma-4-E4B-it-Q4_0.gguf"
set "SPECULATIVETYPE=draft-mtp"
set "SPECULATIVELIMIT=3"
set "SPECULATIVEOFFLOAD=auto"
set "GPUOFFLOAD=auto"
set "FIT=on"                 :: fit to vram size
set "FITTARGET=1024"         :: leave 1024 MB headroom
set "FLASHATTENTION=auto"    :: reduce vram use, speed up inference
set "KVQUANT=q8_0"           :: quantize key cache and value cache
set "CONTEXTSIZE=8192"
set "PARALLEL=1"             :: use all resourcesfor a single user
set "HOST=localhost"
set "PORT=8080"

@echo on
llama-server -m "%MODEL%" -md "%MTP%" --spec-type %SPECULATIVETYPE% --spec-draft-n-max %SPECULATIVELIMIT% --spec-draft-ngl %SPECULATIVEOFFLOAD% -ngl %GPUOFFLOAD% --fit %FIT% --fit-target %FITTARGET% -fa %FLASHATTENTION% -ctk %KVQUANT% -ctv %KVQUANT% --ctx-size %CONTEXTSIZE% --context-shift --parallel %PARALLEL% --jinja --host 0.0.0.0 --port 8080 --props --metrics
@echo off

endlocal

:: Archive

:: llama-server -m "C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\gemma-4-E4B-it-Q4_0.gguf" -md "C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\mtp-gemma-4-E4B-it-Q4_0.gguf" --spec-type draft-mtp --spec-draft-n-max 3 --spec-draft-ngl auto -ngl auto --fit on --fit-target 1024 -fa auto -ctk q8_0 -ctv q8_0 --ctx-size 8192 --context-shift --parallel 1 --jinja --host 0.0.0.0 --port 8080 --props --metrics

:: llama-server -m "%MODEL%" -md "%MTP%" --spec-type  draft-mtp -c 8192 -ngl all -fa on -t 8 -b 2048 -ub 512 --host 0.0.0.0 --port 8080
