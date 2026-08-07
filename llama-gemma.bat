@echo off
setlocal

set "MODEL=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\gemma-4-E4B-it-Q4_0.gguf"
set "MTP=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\mtp-gemma-4-E4B-it-Q4_0.gguf"
set "MMPROJ=C:\Users\User Programs\CLI Programs\llm-cpp\models\gemma-4\mmproj-gemma-4-E4B-it-Q8_0.gguf"
set "VERBOSITY=3"

:: Test

llama-server -m "%MODEL%" -md "%MTP%" -mm "%MMPROJ%" --spec-type draft-mtp -t 8 -c 0 -b 1024 -ub 512 -fa on -ctk q8_0 -ctv q8_0 -ngl all -mg 0 -fit on -fitt 1024 -lv %VERBOSITY% -ctkd q8_0 -ctvd q8_0 --temp 0.5 -td 8 -ngld all --host 127.0.0.1 --port 8080

:: Min. batch size for full gpu utilisation -b 512 -ub 256
:: Min. batch size for image input -b 1024 -ub 512 (not viable for 16 gb ram + 6 gb vram)

:: Archive

:: llama-server -m "%MODEL%" -md "%MTP%" --spec-type draft-mtp -t 8 -c 0 -b 2048 -ub 1024 -fa on -ctk q8_0 -ctv q8_0 -ngl all -mg 0 -fit on -fitt 1024 -ctkd q8_0 -ctvd q8_0 --temp 0.5 -ngld all --host 127.0.0.1 --port 8080
::llama-server -m "%MODEL%" -md "%MTP%" --spec-type draft-mtp --spec-draft-n-max 3 --spec-draft-ngl auto -ngl auto --fit on --fit-target 1024 -fa auto -ctk q8_0 -ctv q8_0 --ctx-size 8192 --context-shift --parallel 1 --jinja --host 127.0.0.1 --port 8080 --props --metrics
::llama-server -m "%MODEL%" -md "%MTP%" --spec-type  draft-mtp -c 8192 -ngl all -fa on -t 8 -b 2048 -ub 512 --host 127.0.0.1 --port 8080

@echo off
endlocal