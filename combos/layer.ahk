#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

$F20::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := "DEFAULT LAYER"
    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return

$F21::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := "DEV LAYER"
    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return

$F22::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := "ACTIONS AND NUMBERS LAYER"
    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return

$F23::
    Sleep, 10 ; drastically improves reliability on slower systems

    msg := "SETTINGS LAYER"
    ToolTip, %msg%
    Sleep, 750 ; SPECIFY DISPLAY TIME (ms)
    ToolTip ; remove
return