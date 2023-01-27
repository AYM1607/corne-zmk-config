#Include "shared.ahk"

~*CapsLock::
{
    Sleep(10) ; drastically improves reliability on slower systems
    ShowMessage("CapsLock: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF"))
}

$F18::
{
    Sleep(10) ; drastically improves reliability on slower systems
    ShowMessage("CapsWord: ON")
}

^$F18::
{
    Sleep(10) ; drastically improves reliability on slower systems
    ShowMessage("CapsWord: OFF")
}
