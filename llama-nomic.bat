@echo off
setlocal

set "MODEL=C:\Users\User Programs\CLI Programs\llama-cpp\models\nomic-embed-text\nomic-embed-text-v1.5.Q8_0.gguf"

llama-server ^
    --embedding ^
    -ngl all ^
    -m "%MODEL%" ^
    -c 2048 ^
    -b 2048 ^
    -ub 2048 ^
    --rope-scaling yarn ^
    --rope-freq-scale .75 ^
    --host 127.0.0.1 ^
    --port 8081

@echo off
endlocal
