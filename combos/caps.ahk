#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

~*CapsLock::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := ""
    msg := msg "Caps: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF")

    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return
