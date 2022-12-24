#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, icons/ahk-yellow.ico

!7::Send {&}{&}                             ; Alt+7         &&          Logical AND
!+7::Send {&}{&}{=}                         ; Shift+Alt+7   &&=         AND Assignment
!8::Send {*}{*}                             ; Alt+8         **          Math Power
!9::Send {=}{>}                             ; Alt+9         =>          Arrow
!+9:: Send {(}{)}{space}{=}{>}              ; Shift+Alt+9   () =>       Arrow Function, implicit return
!^9:: Send {(}{)}{space}{=}{>}{space}{{}{}} ; Ctrl+Alt+9    () => {}    Arrow Function, explicit return
!\::Send {|}{|}                             ; Alt+\         ||          Logical OR
!+\::Send {|}{|}{=}                         ; Shift+Alt+\   ||=         OR Assignment
!=:: Send {=}{=}{=}                         ; Alt+=         ===         Strict Equality
!+=:: Send {!}{=}{=}                        ; Shift+Alt+=   !==         Strict Inequality
!,:: Send {<}{/}{>}{left 1}                 ; Alt+,         </>         HTML Close Tag
!^,:: Send {<}{/}{>}{left 2}                ; Ctrl+Alt+,    </>         React Component Tag
!.:: Send {?}{.}                            ; Alt+.         ?.          Optional Chaining
!+,:: Send {<}{=}                           ; Shift+Alt+,   <=          Less than or equal to
!+.:: Send {>}{=}                           ; Shift+Alt+.   >=          Greater than or equal to
!+;:: Send {?}{:}{left 1}                   ; Shift+Alt+;   ?:          Ternary Operator
!/:: Send {?}{?}                            ; Alt+/         ??          Nullish Coalescing
!+/:: Send {?}{?}{=}                        ; Shift+Alt+/   ??=         Nullish Coalescing Assignment
