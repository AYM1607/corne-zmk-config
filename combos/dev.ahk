#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, icons/ahk-yellow.ico

; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win

; Symbols
  !q:: Send {@}                        ;      Alt+q  @
+!#/:: Send {Asc 0191}                 ;  Win+Alt+?  ¿
^+#/:: Send {Asc 0191}{Asc 63}{left 1} ; Win+Ctrl+?  ¿?
+!#1:: Send {Asc 0161}                 ;  Win+Alt+!  ¡
^+#1:: Send {Asc 0161}{Asc 33}{left 1} ; Win+Ctrl+!  ¡!
^+#,:: Send {Asc 0171}                 ; Win+Ctrl+<  «
^+#.:: Send {Asc 0187}                 ; Win+Ctrl+>  »
 !+3:: Send {Asc 0176}                 ;      Alt+#  °
#!+3:: Send {Asc 0170}                 ;  Win+Alt+#  ª
 !+4:: Send {Asc 0128}                 ;      Alt+$  €

; Dev
  !-::Send {+}{=}                      ;      Alt++  +=          Addition Assignment
 !+=::Send {-}{=}                      ;      Alt+-  -=          Subtraction Assignment
 !+8::Send {+}{=}                      ;      Alt+*  *=          Multiply Assignment
  !/::Send {/}{=}                      ;      Alt+/  /=          Division Assignment
  !=::Send {=}{=}{=}                   ;      Alt+=  ===         Strict Equality
 !+1::Send {!}{=}{=}                   ;      Alt+!  !==         Strict Inequality
 !+7::Send {&}{&}{=}                   ;      Alt+&  &&=         Logical And Assignment
 !+\::Send {|}{|}{=}                   ;      Alt+|  ||=         Logical OR Assignment
 !+/::Send {?}{?}{=}                   ;      Alt+?  ??=         Nullish Coalescing Assignment
 !+,::Send {<}{=}                      ;      Alt+<  <=          Less than or equal to
#!+,:: Send {<}{/}{>}{left 2}          ;  Win+Alt+<  <░/>        React Component Tag
 !+.::Send {>}{=}                      ;      Alt+>  >=          Greater than or equal to
#+!.::Send {<}{/}{>}{left 1}           ;  Win+Alt+>  </░>        HTML Close Tag


; !+9:: Send {(}{)}{space}{=}{>}              ; Shift+Alt+9   () =>       Arrow Function, implicit return
; !^9:: Send {(}{)}{space}{=}{>}{space}{{}{}} ; Ctrl+Alt+9    () => {}    Arrow Function, explicit return
; !.:: Send {?}{.}                            ; Alt+.         ?.          Optional Chaining
; !+;:: Send {?}{:}{left 1}                   ; Shift+Alt+;   ?:          Ternary Operator
