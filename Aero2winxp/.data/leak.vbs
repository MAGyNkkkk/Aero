Set WshShell = WScript.CreateObject("WScript.Shell")

Do
    WshShell.SendKeys "~"
    WshShell.SendKeys "1"
    WshShell.SendKeys "2"
    WshShell.SendKeys "3"
    WScript.Sleep 100
Loop