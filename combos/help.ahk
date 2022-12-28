#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#include shared.ahk

$F16::
    ShowHelp("../.github/images/layers/DEF.png", "DEF Layer")
return

$F17::
    ShowHelp("../.github/images/layers/DEV.png", "DEV Layer")
return

$F18::
    ShowHelp("../.github/images/layers/AXN.png", "AXN Layer")
return

$F19::
    ShowHelp("../.github/images/layers/STG.png", "STG Layer")
return

GuiEscape:
    Gui, Destroy