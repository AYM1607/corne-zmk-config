~*!CapsLock::
~*NumLock::
~*ScrollLock::
~*Insert::
Sleep, 10   ; drastically improves reliability on slower systems

msg := ""
msg := msg "Caps: " (GetKeyState("CapsLock", "T") ? "ON" : "OFF") "`n"
msg := msg "Num: " (GetKeyState("NumLock", "T") ? "ON" : "OFF") "`n"
msg := msg "Scroll: " (GetKeyState("ScrollLock", "T") ? "ON" : "OFF") "`n"
msg := msg "Insert: " (GetKeyState("Insert", "T") ? "ON" : "OFF")

ToolTip, %msg%
Sleep, 750  ; SPECIFY DISPLAY TIME (ms)
ToolTip     ; remove
return

; https://autohotkey.com/board/topic/100990-another-on-screen-caps-lock-indicator/
