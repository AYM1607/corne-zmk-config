#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, icons/ahk-blue.ico

; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win
; < Left
; > Right

; Accents
 #!a:: Send {Asc 0225}  ;       Win+Alt+a    á
+#!a:: Send {Asc 0193}  ; Shift+Win+Alt+a    Á
 #!e:: Send {Asc 0233}  ;       Win+Alt+e    é
+#!e:: Send {Asc 0201}  ; Shift+Win+Alt+e    É
 #!i:: Send {Asc 0237}  ;       Win+Alt+i    í
+#!i:: Send {Asc 0205}  ; Shift+Win+Alt+i    Í
 #!o:: Send {Asc 0243}  ;       Win+Alt+o    ó
+#!o:: Send {Asc 0211}  ; Shift+Win+Alt+o    Ó
 #!u:: Send {Asc 0250}  ;       Win+Alt+u    ú
+#!u:: Send {Asc 0218}  ; Shift+Win+Alt+u    Ú
 #^u:: Send {Asc 0252}  ;       Win+Ctrl+u   ü
+#^u:: Send {Asc 0220}  ; Shift+Win+Ctrl+u   Ü
 #!n:: Send {Asc 0241}  ;       Win+Alt+n    ñ
+#!n:: Send {Asc 0209}  ; Shift+Win+Alt+n    Ñ

; Symbols
 #!q:: Send {@}           ;       Win+Alt+q  @
+#^/:: Send {Asc 0191}    ; Shift+Win+Alt+/  ¿
+#^1:: Send {Asc 0161}    ; Shift+Win+Alt+1  ¡
  +,:: Send {Asc 0174}    ;         Shift+,  «
  +.:: Send {Asc 0175}    ;         Shift+.  »