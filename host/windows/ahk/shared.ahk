ChangeCapsIcon(status)
{
    ico := "../../../.github/images/icons/windows/caps/" status ".png"

    if FileExist(ico) {
        TraySetIcon(ico)
    } else {
        TraySetIcon("*")
    }
}

ChangeLayerIcon(lyr)
{
    ico := "../../../.github/images/icons/windows/layers/" lyr ".png"

    if (lyr = "KBD") {
        msg := "Waiting..."
    } else {
        msg := lyr . " Layer"
    }

    if FileExist(ico) {
        TraySetIcon(ico)
        A_IconTip := msg
    } else {
        TraySetIcon("*")
        A_IconTip := "Waiting..."
    }
}

GetMessage(lyr)
{
    if (lyr = "BAS" or lyr = "DEV" or lyr = "AXN" or lyr = "FNK" or lyr = "STG") {
        msg := lyr . " Layer"
    } else {
        msg := lyr
    }
    return msg
}

ShowTooltip(lyr)
{
    ToolTip() ; remove
    msg := GetMessage(lyr)

    ToolTip(msg)
    Sleep(750) ; SPECIFY DISPLAY TIME (ms)
    ToolTip() ; remove
}

ShowMessage(lyr)
{
    msgGui := Gui()
    msgGui.Hide()

    msg := GetMessage(lyr)
    height := 80
    width := 384

    msgGui.Opt("-Caption +LastFound +ToolWindow") ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
    msgGui.BackColor := "344140"
    msgGui.SetFont("s30 Bold", "Verdana")
    msgGui.Add("Text", "x7 y7 w" . width . " h" . height . " Center c0E0E0E BackgroundTrans", msg)
    msgGui.Add("Text", "x7 y13 w" . width . " h" . height . " Center c0E0E0E BackgroundTrans", msg)
    msgGui.Add("Text", "x13 y13 w" . width . " h" . height . " Center c0E0E0E BackgroundTrans", msg)
    msgGui.Add("Text", "x13 y7 w" . width . " h" . height . " Center c0E0E0E BackgroundTrans", msg)
    msgGui.Add("Text", "x10 y10 w" . width . " h" . height . " Center cFEFEFE BackgroundTrans", msg)
    WinSetRegion("0-0 w" width " h" height " R15-15")
    ; WinSet, transparent, 180

    ; WinGetPos(, , , &TrayWidth, "ahk_class Shell_TrayWnd")
    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    ; xpos := A_ScreenWidth-width-TrayWidth // Left Align
    xpos := (A_ScreenWidth/2)-(width/2)
    ypos := A_ScreenHeight-120-TrayHeight

    WinSetAlwaysOnTop()
    msgGui.Show("w" . width . " h" . height . " x" . xpos . " y" . ypos . " NA") ; NA shows the window without activating it
    Sleep(750) ; SPECIFY DISPLAY TIME (ms)
    msgGui.Destroy()
}

ShowHelp(lyr)
{
    showGui := Gui()
    showGui.Hide()

    img := "../../../.github/images/layers/windows/" . lyr . ".png"
    msg := lyr . " Layer"

    height := 525
    width := 1150

    showGui.Opt("-Caption +LastFound +ToolWindow") ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
    showGui.BackColor := "344140"
    showGui.MarginX := "0", showGui.MarginY := "0"
    showGui.Add("Picture", "w" . width . " h" . height, img)
    showGui.Title := msg
    showGui.Show("w" . width . " h" . height . " xCenter yCenter")
    WinSetAlwaysOnTop()
    WinSetRegion("0-0 w" width " h" height " R15-15")
    ; WinSet, transparent, 200

    showGui.OnEvent("Close", Close)
    showGui.OnEvent("Escape", Close)

    Close(*)
    {
        showGui.Destroy()  ; Destroy the about box.
    }
}
