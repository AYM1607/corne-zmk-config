#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

$F16::
    Gui, Add, Picture, w740 h350 , ../.github/images/layers/DEF.png
    Gui, Show, w760 h360, DEF Layer
return

$F17::
    Gui, Add, Picture, w740 h350 , ../.github/images/layers/DEV.png
    Gui, Show, w760 h360, DEV Layer
return

$F18::
    Gui, Add, Picture, w740 h350 , ../.github/images/layers/AXN.png
    Gui, Show, w760 h360, AXN Layer
return

$F19::
    Gui, Add, Picture, w740 h350 , ../.github/images/layers/STG.png
    Gui, Show, w760 h360, STG Layer
return

GuiEscape:
GuiClose:
    Gui, Destroy