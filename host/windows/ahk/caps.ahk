; #Warn                        ;  Enable warnings to assist with detecting common errors.
SendMode("Input")              ;  Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)     ;  Ensures a consistent starting directory.
#SingleInstance force
Persistent

ChangeCapsIcon("OFF")
A_IconTip := "Caps Lock: OFF"

#Include "shared.ahk"

~*CapsLock::
{
    Sleep(10) ; drastically improves reliability on slower systems
    status := (GetKeyState("CapsLock", "T") ? "ON" : "OFF")
    ChangeCapsIcon(status)
    ; ShowMessage("CapsLock: " status)
}

$F18::
{
    Sleep(10) ; drastically improves reliability on slower systems
    ChangeCapsIcon("CW-ON")
    ; ShowMessage("CapsWord: ON")
    ; TODO: identify if key was pressed using shift and then shof OFF icon
    Sleep(750 * 4) ; SPECIFY DISPLAY TIME (ms)
    ChangeCapsIcon("OFF")
}

^$F18::
{
    Sleep(10) ; drastically improves reliability on slower systems
    ChangeCapsIcon("CW-OFF")
    ; ShowMessage("CapsWord: OFF")
    Sleep(750 * 1) ; SPECIFY DISPLAY TIME (ms)
    ChangeCapsIcon("OFF")
}
