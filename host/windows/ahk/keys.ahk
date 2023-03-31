; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win

; Settings
#HotIf WinActive("ahk_exe code.exe")
  ^0::Send("^{Numpad0}")                         ;  Zoom Reset
#HotIf

#HotIf WinActive("ahk_exe Tabby.exe")
    ^PgUp::Send("^+{Left}")                      ;  Previous Tab
    ^PgDn::Send("^+{Right}")                     ;  Next Tab
#HotIf

#HotIf WinActive("ahk_exe WindowsTerminal.exe")
    ^PgUp::Send("^+{Tab}")                       ;  Previous Tab
    ^PgDn::Send("^{Tab}")                        ;  Next Tab
       ^\::Send("!\")                            ;  Split Pane Right
       ^/::Send("!/")                            ;  Split Pane Down
#HotIf
