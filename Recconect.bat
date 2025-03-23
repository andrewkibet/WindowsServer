@echo off
:reconnect
start "" "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" 929232043
timeout /t 5
goto reconnect
