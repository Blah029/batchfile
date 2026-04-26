setlocal enableextensions 
cd "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries"

set "RULENAME=Adobe Creative Cloud Common Files"

for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="%RULENAME%: %%~nxf" dir=out program="%%f" action=block
)

endlocal