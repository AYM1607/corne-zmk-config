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

; Dev
 !+=::Send {+}{=}                      ;      Alt++  +=    Addition Assignment
  !-::Send {-}{=}                      ;      Alt+-  -=    Subtraction Assignment
 !+8::Send {*}{=}                      ;      Alt+*  *=    Multiply Assignment
  !/::Send {/}{=}                      ;      Alt+/  /=    Division Assignment
  !=::Send {=}{=}{=}                   ;      Alt+=  ===   Strict Equality
 !+1::Send {!}{=}{=}                   ;      Alt+!  !==   Strict Inequality
 !+7::Send {&}{&}{=}                   ;      Alt+&  &&=   Logical And Assignment
 !+\::Send {|}{|}{=}                   ;      Alt+|  ||=   Logical OR Assignment
 !+/::Send {?}{?}{=}                   ;      Alt+?  ??=   Nullish Coalescing Assignment
 !+,::Send {<}{=}                      ;      Alt+<  <=    Less than or equal to
#!+,:: Send {<}{/}{>}{left 2}          ;  Win+Alt+<  <░/>  React Component Tag
 !+.::Send {>}{=}                      ;      Alt+>  >=    Greater than or equal to
#+!.::Send {<}{/}{>}{left 1}           ;  Win+Alt+>  </░>  HTML Close Tag
