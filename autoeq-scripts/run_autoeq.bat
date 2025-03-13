setlocal
cd "C:\Users\User\User Files\Documents\GitHub\autoeq-workspace"

set "MODEL=JBL Tune 720BT (Filk)"
set "COMPENSATION=harman_over-ear_2018_wo_bass"
set "PREFERENCE=zero"
set "BASSBOOST=-2,60,0.7"
set "TREBLEBOOST=2,600,0.7"
set "TILT=0"
set "SAMPLERATE=44100,48000"

CALL "venv\Scripts\activate.bat"

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --ten-band-eq --convolution-eq --fs=%SAMPLERATE% --parametric-eq --parametric-eq-config=peq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 7BandEQ" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --fixed-band-eq --fixed-band-eq-config=f7beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

python -m autoeq --input-dir="my_data\%MODEL%" --output-dir="my_results\%MODEL%\%MODEL% 9BandEQ" --compensation="compensation\%COMPENSATION%.csv" --sound-signature="my_preference\%PREFERENCE%.csv" --fixed-band-eq --fixed-band-eq-config=f9beq.yaml --bass-boost=%BASSBOOST% --treble-boost=%TREBLEBOOST% --tilt=%TILT% --standardize-input

endlocal