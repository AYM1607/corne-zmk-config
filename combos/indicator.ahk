#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

msg := ""

~*CapsLock::
Sleep, 10   ; drastically improves reliability on slower systems
If (GetKeyState("CapsLock","T")) {
	msg := "CapsLock: ON"
} Else {
	msg := "CapsLock: OFF"
}

$F20::
Sleep, 10   ; drastically improves reliability on slower systems
If (GetKeyState("F20","P")) {
	msg := "DEFAULT LAYER"
}

$F21::
Sleep, 10   ; drastically improves reliability on slower systems
If (GetKeyState("F21","P")) {
	msg := "DEV LAYER"
}

$F22::
Sleep, 10   ; drastically improves reliability on slower systems
If (GetKeyState("F22","P")) {
	msg := "ACTIONS AND NUMBERS LAYER"
}

$F23::
Sleep, 10   ; drastically improves reliability on slower systems
If (GetKeyState("F23","P")) {
	msg := "SETTINGS LAYER"
}

ToolTip, %msg%
Sleep, 750  ; SPECIFY DISPLAY TIME (ms)
ToolTip     ; remove
return
