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

; Accents
 !a:: Send {Asc 0225}                  ;      Alt+a  á
#!a:: Send {Asc 0193}                  ;  Win+Alt+a  Á
 !e:: Send {Asc 0233}                  ;      Alt+e  é
#!e:: Send {Asc 0201}                  ;  Win+Alt+e  É
 !i:: Send {Asc 0237}                  ;      Alt+i  í
#!i:: Send {Asc 0205}                  ;  Win+Alt+i  Í
 !o:: Send {Asc 0243}                  ;      Alt+o  ó
#!o:: Send {Asc 0211}                  ;  Win+Alt+o  Ó
 !u:: Send {Asc 0250}                  ;      Alt+u  ú
#!u:: Send {Asc 0218}                  ;  Win+Alt+u  Ú
 ^u:: Send {Asc 0252}                  ;     Ctrl+u  ü
#^u:: Send {Asc 0220}                  ; Win+Ctrl+u  Ü
 !n:: Send {Asc 0241}                  ;      Alt+n  ñ
#!n:: Send {Asc 0209}                  ;  Win+Alt+n  Ñ

; Symbols
  !q:: Send {@}                        ;      Alt+q  @
+!#/:: Send {Asc 0191}                 ;  Win+Alt+?  ¿
^+#/:: Send {Asc 0191}{Asc 63}{left 1} ; Win+Ctrl+?  ¿?
+!#1:: Send {Asc 0161}                 ;  Win+Alt+!  ¡
^+#1:: Send {Asc 0161}{Asc 33}{left 1} ; Win+Ctrl+!  ¡!
^+#,:: Send {Asc 0171}                 ; Win+Ctrl+<  «
^+#.:: Send {Asc 0187}                 ; Win+Ctrl+>  »
 ^+3:: Send {Asc 0176}                 ;     Ctrl+#  °
#^+3:: Send {Asc 0170}                 ; Win+Ctrl+#  ª
 !+4:: Send {Asc 0128}                 ;      Alt+$  €

; Navigation
   !#Up:: Send {RControl Home}         ;  Win+Alt+△  ⤒  Beginning of document
 !#Down:: Send {RControl End}          ;  Win+Alt+▽  ⤓  End of document
 !#Left:: Send {Home}                  ;  Win+Alt+◁  ⇤  Beginning of line
!#Right:: Send {End}                   ;  Win+Alt+▷  ⇥  End of line
