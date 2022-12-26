~*CapsLock::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := ""
    msg := msg "Caps: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF")

    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return
