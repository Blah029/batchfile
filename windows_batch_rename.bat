setlocal
cd "C:\Users\User Files\Documents\University\Misc\4th Year Work\Final Year Project\Datasets\image-footage\CULane Selected\labels\raw\New folder"

set "PREFIX=driver100_0511_"

echo off
for %%a in (*.*) do ren "%%a" "%PREFIX%%%a"

endlocal
