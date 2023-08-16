setlocal
cd "C:\Users\User Files\Documents\GitHub\autoeq-workspace"

set "MODEL=_convolution"
set "COMPENSATION=_convolution"
set "BASSBOOST=0"
set "SAMPLERATE=44100,48000"

CALL "venv\Scripts\activate.bat"

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%" --compensation="compensation\%COMPENSATION%.csv" --ten-band-eq --convolution-eq --fs=%SAMPLERATE% --bass-boost=%BASSBOOST% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 7BandEQ" --compensation="compensation\%COMPENSATION%.csv" --fixed-band-eq --fixed-band-eq-config=f7beq.yaml --bass-boost=%BASSBOOST% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 9BandEQ" --compensation="compensation\%COMPENSATION%.csv" --fixed-band-eq --fixed-band-eq-config=f9beq.yaml --bass-boost=%BASSBOOST% --standardize-input

endlocal