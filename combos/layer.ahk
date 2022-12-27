#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

ShowMessage(msg)
{
    Gui, -Caption +lastfound
    Gui, Color, 5E43FF
    Gui, Font, s30 Bold, Verdana
    Gui, Add, Text, x7 y7 w800 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x7 y13 w800 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x13 y13 w800 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x13 y7 w800 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x10 y10 w800 h80 Center cFFFFFF BackgroundTrans, % msg
    winset, transcolor, 5E43FF 175

    ; ToolTip, %msg%
    Gui,Show,w800 h80
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ; ToolTip ; remove
    Gui, Destroy
}

$F20::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("DEF Layer")
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