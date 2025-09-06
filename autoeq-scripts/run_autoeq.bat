setlocal
cd "C:\Users\User\User Files\Documents\GitHub\autoeq-workspace"

set "MODEL=JBL Tune 720BT S2 (Filk)"
set "COMPENSATION=harman_over-ear_2018_wo_bass"
set "BASSBOOST=0"
set "TREBLEBOOST=0"
set "TILT=0"
set "SAMPLERATE=44100,48000"

CALL "venv\Scripts\activate.bat"

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%" --compensation="compensation\%COMPENSATION%.csv" --ten-band-eq --convolution-eq --fs=%SAMPLERATE% --parametric-eq --parametric-eq-config=peq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 7BandEQ" --compensation="compensation\%COMPENSATION%.csv" --fixed-band-eq --fixed-band-eq-config=f7beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 9BandEQ" --compensation="compensation\%COMPENSATION%.csv" --fixed-band-eq --fixed-band-eq-config=f9beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

endlocal