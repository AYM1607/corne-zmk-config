#include shared.ahk

~*CapsLock::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("CapsLock: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF"))
return

$F18::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("CapsWord: ON")
return

^$F18::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("CapsWord: OFF")
return
