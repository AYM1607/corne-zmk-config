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

GetMessage(lyr)
{
    if (lyr = "BAS" or lyr = "DEV" or lyr = "AXN" or lyr = "FNK" or lyr = "STG") {
        msg := % lyr " Layer"
    } else {
        msg := % lyr
    }
    return msg
}

ShowTooltip(lyr)
{
    ToolTip ; remove
    msg := GetMessage(lyr)

    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
}

ShowMessage(lyr)
{
    Gui, Destroy
    msg := GetMessage(lyr)
    height := 80
    width := 384

    Gui, -Caption +LastFound +ToolWindow ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
    Gui, Color, 344140
    Gui, Font, s30 Bold, Verdana
    Gui, Add, Text, x7 y7 w%width% h%height% Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x7 y13 w%width% h%height% Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x13 y13 w%width% h%height% Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x13 y7 w%width% h%height% Center c0E0E0E BackgroundTrans, % msg
    Gui, Add, Text, x10 y10 w%width% h%height% Center cFEFEFE BackgroundTrans, % msg
    WinSet, Region, 0-0 w%width% h%height% R15-15
    ; WinSet, transparent, 180

    WinGetPos,,,,TrayWidth,ahk_class Shell_TrayWnd,,,
    WinGetPos,,,,TrayHeight,ahk_class Shell_TrayWnd,,,
    xpos := A_ScreenWidth-width-TrayWidth
    ypos := A_ScreenHeight-120-TrayHeight

    ; ToolTip, %msg%
    WinSet, AlwaysOnTop
    Gui, Show, w%width% h%height% x%xpos% y%ypos% NA ; NA shows the window without activating it
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ; ToolTip ; remove
    Gui, Destroy
}

ShowHelp(lyr)
{
    Gui, Destroy

    img := "../.github/images/layers/" lyr ".png"
    msg := % lyr " Layer"

    height := 525
    width := 1150

    Gui, -Caption +LastFound +ToolWindow ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
    Gui, Color, 344140
    Gui, Margin, 0, 0
    Gui, Add, Picture, w%width% h%height%, % img
    Gui, Show, w%width% h%height% xCenter yCenter, % msg
    WinSet, AlwaysOnTop
    WinSet, Region, 0-0 w%width% h%height% R15-15
    ; WinSet, transparent, 200
}

GuiEscape:
GuiClose:
    Gui, Destroy
return
