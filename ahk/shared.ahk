#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

ChangeIcon(lyr)
{
    ico := "../.github/images/icons/" lyr ".png"
    msg := % lyr " Layer"

    Menu, Tray, Icon, % ico
    Menu, Tray, Tip, % msg
}

ShowMessage(lyr)
{
    Gui, Destroy
    if (lyr = "BAS" or lyr = "DEV" or lyr = "AXN" or lyr = "STG") {
        msg := % lyr " Layer"
    } else {
        msg := % lyr
    }

    Gui, -Caption +LastFound
    Gui, Color, 344140
    Gui, Font, s30 Bold, Verdana
    Gui, Add, Text, x7 y7 w384 h80 Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x7 y13 w384 h80 Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x13 y13 w384 h80 Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x13 y7 w384 h80 Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x10 y10 w384 h80 Center cFEFEFE BackgroundTrans, % msg
    WinSet, Region, 0-0 w384 h80 R15-15
    ; WinSet, transparent, 180

    ; ToolTip, %msg%
    Gui, Show, w384 h80
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ; ToolTip ; remove
    Gui, Destroy
}

ShowHelp(lyr)
{
    Gui, Destroy

    img := "../.github/images/layers/" lyr ".png"
    msg := % lyr " Layer"

    Gui, -Caption +LastFound
    Gui, Color, 344140
    Gui, Margin, 0, 0
    Gui, Add, Picture, w740 h350 , % img
    Gui, Show, w740 h350, % msg
    WinSet, AlwaysOnTop
    WinSet, Region, 0-0 w740 h350 R15-15
    ; WinSet, transparent, 200
}

GuiEscape:
GuiClose:
    Gui, Destroy
return
