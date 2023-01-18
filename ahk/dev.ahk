; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win

; Dev
 !+=::Send {Asc 0043}{Asc 0061}                    ;      Alt++  +=    Addition Assignment
  !-::Send {Asc 0045}{Asc 0061}                    ;      Alt+-  -=    Subtraction Assignment
 !+8::Send {Asc 0042}{Asc 0061}                    ;      Alt+*  *=    Multiply Assignment
  !/::Send {Asc 0047}{Asc 0061}                    ;      Alt+/  /=    Division Assignment
  !=::Send {Asc 0061}{Asc 0061}{Asc 0061}          ;      Alt+=  ===   Strict Equality
 !+1::Send {Asc 0033}{Asc 0061}{Asc 0061}          ;      Alt+!  !==   Strict Inequality
 !+7::Send {Asc 0038}{Asc 0038}{Asc 0061}          ;      Alt+&  &&=   Logical And Assignment
 !+\::Send {Asc 0124}{Asc 0124}{Asc 0061}          ;      Alt+|  ||=   Logical OR Assignment
 !+/::Send {Asc 0063}{Asc 0063}{Asc 0061}          ;      Alt+?  ??=   Nullish Coalescing Assignment
 !+,::Send {Asc 0060}{Asc 0061}                    ;      Alt+<  <=    Less than or equal to
#!+,::Send {Asc 0060}{Asc 0047}{Asc 0062}{left 2}  ;  Win+Alt+<  <░/>  React Component Tag
 !+.::Send {Asc 0062}{Asc 0061}                    ;      Alt+>  >=    Greater than or equal to
#+!.::Send {Asc 0060}{Asc 0047}{Asc 0062}{left 1}  ;  Win+Alt+>  </░>  HTML Close Tag
