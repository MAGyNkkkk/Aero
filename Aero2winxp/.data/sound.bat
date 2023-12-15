@echo off
set "file=%~dp0\alarm.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) > sound.vbs
start /min sound.vbs
(
  echo Your computer has been bombarded by the Aero Virus. :O
  echo.
  echo You'll have a wave of fun before your computer's demise! Survive as long as possible. :D
  echo.
  echo Try to destroy the generated executables, and your PC will die immediately. 
  echo :D
) > notepad.txt
start notepad.txt