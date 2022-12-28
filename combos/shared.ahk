#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

ShowMessage(msg)
{
    Gui, -Caption +lastfound
    Gui, Color, 5E43FF
    Gui, Font, s30 Bold, Verdana
    Gui, Add, Text, x7 y7 w384 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x7 y13 w384 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x13 y13 w384 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x13 y7 w384 h80 Center c000000 BackgroundTrans, % msg
    Gui, Add, Text, x10 y10 w384 h80 Center cFFFFFF BackgroundTrans, % msg
    winset, transcolor, 5E43FF 175

    ; ToolTip, %msg%
    Gui,Show,w384 h80
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ; ToolTip ; remove
    Gui, Destroy
}

ShowHelp(img, msg)
{
    Gui, -Caption +lastfound
    Gui, Color, 0E0E0E
    Gui, Add, Picture, w740 h350 , % img
    Gui, Show, w758 h363, % msg
    ; winset, transparent, 200
}

GuiEscape:
GuiClose:
    Gui, Destroy