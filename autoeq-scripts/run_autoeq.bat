setlocal
cd "C:\Users\User\User Files\Documents\GitHub\autoeq-workspace"

set "MODEL=KZ ZSN Pro X (Corrected)"
set "COMPENSATION=etymotic"
set "PREFERENCE=zero"
set "BASSBOOST=7"
set "TREBLEBOOST=-1.75,2500,0.7"
set "SAMPLERATE=44100,48000"

CALL "venv\Scripts\activate.bat"

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --ten-band-eq --convolution-eq --fs=%SAMPLERATE% --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 7BandEQ" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --fixed-band-eq --fixed-band-eq-config=f7beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 9BandEQ" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --fixed-band-eq --fixed-band-eq-config=f9beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --standardize-input

endlocal