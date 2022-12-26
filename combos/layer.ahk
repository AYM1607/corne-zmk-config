#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

$F20::
$F21::
$F22::
$F23::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := ""
    If (GetKeyState("F20","P")) {
        msg := "DEFAULT LAYER"
    }
    If (GetKeyState("F21","P")) {
        msg := "DEV LAYER"
    }
    If (GetKeyState("F22","P")) {
        msg := "ACTIONS AND NUMBERS LAYER"
    }
    If (GetKeyState("F23","P")) {
        msg := "SETTINGS LAYER"
    }

    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return
