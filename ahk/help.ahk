#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#include shared.ahk

$F16::
    ShowHelp("BAS")
return

$F17::
    ShowHelp("DEV")
return

$F18::
    ShowHelp("AXN")
return

$F19::
    ShowHelp("STG")
return

