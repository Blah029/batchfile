setlocal

netsh winsock reset
ipconfig /flushdns
ipconfig /renew
netsh int ip reset

pause
endlocal

shutdown /r /t 0