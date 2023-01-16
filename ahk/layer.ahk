#NoEnv                        ;  Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                       ;  Enable warnings to assist with detecting common errors.
SendMode Input                ;  Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%   ;  Ensures a consistent starting directory.

#include shared.ahk

$F19::
    Sleep, 10 ; drastically improves reliability on slower systems
    ChangeIcon("BAS")
    ShowMessage("BAS")
return

$F20::
    Sleep, 10 ; drastically improves reliability on slower systems
    ChangeIcon("DEV")
    ShowMessage("DEV")
return

$F21::
    Sleep, 10 ; drastically improves reliability on slower systems
    ChangeIcon("AXN")
    ShowMessage("AXN")
return

$F22::
    Sleep, 10 ; drastically improves reliability on slower systems
    ChangeIcon("FNK")
    ShowMessage("FNK")
return

$F23::
    Sleep, 10 ; drastically improves reliability on slower systems
    ChangeIcon("STG")
    ShowMessage("STG")
return