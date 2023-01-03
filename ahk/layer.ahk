#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#include shared.ahk

$F20::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("BAS Layer")
return

$F21::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("DEV Layer")
return

$F22::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("AXN Layer")
return

$F23::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("STG Layer")
return