#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#include shared.ahk

~*CapsLock::
    Sleep, 10 ; drastically improves reliability on slower systems
    ShowMessage("CapsLock: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF"))
return
